<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=yes">
    <title>Anime Haven · Otaku Shop</title>
    <!-- Google Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Quicksand:wght@400;500;600;700&family=Poppins:wght@600;800&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: linear-gradient(145deg, #fff6f0 0%, #ffe9f4 100%);
            font-family: 'Quicksand', sans-serif;
            color: #2e1a3b;
            overflow-x: hidden;
        }

        /* Colorful anime palette */
        :root {
            --anime-pink: #ff7eb3;
            --anime-purple: #b76ef0;
            --anime-blue: #5dade2;
            --anime-yellow: #f7d44a;
            --anime-coral: #ff8a5c;
            --anime-mint: #2ecc71;
            --shadow-soft: 0 15px 35px rgba(255, 100, 150, 0.15);
            --border-glow: 0 0 0 2px rgba(255, 126, 179, 0.4);
            --card-bg: rgba(255, 248, 245, 0.95);
            --container: 1250px;
        }

        .container {
            max-width: var(--container);
            margin: 0 auto;
            padding: 0 24px;
        }

        /* ===== HEADER with anime sparkle ===== */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(255, 245, 250, 0.92);
            backdrop-filter: blur(12px);
            border-bottom: 2px solid rgba(255, 126, 179, 0.3);
            box-shadow: 0 6px 20px rgba(0, 0, 0, 0.03);
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            gap: 20px;
            padding: 12px 0;
            flex-wrap: wrap;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 10px;
            font-family: 'Poppins', sans-serif;
            font-size: 1.75rem;
            font-weight: 800;
            background: linear-gradient(135deg, #ff5f9e, #b86ef0);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            text-shadow: 2px 2px 12px rgba(255, 100, 150, 0.2);
        }

        .brand i {
            background: none;
            -webkit-background-clip: unset;
            background-clip: unset;
            color: #ff7eb3;
            font-size: 28px;
        }

        .search {
            background: white;
            border-radius: 50px;
            padding: 8px 18px;
            display: flex;
            align-items: center;
            gap: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.02);
            border: 1px solid #ffe0e7;
        }

        .search input {
            border: none;
            background: transparent;
            outline: none;
            font-size: 14px;
            min-width: 200px;
            font-family: 'Quicksand', sans-serif;
        }

        .icon-btn {
            background: transparent;
            border: none;
            font-size: 1.3rem;
            cursor: pointer;
            color: #5b3e6e;
            transition: 0.2s;
        }

        .icon-btn:hover {
            color: #ff7eb3;
            transform: scale(1.08);
        }

        .cart {
            position: relative;
            font-size: 1.5rem;
            background: #fff0f5;
            padding: 8px 12px;
            border-radius: 40px;
            transition: 0.2s;
        }

        .cart-count {
            position: absolute;
            top: -6px;
            right: -6px;
            background: #ff4d8c;
            color: white;
            border-radius: 50%;
            width: 20px;
            height: 20px;
            font-size: 11px;
            font-weight: bold;
            display: flex;
            align-items: center;
            justify-content: center;
            box-shadow: 0 0 0 2px white;
        }

        /* navigation menu */
        nav.main-nav ul {
            display: flex;
            gap: 12px;
            list-style: none;
        }

        nav.main-nav a {
            font-weight: 600;
            padding: 8px 16px;
            border-radius: 40px;
            background: rgba(255, 235, 240, 0.6);
            transition: all 0.2s ease;
            color: #4a2c5e;
        }

        nav.main-nav a:hover {
            background: #ff7eb3;
            color: white;
            box-shadow: 0 6px 12px rgba(255, 126, 179, 0.3);
        }

        .mobile-toggle {
            display: none;
            background: #ffd9e6;
            border: none;
            font-size: 1.7rem;
            border-radius: 20px;
            padding: 6px 12px;
            cursor: pointer;
        }

        /* HERO - anime illustration vibe */
        .hero {
            background: linear-gradient(125deg, #ffdde1, #f9c9e2, #c2e0ff);
            margin: 24px 20px 0 20px;
            border-radius: 48px;
            padding: 48px 32px;
            text-align: center;
            position: relative;
            overflow: hidden;
            box-shadow: 0 25px 45px rgba(255, 100, 150, 0.2);
            border: 1px solid rgba(255, 255, 255, 0.7);
        }

        .hero::before {
            content: "✨⭐🌸";
            font-size: 100px;
            position: absolute;
            bottom: -20px;
            right: -10px;
            opacity: 0.2;
            pointer-events: none;
        }

        .hero h1 {
            font-family: 'Poppins', sans-serif;
            font-size: 3rem;
            background: linear-gradient(135deg, #d43f8d, #6a4c9c);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 16px;
        }

        .hero p {
            font-size: 1.2rem;
            max-width: 700px;
            margin: 0 auto 28px;
            color: #2c1b38;
            font-weight: 500;
        }

        .btn {
            padding: 12px 28px;
            border-radius: 60px;
            font-weight: bold;
            border: none;
            cursor: pointer;
            transition: 0.25s;
            font-size: 1rem;
        }

        .btn-primary {
            background: linear-gradient(95deg, #ff7eb3, #b76ef0);
            color: white;
            box-shadow: 0 8px 16px #ff7eb350;
        }

        .btn-primary:hover {
            transform: translateY(-3px);
            filter: brightness(1.02);
            box-shadow: 0 12px 22px #ff7eb380;
        }

        .btn-ghost {
            background: rgba(255, 255, 255, 0.7);
            backdrop-filter: blur(4px);
            color: #7e4e9e;
            border: 1px solid white;
        }

        /* section titles */
        .section-title {
            text-align: center;
            font-size: 2.2rem;
            font-weight: 800;
            background: linear-gradient(120deg, #ff7eb3, #aa6ff5);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 8px;
        }

        .section-sub {
            text-align: center;
            color: #a077b0;
            margin-bottom: 28px;
            font-weight: 500;
        }

        /* categories grid */
        .grid.categories {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(150px, 1fr));
            gap: 24px;
            margin: 20px 0;
        }

        .cat-card {
            background: rgba(255, 250, 245, 0.9);
            backdrop-filter: blur(3px);
            border-radius: 48px;
            padding: 24px 12px;
            text-align: center;
            transition: all 0.25s ease;
            border: 1px solid rgba(255, 190, 210, 0.6);
            cursor: pointer;
            box-shadow: 0 8px 18px rgba(0, 0, 0, 0.02);
        }

        .cat-card:hover {
            transform: translateY(-8px);
            background: #fff0fb;
            border-color: #ff96bb;
            box-shadow: 0 20px 30px rgba(255, 105, 180, 0.15);
        }

        .cat-card .icon {
            font-size: 2.5rem;
            background: linear-gradient(145deg, #ff88ae, #b77df2);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        /* products */
        .grid.products {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(260px, 1fr));
            gap: 28px;
        }

        .product {
            background: var(--card-bg);
            border-radius: 36px;
            overflow: hidden;
            transition: all 0.3s cubic-bezier(0.2, 0.9, 0.4, 1.1);
            box-shadow: 0 15px 30px rgba(171, 99, 131, 0.1);
            border: 1px solid #ffe2ef;
        }

        .product:hover {
            transform: translateY(-8px);
            box-shadow: 0 28px 38px rgba(255, 100, 140, 0.2);
            border-color: #ffbfd5;
        }

        .product img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-bottom: 3px solid #ffc0d5;
        }

        .product-body {
            padding: 16px;
        }

        .product h5 {
            font-size: 1.2rem;
            font-weight: 700;
            margin-bottom: 6px;
        }

        .price-row {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
            flex-wrap: wrap;
            margin-top: 8px;
        }

        .price {
            font-weight: 800;
            font-size: 1.3rem;
            color: #e8437c;
        }

        .old-price {
            font-size: 0.8rem;
            text-decoration: line-through;
            color: #a37792;
        }

        .rating {
            color: #ffb347;
            letter-spacing: 2px;
        }

        .add-btn {
            background: linear-gradient(100deg, #ff98bc, #cb7aff);
            border: none;
            border-radius: 40px;
            padding: 10px;
            font-weight: bold;
            color: white;
            width: 100%;
            cursor: pointer;
            transition: 0.2s;
        }

        .add-btn:hover {
            background: linear-gradient(100deg, #ff80ae, #b863f0);
            transform: scale(0.98);
        }

        /* deal flash card */
        .deal {
            background: linear-gradient(125deg, #fff0f7, #ffdeed);
            border-radius: 56px;
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            padding: 20px;
            box-shadow: 0 20px 40px rgba(215, 80, 130, 0.2);
            border: 2px solid #ffcddf;
        }

        .deal img {
            border-radius: 36px;
            width: 280px;
            object-fit: cover;
            box-shadow: 10px 10px 25px rgba(0, 0, 0, 0.1);
        }

        .timer {
            display: flex;
            gap: 14px;
            margin: 20px 0;
        }

        .time-box {
            background: #2d1d3c;
            color: #ffdfe8;
            border-radius: 20px;
            padding: 12px 16px;
            text-align: center;
            min-width: 70px;
            font-weight: bold;
            font-size: 1.2rem;
        }

        /* testimonials anime style */
        .testimonials {
            display: flex;
            gap: 20px;
            overflow-x: auto;
            padding: 12px 0 20px;
        }

        .testimonial {
            background: #fff4f9;
            border-radius: 40px;
            min-width: 280px;
            padding: 22px;
            box-shadow: 0 8px 18px #ffc0d0a0;
            border-left: 12px solid #ff97bd;
        }

        /* newsletter */
        .newsletter {
            background: linear-gradient(115deg, #fcd9e8, #e2c3ff);
            border-radius: 60px;
            padding: 42px 32px;
            text-align: center;
            color: #3e2352;
        }

        footer {
            margin-top: 50px;
            background: #fffaef;
            border-radius: 48px 48px 0 0;
            padding: 36px 24px;
        }

        /* responsiveness */
        @media (max-width: 880px) {
            nav.main-nav {
                display: none;
            }

            .mobile-toggle {
                display: block;
            }

            .hero h1 {
                font-size: 2rem;
            }

            .deal img {
                width: 100%;
            }
        }

        @media (max-width: 600px) {
            .grid.products {
                grid-template-columns: 1fr;
            }

            .timer {
                flex-wrap: wrap;
            }
        }

        .sparkle-text {
            font-weight: bold;
        }

        .badge-anime {
            background: #ff7eb3;
            display: inline-block;
            padding: 4px 12px;
            border-radius: 50px;
            font-size: 0.7rem;
            color: white;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <header>
        <div class="container header-inner">
            <div style="display: flex; gap: 16px; align-items: center;">
                <button class="mobile-toggle" id="mobileToggle"><i class="fas fa-star-of-life"></i> MENU</button>
                <a class="brand" href="#"><i class="fas fa-dragon"></i> Anime<span style="background: linear-gradient(135deg,#f07bb3,#b56ef0);-webkit-background-clip:text;background-clip:text;color:transparent;">Haven</span></a>
            </div>
            <nav class="main-nav" id="desktopNav">
                <ul>
                    <li><a href="#"><i class="fas fa-home"></i> Home</a></li>
                    <li><a href="#categories"><i class="fas fa-cat"></i> Categories</a></li>
                    <li><a href="#products"><i class="fas fa-fire"></i> Trending</a></li>
                    <li><a href="#deals"><i class="fas fa-gem"></i> Otaku Deals</a></li>
                    <li><a href="#"><i class="fas fa-heart"></i> Manga</a></li>
                </ul>
            </nav>
            <div style="display: flex; gap: 12px; align-items: center;">
                <div class="search">
                    <input type="text" id="searchInput" placeholder="Search anime merch, figures...">
                    <button class="icon-btn" id="searchBtn"><i class="fas fa-search"></i></button>
                </div>
                <div class="cart" id="cartBtn">
                    <i class="fas fa-shopping-cart"></i>
                    <span class="cart-count" id="cartCount">0</span>
                </div>
                <i class="fas fa-user-astronaut icon-btn"></i>
            </div>
        </div>
        <div id="mobileMenuPanel" style="display: none; background: #ffeef4; padding: 16px 24px; border-top: 2px solid #ffb7ce;">
            <a href="#" style="display: block; margin: 8px 0;">🏠 Home</a>
            <a href="#categories" style="display: block; margin: 8px 0;">📚 Categories</a>
            <a href="#products" style="display: block; margin: 8px 0;">🔥 Trending</a>
            <a href="#deals" style="display: block; margin: 8px 0;">✨ Deals</a>
        </div>
    </header>

    <main>
        <div class="container">
            <div class="hero">
                <h1>🌸 Kawaii Drops & Anime Vibe 🌸</h1>
                <p>Discover magical figures, cosplay gear, limited artbooks — express your otaku soul with colorful deals!</p>
                <button class="btn btn-primary" id="shopNowBtn"><i class="fas fa-magic"></i> Explore Now</button>
                <button class="btn btn-ghost" id="exploreDealsBtn"><i class="fas fa-ticket-alt"></i> Flash Sale</button>
            </div>

            <!-- Categories section -->
            <div id="categories">
                <div class="section-title" style="margin-top: 20px;">✨ Magical Categories ✨</div>
                <div class="section-sub">Tap any to filter products</div>
                <div class="grid categories" id="categoriesGrid"></div>
            </div>

            <!-- Products Grid -->
            <div id="products">
                <div class="section-title">🎀 Trending Otaku Picks</div>
                <div class="section-sub">🔥 Fans love these items 🔥</div>
                <div class="grid products" id="productsGrid"></div>
            </div>

            <!-- Flash Deal with anime twist -->
            <div id="deals" style="margin: 40px 0;">
                <div class="section-title">🌟 Limited Kawaii Flash Sale 🌟</div>
                <div class="deal">
                    <img src="https://images.unsplash.com/photo-1600185365483-26d7a4cc7519?auto=format&fit=crop&w=500&q=80" alt="anime style headphones">
                    <div class="content" style="flex:1">
                        <h2 style="font-size: 1.9rem;">✨ Manga Edition Headphones ✨</h2>
                        <p>Immerse in anime soundtracks with waifu-grade audio, limited edition art.</p>
                        <div class="timer">
                            <div class="time-box"><span id="dealDays">0</span><br>Days</div>
                            <div class="time-box"><span id="dealHours">00</span><br>Hrs</div>
                            <div class="time-box"><span id="dealMinutes">00</span><br>Min</div>
                            <div class="time-box"><span id="dealSeconds">00</span><br>Sec</div>
                        </div>
                        <div><span class="price" style="font-size: 2rem;">$89</span> <span class="old-price">$149</span> <span class="badge-anime">-40% OFF</span></div>
                        <button class="btn btn-primary" id="buyDealBtn" style="margin-top: 16px;"><i class="fas fa-star"></i> Add Flash Deal</button>
                    </div>
                </div>
            </div>

            <!-- Testimonials -->
            <div>
                <div class="section-title">💬 Otaku Community 💬</div>
                <div class="testimonials">
                    <div class="testimonial">⭐️⭐️⭐️⭐️⭐️ "Super fast shipping, packaging had anime stickers! Loved it." — <strong>Rin_chan</strong></div>
                    <div class="testimonial">⭐️⭐️⭐️⭐️✨ "Figures are authentic and vibrant, will order again!" — <strong>Senpai_Kai</strong></div>
                    <div class="testimonial">⭐️⭐️⭐️⭐️⭐️ "My new go-to store for cosplay accessories" — <strong>Miyuki</strong></div>
                </div>
            </div>

            <!-- Newsletter Kawaii -->
            <div class="newsletter" style="margin: 40px 0;">
                <h3><i class="fas fa-envelope-open-text"></i> Subscribe & Get a Digital Sticker Pack!</h3>
                <p>Anime news, exclusive discounts, and free wallpapers every week.</p>
                <form id="animeNewsForm" style="display: flex; justify-content: center; gap: 12px; flex-wrap: wrap; margin-top: 20px;">
                    <input type="email" id="newsEmail" placeholder="Your email" style="padding: 12px 24px; border-radius: 100px; border: none; width: 260px;">
                    <button class="btn btn-primary" type="submit"><i class="fas fa-paper-plane"></i> Subscribe</button>
                </form>
                <div id="newsMsg" style="margin-top: 12px; font-weight: bold;"></div>
            </div>
        </div>
    </main>

    <footer>
        <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 20px;">
            <div><i class="fas fa-crown"></i> AnimeHaven © 2026 — where dreams sparkle</div>
            <div><i class="fab fa-discord"></i> <i class="fab fa-twitter"></i> <i class="fab fa-instagram"></i> @animehaven</div>
        </div>
    </footer>

    <script>
        // ----- ANIME THEMED PRODUCTS + CATEGORIES -----
        const CATEGORIES = [
            { id: "figures", name: "Figures", icon: "fa-robot" },
            { id: "apparel", name: "Cosplay", icon: "fa-tshirt" },
            { id: "accessories", name: "Accessories", icon: "fa-headphones" },
            { id: "posters", name: "Posters & Art", icon: "fa-palette" },
            { id: "manga", name: "Manga Box", icon: "fa-book-open" },
            { id: "keychains", name: "Keychains", icon: "fa-key" }
        ];

        const PRODUCTS = [
            { id: 101, title: "Nezuko Figure DX", price: 59, oldPrice: 89, rating: 5, reviews: 345, badge: "🔥 Hot", img: "https://images.unsplash.com/photo-1608889825205-eebdb9fc5806?auto=format&fit=crop&w=600&q=80", category: "figures" },
            { id: 102, title: "Akatsuki Hoodie", price: 45, rating: 4, reviews: 210, img: "https://images.unsplash.com/photo-1556905055-8f358a7a47b2?auto=format&fit=crop&w=600&q=80", category: "apparel" },
            { id: 103, title: "Cat Ear Headphones", price: 39, oldPrice: 59, rating: 5, reviews: 532, badge: "Kawaii", img: "https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80", category: "accessories" },
            { id: 104, title: "Shonen Jump Poster Set", price: 24, rating: 5, reviews: 98, img: "https://images.unsplash.com/photo-1560972550-aba3456b5564?auto=format&fit=crop&w=600&q=80", category: "posters" },
            { id: 105, title: "Jujutsu Kaisen Vol.1-5", price: 49, oldPrice: 70, rating: 5, reviews: 289, badge: "Bestseller", img: "https://images.unsplash.com/photo-1589998059171-988d887df646?auto=format&fit=crop&w=600&q=80", category: "manga" },
            { id: 106, title: "Anime Acrylic Keychain", price: 12, rating: 4, reviews: 673, img: "https://images.unsplash.com/photo-1612033442156-9c7b2d2d6ecb?auto=format&fit=crop&w=600&q=80", category: "keychains" },
            { id: 107, title: "Demon Slayer Kimono", price: 79, rating: 5, reviews: 124, img: "https://images.unsplash.com/photo-1603400521630-9f2de124b33b?auto=format&fit=crop&w=600&q=80", category: "apparel" },
            { id: 108, title: "Pastel Gaming Mousepad", price: 22, oldPrice: 35, rating: 4, reviews: 450, badge: "Cute", img: "https://images.unsplash.com/photo-1618424181497-157f25b6ddd5?auto=format&fit=crop&w=600&q=80", category: "accessories" }
        ];

        let cartCount = 0;
        const cartCountSpan = document.getElementById("cartCount");
        const productsGrid = document.getElementById("productsGrid");
        const categoriesGrid = document.getElementById("categoriesGrid");
        const searchInput = document.getElementById("searchInput");

        function updateCartUI() { cartCountSpan.textContent = cartCount; }

        function addToCart(productId) {
            const product = PRODUCTS.find(p => p.id === productId);
            if (product) {
                cartCount++;
                updateCartUI();
                const btn = document.querySelector(`.add-btn[data-id='${productId}']`);
                if (btn) {
                    const original = btn.innerHTML;
                    btn.innerHTML = "✨ Added! ✨";
                    setTimeout(() => { btn.innerHTML = original; }, 1000);
                }
            }
        }

        function renderProducts(filteredArray) {
            productsGrid.innerHTML = "";
            filteredArray.forEach(p => {
                const prodDiv = document.createElement("div");
                prodDiv.className = "product";
                prodDiv.innerHTML = `
                    <img src="${p.img}" alt="${p.title}" loading="lazy">
                    <div class="product-body">
                        <h5>${escapeHtml(p.title)} ${p.badge ? `<span class="badge-anime">${p.badge}</span>` : ""}</h5>
                        <div class="price-row">
                            <span class="price">$${p.price}</span>
                            ${p.oldPrice ? `<span class="old-price">$${p.oldPrice}</span>` : ""}
                            <span class="rating">${"★".repeat(Math.floor(p.rating))}${p.rating % 1 ? "½" : ""} (${p.reviews})</span>
                        </div>
                    </div>
                    <div style="padding: 12px;">
                        <button class="add-btn" data-id="${p.id}"><i class="fas fa-cart-plus"></i> Add to bag</button>
                    </div>
                `;
                productsGrid.appendChild(prodDiv);
            });
            document.querySelectorAll(".add-btn").forEach(btn => {
                btn.addEventListener("click", (e) => {
                    const id = parseInt(btn.dataset.id);
                    addToCart(id);
                });
            });
        }

        function filterProductsByQuery(query) {
            if (!query.trim()) return renderProducts(PRODUCTS);
            const lower = query.toLowerCase();
            const filtered = PRODUCTS.filter(p => p.title.toLowerCase().includes(lower) || p.category.toLowerCase().includes(lower));
            renderProducts(filtered);
        }

        function renderCategories() {
            categoriesGrid.innerHTML = "";
            CATEGORIES.forEach(cat => {
                const card = document.createElement("div");
                card.className = "cat-card";
                card.innerHTML = `<div class="icon"><i class="fas ${cat.icon}"></i></div><h4>${cat.name}</h4><div class="section-sub" style="font-size:12px;">✨ shop</div>`;
                card.addEventListener("click", () => {
                    searchInput.value = cat.name;
                    filterProductsByQuery(cat.name);
                    document.getElementById("products").scrollIntoView({ behavior: "smooth" });
                });
                categoriesGrid.appendChild(card);
            });
        }

        function escapeHtml(str) { return String(str).replace(/[&<>]/g, function(m){if(m==='&') return '&amp;'; if(m==='<') return '&lt;'; if(m==='>') return '&gt;'; return m;}); }

        // countdown timer vibrant
        function startDealTimer() {
            const endTime = new Date().getTime() + (36 * 3600000) + (45 * 60000);
            function tick() {
                const now = new Date().getTime();
                const diff = endTime - now;
                if (diff <= 0) {
                    document.getElementById("dealDays").innerText = "0"; document.getElementById("dealHours").innerText = "00"; document.getElementById("dealMinutes").innerText = "00"; document.getElementById("dealSeconds").innerText = "00";
                    return;
                }
                const days = Math.floor(diff / (1000 * 3600 * 24));
                const hours = Math.floor((diff % (86400000)) / 3600000);
                const mins = Math.floor((diff % 3600000) / 60000);
                const secs = Math.floor((diff % 60000) / 1000);
                document.getElementById("dealDays").innerText = days;
                document.getElementById("dealHours").innerText = hours.toString().padStart(2,'0');
                document.getElementById("dealMinutes").innerText = mins.toString().padStart(2,'0');
                document.getElementById("dealSeconds").innerText = secs.toString().padStart(2,'0');
            }
            tick();
            setInterval(tick, 1000);
        }

        // event listeners
        document.getElementById("searchBtn").addEventListener("click", () => filterProductsByQuery(searchInput.value));
        searchInput.addEventListener("keypress", (e) => { if(e.key === "Enter") filterProductsByQuery(searchInput.value); });
        document.getElementById("shopNowBtn").addEventListener("click", () => document.getElementById("products").scrollIntoView({ behavior: "smooth" }));
        document.getElementById("exploreDealsBtn").addEventListener("click", () => document.getElementById("deals").scrollIntoView({ behavior: "smooth" }));
        document.getElementById("buyDealBtn").addEventListener("click", () => { cartCount++; updateCartUI(); alert("🎉 Flash deal added! 🎉"); });
        document.getElementById("mobileToggle").addEventListener("click", () => { const panel = document.getElementById("mobileMenuPanel"); panel.style.display = panel.style.display === "none" ? "block" : "none"; });
        document.getElementById("animeNewsForm").addEventListener("submit", (e) => {
            e.preventDefault();
            const email = document.getElementById("newsEmail").value;
            const msgDiv = document.getElementById("newsMsg");
            if (!email || !email.includes("@")) { msgDiv.innerHTML = "🌸 Enter a valid email, please! 🌸"; msgDiv.style.color = "#d14b8f"; }
            else { msgDiv.innerHTML = "✨ Yay! You're now part of the Otaku family ✨"; msgDiv.style.color = "#2e7d64"; document.getElementById("newsEmail").value = ""; }
            setTimeout(() => msgDiv.innerHTML = "", 3000);
        });
        document.getElementById("cartBtn").addEventListener("click", () => alert(`🛒 You have ${cartCount} item(s) in cart! (demo anime checkout)`));

        // init all
        renderCategories();
        renderProducts(PRODUCTS);
        updateCartUI();
        startDealTimer();
    </script>
</body>
</html>
