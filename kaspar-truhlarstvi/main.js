/* =========================================================
   Kašpar truhlářství – skripty
   1) fotky (úvod, Kdo jsme?, karty, nabídka Služeb) – náhodné prolínání
   2) úvodní animace + „přeletění“ názvu a odkazů do lišty
   3) vyjíždějící nabídka u „Služby“
   4) e-mail a telefon v úvodu – zkopírování
   5) Kdo jsme? – „Zobrazit více…“
   6) karty oborů (šipky), fotky s rohy, výroba na zakázku (výkres)
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
     FOTKY – kde je web hledá
     Nejdřív ve složce img/<obor>/01.jpg … (zmenšené fotky),
     když tam nejsou, načtou se rovnou z jejich současného webu.
     --------------------------------------------------------- */
  const HOSTS = { s: 'https://files.site.site3.eu/', f: 'https://files.site.forpsi.com/' };
  const remote = (code) => {
    const name = code.slice(1);
    return HOSTS[code[0]] + name.slice(0, 2) + '/' + name.slice(2, 4) + '/' + name;
  };

  // seznam fotek z galerií jejich webu (pořadí = čísla souborů v img/)
  const DATA = {
    dvere: [
      "scb1d80f4-1cfc-46c7-8c27-e2a8e09aa663.jpg", "se05d7c1b-12ad-4182-9495-a10ab0bb68e9.jpg", "sd0091189-827b-4d83-8dbb-38abf5d9309b.jpg",
      "s371339d3-26db-4399-944d-294649464565.jpg", "f321add34-5045-4929-920a-64906aef35d3.JPG", "f7c4c728c-d694-4c67-81e1-487573283c35.JPG",
      "f71295e71-b1db-4e77-9a0d-2b1584e763d1.JPG", "fce2c3ea8-304e-4fde-a440-cb9684cadbf1.JPG", "fb8ee6b29-e5d0-400b-8aef-12f506af5938.JPG",
      "f1208075b-e634-4726-ad27-43fbececa8bc.JPG", "fbd4b44bc-123a-473a-a074-338932861487.JPG", "f0094c9da-e8e8-41a4-819e-e2b75e3e8456.JPG",
      "f2ff011c7-f0d9-46c6-9f1c-7b572924843f.JPG", "fbd89b412-9bc0-4b61-8f35-d7840d908858.JPG", "f0c6f5c88-a750-48af-9356-927aa1ebc1cb.JPG",
      "f1d6054ff-ecce-4200-87e0-9dc6ae2556a3.JPG", "fc64befd5-5355-4624-b2f2-30c0bc118995.jpg", "f4b965a54-51f9-4b27-ac10-14f6f2ad13b3.jpg",
      "f9f3df309-2660-4e7f-98c6-44b63ebff9df.JPG", "fcc12134a-cd40-46f7-a3c8-b116df5314d3.JPG", "f07e1045b-7f7f-4249-bbe4-bc6ad4777747.JPG",
      "f716a50a1-107b-41e9-a912-2b365d97f23e.JPG", "ffaa13ec2-b936-4e42-9791-5735d1423813.jpg", "ffb6cb898-41fd-46f8-b038-a0261ca70133.jpg",
      "f7b7e0356-3834-4c65-8ac2-4afa940327dd.jpg", "f75d39f71-ea4c-46bc-8954-5b6ab955ff85.jpg", "f1d2568d0-e1f9-4d9e-9b70-4f4ab53f636d.jpg",
      "f1f870be3-73f0-4646-955b-c272533a19ff.jpg", "f2100e34b-04d0-4264-b318-512696ace4a2.JPG", "fb713f977-06b5-4889-878c-f17323a4f5a7.JPG",
      "f43b12f55-50e2-4c0d-9570-dbf3954d243c.jpg", "fe1aaf297-09d8-4c48-8e87-c144f7ad5509.jpg", "fd7967383-5bdb-4f78-b06c-fc6455ff06c6.jpg",
      "fb010c7a9-7434-4623-be0c-bb6bcd0e998a.JPG", "fba7be938-8913-4841-9740-adffd2cbf3e6.jpg", "fbab3f692-01ac-4f0f-bdd4-2a27951721a2.jpg",
      "f38e9147b-5583-487b-902d-509bd0a60327.JPG", "fdaee86da-fc27-4932-8cd0-cecd16e50067.jpg", "f789c78a8-7f41-488c-b10d-88a291908e0c.jpg"
    ],
    kuchyne: [
      "ffea94b9f-907e-4259-9ad2-2487651402c9.jpg", "s90724535-fd16-4d8d-ac56-23257d683b10.jpg", "s8c15cfde-cb27-49b2-aa13-3df3720664cf.jpg",
      "sf8a566e3-31e5-4e6e-be93-e03823e3a73c.jpg", "se58f81e2-927b-4617-81b1-c4e52387c182.jpg", "s47b23805-957e-4290-8476-2b76c8aefa49.jpg",
      "s906454db-a597-4ba2-bc07-79ae3766b020.jpg", "s26f40268-a94f-4df4-8607-db48e29001da.jpg", "s3641c957-bbbe-4f6c-bb58-8026b41c44a4.jpg",
      "s28b3ba31-1414-4dda-bb1d-c90857b71233.jpg", "fb71c6bc2-657f-448d-bb53-8c92e0af1417.JPG", "ff881dd71-6cd0-47a7-975e-1d1da39407b8.jpg",
      "ffdcf4ce6-8e8e-48b4-8742-eaa36f20e7de.JPG", "fe0e83cba-77c3-446e-952d-349755d5fb8b.JPG", "f042779d5-4076-4f0d-ab7f-02138beb4bb3.JPG",
      "ffe427f59-d1e8-4ca3-b1cd-084bc0315261.JPG", "f7d898524-2d8d-4493-b2e6-837d4392a3d9.JPG", "f30424f31-8dcf-4e58-9dc7-9093eb9c9dc2.jpg",
      "fe75f1bcd-fd12-4d40-97e2-9afb8d648500.jpg", "fc1fa19e7-174f-4a01-926f-41c139bec12d.JPG", "faabce8b9-71b0-42cd-b99f-9f86a7554257.JPG",
      "fb6e8f728-8e35-4965-a209-c9346987bf1d.JPG", "fbc7166a3-4a3c-4344-a912-3154a5ff83df.JPG", "f751eb3ad-ef82-4605-8a97-f73dfab5f681.jpg",
      "fd415a031-e794-4826-bfd7-bfe23d25ca72.jpg", "ff9974902-9b0d-49a6-924e-8348e208d382.JPG", "fb5ab989c-0891-4ff0-b90f-8c3fee2c7feb.JPG",
      "f1550328f-2aa5-4a62-ab5e-aa131ea292ae.jpg", "f314a82c3-cd1b-47e2-ab61-2bf35ed5b02c.JPG", "fb1c3ecfa-8f1a-42ec-bbc0-57d9a2dc6345.jpg",
      "f320c4643-431a-4c24-a831-7f9dacac668d.jpg", "f256a8a3e-703d-4241-81b3-28ae575080ec.jpg", "f43648f49-ed07-4ee6-9743-19aa4251c81f.jpg",
      "f84411347-b02d-41ea-89fd-927b3f14d48a.jpg", "f2d0712b5-956c-4e5d-ba48-3a32423bce86.jpg", "f167e888d-7aab-4b0b-88ae-e4acbd200f8b.jpg",
      "fc4fe0cc2-d196-42bb-92d2-1683162559f5.jpg", "fa41b3ccf-ceb7-46fc-b033-53169ad8417a.jpg", "fae182656-2120-44b7-ae03-40741087db44.jpg",
      "fe73bfddd-343a-4e57-b990-6ae9f2a6b5dd.jpg", "f4c181593-a7e4-4c34-8c78-9153c4b6458b.jpg", "fefa15ef2-2efa-4ef8-ae93-b567ee8873dd.jpg",
      "faf6d6de9-3ca4-443a-bef7-2e595b64696e.jpg", "fb1c14f62-acc4-4e1a-aea5-4ebd12d4b875.jpg", "f7152127a-04fa-4291-86fa-28ba377ac89f.jpg",
      "fa406224e-2f48-4f0d-b481-660a869d6bfb.jpg", "f0dd6971b-5776-4f24-86a4-1d97758ed5f2.jpg", "f74109bb4-e634-4c7f-a4d5-041c59b46cec.jpg",
      "f5d154b22-2fc5-41fb-931f-386bd81f5753.JPG", "f31f36dad-52f2-42cb-aaaa-422128286fbc.JPG", "fed2b7481-8600-44f7-b138-1bb5f2024c75.JPG",
      "f1f95aa40-94f1-4092-a333-35cbfea160d6.JPG", "f771da61f-4854-4c1d-a1ea-de6fd7926de6.JPG", "f3bf0c8e7-5519-4039-98a0-85e884f2affe.JPG"
    ],
    schody: [
      "s4c7c1976-85fb-4da5-a4dd-c1168c1dde74.jpg", "sd51cce94-e394-4135-8f42-c24e5251728b.jpg", "s1358d611-5ca8-4412-b4dc-28e5fc2408b0.jpg",
      "s24dec9d4-c7ac-4379-b954-0614438cd449.jpg", "sbbbff9eb-0d0a-41b4-838c-2682cc62a7be.jpg", "sd3bca9a4-6c5d-4c22-9af5-b7b12a8e37d0.jpg",
      "sa3fd4d1a-b39e-4fb8-b668-213529931679.jpg", "f28c78ad6-574d-4e29-8059-f685b12d2b49.JPG", "f3c79af6c-61d9-413d-9244-fb1d4a808160.JPG",
      "f2732e2c0-a7ef-48da-8ad0-e61b350735d7.JPG", "f5b186a6c-121a-498c-8960-bdc3fa914fd2.JPG", "ff5d78f51-75e1-4daf-b0d5-e346023e1fb3.JPG",
      "f96bcaf29-b36f-4eef-a755-550413db0d86.JPG", "f037b46c8-557a-4185-98bb-7338a07a3c92.JPG", "f9b9aac93-14e2-41fb-bd58-c66932a74b84.JPG",
      "f6a9b1dfa-40bb-4207-9177-908b59b16014.JPG", "fb79c05ff-2845-413f-bea6-075fab75e1fe.JPG", "f6ed33a51-40b9-4b9e-9ffe-e72047da2793.jpg",
      "f89068100-cd78-46b8-b64b-d8bb2736fa83.jpg", "f26733765-aeb8-4cd4-8818-bd9254e55171.jpg", "f5af003d0-ace2-4293-b694-548bc0d0753c.jpg",
      "f1e9d54e7-1b59-473d-82ff-d72a4c8eb90d.jpg", "ff0d85fee-fcee-4737-ade3-00d9cb982de9.jpg", "fa074ba40-463b-4de7-92da-6c6f5c191f11.jpg",
      "fa549956c-89fe-4972-99c6-b09b04f13bba.jpg"
    ],
    skrine: [
      "s44de2365-87bc-45b7-9247-e57069a5d965.jpg", "sa622f244-e58b-41c5-9261-8f20af747a9f.jpg", "s33c4b511-5408-411f-a5b6-4e7599b73ec1.jpg",
      "sc8cec8e2-b8dc-4dd8-99c7-827ee7d81545.jpg", "scfac6b17-7d1e-4c98-95d9-f09183826d6f.jpg", "sfb665edb-7cd9-463a-ab98-acc89c018709.jpg",
      "s676ebf09-9a3f-4a0d-9f1e-c83d8974b38c.jpg", "s13f6a43d-c5aa-444a-8826-97d735cf6800.jpg", "s9da7f6cb-c112-4c96-9f1d-3ce8111e513b.jpg",
      "sefb976f4-0a17-4548-a3c7-1915688a1df6.jpg", "fa419c3c4-ea76-4ab6-90e5-c2997f30bd06.JPG", "fa28bb62b-4969-4786-b524-97d522a76dac.JPG",
      "f072915b2-36cc-4d0b-90f1-e1001ac2e7fc.JPG", "fae8b8a6a-c771-4a3c-a394-847330332f73.JPG", "f5234fbe3-0d4c-4c5f-849e-16731794aefd.JPG",
      "f9a66b726-492e-4cc1-9221-2ed66ae38772.JPG", "fcac8bf44-9be1-46ea-af22-f705eccbe4fc.JPG", "f04f6523d-9325-4f8e-a70d-039e8f09f4f6.JPG",
      "fbf200176-6a34-4221-ab6e-88c9883a5dad.JPG", "f0f0b7536-20cb-491d-8c77-6080ef95c008.JPG", "f0d5f4794-0a29-44fa-b189-f8f2e143cbff.jpg",
      "f77521af6-1a50-4856-841d-649abb3433b8.jpg", "f8d3d1f95-7a40-4049-bdf3-136faace436c.jpg", "f26fc68e8-fd99-44f9-a6b5-641cbfba1575.jpg",
      "fd268e589-19cc-4850-996b-90f91ae4bf14.jpg", "fdbaa14e1-22e6-4a07-acdc-4ca415e55281.jpg", "fac91351b-eff3-4b5c-9af0-840a9f2910d1.jpg",
      "fb2d2a2b4-8821-4d29-bfde-cff6e562ca1b.jpg", "f3c3c0d72-e792-42fd-8fba-e7a175a32f16.jpg", "fa6af7330-3402-4cfb-9d87-a3e0e850f2a8.jpg",
      "f8567c55a-2e26-4f05-9388-e94e3a883e09.JPG", "f75f765e8-2b3d-4c91-8ee7-d4054c3f69cd.JPG", "f42d3c56b-3597-4429-a05f-94cbef74689d.JPG",
      "f62e4b73c-0bf2-4908-b7ea-4778dec4e34d.JPG", "fb01c38bc-7d0f-4cc6-831f-f9047f806c22.JPG", "f66260032-35de-417a-9552-36d61b7792ca.JPG",
      "f85cb299a-379a-4bc5-bf5f-79b54ec8a9fc.JPG", "f121cd505-016d-4c53-9fb0-9519677ac8aa.JPG", "f50339bf1-7c84-4d44-ace8-6ab2e5546dce.jpg"
    ],
    postele: [
      "sb8715661-0dff-4c76-8b32-a10b1ad26ae6.jpg", "s044a0b8f-a8ea-468d-8916-b866d24e9dd7.jpg", "s81690e5e-9935-4d0a-bf9b-cc48a7497eab.jpg",
      "s9252bbae-a9d9-4700-8aed-216eae4ad451.jpg", "s2f241680-0438-48f9-b3f3-c014f4566d74.jpg", "f900b1ef5-ec81-49c1-80e4-e4fca8b8ef21.JPG",
      "f3bd6ace3-cc88-4737-9beb-f115a5900a8c.jpg", "f5c834b19-a356-4108-93dd-fac820734c21.JPG", "f39f54299-dd3e-42cb-9cd1-ce506a6c1997.JPG",
      "fbed6259c-966d-4f27-83f1-9480efd5355c.JPG", "f3ac5f04b-fea3-489a-98ec-5622c348d94e.jpg", "fdc6811aa-2545-4f64-896a-90f9a2893313.jpg"
    ],
    zakazka: [
      "s50811308-af94-4f66-8002-b3d6ae485aed.jpg", "s72ea0dff-520c-40ad-943b-b5baa7a09a82.jpg", "s9e89bf02-8d36-41a8-bcfd-d10c26a61df3.jpg",
      "s5af73f21-bc18-4d37-a31d-8564ee317f5f.jpg", "s7eb05c2d-752e-4acb-8e9a-5ed318e1aa59.jpg", "s0c26083c-fcb5-4d62-ae00-2b7571bd738d.jpg",
      "s6877f357-d2e6-49df-88c6-fe006105202b.jpg", "sbad36ea3-6214-4446-a510-1a6ce4bb49dc.jpg", "s6329c96e-c76d-4303-9200-404c0c146dde.jpg",
      "f68a9e934-6df3-4ba7-bf24-78f8ff8a66e6.JPG", "f1abaa040-4ecf-442b-8422-2ec21bc34f72.JPG", "f2982f16e-f833-4673-b191-dc45b9890d90.JPG",
      "f1fd3edf2-622f-4e28-a80e-8c2c1eebf9c1.JPG", "f241a0b9a-57bd-46bd-a880-bb86034f8749.JPG", "f5de18677-b304-4be6-81f1-5cfe62b97f18.jpg",
      "f7a7a5857-75ae-4132-a6c8-55ed56e5afc1.jpg", "ffd7e454a-5bc3-4a2d-a827-407440a70117.jpg", "ff36349a9-fef6-4750-b4e0-29a4b9dfca74.jpg",
      "f6f9df70b-3466-41f5-8391-2ab27c59f9ba.jpg", "f67c854bb-b93d-4a5b-8f9c-b611f17f3d67.jpg", "f17bd100d-f07c-4643-8b1b-de47838c79c2.jpg",
      "fc8a3269d-c5cc-48cb-a6f2-a667ab4eda08.jpg", "f22931e4e-3c9b-486e-b503-44b73fbe528a.jpg", "faa655050-5b1d-4308-be92-822b5fd55289.jpg",
      "f2ee37e1f-5b25-4e54-bd7f-8c995dc07f75.jpg", "fd7882bd3-a438-4e8f-9ed4-90b48e72a3eb.jpg", "fa1f77413-10ef-435b-9e02-ae4f1005a020.jpg",
      "fb65a664f-3bf9-4062-87fe-8bc235cd6852.jpg", "f38635750-ec0f-4145-96f8-b6c4993da667.jpg", "f38593030-4920-44a5-a4ae-96759da7838e.jpg",
      "f626fe094-b22d-456d-ae5f-55f7b4f5e350.jpg", "febda07e8-082b-4f04-aa9c-47ae6ab806cf.jpg", "f785d7ced-7a93-4be6-932c-41575cf2fb00.jpg",
      "feeba4abd-59bb-4a2a-93f3-0d16fcf193b9.jpg", "f9a1a1b8c-a4b2-42a8-a0af-67e1cafdd182.jpg", "f0c4c491f-4113-45ab-822f-7479afe9558a.jpg"
    ],
    uvod: [
      "s9d2ad469-a4ef-4faa-a8da-1a69823687b7.jpg", "s8cb8bcba-3a2e-41ee-9db5-9f6b672c8f13.jpg"
    ]
  };

  // fotky, které se nepoužijí (kuchyne 23 je na jejich webu poškozená)
  const SKIP = { kuchyne: [23] };

  const PHOTOS = {};
  Object.keys(DATA).forEach((obor) => {
    PHOTOS[obor] = DATA[obor].map((code, i) => ({
      src: `img/${obor}/${String(i + 1).padStart(2, '0')}.jpg`,
      fallback: remote(code),
      n: i + 1
    }));
  });
  const pick = (obor, n) => PHOTOS[obor].find((p) => p.n === n);
  Object.keys(SKIP).forEach((obor) => {
    PHOTOS[obor] = PHOTOS[obor].filter((p) => !SKIP[obor].includes(p.n));
  });
  PHOTOS.vse = ['dvere', 'kuchyne', 'schody', 'skrine', 'postele', 'zakazka'].flatMap((k) => PHOTOS[k]);

  // fotky do úvodu (na šířku)
  const HERO_PHOTOS = [
    pick('kuchyne', 2),
    pick('dvere', 35),
    pick('kuchyne', 8),
    pick('zakazka', 5),
    pick('kuchyne', 12)
  ];

  // náhledy v nabídce Služeb
  const THUMBS = {
    dvere: pick('dvere', 5),
    kuchyne: pick('kuchyne', 2),
    schody: pick('schody', 8),
    skrine: pick('skrine', 4),
    postele: pick('postele', 7),
    zakazka: pick('zakazka', 5)
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
     1 · Fotky a logo
     --------------------------------------------------------- */
  const hero = $('.hero');
  const slides = $('.hero-slides');
  if (slides) {
    startRotator(slides, HERO_PHOTOS, { className: 'hero-slide', fade: 1800, interval: () => 6500 });
  }

  // Kdo jsme? – dvě fotky pod logem, každá svým tempem (ze všech galerií)
  $$('.about-photo').forEach((box, n) => {
    startRotator(box, PHOTOS[box.dataset.photos] || PHOTOS.vse, {
      className: 'about-img',
      fade: 1400,
      delay: n * 1700,
      interval: () => 4800 + Math.random() * 2200
    });
  });

  // Karty oborů – fotka oboru v pozadí se střídá
  $$('.card').forEach((card, n) => {
    startRotator(card, PHOTOS[card.dataset.photos] || [], {
      className: 'card-photo',
      fade: 1400,
      delay: n * 450,
      interval: () => 4400 + Math.random() * 2400
    });
  });

  // Fotky po stranách a výroba na zakázku
  $$('.side-photo').forEach((box, n) => {
    startRotator(box, PHOTOS.vse, {
      className: 'side-img',
      fade: 1400,
      delay: 300 + n * 1300,
      interval: () => 4600 + Math.random() * 2200
    });
  });
  const zak = $('.zakazka');
  if (zak) {
    startRotator(zak, PHOTOS.zakazka, {
      className: 'zak-photo',
      fade: 1400,
      delay: 700,
      interval: () => 5200 + Math.random() * 1800
    });
  }

  // Náhledy v nabídce Služeb
  $$('.sub-img').forEach(async (img) => {
    const p = THUMBS[img.dataset.thumb];
    const url = p ? await resolvePhoto(p) : null;   // když fotka není v img/, vezme se z jejich webu
    if (url && img.getAttribute('src') !== url) img.src = url;
  });

  // Logo (img/logo.png, jinak z jejich webu) a světlé logo do patičky
  const LOGO = { src: 'img/logo.png', fallback: remote('fb394d741-5896-4fcf-90e7-38827305fc9f.png') };
  $$('[data-logo]').forEach(async (img) => {
    const url = await resolvePhoto(LOGO);
    if (url && img.getAttribute('src') !== url) img.src = url;
  });
  $$('[data-logo-light]').forEach(async (img) => {
    if (await probe(img.getAttribute('src'))) return;            // světlé logo je ve složce img/
    const url = await resolvePhoto(LOGO);
    if (url) { img.src = url; img.classList.add('is-light'); }   // nouzově přebarvené
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
     6 · Karty oborů, fotky s rohy, výroba na zakázku
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

  // výkres u výroby na zakázku: rámeček perem + kóty
  if (zak) {
    zak.insertAdjacentHTML('beforeend',
      '<i class="zak-frame" aria-hidden="true"></i>' +
      '<i class="kota kota-x" aria-hidden="true"><b>na míru</b></i>' +
      '<i class="kota kota-y" aria-hidden="true"><b>podle vás</b></i>');
  }

  const hoverables = $$('.card, .zakazka, .side-photo');
  hoverables.forEach((el) => {
    const on = () => el.classList.add('is-hover');
    const off = () => el.classList.remove('is-hover');
    el.addEventListener('mouseenter', on);
    el.addEventListener('mouseleave', off);
    el.addEventListener('focus', on);
    el.addEventListener('blur', off);
  });

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
