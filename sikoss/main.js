/* =========================================================
   SIKOSS.CZ – skripty
   ========================================================= */
(() => {
  'use strict';

  /* Fotky se zatím načítají přímo z jejich webu.
     Až budou stažené ve složce img, stačí změnit na: 'img/' */
  const IMG_BASE = 'https://www.sikoss.cz/images/uploads/3203/';

  const PHOTOS = [
    '61859fe9e7dca_248706092_422385415912415_7298674116313079558_n.jpg',
    '6375fbb305cf3_315315738_693175935369037_1806557834712462961_n.jpg',
    '619be711e2766_258851292_1034122867441777_1766368475427898556_n.jpg',
    '622a5f17f2cbd_staen-soubor-(8).jpg',
    '6376016611ad8_315354346_716995439280113_2239292054318327362_n.jpg',
    '637606840a16d_IMG_6294.JPG',
    '63766c7e658a7_315526201_1028531157871126_1137028846939137339_n.jpg',
    '6227ae341bc89_fasada-2.jpg',
    '637665f47023f_316125734_455106916764534_8572225386553192168_n.jpg',
    '6227ae3ef2c8a_fasadada3.jpg',
    '6227ae1a7a560_nov-msto-nad-metuj.jpg',
    '64f0d6c1b86a7_371410860_1005117877468799_572883478959099056_n.jpg',
    '64f0d7b21a2a6_357262275_1067907057524460_1940695840735561423_n.jpg',
    '64f0d6b293fbf_371924168_1038537964171522_3947762160880916303_n.jpg',
    '64f0d7a5dc547_371339986_311210828070269_5183104668860604317_n.jpg',
    '642316021ce44_315520308_2363003537184353_4506197011424003917_n.jpg',
    '642332539fbd2_315528090_494792266010554_8022448418425646035_n.jpg',
    '642324a714854_316699143_457078376604379_8084217803478220558_n.jpg',
    '64232470d7cee_315518826_1444090442782340_2247927420554295186_n.jpg',
    '6187b1b8af0b6_250206144_587510619243326_5197232672526067699_n.jpg',
    '642337db731f8_IMG_6143.JPG',
    '6423387f78f6b_315530242_1233394553908644_3503132501433000584_n.jpg',
    '642338a7328fe_315527212_460852966183663_2973026626904288332_n.jpg',
    '64233952133bb_315528262_5379104525549832_485302469542788876_n.jpg',
    '642338ec7e6b8_315526551_676703817137174_3471643455987278834_n.jpg',
    '6423391621718_314916816_1140615859912935_5385327249207675949_n.jpg'
  ];

  const fontsReady = (document.fonts && document.fonts.ready) ? document.fonts.ready : Promise.resolve();
  const whenFonts = Promise.race([fontsReady, new Promise((r) => setTimeout(r, 1500))]);


  /* ---------- 1) Úvod: SIKOSS → podnadpis → menu → telefon ---------- */
  whenFonts.then(() => {
    setTimeout(() => document.body.classList.add('is-ready'), 400);
  });


  /* ---------- 2) Lišta po sjetí + hamburger ---------- */
  const topbar = document.querySelector('.topbar');
  const burger = topbar ? topbar.querySelector('.burger') : null;
  const heroNav = document.querySelector('.hero-nav');

  const setMenuOpen = (open) => {
    if (!topbar || !burger) return;
    topbar.classList.toggle('is-open', open);
    burger.setAttribute('aria-expanded', String(open));
    burger.setAttribute('aria-label', open ? 'Zavřít menu' : 'Otevřít menu');
  };

  if (topbar && heroNav && 'IntersectionObserver' in window) {
    new IntersectionObserver(([entry]) => {
      const passed = !entry.isIntersecting && entry.boundingClientRect.top < 0;
      topbar.classList.toggle('is-visible', passed);
      if (!passed) setMenuOpen(false);
    }).observe(heroNav);
  } else if (topbar) {
    topbar.classList.add('is-visible');
  }

  if (burger) {
    burger.addEventListener('click', () => setMenuOpen(!topbar.classList.contains('is-open')));
    topbar.addEventListener('click', (e) => {
      if (e.target.closest('.menu-link')) setMenuOpen(false);
    });
    document.addEventListener('keydown', (e) => {
      if (e.key === 'Escape' && topbar.classList.contains('is-open')) {
        setMenuOpen(false);
        burger.focus();
      }
    });
  }


  /* ---------- 3) Recenze: vždy 3 vidět, krokově doprava ---------- */
  const reviewsWindow = document.querySelector('.reviews-window');
  const track = document.querySelector('.reviews-track');

  if (reviewsWindow && track && track.children.length > 1) {
    const STEP_EVERY = 5000;
    const SLIDE_MS = 900;
    let slot = 0;
    let busy = false;
    let hoverPause = false;
    let dialogPause = false;
    let onScreen = true;

    const measure = () => {
      const card = track.firstElementChild;
      const gap = parseFloat(getComputedStyle(track).columnGap) || 0;
      slot = card.getBoundingClientRect().width + gap;
    };

    // karta schovaná vlevo, která přijede jako další
    const park = () => {
      track.style.transition = 'none';
      track.style.transform = `translateX(${-slot}px)`;
      void track.offsetWidth;
    };

    const finishStep = () => {
      track.prepend(track.lastElementChild);
      park();
      busy = false;
    };

    const step = () => {
      if (busy) return;
      busy = true;

      let finished = false;
      const end = () => {
        if (finished) return;
        finished = true;
        track.removeEventListener('transitionend', onEnd);
        finishStep();
      };
      const onEnd = (e) => {
        if (e.target === track && e.propertyName === 'transform') end();
      };
      track.addEventListener('transitionend', onEnd);
      setTimeout(end, SLIDE_MS + 150);

      track.style.transition = `transform ${SLIDE_MS}ms cubic-bezier(.65, 0, .35, 1)`;
      track.style.transform = 'translateX(0px)';
    };

    track.prepend(track.lastElementChild);
    measure();
    park();

    setInterval(() => {
      if (!hoverPause && !dialogPause && onScreen && !document.hidden) step();
    }, STEP_EVERY);

    reviewsWindow.addEventListener('mouseenter', () => { hoverPause = true; });
    reviewsWindow.addEventListener('mouseleave', () => { hoverPause = false; });
    reviewsWindow.addEventListener('focusin', () => { hoverPause = true; });
    reviewsWindow.addEventListener('focusout', () => { hoverPause = false; });

    if ('IntersectionObserver' in window) {
      new IntersectionObserver(([entry]) => { onScreen = entry.isIntersecting; }).observe(reviewsWindow);
    }

    // Dlouhá recenze: zkrácení + „Číst celou recenzi“ v okně
    const dialog = document.querySelector('.review-dialog');
    const dialogBody = dialog ? dialog.querySelector('.review-dialog-body') : null;

    const openReview = (card) => {
      if (!dialog || !dialogBody) return;
      const parts = ['.stars', '.review-text', '.review-meta']
        .map((sel) => card.querySelector(sel))
        .filter(Boolean)
        .map((node) => node.cloneNode(true));
      dialogBody.replaceChildren(...parts);
      dialogPause = true;
      if (typeof dialog.showModal === 'function') dialog.showModal();
      else dialog.setAttribute('open', '');
    };
    if (dialog) dialog.addEventListener('close', () => { dialogPause = false; });

    const updateMoreButtons = () => {
      track.querySelectorAll('.review-text').forEach((text) => {
        let btn = text.nextElementSibling;
        if (!btn || !btn.classList.contains('review-more')) {
          btn = document.createElement('button');
          btn.type = 'button';
          btn.className = 'review-more';
          btn.textContent = 'Číst celou recenzi';
          btn.addEventListener('click', () => openReview(btn.closest('.review')));
          text.after(btn);
        }
        btn.hidden = text.scrollHeight - text.clientHeight < 2;
      });
    };

    whenFonts.then(() => { measure(); if (!busy) park(); updateMoreButtons(); });

    let resizeTimer;
    window.addEventListener('resize', () => {
      clearTimeout(resizeTimer);
      resizeTimer = setTimeout(() => {
        measure();
        if (!busy) park();
        updateMoreButtons();
      }, 150);
    });
  }


  /* ---------- 4) Prolínající se fotky (všechny promíchané) ---------- */
  const photos = PHOTOS.slice();
  for (let i = photos.length - 1; i > 0; i -= 1) {
    const j = Math.floor(Math.random() * (i + 1));
    [photos[i], photos[j]] = [photos[j], photos[i]];
  }
  const slideshows = Array.from(document.querySelectorAll('.slideshow'));
  const spacing = Math.max(1, Math.floor(photos.length / Math.max(slideshows.length, 1)));

  const startSlideshow = (fig, order) => {
    if (!fig || fig.dataset.started) return;
    fig.dataset.started = '1';
    const layers = fig.querySelectorAll('img');
    if (layers.length < 2) return;
    let index = order * spacing;
    let front = 0;
    const urlFor = (n) => IMG_BASE + photos[n % photos.length];

    layers.forEach((img) => { img.decoding = 'async'; });
    layers[0].src = urlFor(index);
    layers[0].classList.add('is-active');

    const next = () => {
      if (document.hidden) return;
      const n = index + 1;
      const src = urlFor(n);
      const pre = new Image();
      pre.src = src;
      const ready = pre.decode ? pre.decode() : Promise.resolve();
      ready.then(() => {
        const back = layers[1 - front];
        back.src = src;
        back.classList.add('is-active');
        layers[front].classList.remove('is-active');
        front = 1 - front;
        index = n;
      }).catch(() => { index = n; });   // fotka se nenačetla – přeskočit
    };

    setTimeout(() => setInterval(next, 4000), order * 1333);
  };

  slideshows.forEach((fig, i) => {
    if (!fig.closest('.services-more')) startSlideshow(fig, i);
  });


  /* ---------- 5) Služby: Chci vědět více / Skrýt ---------- */
  const moreBtn = document.querySelector('.btn-glow');
  const morePanel = document.getElementById('sluzby-vice');

  if (moreBtn && morePanel) {
    moreBtn.addEventListener('click', () => {
      const open = moreBtn.getAttribute('aria-expanded') !== 'true';
      moreBtn.classList.add('is-switching');
      moreBtn.setAttribute('aria-expanded', String(open));
      moreBtn.textContent = open ? 'Skrýt' : 'Chci vědět více';
      morePanel.classList.toggle('is-open', open);
      if (open) morePanel.removeAttribute('inert');
      else morePanel.setAttribute('inert', '');
      if (open) {
        const fig = morePanel.querySelector('.slideshow');
        startSlideshow(fig, slideshows.indexOf(fig));
      }
      setTimeout(() => moreBtn.classList.remove('is-switching'), 750);
    });
  }


  /* ---------- 6) Formulář – zatím jen ukázka (odesílání se napojí na hostingu) ---------- */
  const form = document.querySelector('.offer-form');

  if (form) {
    const success = form.querySelector('.form-success');
    const rules = {
      jmeno: (v) => (v.trim() ? '' : 'Vyplňte prosím své jméno.'),
      email: (v) => {
        if (!v.trim()) return 'Vyplňte prosím svůj email.';
        return /^[^\s@]+@[^\s@]+\.[^\s@]{2,}$/.test(v.trim()) ? '' : 'Email není ve správném tvaru, např. jannovak@seznam.cz.';
      },
      telefon: (v) => (!v.trim() || /^\+?[\d\s]{9,17}$/.test(v.trim()) ? '' : 'Telefon není ve správném tvaru, např. +420 777 164 172.'),
      zprava: (v) => (v.trim() ? '' : 'Napište nám prosím zprávu.')
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
      const fields = Array.from(form.querySelectorAll('input, textarea'));
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


  /* ---------- 7) Rok v patičce ---------- */
  document.querySelectorAll('[data-rok]').forEach((el) => {
    el.textContent = String(new Date().getFullYear());
  });
})();
