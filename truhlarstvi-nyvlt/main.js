/* =========================================================
   Truhlářství Nývlt – skripty
   1) fotky (úvod, O nás, karty, nabídka Služeb) – náhodné prolínání
   2) úvodní animace + „přeletění“ názvu a odkazů do lišty (jako Průmstav)
   3) vyjíždějící nabídka u „Služby“
   4) karty služeb – záře na najetí (na mobilu uprostřed obrazovky)
   5) formulář (zatím ukázka) + drobnosti
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
     FOTKY – kde je web hledá
     Nejdřív ve složce img/… (stáhne je stahni-fotky.bat),
     když tam nejsou, načtou se rovnou ze stávajícího webu.
     --------------------------------------------------------- */
  const REMOTE = 'https://www.truhlarstvi-nyvlt.cz/pool/vzor/';
  const range = (n) => Array.from({ length: n }, (_, i) => i + 1);

  const gallery = (obor, dir, names) => names.map((name) => ({
    src: `img/${obor}/${name}.jpg`,
    fallback: `${REMOTE}fotog/${dir}/clim_thumb_xxl_${name}.jpg`
  }));

  const PHOTOS = {
    kuchyne: gallery('kuchyne', 3, range(27).map((n) => 'kuchyne_na_miru_' + n)),
    dvere: gallery('dvere', 1, range(47).map((n) => 'interierove_dvere_' + n)),
    skrine: gallery('skrine', 4, range(50).map((n) => 'vestavene_skrine_' + n)),
    schodiste: gallery('schodiste', 2, range(82).map((n) => 'drevene_schody_' + n)),
    nabytek: gallery('nabytek', 5, [
      ...range(19).map((n) => 'detsky_pokoj_' + n),
      'drevena_pergola', 'jidelna_1', 'jidelna_2', 'jidelna_3',
      'kancelarsky_nabytek_1', 'kancelarsky_nabytek_2', 'kancelarsky_nabytek_3', 'kancelarsky_nabytek_4',
      'koupelnovy_nabytek_1', 'loznice_1', 'loznice_2', 'loznice_3',
      'obyvaci_pokoj_1', 'obyvaci_pokoj_2', 'obyvaci_pokoj_3', 'obyvaci_pokoj_4',
      'policovy_regal', 'skrin_pod_akvarium', 'skrin_pod_akvarium_2', 'nabytek_satna_1', 'skrine_1', 'skrine_2'
    ]),
    dilna: [
      { src: 'img/dilna/sirokopasova_bruska_nachod.jpg', fallback: REMOTE + 'upload/sirokopasova_bruska_nachod.jpg' },
      { src: 'img/dilna/formatovaci_pila_nachod.jpg', fallback: REMOTE + 'upload/formatovaci_pila_nachod.jpg' }
    ]
  };
  PHOTOS.vse = [...PHOTOS.kuchyne, ...PHOTOS.dvere, ...PHOTOS.skrine, ...PHOTOS.schodiste, ...PHOTOS.nabytek];

  // 3 fotky do úvodu (vybrané z galerií)
  const pick = (obor, name) => PHOTOS[obor].find((p) => p.src.endsWith('/' + name + '.jpg'));
  const HERO_PHOTOS = [
    pick('kuchyne', 'kuchyne_na_miru_25'),
    pick('dvere', 'interierove_dvere_32'),
    pick('schodiste', 'drevene_schody_7')
  ];

  // náhledy v nabídce Služeb
  const THUMBS = {
    kuchyne: pick('kuchyne', 'kuchyne_na_miru_16'),
    dvere: pick('dvere', 'interierove_dvere_28'),
    skrine: pick('skrine', 'vestavene_skrine_34'),
    schodiste: pick('schodiste', 'drevene_schody_62'),
    nabytek: pick('nabytek', 'obyvaci_pokoj_2'),
    dilna: PHOTOS.dilna[0]
  };

  /* Zjistí, která z adres fotky existuje (funguje i při otevření ze složky) */
  const cache = new Map();
  const probe = (url) => new Promise((resolve) => {
    const img = new Image();
    img.onload = () => resolve(img.naturalWidth ? url : null);
    img.onerror = () => resolve(null);
    img.src = url;
  });
  const resolvePhoto = (p) => {
    if (!cache.has(p.src)) {
      cache.set(p.src, (async () => (await probe(p.src)) || (await probe(p.fallback)))());
    }
    return cache.get(p.src);
  };

  /* Prolínání fotek – náhodné pořadí (pokaždé jiná první fotka),
     další fotka se načte předem */
  function startRotator(box, items, opts) {
    const list = shuffle(items.slice());
    let i = 0;
    let current = null;

    const build = async (item) => {
      const url = await resolvePhoto(item);
      if (!url) return null;
      const el = new Image();
      el.alt = '';
      el.decoding = 'async';
      el.src = url;
      try { await el.decode(); } catch (e) { /* nevadí */ }
      el.className = opts.className;
      return el;
    };

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

    let next = build(list[0]);
    const step = async () => {
      const el = await next;
      if (el) show(el);
      if (list.length < 2 && current) return;   // jen jedna fotka – nic dalšího
      i = (i + 1) % list.length;
      next = build(list[i]);
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
    startRotator(slides, HERO_PHOTOS, { className: 'hero-slide', fade: 1800, interval: () => 6500 });
  }

  // O nás – fotky vlevo a vpravo, každá svým tempem
  $$('.about-photo').forEach((box, n) => {
    startRotator(box, PHOTOS[box.dataset.photos] || PHOTOS.vse, {
      className: 'about-img',
      fade: 1400,
      delay: n * 1700,
      interval: () => 4800 + Math.random() * 2200
    });
  });

  // Karty služeb – fotka oboru v pozadí se střídá
  $$('.card').forEach((card, n) => {
    const items = PHOTOS[card.dataset.photos] || [];
    if (items.length) {
      startRotator(card, items, {
        className: 'card-photo',
        fade: 1400,
        delay: n * 450,
        interval: () => 4400 + Math.random() * 2400
      });
    }
  });

  // Náhledy v nabídce Služeb
  $$('.sub-img').forEach(async (img) => {
    const p = THUMBS[img.dataset.thumb];
    const url = p ? await resolvePhoto(p) : null;   // když fotka není v img/, vezme se ze starého webu
    if (url && img.getAttribute('src') !== url) img.src = url;
  });

  /* ---------------------------------------------------------
     2 · Úvodní animace a lišta (stejně jako u Průmstavu)
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
    if (lastText) lastText.addEventListener('animationend', finishIntro, { once: true });
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
     4 · Karty služeb – záře, šedá fotka, svítící název
     --------------------------------------------------------- */
  const cards = $$('.card');
  cards.forEach((card) => {
    const on = () => card.classList.add('is-hover');
    const off = () => card.classList.remove('is-hover');
    card.addEventListener('mouseenter', on);
    card.addEventListener('mouseleave', off);
    card.addEventListener('focus', on);
    card.addEventListener('blur', off);
  });
  // Telefon/tablet bez myši: karta se rozzáří, když je uprostřed obrazovky
  if (!canHover && 'IntersectionObserver' in window) {
    const io = new IntersectionObserver((entries) => entries.forEach((e) => {
      e.target.classList.toggle('is-hover', e.isIntersecting);
    }), { rootMargin: '-40% 0px -40% 0px' });
    cards.forEach((c) => io.observe(c));
  }

  /* ---------------------------------------------------------
     5 · Formulář – zatím jen ukázka (odesílání se napojí na hostingu)
     --------------------------------------------------------- */
  const form = $('.offer-form');
  if (form) {
    const success = $('.form-success', form);
    const rules = {
      jmeno: (v) => (v.trim() ? '' : 'Vyplňte prosím své jméno.'),
      email: (v) => {
        if (!v.trim()) return 'Vyplňte prosím svůj e-mail.';
        return /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/.test(v.trim()) ? '' : 'E-mail není ve správném tvaru, např. jannovak@seznam.cz.';
      },
      telefon: (v) => (!v.trim() || /^\+?[\d\s]{9,17}$/.test(v.trim()) ? '' : 'Telefon není ve správném tvaru, např. +420 777 123 456.'),
      zprava: (v) => (v.trim() ? '' : 'Napište nám prosím, co byste potřebovali.')
    };

    const check = (field) => {
      const rule = rules[field.name];
      const msg = rule ? rule(field.value) : '';
      const out = document.getElementById(field.getAttribute('aria-describedby'));
      field.closest('.field').classList.toggle('has-error', Boolean(msg));
      field.setAttribute('aria-invalid', msg ? 'true' : 'false');
      if (out) out.textContent = msg;
      return !msg;
    };

    form.addEventListener('submit', (e) => {
      e.preventDefault();
      const fields = $$('input, textarea', form);
      const results = fields.map(check);
      const firstBad = fields[results.indexOf(false)];
      if (firstBad) { firstBad.focus(); return; }
      form.reset();
      success.hidden = false;
    });

    form.addEventListener('input', (e) => {
      if (success) success.hidden = true;
      if (e.target.closest('.field.has-error')) check(e.target);
    });
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
