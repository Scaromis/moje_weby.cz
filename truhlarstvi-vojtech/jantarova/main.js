/* =========================================================
   Truhlářství Vojtěch – skripty
   (vychází z návrhu pro Kašpar truhlářství)
   1) fotky (úvod, Kdo jsme?) – náhodné prolínání
   2) úvodní animace + „přeletění“ názvu a odkazů do lišty
   3) vyjíždějící nabídka u „Služby“
   4) e-mail a telefon v úvodu – zkopírování
   5) Kdo jsme? – „Zobrazit více…“
   6) karty oborů – na hlavní stránce se obory náhodně střídají,
      na stránce „Zobrazit vše“ se střídají fotky v každé kartě
   7) box s formulářem – „click“ nápisy
   ========================================================= */
(() => {
  'use strict';

  const root = document.documentElement;
  const $ = (s, r = document) => r.querySelector(s);
  const $$ = (s, r = document) => [...r.querySelectorAll(s)];
  const shuffle = (a) => a.map((v) => [Math.random(), v]).sort((x, y) => x[0] - y[0]).map((p) => p[1]);
  const mqCompact = matchMedia('(max-width: 1000px)');   // lišta s hamburgerem
  const canHover = matchMedia('(hover: hover)').matches;

  /* ---------------------------------------------------------
     OBORY A FOTKY
     Fotky jsou ve složce img/<obor>/01.jpg, 02.jpg …
     (stažené z galerií jejich současného webu – zatím jen
     nástřel, pan Vojtěch pošle nové; pak stačí přepsat počty)
     --------------------------------------------------------- */
  const CATS = [
    { k: 'detske-pokoje', name: 'Dětské pokoje', n: 15 },
    { k: 'dvere-interierove', name: 'Dveře interiérové', n: 20 },
    { k: 'dvere-venkovni', name: 'Dveře venkovní', n: 20 },
    { k: 'komercni-prostory', name: 'Komerční prostory', n: 20 },
    { k: 'kuchyne', name: 'Kuchyně', n: 20 },
    { k: 'loznice', name: 'Ložnice', n: 20 },
    { k: 'obyvaci-pokoje', name: 'Obývací pokoje', n: 20 },
    { k: 'ostatni-nabytek', name: 'Ostatní nábytek', n: 20 },
    { k: 'ploty-balkony-zahradni-domky', name: 'Ploty, balkony, zahradní domky', n: 20 },
    { k: 'schodiste', name: 'Schodiště', n: 20 },
    { k: 'skrine-a-doplnky', name: 'Skříně a doplňky', n: 20 },
    { k: 'soliter', name: 'Solitér', n: 4 },
    { k: 'stoly', name: 'Stoly', n: 15 }
  ];
  const CAT = Object.fromEntries(CATS.map((c) => [c.k, c]));

  const list = (k, n) => Array.from({ length: n }, (_, i) => ({ src: `../img/${k}/${String(i + 1).padStart(2, '0')}.jpg` }));
  const PHOTOS = Object.fromEntries(CATS.map((c) => [c.k, list(c.k, c.n)]));
  PHOTOS.vse = CATS.flatMap((c) => PHOTOS[c.k]);
  PHOTOS.uvod = list('uvod', 6);   // fotky z úvodu jejich webu

  /* Ověří, že fotka existuje (funguje i při otevření ze složky) */
  const cache = new Map();
  const probe = (url) => new Promise((resolve) => {
    const img = new Image();
    img.onload = () => resolve(img.naturalWidth ? url : null);
    img.onerror = () => resolve(null);
    img.src = url;
  });
  const resolvePhoto = (p) => {
    if (!cache.has(p.src)) cache.set(p.src, probe(p.src));
    return cache.get(p.src);
  };
  const loadImg = async (item, className) => {
    const url = await resolvePhoto(item);
    if (!url) return null;
    const el = new Image();
    el.alt = '';
    el.decoding = 'async';
    el.src = url;
    try { await el.decode(); } catch (e) { /* nevadí */ }
    el.className = className;
    return el;
  };

  /* Prolínání fotek – náhodné pořadí (pokaždé jiná první fotka),
     další fotka se načte předem */
  function startRotator(box, items, opts) {
    const order = shuffle(items.slice());
    let i = 0;
    let current = null;

    const show = (el) => {
      box.prepend(el);
      requestAnimationFrame(() => requestAnimationFrame(() => el.classList.add('is-active')));
      const old = current;
      current = el;
      if (old) {
        old.classList.remove('is-active');
        setTimeout(() => old.remove(), opts.fade + 200);
      }
    };

    let next = loadImg(order[0], opts.className);
    const step = async () => {
      const el = await next;
      if (el) show(el);
      if (order.length < 2 && current) return;   // jen jedna fotka – nic dalšího
      i = (i + 1) % order.length;
      next = loadImg(order[i], opts.className);
      setTimeout(step, el ? opts.interval() : 50);
    };
    setTimeout(step, opts.delay || 0);
  }

  /* ---------------------------------------------------------
     1 · Fotky
     --------------------------------------------------------- */
  const hero = $('.hero');
  const slides = $('.hero-slides');
  if (slides) {
    startRotator(slides, PHOTOS.uvod, { className: 'hero-slide', fade: 1800, interval: () => 6500 });
  }

  // Kdo jsme? – velká fotka a dvě menší, každá svým tempem (ze všech galerií)
  $$('.about-photo').forEach((box, n) => {
    startRotator(box, PHOTOS.vse, {
      className: 'about-img',
      fade: 1400,
      delay: n * 1300,
      interval: () => 4600 + Math.random() * 2200
    });
  });

  // Stránka „Zobrazit vše“ – v každé kartě se střídají fotky jejího oboru
  $$('.card[data-photos]').forEach((card, n) => {
    startRotator(card, PHOTOS[card.dataset.photos] || [], {
      className: 'card-photo',
      fade: 1400,
      delay: n * 220,
      interval: () => 4400 + Math.random() * 2400
    });
  });

  /* ---------------------------------------------------------
     2 · Úvodní animace a lišta (jako u Průmstavu a Nývlta)
     --------------------------------------------------------- */
  const bar = $('.topbar');
  const burger = bar ? $('.burger', bar) : null;
  const barBrand = bar ? $('.topbar-brand', bar) : null;
  const barLinks = bar ? $$('.menu-link', bar) : [];
  const heroBrand = hero ? $('.hero-brand', hero) : null;
  const heroLinks = hero ? $$('.menu-link', hero) : [];

  const finishIntro = () => root.classList.add('intro-done');

  if (hero) {
    const fontsReady = document.fonts && document.fonts.ready ? document.fonts.ready : Promise.resolve();
    Promise.race([fontsReady, new Promise((r) => setTimeout(r, 1500))])
      .then(() => requestAnimationFrame(() => root.classList.add('is-ready')));
    const lastText = $$('.hero-nav .menu-link span').pop();
    if (lastText) {
      lastText.addEventListener('animationend', (e) => {
        if (e.target === lastText && e.animationName === 'label-in') finishIntro();
      });
    }
    setTimeout(finishIntro, 6000);   // pojistka
  } else {
    root.classList.add('is-ready', 'intro-done', 'is-docked');   // podstránky: lišta je vidět hned
  }

  const closeSubs = (except) => $$('.has-sub.is-sub-open').forEach((li) => {
    if (li === except) return;
    li.classList.remove('is-sub-open');
    const t = $('.sub-toggle', li);
    if (t) t.setAttribute('aria-expanded', 'false');
  });

  const setMenu = (open) => {
    if (!bar || !burger) return;
    bar.classList.toggle('is-open', open);
    burger.setAttribute('aria-expanded', String(open));
    burger.setAttribute('aria-label', open ? 'Zavřít menu' : 'Otevřít menu');
    if (!open) closeSubs();
  };
  if (burger) {
    burger.addEventListener('click', () => setMenu(!bar.classList.contains('is-open')));
    bar.addEventListener('click', (e) => {
      const plainLink = e.target.closest('.menu-link') && !e.target.closest('.has-sub');
      if (plainLink || e.target.closest('.sub-link')) setMenu(false);
    });
  }
  document.addEventListener('keydown', (e) => {
    if (e.key !== 'Escape') return;
    setMenu(false);
    closeSubs();
    if (document.activeElement && document.activeElement.closest('.has-sub')) document.activeElement.blur();
  });

  /* „Přeletění“ (FLIP): prvek v liště začne tam, kde byl v úvodu,
     a plynule doletí na své místo. Zpátky to funguje obráceně. */
  const DUR = 720;
  const EASE = 'cubic-bezier(.2, .75, .15, 1)';
  let running = [];
  const stopAll = () => { running.forEach((a) => a.cancel()); running = []; };

  const fly = (el, from, delay = 0) => {
    const to = el.getBoundingClientRect();
    if (!to.width || !from || !from.width) return;
    const sx = from.width / to.width;
    const sy = from.height / to.height;
    const dx = from.left + from.width / 2 - (to.left + to.width / 2);
    const dy = from.top + from.height / 2 - (to.top + to.height / 2);
    running.push(el.animate(
      [{ transform: `translate(${dx}px, ${dy}px) scale(${sx}, ${sy})` }, { transform: 'none' }],
      { duration: DUR, delay, easing: EASE, fill: 'backwards' }
    ));
  };

  function dock(animate) {
    finishIntro();
    closeSubs();
    if (document.activeElement && hero && hero.contains(document.activeElement)) document.activeElement.blur();
    if (!animate) { root.classList.add('is-docked'); return; }
    const from = [heroBrand, ...heroLinks].map((el) => el.getBoundingClientRect());
    stopAll();
    root.classList.add('is-docked');
    fly(barBrand, from[0]);
    if (!mqCompact.matches) {
      barLinks.forEach((el, i) => fly(el, from[i + 1], 50 + i * 40));
    } else {
      // na mobilu se odkazy schovají do hamburgeru
      heroLinks.forEach((el, i) => running.push(el.animate(
        [
          { opacity: 1, visibility: 'visible', transform: 'none' },
          { opacity: 0, visibility: 'visible', transform: 'translateY(-1.2rem) scale(.92)' }
        ],
        { duration: 380, delay: i * 40, easing: 'ease-in', fill: 'backwards' }
      )));
    }
  }

  function undock() {
    const from = [barBrand, ...barLinks].map((el) => el.getBoundingClientRect());
    stopAll();
    setMenu(false);
    closeSubs();
    if (document.activeElement && bar && bar.contains(document.activeElement)) document.activeElement.blur();
    root.classList.remove('is-docked');
    fly(heroBrand, from[0]);
    if (!mqCompact.matches) {
      heroLinks.forEach((el, i) => fly(el, from[i + 1], 30 + i * 40));
    } else {
      heroLinks.forEach((el, i) => running.push(el.animate(
        [{ opacity: 0, transform: 'translateY(-1rem) scale(.94)' }, { opacity: 1, transform: 'none' }],
        { duration: 450, delay: 120 + i * 50, easing: EASE, fill: 'backwards' }
      )));
    }
  }

  if (hero && bar) {
    // lišta se objeví až po sjetí pod úvod (úvod celý odjede z obrazovky)
    const threshold = () => hero.offsetTop + hero.offsetHeight - bar.offsetHeight;
    let docked = false;
    let ticking = false;
    const check = (animate) => {
      const y = window.scrollY;
      const t = threshold();
      if (!docked && y > t) { docked = true; dock(animate); }
      else if (docked && y < t - 40) { docked = false; undock(); }
    };
    check(false);   // stránka mohla být načtena už odscrollovaná
    window.addEventListener('scroll', () => {
      if (ticking) return;
      ticking = true;
      requestAnimationFrame(() => { ticking = false; check(true); });
    }, { passive: true });
  }

  /* ---------------------------------------------------------
     3 · Vyjíždějící nabídka u „Služby“
     Myš: otevře se na najetí (CSS). Dotyk: 1. ťuknutí otevře,
     2. ťuknutí přejde na sekci. V ☰ ji rozbalí šipka vedle.
     --------------------------------------------------------- */
  $$('.has-sub').forEach((li) => {
    const link = $('.menu-link', li);
    const toggle = $('.sub-toggle', li);

    link.addEventListener('click', (e) => {
      const inBurger = mqCompact.matches && li.closest('.topbar');
      if (!canHover && !inBurger && !li.classList.contains('is-sub-open')) {
        e.preventDefault();
        closeSubs(li);
        li.classList.add('is-sub-open');
        return;
      }
      closeSubs();
      if (inBurger) setMenu(false);
      link.blur();                    // ať nabídka nezůstane otevřená kvůli fokusu
    });

    if (toggle) toggle.addEventListener('click', () => {
      const open = !li.classList.contains('is-sub-open');
      closeSubs(li);
      li.classList.toggle('is-sub-open', open);
      toggle.setAttribute('aria-expanded', String(open));
    });
  });
  $$('.sub-link').forEach((a) => a.addEventListener('click', () => a.blur()));
  document.addEventListener('click', (e) => { if (!e.target.closest('.has-sub')) closeSubs(); });

  /* ---------------------------------------------------------
     4 · E-mail a telefon v úvodu – zkopírování do schránky
     --------------------------------------------------------- */
  const copyText = async (text) => {
    try {
      await navigator.clipboard.writeText(text);
      return true;
    } catch (e) {
      const ta = document.createElement('textarea');   // starší prohlížeče / otevření ze složky
      ta.value = text;
      ta.setAttribute('readonly', '');
      ta.style.cssText = 'position:fixed;left:-9999px;opacity:0';
      document.body.append(ta);
      ta.select();
      let ok = false;
      try { ok = document.execCommand('copy'); } catch (err) { ok = false; }
      ta.remove();
      return ok;
    }
  };
  $$('.hc-copy').forEach((btn) => {
    const li = btn.closest('.hc');
    const use = $('use', btn);
    let timer = 0;
    btn.addEventListener('click', async () => {
      const ok = await copyText(btn.dataset.copy);
      li.dataset.tip = ok ? 'Zkopírováno' : 'Nepodařilo se zkopírovat';
      if (ok && use) use.setAttribute('href', '#i-check');
      clearTimeout(timer);
      timer = setTimeout(() => {
        delete li.dataset.tip;
        if (use) use.setAttribute('href', '#i-copy');
      }, 1800);
    });
  });

  /* ---------------------------------------------------------
     5 · Kdo jsme? – „Zobrazit více…“
     --------------------------------------------------------- */
  const moreBtn = $('.more-btn');
  const more = $('.about-more');
  if (moreBtn && more) {
    const label = $('span', moreBtn);
    moreBtn.addEventListener('click', () => {
      const open = !more.classList.contains('is-open');
      more.classList.toggle('is-open', open);
      moreBtn.setAttribute('aria-expanded', String(open));
      label.textContent = open ? 'Zobrazit méně' : 'Zobrazit více…';
    });
  }

  /* ---------------------------------------------------------
     6 · Karty oborů
     Myš: efekt na najetí. Telefon/tablet bez myši: efekt
     se spustí, když je prvek uprostřed obrazovky.
     --------------------------------------------------------- */
  // 4 šipky kolem rohů tlačítka v kartě
  $$('.card-btn').forEach((btn) => {
    ['tl', 'tr', 'br', 'bl'].forEach((c) => {
      const i = document.createElement('i');
      i.className = 'arr arr-' + c;
      i.setAttribute('aria-hidden', 'true');
      btn.append(i);
    });
  });

  const hoverables = $$('.card');
  hoverables.forEach((el) => {
    const on = () => el.classList.add('is-hover');
    const off = () => el.classList.remove('is-hover');
    el.addEventListener('mouseenter', on);
    el.addEventListener('mouseleave', off);
    el.addEventListener('focus', on);
    el.addEventListener('blur', off);
  });

  /* Hlavní stránka: 6 karet, ve kterých se obory náhodně a rychle
     střídají (13 oborů → nikdy nevíš, kde která karta bude).
     Karta, na které je myš (nebo je na mobilu uprostřed obrazovky),
     se nemění, aby se na ni dalo v klidu kliknout. */
  const rotating = $('.offer-rotating');
  if (rotating) {
    const cards = $$('.card', rotating);
    const lastChange = cards.map(() => 0);

    const setCard = async (card, cat, first) => {
      const photo = shuffle(PHOTOS[cat.k].slice())[0];
      const img = await loadImg(photo, 'card-photo');
      const name = $('.card-name', card);
      card.dataset.cat = cat.k;
      card.href = cat.k + '.html';
      const old = $$('.card-photo', card);
      if (img) {
        card.prepend(img);
        requestAnimationFrame(() => requestAnimationFrame(() => img.classList.add('is-active')));
      }
      old.forEach((o) => { o.classList.remove('is-active'); setTimeout(() => o.remove(), 1500); });
      if (first) { name.textContent = cat.name; return; }
      card.classList.add('is-swapping');          // název se překlopí
      setTimeout(() => {
        name.textContent = cat.name;
        card.classList.remove('is-swapping');
      }, 320);
    };

    // na začátku náhodných 6 oborů
    shuffle(CATS.slice()).slice(0, cards.length).forEach((cat, i) => setCard(cards[i], cat, true));

    setInterval(() => {
      if (document.hidden) return;
      const now = performance.now();
      const free = cards.filter((c, i) => !c.classList.contains('is-hover') && now - lastChange[i] > 3200);
      if (!free.length) return;
      const card = free[Math.floor(Math.random() * free.length)];
      const used = new Set(cards.map((c) => c.dataset.cat));
      const options = CATS.filter((c) => !used.has(c.k));
      lastChange[cards.indexOf(card)] = now;
      setCard(card, options[Math.floor(Math.random() * options.length)]);
    }, 1200);
  }

  /* ---------------------------------------------------------
     7 · Box s formulářem – kolem textu „cvakají“ nápisy click
     --------------------------------------------------------- */
  const cta = $('.form-cta');
  let clickTimer = 0;
  const spawnClick = () => {
    if (!cta) return;
    let x;
    let y;
    let tries = 0;
    do {                                   // mimo střed, kde je text
      x = 6 + Math.random() * 88;
      y = 12 + Math.random() * 76;
      tries += 1;
    } while (Math.abs(x - 50) < 34 && Math.abs(y - 50) < 24 && tries < 30);
    const pop = document.createElement('span');
    pop.className = 'click-pop';
    pop.setAttribute('aria-hidden', 'true');
    pop.textContent = 'click';
    pop.style.left = x + '%';
    pop.style.top = y + '%';
    pop.style.setProperty('--r', (Math.random() * 28 - 14).toFixed(1) + 'deg');
    pop.style.setProperty('--size', (0.8 + Math.random() * 0.4).toFixed(2) + 'rem');
    pop.addEventListener('animationend', (e) => { if (e.target === pop) pop.remove(); });
    cta.append(pop);
  };
  const startClicks = () => {
    if (clickTimer) return;
    spawnClick();
    clickTimer = setInterval(spawnClick, 380);
  };
  const stopClicks = () => { clearInterval(clickTimer); clickTimer = 0; };
  if (cta) {
    cta.addEventListener('mouseenter', startClicks);
    cta.addEventListener('mouseleave', stopClicks);
    cta.addEventListener('focus', startClicks);
    cta.addEventListener('blur', stopClicks);
  }

  // Telefon/tablet bez myši: efekty, když je prvek uprostřed obrazovky
  if (!canHover && 'IntersectionObserver' in window) {
    const io = new IntersectionObserver((entries) => entries.forEach((e) => {
      e.target.classList.toggle('is-hover', e.isIntersecting);
      if (e.target === cta) {
        if (e.isIntersecting) startClicks(); else stopClicks();
      }
    }), { rootMargin: '-40% 0px -40% 0px' });
    hoverables.forEach((el) => io.observe(el));
    if (cta) io.observe(cta);
  }

  /* ---------------------------------------------------------
     Drobnosti
     --------------------------------------------------------- */
  // nadpisy a boxy jemně vyjedou při scrollu
  const reveals = $$('.reveal');
  if ('IntersectionObserver' in window) {
    const io = new IntersectionObserver((entries) => entries.forEach((e) => {
      if (e.isIntersecting) { e.target.classList.add('is-in'); io.unobserve(e.target); }
    }), { threshold: 0.15, rootMargin: '0px 0px -8% 0px' });
    reveals.forEach((el) => io.observe(el));
  } else {
    reveals.forEach((el) => el.classList.add('is-in'));
  }

  // rok v patičce
  $$('[data-rok]').forEach((el) => { el.textContent = new Date().getFullYear(); });
})();
