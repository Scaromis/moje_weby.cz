/* ====== Editace cen – stejný princip jako u projektu Růžovka ======
   Klikni na zámeček v patičce, zadej heslo, přepiš ceny, ulož.
   Ceny se ukládají do localStorage prohlížeče (klíč dle stránky).
   HESLO ZMĚŇ NÍŽE (proměnná ADMIN_PASSWORD).
*/
(function () {
  var ADMIN_PASSWORD = 'sembonzakura_meč9';            // <<< ZDE SI MŮŽEŠ HESLO ZMĚNIT
  var STORAGE_KEY = document.body.dataset.priceStore;  // klíč nastavený na <body>
  if (!STORAGE_KEY) return;

  var SEL = '.price-val,.text-val'; // ceny + (volitelně) editovatelné texty (polední menu)
  function loadPrices() {
    try {
      var saved = JSON.parse(localStorage.getItem(STORAGE_KEY)) || {};
      document.querySelectorAll(SEL).forEach(function (el) {
        if (saved[el.dataset.key] !== undefined) el.textContent = saved[el.dataset.key];
      });
    } catch (e) {}
  }
  loadPrices();

  var bar = document.getElementById('adminBar');
  var popup = document.getElementById('adminPopup');
  var input = document.getElementById('adminInput');
  var hint = document.getElementById('adminHint');
  var lock = document.getElementById('adminLockBtn');
  if (!bar || !lock) return;

  lock.addEventListener('click', function () {
    popup.classList.toggle('open');
    if (popup.classList.contains('open')) input.focus();
  });
  document.addEventListener('click', function (e) {
    if (!e.target.closest('#adminPopup') && !e.target.closest('#adminLockBtn')) popup.classList.remove('open');
  });
  function tryPass() { if (input.value === ADMIN_PASSWORD) activate(); }
  input.addEventListener('input', tryPass);
  input.addEventListener('keydown', function (e) { if (e.key === 'Enter') tryPass(); });

  function activate() {
    popup.classList.remove('open'); input.value = '';
    bar.classList.add('active');
    document.body.classList.add('edit-mode');
    document.body.style.paddingTop = '46px';
    document.querySelectorAll(SEL).forEach(function (el) {
      el.contentEditable = 'true'; el.setAttribute('spellcheck', 'false');
    });
    if (hint) hint.textContent = 'Aktivováno!';
  }
  function deactivate() {
    bar.classList.remove('active');
    document.body.classList.remove('edit-mode');
    document.body.style.paddingTop = '';
    document.querySelectorAll(SEL).forEach(function (el) { el.contentEditable = 'false'; });
  }

  document.getElementById('adminSaveBtn').addEventListener('click', function () {
    var prices = {};
    document.querySelectorAll(SEL).forEach(function (el) { prices[el.dataset.key] = el.textContent.trim(); });
    localStorage.setItem(STORAGE_KEY, JSON.stringify(prices));
    var b = this, o = b.textContent;
    b.textContent = '✓ Uloženo!';
    setTimeout(function () { b.textContent = o; }, 1800);
  });
  document.getElementById('adminResetBtn').addEventListener('click', function () {
    if (!confirm('Obnovit původní ceny? Změny budou ztraceny.')) return;
    localStorage.removeItem(STORAGE_KEY); location.reload();
  });
  document.getElementById('adminExitBtn').addEventListener('click', deactivate);
})();
