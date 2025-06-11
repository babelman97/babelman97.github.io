<!DOCTYPE html>
<html lang="zh-TW">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>KKBOX 音樂播放器</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', 'Microsoft JhengHei', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }

        .container {
            background: white;
            border-radius: 20px;
            padding: 40px;
            box-shadow: 0 20px 60px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 500px;
            width: 100%;
        }

        .logo {
            width: 100px;
            height: 100px;
            background: linear-gradient(45deg, #ff6b6b, #ffa500);
            border-radius: 20px;
            margin: 0 auto 30px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 48px;
            color: white;
            font-weight: bold;
        }

        h1 {
            color: #333;
            margin-bottom: 10px;
            font-size: 2.5em;
        }

        .subtitle {
            color: #666;
            margin-bottom: 40px;
            font-size: 1.1em;
        }

        .button-group {
            display: flex;
            flex-direction: column;
            gap: 15px;
            margin-bottom: 30px;
        }

        .btn {
            padding: 15px 30px;
            border: none;
            border-radius: 50px;
            font-size: 1.1em;
            font-weight: bold;
            cursor: pointer;
            transition: all 0.3s ease;
            text-decoration: none;
            display: inline-block;
            color: white;
        }

        .btn-primary {
            background: linear-gradient(45deg, #ff6b6b, #ffa500);
        }

        .btn-secondary {
            background: linear-gradient(45deg, #4ecdc4, #44a08d);
        }

        .btn-tertiary {
            background: linear-gradient(45deg, #a8edea, #fed6e3);
            color: #333;
        }

        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
        }

        .platform-info {
            background: #f8f9fa;
            border-radius: 10px;
            padding: 20px;
            margin-top: 30px;
            font-size: 0.9em;
            color: #666;
        }

        .status {
            margin-top: 20px;
            padding: 10px;
            border-radius: 10px;
            font-weight: bold;
            display: none;
        }

        .status.success {
            background: #d4edda;
            color: #155724;
            border: 1px solid #c3e6cb;
        }

        .status.error {
            background: #f8d7da;
            color: #721c24;
            border: 1px solid #f5c6cb;
        }

        .quick-links {
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 10px;
            margin-top: 20px;
        }

        .quick-btn {
            padding: 10px;
            background: #e9ecef;
            border: none;
            border-radius: 10px;
            cursor: pointer;
            font-size: 0.9em;
            transition: background 0.3s ease;
        }

        .quick-btn:hover {
            background: #dee2e6;
        }

        @media (max-width: 600px) {
            .container {
                padding: 30px 20px;
            }
            
            h1 {
                font-size: 2em;
            }
            
            .logo {
                width: 80px;
                height: 80px;
                font-size: 36px;
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo">🎵</div>
        <h1>KKBOX</h1>
        <p class="subtitle">跨平台音樂播放器啟動工具</p>
        
        <div class="button-group">
            <button class="btn btn-primary" onclick="openKKBOX()">
                🎧 開啟 KKBOX APP
            </button>
            
            <button class="btn btn-secondary" onclick="openKKBOXSearch()">
                🔍 搜尋音樂
            </button>
            
            <a href="https://www.kkbox.com" target="_blank" class="btn btn-tertiary">
                🌐 前往 KKBOX 網頁版
            </a>
        </div>

        <div class="quick-links">
            <button class="quick-btn" onclick="openKKBOXPlaylist()">我的播放清單</button>
            <button class="quick-btn" onclick="openKKBOXRadio()">電台</button>
            <button class="quick-btn" onclick="openKKBOXPodcast()">Podcast</button>
            <button class="quick-btn" onclick="openKKBOXChart()">排行榜</button>
        </div>

        <div id="status" class="status"></div>

        <div class="platform-info">
            <p><strong>目前平台：</strong><span id="platform"></span></p>
            <p><strong>瀏覽器：</strong><span id="browser"></span></p>
            <p style="margin-top: 10px; font-size: 0.8em;">
                💡 如果無法開啟 APP，系統會自動導向對應的應用程式商店下載頁面
            </p>
        </div>
    </div>

    <script>
        // 偵測平台和瀏覽器
        function detectPlatform() {
            const userAgent = navigator.userAgent;
            let platform = '未知';
            let browser = '未知';
            
            // 偵測作業系統
            if (/iPhone|iPad|iPod/i.test(userAgent)) {
                platform = 'iOS';
            } else if (/Android/i.test(userAgent)) {
                platform = 'Android';
            } else if (/Windows/i.test(userAgent)) {
                platform = 'Windows';
            } else if (/Mac/i.test(userAgent)) {
                platform = 'macOS';
            } else if (/Linux/i.test(userAgent)) {
                platform = 'Linux';
            }
            
            // 偵測瀏覽器
            if (/Chrome/i.test(userAgent) && !/Edge/i.test(userAgent)) {
                browser = 'Chrome';
            } else if (/Safari/i.test(userAgent) && !/Chrome/i.test(userAgent)) {
                browser = 'Safari';
            } else if (/Firefox/i.test(userAgent)) {
                browser = 'Firefox';
            } else if (/Edge/i.test(userAgent)) {
                browser = 'Edge';
            }
            
            return { platform, browser };
        }

        // 顯示狀態訊息
        function showStatus(message, type = 'success') {
            const statusEl = document.getElementById('status');
            statusEl.textContent = message;
            statusEl.className = `status ${type}`;
            statusEl.style.display = 'block';
            
            setTimeout(() => {
                statusEl.style.display = 'none';
            }, 3000);
        }

        // 主要開啟 KKBOX 函數
        function openKKBOX(deepLink = '') {
            const { platform } = detectPlatform();
            const kkboxScheme = `kkbox://${deepLink}`;
            
            try {
                if (platform === 'iOS') {
                    // iOS 優先嘗試 Universal Link，再嘗試 URL Scheme
                    window.location.href = kkboxScheme;
                    
                    // 備用方案：如果 APP 未安裝，導向 App Store
                    setTimeout(() => {
                        if (document.hidden) return; // 如果已經跳轉到 APP，就不執行
                        window.location.href = 'https://apps.apple.com/tw/app/kkbox-%E9%9F%B3%E6%A8%82-podcast/id300915900';
                    }, 1500);
                    
                } else if (platform === 'Android') {
                    // Android 使用 Intent URL
                    const intentUrl = `intent://open/${deepLink}#Intent;scheme=kkbox;package=com.skysoft.kkbox.android;S.browser_fallback_url=https://play.google.com/store/apps/details?id=com.skysoft.kkbox.android;end`;
                    window.location.href = intentUrl;
                    
                } else {
                    // 桌面版直接開啟網頁版
                    window.open('https://www.kkbox.com', '_blank');
                    showStatus('已開啟 KKBOX 網頁版', 'success');
                    return;
                }
                
                showStatus('正在開啟 KKBOX APP...', 'success');
                
            } catch (error) {
                console.error('開啟 KKBOX 時發生錯誤:', error);
                showStatus('開啟失敗，請手動下載 KKBOX APP', 'error');
                
                // 錯誤時的備用方案
                setTimeout(() => {
                    if (platform === 'iOS') {
                        window.open('https://apps.apple.com/tw/app/kkbox-%E9%9F%B3%E6%A8%82-podcast/id300915900', '_blank');
                    } else if (platform === 'Android') {
                        window.open('https://play.google.com/store/apps/details?id=com.skysoft.kkbox.android', '_blank');
                    }
                }, 1000);
            }
        }

        // 特定功能開啟函數
        function openKKBOXSearch() {
            openKKBOX('search');
        }

        function openKKBOXPlaylist() {
            openKKBOX('playlist');
        }

        function openKKBOXRadio() {
            openKKBOX('radio');
        }

        function openKKBOXPodcast() {
            openKKBOX('podcast');
        }

        function openKKBOXChart() {
            openKKBOX('chart');
        }

        // 頁面載入時初始化
        document.addEventListener('DOMContentLoaded', function() {
            const { platform, browser } = detectPlatform();
            document.getElementById('platform').textContent = platform;
            document.getElementById('browser').textContent = browser;
        });

        // 監聽頁面可見性變化（用於判斷是否成功開啟 APP）
        document.addEventListener('visibilitychange', function() {
            if (document.hidden) {
                // 頁面被隱藏，可能是成功開啟了 APP
                console.log('頁面已隱藏，可能成功開啟 APP');
            }
        });
    </script>
</body>
</html>
