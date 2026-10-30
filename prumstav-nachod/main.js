/* =========================================================
   Průmstav Náchod s.r.o. – skripty
   1) fotky v úvodu a v boxech oborů (náhodné prolínání)
   2) úvodní animace + „přeletění“ názvu a odkazů do lišty
   3) efekt boxů oborů (zdvojený nápis + šipka)
   4) pás certifikátů + zvětšení certifikátu
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
     Nejdřív zmenšená fotka v img/…, pak originál, který stáhne
     stahni-fotky.bat do _zdroje/…; když není ani jedna, ukáže se
     předvyplněné místo s popiskem, co tam patří.
     --------------------------------------------------------- */
  const HERO_PHOTOS = [
    { src: 'img/uvod/sidlo.jpg',    fallback: '_zdroje/velke/sidlo-panorama.jpg',  label: 'Sídlo firmy – Dobrošovská, Náchod' },
    { src: 'img/uvod/skola.jpg',    fallback: '_zdroje/velke/obcanska-skolka.jpg', label: 'Občanská výstavba – škola' },
    { src: 'img/uvod/bytovka.jpg',  fallback: '_zdroje/velke/bytova-dum.jpg',      label: 'Bytová výstavba – bytový dům' },
    { src: 'img/uvod/primator.jpg', fallback: '_zdroje/velke/primator.jpg',        label: 'Pivovar Primátor, Náchod' }
  ];

  const ref = (obor, name, label) => ({ src: `img/obory/${obor}/${name}.jpg`, fallback: `_zdroje/reference/${obor}/${name}.jpg`, label });
  const big = (obor, name, file, label) => ({ src: `img/obory/${obor}/${name}.jpg`, fallback: `_zdroje/velke/${file}`, label });

  const OBOR_PHOTOS = {
    prumyslova: [
      big('prumyslova', 'primator', 'primator.jpg', 'Pivovar Primátor'),
      ref('prumyslova', 'mesa-nachod-01', 'MESA Vysokov – areál'),
      ref('prumyslova', 'mesa-nachod-02', 'MESA Vysokov'),
      ref('prumyslova', 'mesa-nachod-03', 'MESA Vysokov – hala'),
      ref('prumyslova', 'mesa-nachod-11', 'MESA Vysokov – výroba'),
      ref('prumyslova', 'deva-nutricia-02', 'DEVA Nutricia'),
      ref('prumyslova', 'batist-01', 'Batist Červený Kostelec'),
      ref('prumyslova', 'vapo-01', 'VAPO Červený Kostelec'),
      ref('prumyslova', 'impro-01', 'Impro Zábrodí'),
      ref('prumyslova', 'tanex-plasty-01', 'TANEX-PLASTY Jaroměř'),
      ref('prumyslova', 'vce-hradec-kralove-01', 'VČE Hradec Králové'),
      ref('prumyslova', 'hzs-nachod-01', 'HZS Náchod'),
      ref('prumyslova', 'integraf-nachod-02', 'INTEGRAF Náchod'),
      ref('prumyslova', 'merkurtisk-02', 'MERKURTISK Náchod'),
      ref('prumyslova', 'ametek-01', 'AMETEK Náchod')
    ],
    obcanska: [
      big('obcanska', 'skola', 'obcanska-skolka.jpg', 'Škola'),
      ref('obcanska', 'zs-cerveny-kostelec-04', 'ZŠ Červený Kostelec'),
      ref('obcanska', 'poliklinika-03', 'Poliklinika Náchod'),
      ref('obcanska', 'zs-batnovice-01', 'ZŠ Batňovice'),
      ref('obcanska', 'zs-batnovice-05', 'ZŠ Batňovice'),
      ref('obcanska', 'ms-na-frantisku-01', 'MŠ Na Františku'),
      ref('obcanska', 'ms-na-frantisku-02', 'MŠ Na Františku'),
      ref('obcanska', 'zs-maleci-01', 'ZŠ Malecí'),
      ref('obcanska', 'zs-maleci-03', 'ZŠ Malecí'),
      ref('obcanska', 'divadlo-jk-tyla-02', 'Divadlo J. K. Tyla'),
      ref('obcanska', 'u-beranka-02', 'U Beránka, Náchod'),
      ref('obcanska', 'nemocnice-nachod-03', 'Nemocnice Náchod'),
      ref('obcanska', 'nemocnice-nachod-04', 'Nemocnice Náchod'),
      ref('obcanska', 'meu-kostelec-02', 'MěÚ Kostelec nad Orlicí')
    ],
    bytova: [
      big('bytova', 'bytovy-dum', 'bytova-dum.jpg', 'Bytový dům'),
      ref('bytova', 'rd-rtyne-01', 'Rodinný dům Rtyně'),
      ref('bytova', 'rd-rtyne-02', 'Rodinný dům Rtyně'),
      ref('bytova', 'rd-rtyne-04', 'Rodinný dům Rtyně'),
      ref('bytova', 'rd-rtyne-15', 'Rodinný dům Rtyně'),
      ref('bytova', 'bytovky-cerveny-kostelec-01', 'Bytovky Červený Kostelec'),
      ref('bytova', 'bytovky-cerveny-kostelec-02', 'Bytovky Červený Kostelec'),
      ref('bytova', 'bytovky-nove-mesto-01', 'Bytovky Nové Město n. M.'),
      ref('bytova', 'bytovky-nove-mesto-02', 'Bytovky Nové Město n. M.'),
      ref('bytova', 'nastavba-bytoveho-domu-01', 'Nástavba bytového domu'),
      ref('bytova', 'nastavba-bytoveho-domu-02', 'Nástavba bytového domu'),
      ref('bytova', 'nastavba-bytoveho-domu-03', 'Nástavba bytového domu')
    ]
  };

  const CERTS = [
    { name: 'ČSN EN ISO 9001:2015',  note: 'systém managementu jakosti',         kind: 'Certifikát', thumb: 'img/certifikaty/iso-9001-nahled.jpg',  src: 'img/certifikaty/iso-9001.jpg',  fallback: '_zdroje/certifikaty/iso-9001.jpg' },
    { name: 'ČSN EN ISO 14001:2015', note: 'systém environmentálního managementu', kind: 'Certifikát', thumb: 'img/certifikaty/iso-14001-nahled.jpg', src: 'img/certifikaty/iso-14001.jpg', fallback: '_zdroje/certifikaty/iso-14001.jpg' },
    { name: 'ČSN EN ISO 45001:2018', note: 'management bezpečnosti a ochrany zdraví při práci', kind: 'Certifikát', thumb: 'img/certifikaty/iso-45001-nahled.jpg', src: 'img/certifikaty/iso-45001.jpg', fallback: '_zdroje/certifikaty/iso-45001.jpg' },
    { name: 'Zelená úsporám',        note: 'osvědčení o registraci v seznamu odborných dodavatelů', kind: 'Osvědčení', thumb: 'img/certifikaty/zelena-usporam-nahled.jpg', src: 'img/certifikaty/zelena-usporam.jpg', fallback: '_zdroje/certifikaty/zelena-usporam.png' }
  ];

  /* barevné varianty předvyplněných míst */
  const PH_LOOKS = [
    { a: '#2B5BB0', b: '#0A1240', x: '25%', y: '15%' },
    { a: '#224C98', b: '#070B2E', x: '75%', y: '20%' },
    { a: '#3A64B8', b: '#0B1446', x: '50%', y: '85%' },
    { a: '#1E3F82', b: '#060A28', x: '15%', y: '70%' },
    { a: '#2F5CA8', b: '#0A1036', x: '85%', y: '75%' }
  ];

  /* Zjistí, která z adres fotky existuje (funguje i při otevření ze složky) */
  const probe = (url) => new Promise((resolve) => {
    if (!url) { resolve(null); return; }
    const img = new Image();
    img.onload = () => resolve(img.naturalWidth ? url : null);
    img.onerror = () => resolve(null);
    img.src = url;
  });
  const resolvePhoto = async (p, withThumb = false) => {
    const list = withThumb ? [p.thumb, p.src, p.fallback] : [p.src, p.fallback];
    for (const url of list) {
      const ok = await probe(url);
      if (ok) return ok;
    }
    return null;
  };

  const makePlaceholder = (label, look) => {
    const el = document.createElement('div');
    el.className = 'ph';
    el.style.setProperty('--ph-a', look.a);
    el.style.setProperty('--ph-b', look.b);
    el.style.setProperty('--ph-x', look.x);
    el.style.setProperty('--ph-y', look.y);
    const tag = document.createElement('span');
    tag.className = 'ph-label';
    tag.textContent = 'Místo pro fotku · ' + label;
    el.appendChild(tag);
    return el;
  };

  /* Prolínání fotek – náhodné pořadí, další fotka se načte předem */
  function startRotator(box, items, opts) {
    const list = shuffle(items.slice());
    let i = 0;
    let current = null;

    const build = async (item, n) => {
      const url = await resolvePhoto(item);
      let el;
      if (url) {
        el = new Image();
        el.alt = '';
        el.decoding = 'async';
        el.src = url;
        try { await el.decode(); } catch (e) { /* nevadí */ }
      } else {
        el = makePlaceholder(item.label, PH_LOOKS[n % PH_LOOKS.length]);
      }
      el.classList.add(opts.className);
      return el;
    };

    const show = (el) => {
      box.appendChild(el);
      requestAnimationFrame(() => requestAnimationFrame(() => el.classList.add('is-active')));
      const old = current;
      current = el;
      if (old) {
        old.classList.remove('is-active');
        setTimeout(() => old.remove(), opts.fade + 200);
      }
    };

    let next = build(list[0], 0);
    const step = async () => {
      const el = await next;
      show(el);
      i = (i + 1) % list.length;
      next = build(list[i], i);
      setTimeout(step, opts.interval());
    };
    setTimeout(step, opts.delay || 0);
  }

  /* ---------------------------------------------------------
     1 · Úvod – fotky
     --------------------------------------------------------- */
  const hero = $('.hero');
  const slides = $('.hero-slides');
  if (slides) {
    startRotator(slides, HERO_PHOTOS, { className: 'hero-slide', fade: 1800, interval: () => 6500 });
  }

  /* ---------------------------------------------------------
     2 · Úvodní animace a lišta
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

  const setMenu = (open) => {
    if (!bar || !burger) return;
    bar.classList.toggle('is-open', open);
    burger.setAttribute('aria-expanded', String(open));
    burger.setAttribute('aria-label', open ? 'Zavřít menu' : 'Otevřít menu');
  };
  if (burger) {
    burger.addEventListener('click', () => setMenu(!bar.classList.contains('is-open')));
    bar.addEventListener('click', (e) => { if (e.target.closest('.menu-link')) setMenu(false); });
    document.addEventListener('keydown', (e) => { if (e.key === 'Escape') setMenu(false); });
  }

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
    const threshold = () => Math.max(60, window.innerHeight * 0.1);
    let docked = false;
    let ticking = false;
    const check = (animate) => {
      const y = window.scrollY;
      const t = threshold();
      if (!docked && y > t) { docked = true; dock(animate); }
      else if (docked && y < t * 0.5) { docked = false; undock(); }
    };
    check(false);   // stránka mohla být načtena už odscrollovaná
    window.addEventListener('scroll', () => {
      if (ticking) return;
      ticking = true;
      requestAnimationFrame(() => { ticking = false; check(true); });
    }, { passive: true });
  }

  /* ---------------------------------------------------------
     3 · Boxy oborů – fotky + efekt „zdvojený nápis a šipka“
     --------------------------------------------------------- */
  $$('.obor-card').forEach((card, n) => {
    const items = OBOR_PHOTOS[card.dataset.photos] || [];
    if (items.length) {
      startRotator(card, items, {
        className: 'obor-photo',
        fade: 1400,
        delay: n * 650,
        interval: () => 4600 + Math.random() * 1800
      });
    }

    const arrow = $('.obor-arrow', card);
    const enter = () => { card.classList.remove('is-leaving'); card.classList.add('is-hover'); };
    const leave = () => {
      if (!card.classList.contains('is-hover')) return;
      card.classList.remove('is-hover');
      card.classList.add('is-leaving');
    };
    card._enter = enter;
    card._leave = leave;
    if (arrow) arrow.addEventListener('animationend', (e) => { if (e.animationName === 'arrow-out') card.classList.remove('is-leaving'); });
    card.addEventListener('mouseenter', enter);
    card.addEventListener('mouseleave', leave);
    card.addEventListener('focus', enter);
    card.addEventListener('blur', leave);
  });

  // Telefon/tablet bez myši: efekt se přehraje, když je box uprostřed obrazovky
  if (!canHover && 'IntersectionObserver' in window) {
    const io = new IntersectionObserver((entries) => entries.forEach((e) => {
      if (e.isIntersecting) e.target._enter(); else e.target._leave();
    }), { rootMargin: '-38% 0px -38% 0px' });
    $$('.obor-card').forEach((c) => io.observe(c));
  }

  /* ---------------------------------------------------------
     4 · Certifikáty – pás, zrychlení na najetí, zvětšení
     --------------------------------------------------------- */
  const certPlaceholder = (c) => {
    const el = document.createElement('span');
    el.className = 'cert-ph';
    el.innerHTML = '<b></b><i></i>';
    el.querySelector('b').textContent = c.kind;
    el.querySelector('i').textContent = c.name;
    return el;
  };

  // zvětšení (dialog) – vytvoří se jen jednou
  let lightbox = null;
  const openCert = async (i) => {
    const c = CERTS[i];
    if (!c) return;
    if (!lightbox) {
      lightbox = document.createElement('dialog');
      lightbox.className = 'lightbox';
      lightbox.setAttribute('aria-label', 'Certifikát');
      lightbox.innerHTML = '<figure><span></span><figcaption></figcaption></figure><button class="lightbox-close" type="button" aria-label="Zavřít">×</button>';
      document.body.appendChild(lightbox);
      $('.lightbox-close', lightbox).addEventListener('click', () => lightbox.close());
      lightbox.addEventListener('click', (e) => { if (e.target === lightbox) lightbox.close(); });
    }
    const url = await resolvePhoto(c);
    const media = $('figure > :first-child', lightbox);
    let next;
    if (url) {
      next = new Image();
      next.src = url;
      next.alt = c.kind + ' ' + c.name;
    } else {
      next = certPlaceholder(c);
    }
    media.replaceWith(next);
    $('figcaption', lightbox).textContent = c.name + ' – ' + c.note;
    if (!lightbox.open) lightbox.showModal();
  };

  $$('a[data-cert]').forEach((a) => a.addEventListener('click', (e) => {
    e.preventDefault();
    openCert(Number(a.dataset.cert));
  }));

  const marquee = $('.cert-marquee');
  const track = marquee ? $('.cert-track', marquee) : null;
  if (track) {
    const originals = $$('li', track);

    // náhledy (nebo předvyplněné certifikáty)
    const fills = originals.map(async (li) => {
      const btn = $('button', li);
      const c = CERTS[Number(btn.dataset.cert)];
      const url = await resolvePhoto(c, true);
      btn.textContent = '';
      if (url) {
        const img = new Image();
        img.src = url;
        img.alt = '';
        img.decoding = 'async';
        btn.appendChild(img);
      } else {
        btn.appendChild(certPlaceholder(c));
      }
    });

    track.addEventListener('click', (e) => {
      const btn = e.target.closest('.cert');
      if (btn) openCert(Number(btn.dataset.cert));
    });

    let anim = null;
    let rate = 1;
    let target = 1;
    let raf = 0;
    const SPEED = 38;   // px za sekundu

    const setup = () => {
      $$('.is-clone', track).forEach((n) => n.remove());
      const addSet = () => originals.forEach((li) => {
        const c = li.cloneNode(true);
        c.classList.add('is-clone');
        c.setAttribute('aria-hidden', 'true');
        const b = $('button', c);
        if (b) b.tabIndex = -1;
        track.appendChild(c);
      });
      addSet();
      const dist = track.children[originals.length].offsetLeft - track.children[0].offsetLeft;
      let guard = 0;
      while (track.scrollWidth < dist + marquee.clientWidth + 20 && guard++ < 12) addSet();
      if (anim) anim.cancel();
      anim = track.animate(
        [{ transform: 'translateX(0)' }, { transform: `translateX(${-dist}px)` }],
        { duration: (dist / SPEED) * 1000, iterations: Infinity }
      );
      anim.playbackRate = rate;
    };

    // plynulé zrychlení / zpomalení
    const ramp = (to) => {
      target = to;
      cancelAnimationFrame(raf);
      const tick = () => {
        rate += (target - rate) * 0.12;
        if (Math.abs(target - rate) < 0.02) rate = target;
        if (anim) anim.playbackRate = rate;
        if (rate !== target) raf = requestAnimationFrame(tick);
      };
      raf = requestAnimationFrame(tick);
    };
    marquee.addEventListener('mouseenter', () => ramp(3.2));
    marquee.addEventListener('mouseleave', () => ramp(1));
    marquee.addEventListener('focusin', () => ramp(0.25));
    marquee.addEventListener('focusout', () => ramp(1));

    Promise.all(fills).then(() => {
      setup();
      let w = window.innerWidth;
      window.addEventListener('resize', () => {
        if (window.innerWidth === w) return;
        w = window.innerWidth;
        setup();
      });
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
