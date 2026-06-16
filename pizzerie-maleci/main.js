/* ====== PIZZERIE MALECÍ – sdílený JS ====== */
(function () {
  var h = document.documentElement;

  /* Hovery jen tam, kde je myš (na dotyku vypnuto) */
  window.addEventListener('mousemove', function () { h.classList.add('can-hover'); }, { passive: true });
  window.addEventListener('touchstart', function () { h.classList.remove('can-hover'); }, { passive: true });

  document.addEventListener('DOMContentLoaded', function () {

    /* Rok v patičce – mění se automaticky každý rok */
    var y = document.getElementById('year');
    if (y) y.textContent = new Date().getFullYear();

    /* Úvodní nadpis nalétne zespodu hned po načtení */
    var title = document.querySelector('.page-title');
    if (title) {
      requestAnimationFrame(function () {
        setTimeout(function () { title.classList.add('flew'); }, 120);
      });
    }

    /* Sekce nalétnou zespodu, jak se na ně doscrolluje */
    var reveals = document.querySelectorAll('.reveal');
    if ('IntersectionObserver' in window && reveals.length) {
      var obs = new IntersectionObserver(function (entries) {
        entries.forEach(function (e) {
          if (e.isIntersecting) { e.target.classList.add('flew'); obs.unobserve(e.target); }
        });
      }, { threshold: 0.12 });
      reveals.forEach(function (el) { obs.observe(el); });
    } else {
      reveals.forEach(function (el) { el.classList.add('flew'); });
    }

    /* Mapa na mobilu – otevřít/zavřít */
    var mt = document.getElementById('mapToggle');
    if (mt) {
      mt.addEventListener('click', function () {
        var w = document.getElementById('mapWrap');
        var open = w.classList.toggle('open');
        mt.querySelector('.mt-label').textContent = open ? 'Skrýt mapu' : 'Zobrazit mapu';
      });
    }
  });
})();
