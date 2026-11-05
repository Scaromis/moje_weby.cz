// SDK Zelený

const klidne = matchMedia('(prefers-reduced-motion: reduce)').matches;
const lista = document.getElementById('lista');

/* Zvýraznění aktuální sekce v liště */
const odkazy = [...lista.querySelectorAll('nav a')];
const sledovane = odkazy.map(a => document.querySelector(a.getAttribute('href')));
const pozorovatel = new IntersectionObserver(zaznamy => {
  for (const z of zaznamy) {
    if (z.isIntersecting) odkazy.forEach((a, i) => a.classList.toggle('aktivni', sledovane[i] === z.target));
  }
}, { rootMargin: '-45% 0px -50%' });
sledovane.forEach(s => pozorovatel.observe(s));

/* Oblouky u kruhů se dokreslí, když na ně uživatel doscrolluje */
const kruhy = document.querySelector('.kruhy');
const naKruhy = new IntersectionObserver(([z]) => {
  if (z.isIntersecting) { kruhy.classList.add('videt'); naKruhy.disconnect(); }
}, { threshold: .25 });
naKruhy.observe(kruhy);

/* Střídání fotek */
const fotky = [...document.querySelectorAll('.fotky img')];
const popisek = document.querySelector('.fotky figcaption');
const tecky = fotky.map((f, i) => {
  const t = document.createElement('button');
  t.type = 'button';
  t.setAttribute('aria-label', `Fotka ${i + 1}: ${f.alt}`);
  popisek.append(t);
  return t;
});
let aktualni = 0, casovac;
const ukaz = i => {
  aktualni = i;
  fotky.forEach((f, n) => f.classList.toggle('aktivni', n === i));
  tecky.forEach((t, n) => {
    t.classList.toggle('aktivni', n === i);
    t.setAttribute('aria-pressed', n === i);
  });
};
const spustStridani = () => {
  if (klidne) return;
  clearInterval(casovac);
  casovac = setInterval(() => ukaz((aktualni + 1) % fotky.length), 5000);
};
tecky.forEach((t, i) => t.addEventListener('click', () => { ukaz(i); spustStridani(); }));
const figura = document.querySelector('.fotky');
figura.addEventListener('pointerenter', () => clearInterval(casovac));
figura.addEventListener('pointerleave', spustStridani);
ukaz(0);
spustStridani();

/* Formulář zatím připraví e-mail v programu návštěvníka (web nemá server) */
const formular = document.getElementById('formular');
formular.addEventListener('submit', e => {
  e.preventDefault();
  const d = new FormData(formular);
  const text = [
    `Jméno a příjmení: ${d.get('jmeno')} ${d.get('prijmeni')}`,
    `E-mail: ${d.get('email')}`,
    `Telefon: ${d.get('telefon') || 'neuveden'}`,
    '',
    d.get('zprava')
  ].join('\n');
  location.href = 'mailto:info@sdkzeleny.cz?subject=' + encodeURIComponent('Nezávazná cenová nabídka')
    + '&body=' + encodeURIComponent(text);
  document.getElementById('stav').textContent = 'Zpráva je připravená ve vašem e-mailovém programu. Odešlete ji tam.';
});
