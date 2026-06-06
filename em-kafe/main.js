/* =============================================
   Em Kafe — Sdílený JavaScript
   ============================================= */

const IMGS = {
  logo: 'https://d48-a.sdn.cz/d_48/c_img_QO_8/MpVEc.png',
  f1: 'https://d48-a.sdn.cz/d_48/c_img_QL_0/reQlC0.jpeg',
  f2: 'https://d48-a.sdn.cz/d_48/c_img_QJ_v/geuBw2x.jpeg',
  f3: 'https://d48-a.sdn.cz/d_48/c_img_QL_1/D6dIU.jpeg',
  f4: 'https://d48-a.sdn.cz/d_48/c_img_QJ_v/m5GBw2y.jpeg',
  f5: 'https://d48-a.sdn.cz/d_48/c_img_QR_w/bskES.jpeg',
  f6: 'https://d48-a.sdn.cz/d_48/c_img_QL_1/FipIV.jpeg',
};

// === SEARCH DATA ===
const searchData = [
  { name: 'Espresso', cat: 'Káva', page: 'piti.html' },
  { name: 'Cappuccino', cat: 'Káva', page: 'piti.html' },
  { name: 'Flat White', cat: 'Káva', page: 'piti.html' },
  { name: 'Latte', cat: 'Káva', page: 'piti.html' },
  { name: 'Americano', cat: 'Káva', page: 'piti.html' },
  { name: 'Macchiato', cat: 'Káva', page: 'piti.html' },
  { name: 'Cortado', cat: 'Káva', page: 'piti.html' },
  { name: 'Cold Brew', cat: 'Káva', page: 'piti.html' },
  { name: 'Vídeňská káva', cat: 'Káva', page: 'piti.html' },
  { name: 'Káva bez kofeinu', cat: 'Káva', page: 'piti.html' },
  { name: 'Bezlaktózové mléko', cat: 'Káva', page: 'piti.html' },
  { name: 'Bylinný čaj', cat: 'Čaje', page: 'piti.html' },
  { name: 'Zelený čaj', cat: 'Čaje', page: 'piti.html' },
  { name: 'Černý čaj', cat: 'Čaje', page: 'piti.html' },
  { name: 'Ovocný čaj', cat: 'Čaje', page: 'piti.html' },
  { name: 'Domácí limonáda', cat: 'Limonády', page: 'piti.html' },
  { name: 'Mošt', cat: 'Mošty & šťávy', page: 'piti.html' },
  { name: 'Regionální šťáva', cat: 'Mošty & šťávy', page: 'piti.html' },
  { name: 'Víno', cat: 'Víno', page: 'piti.html' },
  { name: 'Cheesecake', cat: 'Zákusky', page: 'zakusky.html' },
  { name: 'Malinový cheesecake', cat: 'Zákusky', page: 'zakusky.html' },
  { name: 'Makronky', cat: 'Zákusky', page: 'zakusky.html' },
  { name: 'Řezy', cat: 'Zákusky', page: 'zakusky.html' },
  { name: 'Větrník', cat: 'Zákusky', page: 'zakusky.html' },
  { name: 'Dort na zakázku', cat: 'Dorty', page: 'dorty.html' },
  { name: 'Narozeninový dort', cat: 'Dorty', page: 'dorty.html' },
  { name: 'Svatební dort', cat: 'Dorty', page: 'dorty.html' },
  { name: 'Snídaňové menu', cat: 'Snídaně', page: 'snidane.html' },
  { name: 'Snídaně', cat: 'Snídaně', page: 'snidane.html' },
];

// Fuzzy search scoring
function scoreMatch(item, q) {
  const n = item.name.toLowerCase();
  const c = item.cat.toLowerCase();
  const query = q.toLowerCase().trim();
  if (!query) return 0;
  if (n.includes(query) || c.includes(query)) return 2;
  // Sequential character match
  let j = 0;
  for (let i = 0; i < n.length && j < query.length; i++) {
    if (n[i] === query[j]) j++;
  }
  return j === query.length ? 1 : 0;
}

