/* =========================================================
   Občerstvení u slepiček – main.js
   ========================================================= */

/* ----- Seznamy fotek -----
   Až budeš chtít přidat/ubrat fotky, jen je nahraj do složek
   img/okoli, img/budova, img/jidlo (klidně víc kusů) a sem
   doplň jejich názvy do příslušného pole.                  */
const PHOTOS = {
  okoli:  ["img/okoli/okoli-1.jpg","img/okoli/okoli-2.jpg","img/okoli/okoli-3.jpg","img/okoli/okoli-4.jpg","img/okoli/okoli-5.jpg","img/okoli/okoli-6.jpg","img/okoli/okoli-7.jpg"],
  budova: ["img/budova/budova-1.jpg","img/budova/budova-2.jpg","img/budova/budova-3.jpg","img/budova/budova-4.jpg","img/budova/budova-5.jpg"],
  jidlo:  ["img/jidlo/jidlo-1.jpg","img/jidlo/jidlo-2.jpg","img/jidlo/jidlo-3.jpg","img/jidlo/jidlo-4.jpg","img/jidlo/jidlo-5.jpg"],
  uvod:   ["img/uvod/uvod-1.jpg","img/uvod/uvod-2.jpg","img/uvod/uvod-3.jpg","img/uvod/uvod-4.jpg","img/uvod/uvod-5.jpg"]
};
const CAT_LABEL = {okoli:"Blízké okolí", budova:"Naše budka", jidlo:"Jídlo a pití", uvod:"Z našeho prostředí"};
const ALL = [...PHOTOS.okoli, ...PHOTOS.budova, ...PHOTOS.jidlo];

/* ----- pomocné ----- */
const shuffle = a => a.map(v=>[Math.random(),v]).sort((x,y)=>x[0]-y[0]).map(p=>p[1]);
const $  = (s,r=document)=>r.querySelector(s);
const $$ = (s,r=document)=>[...r.querySelectorAll(s)];

document.addEventListener("DOMContentLoaded",()=>{

  /* rok v patičce */
  const yr = $("#year"); if(yr) yr.textContent = new Date().getFullYear();

  /* mobilní menu */
  const toggle = $(".nav-toggle"), nav = $(".main-nav");
  if(toggle && nav) toggle.addEventListener("click",()=>nav.classList.toggle("open"));

  /* reveal při scrollu */
  const obs = new IntersectionObserver(es=>{
    es.forEach(e=>{ if(e.isIntersecting){ e.target.classList.add("in"); obs.unobserve(e.target);} });
  },{threshold:.15});
  $$(".reveal-up").forEach(el=>obs.observe(el));

  /* slideshow na úvodu (Probíhající fotky) – střídání po 2 s */
  $$(".js-slideshow").forEach(box=>{
    const list = shuffle(PHOTOS[box.dataset.cat] || []);
    if(!list.length) return;
    list.forEach((src,i)=>{
      const im = document.createElement("img");
      im.src = src; im.alt = CAT_LABEL[box.dataset.cat] || "Foto"; im.loading="lazy";
      if(i===0) im.classList.add("show");
      box.appendChild(im);
    });
    if(list.length<2) return;
    let idx=0;
    setInterval(()=>{
      const imgs=box.querySelectorAll("img");
      imgs[idx].classList.remove("show");
      idx=(idx+1)%imgs.length;
      imgs[idx].classList.add("show");
    },2000);
  });

  /* ===== NABÍDKA – nadpis přiletí jako šipka a změní tvar ===== */
  const badge = $(".shape-badge");
  if(badge) requestAnimationFrame(()=>badge.classList.add("animate"));

  /* ===== KONTAKT – zvýraznění dnešního dne ===== */
  const hours = $(".hours-table");
  if(hours){
    const map={1:"po",2:"ut",3:"st",4:"ct",5:"pa",6:"so",0:"ne"};
    const row=hours.querySelector('tr[data-day="'+map[new Date().getDay()]+'"]');
    if(row) row.classList.add("today");
  }

  /* ===== FOTKY – lítající fotky + lightbox + klasická galerie ===== */
  initFotky();
});

function initFotky(){
  const lb = document.getElementById("lightbox");
  if(!lb) return;                          // nejsme na stránce Fotky

  /* --- Lightbox (lišta vlevo se ukáže až tady, po rozkliknutí) --- */
  const lbStrip = document.getElementById("lbStrip");
  const lbMain  = document.getElementById("lbMain");
  const lbClose = document.getElementById("lbClose");

  function openLightbox(list, current){
    const items = shuffle(list.slice());           // náhodné pořadí v liště
    lbStrip.innerHTML = "";
    items.forEach(src=>{
      const t=document.createElement("img");
      t.src=src; t.alt="Náhled"; t.loading="lazy";
      t.addEventListener("click",()=>setMain(src));
      lbStrip.appendChild(t);
    });
    setMain(current && list.includes(current) ? current : items[0]);
    lb.classList.add("open");
    document.body.style.overflow="hidden";
  }
  function setMain(src){
    lbMain.src=src;
    $$("#lbStrip img").forEach(i=>i.classList.toggle("active", i.getAttribute("src")===src));
  }
  function closeLightbox(){ lb.classList.remove("open"); document.body.style.overflow=""; }

  if(lbClose) lbClose.addEventListener("click",closeLightbox);
  lb.addEventListener("click",e=>{ if(e.target===lb) closeLightbox(); });
  document.addEventListener("keydown",e=>{ if(e.key==="Escape") closeLightbox(); });

  /* pomocná rotace fotek uvnitř prvku (střídání po 2 s) */
  function rotateInside(box, list){
    list.forEach((src,i)=>{
      const im=document.createElement("img");
      im.src=src; im.alt="Foto"; im.loading="lazy";
      if(i===0) im.classList.add("show");
      box.insertBefore(im, box.firstChild);   // pod popisek/hint
    });
    if(list.length<2) return;
    let idx=0;
    setInterval(()=>{
      const imgs=box.querySelectorAll("img");
      imgs[idx].classList.remove("show");
      idx=(idx+1)%imgs.length;
      imgs[idx].classList.add("show");
    },2000);
  }
  const current = box => { const c=box.querySelector("img.show"); return c?c.getAttribute("src"):null; };

  /* --- Vpravo: jedna fotka, která se střídá; klik = zvětšení (všechny fotky) --- */
  const show = document.getElementById("showPhoto");
  if(show){
    rotateInside(show, shuffle(ALL));
    show.addEventListener("click",()=>openLightbox(ALL, current(show)));
  }

  /* --- Tři okruhy: střídají se a klik otevře daný okruh --- */
  $$(".cat-card[data-cat]").forEach(card=>{
    const cat=card.dataset.cat;
    rotateInside(card, shuffle(PHOTOS[cat]||[]));
    card.addEventListener("click",()=>openLightbox(PHOTOS[cat], current(card)));
  });
}
