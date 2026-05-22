<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, viewport-fit=cover" />
    <title>VELORIA — Luxury E‑Commerce Experience</title>

    <!-- Fonts & Icons -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:opsz,wght@14..32,300;14..32,400;14..32,500;14..32,600;14..32,700&family=Playfair+Display:wght@500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            background: #0B0C10;
            font-family: 'Inter', sans-serif;
            color: #E8EDF2;
            line-height: 1.5;
            scroll-behavior: smooth;
        }

        /* Modern glass & gradients */
        .glass-card {
            background: rgba(20, 24, 32, 0.75);
            backdrop-filter: blur(12px);
            border: 1px solid rgba(255, 255, 255, 0.08);
            border-radius: 28px;
        }

        .container {
            max-width: 1400px;
            margin: 0 auto;
            padding: 0 32px;
        }

        /* Header premium */
        header {
            position: sticky;
            top: 0;
            z-index: 100;
            background: rgba(11, 12, 16, 0.85);
            backdrop-filter: blur(20px);
            border-bottom: 1px solid rgba(255, 255, 255, 0.05);
            transition: all 0.3s ease;
        }

        .header-inner {
            display: flex;
            align-items: center;
            justify-content: space-between;
            padding: 18px 0;
            gap: 24px;
        }

        .brand {
            display: flex;
            align-items: center;
            gap: 6px;
            font-family: 'Playfair Display', serif;
            font-size: 26px;
            font-weight: 700;
            letter-spacing: -0.02em;
            background: linear-gradient(135deg, #FFFFFF 30%, #C0A25C 80%);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
        }

        .brand i {
            background: none;
            -webkit-background-clip: unset;
            background-clip: unset;
            color: #C0A25C;
            font-size: 24px;
        }

        nav.main-nav ul {
            display: flex;
            gap: 32px;
            list-style: none;
        }

        nav.main-nav a {
            font-weight: 500;
            color: #D1D8E6;
            transition: 0.2s;
            font-size: 15px;
            letter-spacing: 0.3px;
        }

        nav.main-nav a:hover {
            color: #E8C468;
        }

        .search {
            background: rgba(255, 255, 255, 0.05);
            border-radius: 60px;
            padding: 8px 16px;
            display: flex;
            align-items: center;
            gap: 10px;
            border: 1px solid rgba(255,255,255,0.1);
            transition: 0.2s;
        }

        .search:focus-within {
            border-color: #C0A25C;
            background: rgba(255,255,255,0.08);
        }

        .search input {
            background: transparent;
            border: none;
            outline: none;
            color: white;
            font-size: 14px;
            width: 200px;
        }

        .search input::placeholder {
            color: #8E99AB;
        }

        .header-actions {
            display: flex;
            gap: 20px;
        }

        .icon-btn {
            color: #E8EDF2;
            font-size: 20px;
            transition: 0.2s;
            cursor: pointer;
        }

        .icon-btn:hover {
            color: #E8C468;
        }

        .cart {
            position: relative;
        }

        .cart-count {
            position: absolute;
            top: -8px;
            right: -12px;
            background: #C0A25C;
            color: #0B0C10;
            font-size: 11px;
            font-weight: 800;
            width: 18px;
            height: 18px;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .mobile-toggle {
            display: none;
            background: none;
            border: none;
            font-size: 24px;
            color: white;
            cursor: pointer;
        }

        /* Hero Section Premium */
        .hero-premium {
            position: relative;
            min-height: 85vh;
            display: flex;
            align-items: center;
            justify-content: center;
            text-align: center;
            background: radial-gradient(circle at 80% 20%, #1A1E28, #050608);
            border-radius: 0 0 48px 48px;
            margin-bottom: 20px;
            overflow: hidden;
        }

        .hero-premium::before {
            content: "";
            position: absolute;
            inset: 0;
            background: url('https://images.unsplash.com/photo-1441986300917-64674bd600d8?auto=format&fit=crop&w=2000&q=80') center/cover;
            opacity: 0.2;
            mix-blend-mode: overlay;
        }

        .hero-content {
            position: relative;
            max-width: 900px;
            padding: 40px 24px;
        }

        .hero-content h1 {
            font-family: 'Playfair Display', serif;
            font-size: 64px;
            font-weight: 700;
            background: linear-gradient(to right, #F9F6F0, #E2C28B);
            -webkit-background-clip: text;
            background-clip: text;
            color: transparent;
            margin-bottom: 20px;
        }

        .btn-group {
            display: flex;
            gap: 18px;
            justify-content: center;
            margin-top: 32px;
        }

        .btn {
            padding: 14px 32px;
            border-radius: 40px;
            font-weight: 600;
            font-size: 15px;
            transition: 0.25s;
            cursor: pointer;
            border: none;
        }

        .btn-primary {
            background: #C0A25C;
            color: #0B0C10;
            box-shadow: 0 8px 20px rgba(192, 162, 92, 0.25);
        }

        .btn-primary:hover {
            background: #D9B46C;
            transform: translateY(-2px);
        }

        .btn-outline {
            background: transparent;
            border: 1.5px solid rgba(255,255,255,0.4);
            color: white;
        }

        .btn-outline:hover {
            border-color: #C0A25C;
            background: rgba(192, 162, 92, 0.1);
        }

        /* Section Headers */
        .section-header {
            text-align: center;
            margin-bottom: 48px;
        }

        .section-header h2 {
            font-family: 'Playfair Display', serif;
            font-size: 40px;
            font-weight: 600;
            letter-spacing: -0.01em;
        }

        .section-header p {
            color: #8E99AB;
            font-size: 18px;
            margin-top: 8px;
        }

        .grid-categories {
            display: grid;
            grid-template-columns: repeat(6, 1fr);
            gap: 24px;
        }

        .cat-item {
            background: rgba(26, 30, 40, 0.6);
            backdrop-filter: blur(4px);
            border-radius: 32px;
            padding: 24px 12px;
            text-align: center;
            transition: all 0.25s;
            border: 1px solid rgba(255,255,255,0.05);
            cursor: pointer;
        }

        .cat-item:hover {
            background: rgba(192, 162, 92, 0.12);
            transform: translateY(-6px);
            border-color: rgba(192, 162, 92, 0.5);
        }

        .cat-icon {
            font-size: 36px;
            color: #C0A25C;
            margin-bottom: 12px;
        }

        /* Products Grid modern */
        .products-grid {
            display: grid;
            grid-template-columns: repeat(4, 1fr);
            gap: 28px;
        }

        .product-card {
            background: #13161F;
            border-radius: 28px;
            overflow: hidden;
            transition: transform 0.25s, box-shadow 0.3s;
            border: 1px solid rgba(255,255,255,0.05);
        }

        .product-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 25px 35px -12px rgba(0,0,0,0.5);
            border-color: rgba(192, 162, 92, 0.3);
        }

        .product-img {
            height: 260px;
            width: 100%;
            object-fit: cover;
            transition: 0.4s;
        }

        .product-info {
            padding: 18px;
        }

        .product-title {
            font-weight: 600;
            font-size: 18px;
        }

        .price-wrapper {
            display: flex;
            align-items: baseline;
            gap: 12px;
            margin: 10px 0;
        }

        .current-price {
            font-size: 22px;
            font-weight: 700;
            color: #E8C468;
        }

        .old-price {
            font-size: 14px;
            text-decoration: line-through;
            color: #6B7280;
        }

        .rating {
            color: #E8C468;
            font-size: 13px;
            margin: 8px 0;
        }

        .add-to-cart {
            background: rgba(192, 162, 92, 0.2);
            border: 1px solid rgba(192, 162, 92, 0.5);
            width: 100%;
            padding: 12px;
            border-radius: 40px;
            font-weight: 600;
            color: #E8C468;
            cursor: pointer;
            transition: 0.2s;
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 8px;
        }

        .add-to-cart:hover {
            background: #C0A25C;
            color: #0B0C10;
        }

        /* flash sale premium */
        .flash-sale {
            background: linear-gradient(120deg, #0F111A, #181C26);
            border-radius: 48px;
            padding: 48px;
            display: flex;
            gap: 40px;
            align-items: center;
            border: 1px solid rgba(255,215,120,0.15);
        }

        .flash-img {
            flex: 1;
            border-radius: 32px;
            overflow: hidden;
        }

        .flash-img img {
            width: 100%;
            height: 340px;
            object-fit: cover;
            border-radius: 32px;
        }

        .flash-content {
            flex: 1;
        }

        .timer-modern {
            display: flex;
            gap: 18px;
            margin: 28px 0;
        }

        .time-segment {
            background: #00000030;
            backdrop-filter: blur(8px);
            border-radius: 24px;
            padding: 12px 20px;
            text-align: center;
            min-width: 80px;
            border: 1px solid rgba(255,255,200,0.2);
        }

        .time-number {
            font-size: 32px;
            font-weight: 800;
            color: #E8C468;
        }

        /* testimonial premium */
        .testimonial-scroll {
            display: flex;
            gap: 28px;
            overflow-x: auto;
            padding-bottom: 16px;
        }

        .testimonial-card {
            min-width: 340px;
            background: #13161F;
            border-radius: 28px;
            padding: 28px;
            border: 1px solid rgba(255,255,255,0.05);
        }

        /* newsletter modern */
        .newsletter-premium {
            background: radial-gradient(ellipse at 30% 20%, #232837, #0A0C12);
            border-radius: 48px;
            padding: 56px 40px;
            text-align: center;
            border: 1px solid rgba(255,255,255,0.08);
        }

        .newsletter-group {
            display: flex;
            justify-content: center;
            gap: 12px;
            margin-top: 28px;
            flex-wrap: wrap;
        }

        .newsletter-group input {
            background: rgba(0,0,0,0.4);
            border: 1px solid rgba(255,255,255,0.2);
            border-radius: 60px;
            padding: 14px 24px;
            width: 320px;
            color: white;
            font-size: 16px;
        }

        footer {
            padding: 64px 0 32px;
            border-top: 1px solid rgba(255,255,255,0.05);
            margin-top: 48px;
        }

        @media (max-width: 1200px) {
            .grid-categories { grid-template-columns: repeat(3,1fr);}
            .products-grid { grid-template-columns: repeat(3,1fr);}
        }
        @media (max-width: 900px) {
            .products-grid { grid-template-columns: repeat(2,1fr);}
            .grid-categories { grid-template-columns: repeat(2,1fr);}
            .flash-sale { flex-direction: column; }
            nav.main-nav { display: none; }
            .mobile-toggle { display: block; }
            .container { padding: 0 20px; }
            .hero-content h1 { font-size: 44px; }
        }
        @media (max-width: 600px) {
            .products-grid { grid-template-columns: 1fr; }
            .testimonial-card { min-width: 280px; }
        }
    </style>
</head>
<body>

<header>
    <div class="container header-inner">
        <div style="display: flex; align-items: center; gap: 18px;">
            <button class="mobile-toggle" id="mobileToggleBtn"><i class="fas fa-gem"></i></button>
            <div class="brand">
                <i class="fas fa-crown"></i>
                <span>RAJ</span>
            </div>
        </div>
        <nav class="main-nav">
            <ul>
                <li><a href="#">Home</a></li>
                <li><a href="#products">Shop</a></li>
                <li><a href="#deals">Luxury Drops</a></li>
                <li><a href="#">Journal</a></li>
                <li><a href="#">Boutique</a></li>
            </ul>
        </nav>
        <div style="display: flex; gap: 16px; align-items: center;">
            <div class="search">
                <i class="fas fa-search" style="color: #8E99AB;"></i>
                <input type="text" id="searchInputPremium" placeholder="Search exquisite items...">
            </div>
            <div class="header-actions">
                <i class="far fa-heart icon-btn"></i>
                <div class="cart icon-btn" id="cartIcon">
                    <i class="fas fa-bag-shopping"></i>
                    <span class="cart-count" id="cartCounter">0</span>
                </div>
            </div>
        </div>
    </div>
    <div id="mobileMenuPanel" style="display: none; background: #0B0C10; border-top: 1px solid #222; padding: 20px;">
        <ul style="list-style: none; display: flex; flex-direction: column; gap: 16px;">
            <li><a href="#">Home</a></li>
            <li><a href="#products">Shop</a></li>
            <li><a href="#deals">Deals</a></li>
            <li><a href="#">About</a></li>
        </ul>
    </div>
</header>

<main>
    <section class="hero-premium">
        <div class="hero-content">
            <h1>Where Elegance Meets Innovation</h1>
            <p style="font-size: 18px; opacity: 0.85;">Discover couture tech, handcrafted accessories & timeless luxury — curated for the connoisseur.</p>
            <div class="btn-group">
                <button class="btn btn-primary" id="exploreLuxury">Explore Collection <i class="fas fa-arrow-right"></i></button>
                <button class="btn btn-outline" id="scrollDealsBtn">Exclusive Offers</button>
            </div>
        </div>
    </section>

    <section class="container" style="margin-top: 60px;">
        <div class="section-header">
            <h2>Curated Categories</h2>
            <p>finest selections from global artisans</p>
        </div>
        <div class="grid-categories" id="premiumCategories"></div>
    </section>

    <section id="products" class="container" style="margin-top: 80px;">
        <div class="section-header">
            <h2>Iconic Pieces</h2>
            <p>limited editions & signature designs</p>
        </div>
        <div class="products-grid" id="premiumProductsGrid"></div>
    </section>

    <section id="deals" class="container" style="margin-top: 80px;">
        <div class="section-header">
            <h2>Golden Hour <span style="color:#C0A25C;">Drop</span></h2>
            <p>Flash sale — timeless elegance at exceptional value</p>
        </div>
        <div class="flash-sale">
            <div class="flash-img">
                <img src="https://images.unsplash.com/photo-1611186871348-b1ce696e52c9?auto=format&fit=crop&w=800&q=80" alt="Limited Edition">
            </div>
            <div class="flash-content">
                <h3 style="font-size: 32px; font-family: 'Playfair Display';">Horizon M2 Edition</h3>
                <p style="color: #B5C0D0; margin: 12px 0;">Ultra-slim titanium body, infinite display, and bespoke sound. Icon of modern luxury.</p>
                <div class="timer-modern" id="luxuryTimer">
                    <div class="time-segment"><div class="time-number" id="dealDays">00</div><div>DAYS</div></div>
                    <div class="time-segment"><div class="time-number" id="dealHours">00</div><div>HRS</div></div>
                    <div class="time-segment"><div class="time-number" id="dealMinutes">00</div><div>MIN</div></div>
                    <div class="time-segment"><div class="time-number" id="dealSeconds">00</div><div>SEC</div></div>
                </div>
                <div style="display: flex; gap: 18px; align-items: baseline;">
                    <span class="current-price" style="font-size: 38px;">$999</span>
                    <span style="text-decoration: line-through; color:#7F8C8D;">$1,599</span>
                    <span style="background: #C0A25C20; padding: 6px 12px; border-radius: 40px; font-size: 14px; font-weight: bold;">-37%</span>
                </div>
                <button class="btn btn-primary" id="flashDealAdd" style="margin-top: 28px; width: 100%;">Secure this Deal <i class="fas fa-lock"></i></button>
            </div>
        </div>
    </section>

    <section class="container" style="margin-top: 80px;">
        <div class="section-header">
            <h2>Whispers of our patrons</h2>
            <p>Kind words from global collectors</p>
        </div>
        <div class="testimonial-scroll" id="testimonialContainer">
            <div class="testimonial-card"><i class="fas fa-star" style="color:#C0A25C;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><p style="margin: 14px 0;">"Unreal quality — the packaging felt like opening a gallery piece."</p><strong>— S. Laurent</strong></div>
            <div class="testimonial-card"><i class="fas fa-star" style="color:#C0A25C;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><p style="margin: 14px 0;">"Shipping faster than light, and the support team is exquisite."</p><strong>— M. Chen</strong></div>
            <div class="testimonial-card"><i class="fas fa-star" style="color:#C0A25C;"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star"></i><i class="fas fa-star-half-alt"></i><p style="margin: 14px 0;">"The attention to detail is second to none. New favorite store."</p><strong>— E. Verdi</strong></div>
        </div>
    </section>

    <section class="container" style="margin-top: 80px;">
        <div class="newsletter-premium">
            <i class="fas fa-envelope-open-text" style="font-size: 40px; color:#C0A25C; margin-bottom: 16px;"></i>
            <h3 style="font-size: 28px;">Join the Inner Circle</h3>
            <p>Be first to access private sales & exclusive editions</p>
            <div class="newsletter-group">
                <input type="email" id="luxuryEmail" placeholder="you@example.com">
                <button class="btn btn-primary" id="subscribeLuxuryBtn">Subscribe <i class="fas fa-paper-plane"></i></button>
            </div>
            <div id="newsFeedback" style="margin-top: 14px; font-size: 14px;"></div>
        </div>
    </section>
</main>

<footer>
    <div class="container" style="display: flex; justify-content: space-between; flex-wrap: wrap; gap: 30px;">
        <div><div class="brand" style="font-size: 24px;">VELORIA</div><p style="margin-top: 12px; color: #8E99AB;">Luxury ecosystem since 2025</p></div>
        <div><h4>Discover</h4><div style="color: #8E99AB;">New Arrivals<br>Bespoke<br>Archive</div></div>
        <div><h4>Assistance</h4><div style="color: #8E99AB;">Concierge<br>Returns<br>FAQ</div></div>
    </div>
    <div class="container" style="text-align: center; margin-top: 40px; font-size: 13px; color:#5A6579;">© <span id="currentYear"></span> VELORIA — Art of Refined Commerce</div>
</footer>

<script>
    // --- PREMIUM PRODUCTS & CATEGORIES (rich data) ---
    const LUXE_CATEGORIES = [
        { id: 'watches', name: 'Horology', icon: 'fas fa-clock' },
        { id: 'leather', name: 'Leather Atelier', icon: 'fas fa-briefcase' },
        { id: 'audio', name: 'Sonorous', icon: 'fas fa-headphones' },
        { id: 'eyewear', name: 'Optics', icon: 'fas fa-glasses' },
        { id: 'scents', name: 'Parfums', icon: 'fas fa-spa' },
        { id: 'tech', name: 'Tech Couture', icon: 'fas fa-microchip' }
    ];
    const LUXE_PRODUCTS = [
        { id: 101, title: 'Aether Chronograph', price: 1890, oldPrice: 2450, rating: 5, img: 'https://images.unsplash.com/photo-1523170335258-f5ed11844a49?auto=format&fit=crop&w=600&q=80', category: 'watches', badge: 'Limited' },
        { id: 102, title: 'Monogram Leather Backpack', price: 790, oldPrice: 1290, rating: 4, img: 'https://images.unsplash.com/photo-1548036328-c9fa89d128fa?auto=format&fit=crop&w=600&q=80', category: 'leather', badge: 'Handcrafted' },
        { id: 103, title: 'Sovereign Headphones', price: 549, oldPrice: 799, rating: 5, img: 'https://images.unsplash.com/photo-1618366712010-f4ae9c647dcb?auto=format&fit=crop&w=600&q=80', category: 'audio' },
        { id: 104, title: 'Celestial Shades', price: 380, rating: 5, img: 'https://images.unsplash.com/photo-1572635196237-14b3f281503f?auto=format&fit=crop&w=600&q=80', category: 'eyewear' },
        { id: 105, title: 'Noir Extreme Perfume', price: 295, oldPrice: 430, rating: 5, img: 'https://images.unsplash.com/photo-1592945403244-b3fbafd7f539?auto=format&fit=crop&w=600&q=80', category: 'scents', badge: 'Iconic' },
        { id: 106, title: 'Phantom Laptop Sleeve', price: 220, rating: 4, img: 'https://images.unsplash.com/photo-1588872657578-7efd1f1555ed?auto=format&fit=crop&w=600&q=80', category: 'tech' },
        { id: 107, title: 'Onyx Smart Ring', price: 420, oldPrice: 620, rating: 5, img: 'https://images.unsplash.com/photo-1572635196237-14b3f281503f?auto=format&fit=crop&w=600&q=80', category: 'tech' },
        { id: 108, title: 'Silk Scarf Collection', price: 190, rating: 4, img: 'https://images.unsplash.com/photo-1606761568499-6d2451b23c66?auto=format&fit=crop&w=600&q=80', category: 'leather' }
    ];

    let cartTotal = 0;
    const cartCountSpan = document.getElementById('cartCounter');
    const productsContainer = document.getElementById('premiumProductsGrid');
    const categoryContainer = document.getElementById('premiumCategories');

    function renderLuxeCategories() {
        categoryContainer.innerHTML = LUXE_CATEGORIES.map(cat => `
            <div class="cat-item" data-cat-name="${cat.name}">
                <div class="cat-icon"><i class="${cat.icon}"></i></div>
                <h4 style="font-size: 16px;">${cat.name}</h4>
            </div>
        `).join('');
        document.querySelectorAll('.cat-item').forEach(el => {
            el.addEventListener('click', (e) => {
                const catName = el.getAttribute('data-cat-name');
                const searchBox = document.getElementById('searchInputPremium');
                searchBox.value = catName;
                filterProductsPremium(catName);
            });
        });
    }

    function filterProductsPremium(query) {
        const searchTerm = query.toLowerCase().trim();
        if (!searchTerm) return renderPremiumProducts(LUXE_PRODUCTS);
        const filtered = LUXE_PRODUCTS.filter(p => p.title.toLowerCase().includes(searchTerm) || p.category.toLowerCase().includes(searchTerm));
        renderPremiumProducts(filtered);
    }

    function renderPremiumProducts(productsArray) {
        productsContainer.innerHTML = productsArray.map(p => `
            <div class="product-card">
                <img class="product-img" src="${p.img}" alt="${p.title}" loading="lazy">
                <div class="product-info">
                    <div class="product-title">${p.title}</div>
                    <div class="price-wrapper">
                        <span class="current-price">$${p.price.toLocaleString()}</span>
                        ${p.oldPrice ? `<span class="old-price">$${p.oldPrice.toLocaleString()}</span>` : ''}
                    </div>
                    <div class="rating">${'★'.repeat(p.rating)}${p.rating <5 ? '☆' : ''}</div>
                    <button class="add-to-cart" data-id="${p.id}"><i class="fas fa-shopping-bag"></i> Add to Cart</button>
                </div>
            </div>
        `).join('');
        document.querySelectorAll('.add-to-cart').forEach(btn => {
            btn.addEventListener('click', (e) => {
                const id = parseInt(btn.dataset.id);
                const product = LUXE_PRODUCTS.find(pr => pr.id === id);
                if(product) {
                    cartTotal++;
                    cartCountSpan.innerText = cartTotal;
                    btn.innerHTML = '<i class="fas fa-check"></i> Added';
                    setTimeout(() => { btn.innerHTML = '<i class="fas fa-shopping-bag"></i> Add to Cart'; }, 1200);
                }
            });
        });
    }

    // search handler
    const searchPremium = document.getElementById('searchInputPremium');
    const searchBtn = document.querySelector('.search i');
    function handleSearch() { filterProductsPremium(searchPremium.value); }
    searchPremium.addEventListener('keypress', (e) => { if(e.key === 'Enter') handleSearch(); });
    if(searchBtn) searchBtn.addEventListener('click', handleSearch);

    // deal timer
    function startElegantTimer() {
        const target = new Date();
        target.setHours(target.getHours() + 28);
        target.setMinutes(target.getMinutes() + 45);
        function update(){
            const diff = target - new Date();
            if(diff<=0){ document.getElementById('dealDays').innerText='00'; document.getElementById('dealHours').innerText='00'; document.getElementById('dealMinutes').innerText='00'; document.getElementById('dealSeconds').innerText='00'; return; }
            const d = Math.floor(diff/(1000*60*60*24));
            const h = Math.floor((diff%(1000*60*60*24))/(1000*60*60));
            const m = Math.floor((diff%(1000*60*60))/(1000*60));
            const s = Math.floor((diff%(1000*60))/1000);
            document.getElementById('dealDays').innerText = d;
            document.getElementById('dealHours').innerText = String(h).padStart(2,'0');
            document.getElementById('dealMinutes').innerText = String(m).padStart(2,'0');
            document.getElementById('dealSeconds').innerText = String(s).padStart(2,'0');
        }
        update(); setInterval(update,1000);
    }
    startElegantTimer();

    // flash deal add
    document.getElementById('flashDealAdd').addEventListener('click', () => {
        cartTotal++;
        cartCountSpan.innerText = cartTotal;
        alert('Limited Edition added to your private cart ✨');
    });

    // newsletter
    document.getElementById('subscribeLuxuryBtn').addEventListener('click', () => {
        const email = document.getElementById('luxuryEmail').value.trim();
        const feed = document.getElementById('newsFeedback');
        if(!email || !email.includes('@')) { feed.innerHTML = '<span style="color:#E8C468;">Enter a valid email, please.</span>'; feed.style.opacity='1'; setTimeout(()=>feed.innerHTML='',2500); return; }
        feed.innerHTML = '<span style="color:#C0A25C;">✓ Welcome to the inner circle — a golden ticket awaits.</span>';
        setTimeout(()=>feed.innerHTML='',3000);
        document.getElementById('luxuryEmail').value='';
    });

    // mobile toggle
    const mobBtn = document.getElementById('mobileToggleBtn');
    const mobPanel = document.getElementById('mobileMenuPanel');
    mobBtn.addEventListener('click', () => {
        mobPanel.style.display = mobPanel.style.display === 'none' ? 'block' : 'none';
    });
    document.getElementById('exploreLuxury').addEventListener('click', () => { document.getElementById('products').scrollIntoView({behavior:'smooth'}); });
    document.getElementById('scrollDealsBtn').addEventListener('click', () => { document.getElementById('deals').scrollIntoView({behavior:'smooth'}); });

    document.getElementById('currentYear').innerText = new Date().getFullYear();

    renderLuxeCategories();
    renderPremiumProducts(LUXE_PRODUCTS);
    cartCountSpan.innerText = cartTotal;
</script>
</body>
</html>