function fuzzySearch(query) {
  const q = query.toLowerCase().trim();
  if (!q) return [];
  const words = q.split(/\s+/);
  return searchData
    .filter(item => {
      const full = item.name.toLowerCase() + ' ' + item.cat.toLowerCase();
      return words.every(w => full.includes(w));
    })
    .sort((a, b) => {
      const an = a.name.toLowerCase(), bn = b.name.toLowerCase();
      if (an === q) return -1; if (bn === q) return 1;
      if (an.startsWith(q)) return -1; if (bn.startsWith(q)) return 1;
      return 0;
    })
    .slice(0, 7);
}

// Highlight matched chars
function highlight(text, query) {
  if (!query) return text;
  const q = query.toLowerCase();
  const t = text.toLowerCase();
  let result = '';
  let qi = 0;
  for (let i = 0; i < text.length; i++) {
    if (qi < q.length && t[i] === q[qi]) {
      result += `<mark>${text[i]}</mark>`;
      qi++;
    } else {
      result += text[i];
    }
  }
  return result;
}

document.addEventListener('DOMContentLoaded', () => {

  // --- Adjust body top padding based on actual nav height ---
  const navbar = document.getElementById('navbar');
  function adjustPadding() {
    if (navbar) {
      document.body.style.paddingTop = navbar.offsetHeight + 'px';
    }
  }
  adjustPadding();
  window.addEventListener('resize', adjustPadding);

  // --- Nav scroll effect ---
  window.addEventListener('scroll', () => {
    navbar && navbar.classList.toggle('scrolled', window.scrollY > 30);
  }, { passive: true });

  // --- Active nav link ---
  const page = window.location.pathname.split('/').pop() || 'index.html';
  document.querySelectorAll('.nav-links a').forEach(link => {
    if (link.getAttribute('href') === page) link.classList.add('active');
  });

  // --- Search ---
  const input = document.getElementById('searchInput');
  const resultsBox = document.getElementById('searchResults');
  if (input && resultsBox) {
    input.addEventListener('input', () => {
      const q = input.value;
      const matches = fuzzySearch(q);
      if (!matches.length || !q.trim()) {
        resultsBox.classList.remove('show');
        return;
      }
      resultsBox.innerHTML = matches.map(m => `
        <a href="${m.page}" class="sr-item">
          <div>
            <strong>${highlight(m.name, q)}</strong>
            <span>${m.cat}</span>
          </div>
          <svg width="14" height="14" fill="none" stroke="currentColor" stroke-width="2" viewBox="0 0 24 24" style="opacity:.3;flex-shrink:0">
            <polyline points="9 18 15 12 9 6"></polyline>
          </svg>
        </a>`).join('');
      resultsBox.classList.add('show');
    });
    document.addEventListener('click', e => {
      if (!input.contains(e.target) && !resultsBox.contains(e.target)) {
        resultsBox.classList.remove('show');
      }
    });
    input.addEventListener('keydown', e => {
      if (e.key === 'Escape') resultsBox.classList.remove('show');
    });
  }

  // --- Intersection observer fade-in ---
  const io = new IntersectionObserver((entries) => {
    entries.forEach(entry => {
      if (entry.isIntersecting) {
        entry.target.classList.add('in');
        io.unobserve(entry.target);
      }
    });
  }, { threshold: 0.08, rootMargin: '0px 0px -30px 0px' });
  document.querySelectorAll('.fi').forEach(el => io.observe(el));

  // --- Lightbox ---
  const lb = document.getElementById('lightbox');
  if (lb) {
    const lbImg = lb.querySelector('img');
    document.querySelectorAll('.gallery-item').forEach(item => {
      item.addEventListener('click', () => {
        lbImg.src = item.querySelector('img').src;
        lb.classList.add('open');
      });
    });
    lb.addEventListener('click', e => {
      if (e.target === lb || e.target.classList.contains('lb-close')) {
        lb.classList.remove('open');
      }
    });
    document.addEventListener('keydown', e => {
      if (e.key === 'Escape') lb.classList.remove('open');
    });
  }

  // --- Footer year ---
  const yr = document.getElementById('year');
  if (yr) yr.textContent = new Date().getFullYear();

  // --- Hero parallax (desktop only) ---
  const hero = document.querySelector('.hero');
  if (hero && window.innerWidth > 768) {
    window.addEventListener('scroll', () => {
      hero.style.backgroundPositionY = `calc(50% + ${window.scrollY * 0.3}px)`;
    }, { passive: true });
  }
});
