import asyncio
from playwright.async_api import async_playwright
import time
import os

async def run_benchmark():
    async with async_playwright() as p:
        browser = await p.chromium.launch()
        page = await browser.new_page()

        # Load the local snake.html file
        file_path = "file://" + os.path.abspath("snake.html")
        await page.goto(file_path)

        # Run benchmark
        benchmark_js = """
        () => {
            const iterations = 1000;
            const start = performance.now();
            for (let i = 0; i < iterations; i++) {
                drawGame();
            }
            const end = performance.now();
            return {
                iterations: iterations,
                totalTime: end - start,
                avgTime: (end - start) / iterations
            };
        }
        """

        # We need to make sure the game is initialized but not necessarily running
        results = await page.evaluate(benchmark_js)
        print(f"Benchmark Results (Before Optimization):")
        print(f"Iterations: {results['iterations']}")
        print(f"Total Time: {results['totalTime']:.2f}ms")
        print(f"Average Time per frame: {results['avgTime']:.4f}ms")

        await browser.close()

if __name__ == "__main__":
    asyncio.run(run_benchmark())
