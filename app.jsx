/* global React, ReactDOM, NFG_LISTINGS, NFG_RELATIONS */
const { useState, useMemo } = React;

// ---- Design tokens (overridable via CSS vars at runtime)
const TYPE_COLORS = {
  'Restaurant':     '#C7522A',
  'Verarbeiter:in': '#7A5C3E',
  'Landwirt:in':    '#5A7A3A',
  'Laden':          '#3F6280',
  'Event':          '#8E4A8E'
};
const TYPE_DOT = (t) => TYPE_COLORS[t] || '#666';

const PLACEHOLDER_COLORS = {
  forest: ['#2d4a36', '#3d5e44'],
  sage:   ['#7a8c5e', '#94a577'],
  clay:   ['#a86142', '#c2785a'],
  wheat:  ['#c69b5e', '#d9b377']
};

// ---- Placeholder image (gradient + hatching)
function Placeholder({ kind = 'forest', label, tall }) {
  const [a, b] = PLACEHOLDER_COLORS[kind] || PLACEHOLDER_COLORS.forest;
  return (
    <div className={'nfg-ph' + (tall ? ' tall' : '')} style={{
      background: `linear-gradient(135deg, ${a} 0%, ${b} 100%)`,
    }}>
      <svg width="100%" height="100%" style={{ position: 'absolute', inset: 0, opacity: 0.18 }}>
        <defs>
          <pattern id={`p-${kind}`} width="8" height="8" patternUnits="userSpaceOnUse" patternTransform="rotate(35)">
            <line x1="0" y1="0" x2="0" y2="8" stroke="#fff" strokeWidth="1.2"/>
          </pattern>
        </defs>
        <rect width="100%" height="100%" fill={`url(#p-${kind})`}/>
      </svg>
      {label ? <span className="nfg-ph-lbl">{label}</span> : null}
    </div>
  );
}

// ---- Header
function GuideHeader({ query, onSearch, locale, setLocale }) {
  return (
    <header className="nfg-hd">
      <div className="nfg-hd-top">
        <div>
          <div className="nfg-hd-by">by Soil to Soul</div>
          <div className="nfg-hd-ttl">Natural<br/>Food Guide</div>
        </div>
        <button className="nfg-lang" onClick={() => setLocale(locale === 'DE' ? 'EN' : 'DE')}>
          {locale}
        </button>
      </div>
      <div className="nfg-search">
        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
          <circle cx="11" cy="11" r="7"/><path d="m21 21-4.3-4.3"/>
        </svg>
        <input
          value={query}
          onChange={(e) => onSearch(e.target.value)}
          placeholder={locale === 'DE' ? 'Suche nach Name, Stadt, Tag…' : 'Search name, city, tag…'}
        />
        {query ? <button className="nfg-clr" onClick={() => onSearch('')}>×</button> : null}
      </div>
    </header>
  );
}

// ---- Category filter pills
const CATEGORIES = [
  { id: 'Restaurant',     label: 'Restaurants' },
  { id: 'Verarbeiter:in', label: 'Verarbeiter:innen' },
  { id: 'Landwirt:in',    label: 'Landwirt:innen' },
  { id: 'Laden',          label: 'Läden' },
  { id: 'Event',          label: 'Events & Pop-Ups' }
];

const TAGS = ['Regenerativ', 'Bio', 'Pflanzenbasiert', 'Saisonal', 'Regional', 'Demeter', 'Tierwohl', 'Handwerk', 'Fine Dining'];

function CategoryRow({ cats, setCats }) {
  const toggle = (c) => setCats(cats.includes(c) ? cats.filter(x => x !== c) : [...cats, c]);
  return (
    <div className="nfg-cats">
      {CATEGORIES.map(c => {
        const active = cats.includes(c.id);
        return (
          <button
            key={c.id}
            className={'nfg-cat' + (active ? ' on' : '')}
            onClick={() => toggle(c.id)}
            style={active ? { background: TYPE_COLORS[c.id], color: '#fff', borderColor: TYPE_COLORS[c.id] } : {}}
          >
            <span className="nfg-cat-dot" style={{ background: TYPE_COLORS[c.id] }}/>
            {c.label}
          </button>
        );
      })}
    </div>
  );
}

function TagRow({ tags, setTags }) {
  const toggle = (t) => setTags(tags.includes(t) ? tags.filter(x => x !== t) : [...tags, t]);
  return (
    <div className="nfg-tags">
      {TAGS.map(t => (
        <button key={t} className={'nfg-tag' + (tags.includes(t) ? ' on' : '')} onClick={() => toggle(t)}>
          {tags.includes(t) ? '✓ ' : '+ '}{t}
        </button>
      ))}
    </div>
  );
}

// ---- Stylized Switzerland map
function SwissMap({ items, onPick, focusId }) {
  const proj = (lat, lng) => {
    const x = ((lng - 5.9) / (10.5 - 5.9)) * 360 + 12;
    const y = ((47.8 - lat) / (47.8 - 45.8)) * 180 + 12;
    return [x, y];
  };
  return (
    <div className="nfg-map-wrap">
      <svg viewBox="0 0 384 204" className="nfg-map">
        <defs>
          <pattern id="topo" width="6" height="6" patternUnits="userSpaceOnUse">
            <circle cx="3" cy="3" r="0.5" fill="#1f3d2b" opacity="0.18"/>
          </pattern>
        </defs>
        <path d="M40,80 C45,55 70,40 100,42 C120,28 145,30 165,40 C185,32 210,30 235,40 C260,35 295,38 330,55 C355,65 365,85 360,110 C355,135 330,150 305,148 C285,160 255,165 230,158 C205,168 175,170 150,160 C125,170 95,168 70,155 C50,148 35,130 38,110 Z"
          fill="#e8e1cf" stroke="#1f3d2b" strokeWidth="1" opacity="0.85"/>
        <path d="M40,80 C45,55 70,40 100,42 C120,28 145,30 165,40 C185,32 210,30 235,40 C260,35 295,38 330,55 C355,65 365,85 360,110 C355,135 330,150 305,148 C285,160 255,165 230,158 C205,168 175,170 150,160 C125,170 95,168 70,155 C50,148 35,130 38,110 Z"
          fill="url(#topo)"/>
        {/* Lakes */}
        <ellipse cx="155" cy="115" rx="22" ry="6" fill="#a8bfc9" opacity="0.7"/>
        <ellipse cx="105" cy="135" rx="20" ry="5" fill="#a8bfc9" opacity="0.7"/>
        <ellipse cx="205" cy="100" rx="14" ry="4" fill="#a8bfc9" opacity="0.7"/>
        {/* Pins */}
        {items.map(it => {
          const [x, y] = proj(it.lat, it.lng);
          const focused = focusId === it.id;
          return (
            <g key={it.id} transform={`translate(${x},${y})`} onClick={() => onPick(it)} style={{ cursor: 'pointer' }}>
              {focused ? <circle r="14" fill={TYPE_DOT(it.type)} opacity="0.25"/> : null}
              <circle r={focused ? 8 : 5} fill={TYPE_DOT(it.type)} stroke="#fff" strokeWidth="1.5"
                style={{ transition: 'r 0.2s' }}/>
            </g>
          );
        })}
        {/* City labels */}
        {[
          ['Zürich', 215, 78], ['Bern', 145, 110], ['Basel', 145, 65],
          ['Genf', 60, 165], ['Lugano', 245, 175], ['Chur', 285, 110]
        ].map(([n, x, y]) => (
          <text key={n} x={x} y={y} fontSize="7" fill="#1f3d2b" opacity="0.6" fontFamily="ui-monospace, monospace">{n}</text>
        ))}
      </svg>
      <div className="nfg-map-legend">
        {CATEGORIES.map(c => (
          <span key={c.id}><i style={{ background: TYPE_COLORS[c.id] }}/>{c.label}</span>
        ))}
      </div>
    </div>
  );
}

// ---- Listing card
function ListingCard({ item, onOpen, saved, onSave, compact }) {
  return (
    <article
      className={'nfg-card' + (compact ? ' compact' : '') + (item.featured ? ' featured' : '')}
      onClick={() => onOpen(item)}
    >
      <div className="nfg-card-img">
        <Placeholder kind={item.image || 'forest'} label={`${item.type} · ${item.city}`}/>
        {item.score != null ? (
          <div className="nfg-score"><b>{item.score}</b><span>/10</span></div>
        ) : null}
        {item.top50 ? <div className="nfg-badge-top50">Top 50 Farmers</div> : null}
        <button
          className={'nfg-save' + (saved ? ' on' : '')}
          onClick={(e) => { e.stopPropagation(); onSave(item.id); }}
        >
          <svg width="16" height="16" viewBox="0 0 24 24" fill={saved ? 'currentColor' : 'none'} stroke="currentColor" strokeWidth="2">
            <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"/>
          </svg>
        </button>
      </div>
      <div className="nfg-card-body">
        <div className="nfg-card-meta">
          <span className="nfg-card-type" style={{ color: TYPE_DOT(item.type) }}>
            <i style={{ background: TYPE_DOT(item.type) }}/> {item.type}
          </span>
          <span className="nfg-card-city">{item.city}</span>
        </div>
        <h3 className="nfg-card-name">{item.name}</h3>
        {!compact ? <p className="nfg-card-short">{item.short}</p> : null}
        <div className="nfg-card-tags">
          {item.tags.slice(0, 3).map(t => <span key={t} className="nfg-card-tag">{t}</span>)}
        </div>
      </div>
    </article>
  );
}

// ---- Detail profile overlay (bottom sheet)
function Profile({ item, onClose, saved, onSave, onOpen }) {
  const rel = NFG_RELATIONS[item.id] || { sources: [], delivers: [] };
  const findById = (id) => NFG_LISTINGS.find(x => x.id === id);
  const [liked, setLiked] = useState(false);
  const [likes, setLikes] = useState(Math.floor(80 + Math.random() * 220));

  const criteria = [
    { k: 'Regenerativer Anbau bei Lieferant:innen',      met: item.tags.includes('Regenerativ') },
    { k: 'Mind. 70% Bio-/Demeter-Zutaten',               met: item.tags.includes('Bio') || item.tags.includes('Demeter') },
    { k: 'Saisonal wechselnde Karte',                    met: item.tags.includes('Saisonal') },
    { k: 'Pflanzenbasiert oder reduzierter Tieranteil',  met: item.tags.includes('Pflanzenbasiert') },
    { k: 'Direkter Bezug von Schweizer Produzent:innen', met: item.tags.includes('Regional') || item.tags.includes('Bio') },
    { k: 'Transparente Lieferantenliste',                met: rel.sources.length > 0 },
    { k: 'Ganztiernutzung / Tierwohl',                   met: item.tags.includes('Tierwohl') || item.tags.includes('Ganztiernutzung') }
  ];

  return (
    <div className="nfg-profile" onClick={(e) => { if (e.target.classList.contains('nfg-profile')) onClose(); }}>
      <div className="nfg-profile-sheet">
        <button className="nfg-profile-close" onClick={onClose}>×</button>

        <div className="nfg-profile-hero">
          <Placeholder kind={item.image || 'forest'} label={`Hero · ${item.name}`} tall/>
          <div className="nfg-profile-thumbs">
            <Placeholder kind="sage" label="img 2"/>
            <Placeholder kind="clay" label="img 3"/>
            <Placeholder kind="wheat" label="img 4"/>
          </div>
        </div>

        <div className="nfg-profile-body">
          <div className="nfg-profile-meta">
            <span className="nfg-card-type" style={{ color: TYPE_DOT(item.type) }}>
              <i style={{ background: TYPE_DOT(item.type) }}/> {item.type}
            </span>
            <span>·</span>
            <span>{item.city}, {item.region}</span>
          </div>
          <h1 className="nfg-profile-name">{item.name}</h1>
          <p className="nfg-profile-short">{item.short}</p>

          {item.score != null ? (
            <div className="nfg-profile-score">
              <div className="nfg-profile-score-num"><b>{item.score}</b><span>/10</span></div>
              <div>
                <div className="nfg-profile-score-lbl">Bewertung nach NFG-Kriterien</div>
                <a href="#kriterien" className="nfg-link">Kriterien ansehen →</a>
              </div>
            </div>
          ) : null}

          {item.top50 ? (
            <div className="nfg-top50-banner">
              <span className="nfg-top50-icon">★</span>
              <div>
                <b>Top 50 Farmers</b>
                <small>Ausgezeichnet 2026</small>
              </div>
            </div>
          ) : null}

          <div className="nfg-actions">
            {item.book ? <button className="nfg-btn-primary">Book a Table</button> : null}
            <button
              className={'nfg-btn-ghost' + (liked ? ' on' : '')}
              onClick={() => { setLiked(!liked); setLikes(l => l + (liked ? -1 : 1)); }}
            >
              ♥ {likes}
            </button>
            <button className={'nfg-btn-ghost' + (saved ? ' on' : '')} onClick={() => onSave(item.id)}>
              {saved ? '✓ Gespeichert' : 'Merken'}
            </button>
          </div>

          {item.score != null && criteria.some(c => c.met) ? (
            <section className="nfg-section">
              <h3 className="nfg-section-h">Erfüllte Kriterien</h3>
              <ul className="nfg-criteria">
                {criteria.filter(c => c.met).map(c => (
                  <li key={c.k}><span className="nfg-check">✓</span>{c.k}</li>
                ))}
              </ul>
            </section>
          ) : null}

          <section className="nfg-section">
            <h3 className="nfg-section-h">Tags</h3>
            <div className="nfg-card-tags">
              {item.tags.map(t => <span key={t} className="nfg-card-tag">{t}</span>)}
            </div>
          </section>

          {(rel.sources.length > 0 || rel.delivers.length > 0) ? (
            <section className="nfg-section">
              <h3 className="nfg-section-h">Beziehungen</h3>
              {rel.sources.length > 0 ? (
                <div className="nfg-rel">
                  <div className="nfg-rel-lbl">Bezieht von</div>
                  <div className="nfg-rel-row">
                    {rel.sources.map(id => {
                      const r = findById(id);
                      if (!r) return null;
                      return (
                        <button key={id} className="nfg-rel-chip" onClick={() => onOpen(r)}>
                          <i style={{ background: TYPE_DOT(r.type) }}/>{r.name}
                        </button>
                      );
                    })}
                  </div>
                </div>
              ) : null}
              {rel.delivers.length > 0 ? (
                <div className="nfg-rel">
                  <div className="nfg-rel-lbl">Liefert an</div>
                  <div className="nfg-rel-row">
                    {rel.delivers.map(id => {
                      const r = findById(id);
                      if (!r) return null;
                      return (
                        <button key={id} className="nfg-rel-chip" onClick={() => onOpen(r)}>
                          <i style={{ background: TYPE_DOT(r.type) }}/>{r.name}
                        </button>
                      );
                    })}
                  </div>
                </div>
              ) : null}
            </section>
          ) : null}

          <section className="nfg-section">
            <h3 className="nfg-section-h">Kommentare</h3>
            <div className="nfg-comment-empty">
              <p>Login für Kommentare erforderlich.</p>
              <button className="nfg-btn-ghost">Anmelden</button>
            </div>
          </section>
        </div>
      </div>
    </div>
  );
}

// ---- Guide tab
function GuidePage({ saved, onSave, onOpen }) {
  const [view, setView] = useState('list');
  const [query, setQuery] = useState('');
  const [cats, setCats] = useState(['Restaurant']);
  const [tags, setTags] = useState([]);
  const [city, setCity] = useState('');
  const [locale, setLocale] = useState('DE');
  const [focusId, setFocusId] = useState(null);

  const filtered = useMemo(() => {
    return NFG_LISTINGS.filter(it => {
      if (cats.length && !cats.includes(it.type)) return false;
      if (tags.length && !tags.every(t => it.tags.includes(t))) return false;
      if (city && !it.city.toLowerCase().includes(city.toLowerCase())) return false;
      if (query) {
        const q = query.toLowerCase();
        if (![it.name, it.city, it.short, ...it.tags].join(' ').toLowerCase().includes(q)) return false;
      }
      return true;
    });
  }, [query, cats, tags, city]);

  const cities = useMemo(() => Array.from(new Set(NFG_LISTINGS.map(x => x.city))).sort(), []);

  return (
    <div className="nfg-guide">
      <GuideHeader query={query} onSearch={setQuery} locale={locale} setLocale={setLocale}/>

      <div className="nfg-toolbar">
        <CategoryRow cats={cats} setCats={setCats}/>
        <div className="nfg-toolbar-row">
          <select className="nfg-select" value={city} onChange={(e) => setCity(e.target.value)}>
            <option value="">Alle Standorte</option>
            {cities.map(c => <option key={c} value={c}>{c}</option>)}
          </select>
          <div className="nfg-viewtoggle">
            <button className={view === 'list' ? 'on' : ''} onClick={() => setView('list')}>Liste</button>
            <button className={view === 'map' ? 'on' : ''} onClick={() => setView('map')}>Karte</button>
          </div>
        </div>
        <TagRow tags={tags} setTags={setTags}/>
      </div>

      {view === 'map' ? (
        <div className="nfg-map-section">
          <SwissMap items={filtered} onPick={(it) => setFocusId(it.id)} focusId={focusId}/>
          {focusId ? (() => {
            const it = filtered.find(x => x.id === focusId);
            if (!it) return null;
            return (
              <div className="nfg-map-pop" onClick={() => onOpen(it)}>
                <div><Placeholder kind={it.image} label={it.type}/></div>
                <div>
                  <div className="nfg-card-meta">
                    <span className="nfg-card-type" style={{ color: TYPE_DOT(it.type) }}>
                      <i style={{ background: TYPE_DOT(it.type) }}/>{it.type}
                    </span>
                    <span className="nfg-card-city">{it.city}</span>
                  </div>
                  <h4>{it.name}</h4>
                  <p>{it.short}</p>
                  <span className="nfg-link">Profil ansehen →</span>
                </div>
              </div>
            );
          })() : (
            <div className="nfg-map-hint">Tipp: Pin auf der Karte antippen für Kurzinfo.</div>
          )}
        </div>
      ) : (
        <>
          <div className="nfg-result-head">
            <span><b>{filtered.length}</b> Einträge</span>
            <span>{cats.length === 1 ? CATEGORIES.find(c => c.id === cats[0])?.label : 'gemischt'}</span>
          </div>
          <div className="nfg-list">
            {filtered.map(it => (
              <ListingCard key={it.id} item={it} onOpen={onOpen} saved={saved.includes(it.id)} onSave={onSave}/>
            ))}
            {filtered.length === 0 ? <div className="nfg-empty">Keine Treffer. Filter anpassen.</div> : null}
          </div>
        </>
      )}
    </div>
  );
}

// ---- Merkliste tab
function MerklistePage({ saved, onSave, onOpen }) {
  const [loggedIn, setLoggedIn] = useState(false);
  const items = NFG_LISTINGS.filter(x => saved.includes(x.id));

  if (!loggedIn) {
    return (
      <div className="nfg-page nfg-login">
        <h2 className="nfg-page-h">Meine Merkliste</h2>
        <p className="nfg-login-hint">Speichere Profile in deine persönliche Merkliste, kommentiere und kuratiere deine eigene Karte. Anmeldung erforderlich.</p>
        <form className="nfg-login-form" onSubmit={(e) => { e.preventDefault(); setLoggedIn(true); }}>
          <label>E-Mail<input type="email" required defaultValue="hallo@example.ch"/></label>
          <label>Passwort<input type="password" required defaultValue="••••••••"/></label>
          <button className="nfg-btn-primary" type="submit">Anmelden</button>
          <button className="nfg-btn-ghost" type="button">Konto erstellen</button>
        </form>
      </div>
    );
  }

  return (
    <div className="nfg-page">
      <h2 className="nfg-page-h">Meine Merkliste</h2>
      <p className="nfg-page-sub">{items.length} gespeicherte {items.length === 1 ? 'Eintrag' : 'Einträge'}</p>
      <div className="nfg-list">
        {items.length === 0
          ? <div className="nfg-empty">Noch nichts gespeichert. Tippe das Lesezeichen-Icon auf einer Karte.</div>
          : items.map(it => <ListingCard key={it.id} item={it} onOpen={onOpen} saved={true} onSave={onSave}/>)
        }
      </div>
    </div>
  );
}

// ---- Mehr tab
function MehrPage() {
  const events = NFG_LISTINGS.filter(x => x.type === 'Event');
  return (
    <div className="nfg-page">
      <h2 className="nfg-page-h">Mehr</h2>

      <section className="nfg-more-card">
        <h3 className="nfg-more-h">Was ist der Natural Food Guide?</h3>
        <p>Ein kuratierter Guide für Restaurants, Verarbeiter:innen, Höfe, Läden sowie Pop-Ups & Events in der Schweiz, die mit Boden, Saison und Herkunft konsequent umgehen. Bewertet, transparent gewichtet und redaktionell eingeordnet.</p>
        <a href="#" className="nfg-link">Über uns →</a>
      </section>

      <section className="nfg-more-card" id="kriterien">
        <h3 className="nfg-more-h">Bewertungsraster</h3>
        <div className="nfg-rubric">
          {[
            { c: 'Boden & Anbau',       w: 25, items: ['Regenerative Praxis', 'Bio-/Demeter-Zertifikate', 'Bodenfruchtbarkeit'] },
            { c: 'Herkunft & Kreislauf', w: 25, items: ['Direktbezug', 'Lieferantenliste', 'Ganztiernutzung'] },
            { c: 'Saison & Karte',       w: 20, items: ['Wechselnde Karte', 'Saisonale Zutaten'] },
            { c: 'Pflanzenanteil',       w: 15, items: ['Reduzierter Tieranteil', 'Pflanzliche Tiefe'] },
            { c: 'Transparenz',          w: 15, items: ['Offene Kommunikation', 'Rückverfolgbarkeit'] }
          ].map(r => (
            <div key={r.c} className="nfg-rubric-row">
              <div className="nfg-rubric-bar"><span style={{ width: r.w + '%' }}/></div>
              <div className="nfg-rubric-meta">
                <b>{r.c}</b>
                <span>{r.w}%</span>
              </div>
              <ul>{r.items.map(i => <li key={i}>{i}</li>)}</ul>
            </div>
          ))}
        </div>
      </section>

      <section className="nfg-more-card">
        <h3 className="nfg-more-h">Magazin</h3>
        <div className="nfg-mag">
          {[
            { t: 'Portrait: Andreas Caminada',                   k: 'Portrait', kind: 'forest' },
            { t: 'Editorial: Was heisst regenerativ wirklich?',  k: 'Editorial', kind: 'sage'   },
            { t: 'Partner: Soil to Soul Symposium 2026',         k: 'Partner',  kind: 'clay'   }
          ].map(m => (
            <article key={m.t} className="nfg-mag-card">
              <div><Placeholder kind={m.kind} label={m.k}/></div>
              <div>
                <span className="nfg-mag-kind">{m.k}</span>
                <h4>{m.t}</h4>
              </div>
            </article>
          ))}
        </div>
      </section>

      <section className="nfg-more-card">
        <h3 className="nfg-more-h">Eventkalender</h3>
        <ul className="nfg-events">
          {events.map(e => (
            <li key={e.id}>
              <div className="nfg-event-date">{e.date}</div>
              <div>
                <b>{e.name}</b>
                <span>{e.city} · {e.short}</span>
              </div>
              <a className="nfg-link" href="#">→</a>
            </li>
          ))}
        </ul>
      </section>
    </div>
  );
}

// ---- Root app
function App() {
  const [tab, setTab] = useState('guide');
  const [saved, setSaved] = useState(['rechberg', 'farm-pur']);
  const [open, setOpen] = useState(null);

  const onSave = (id) => setSaved(s => s.includes(id) ? s.filter(x => x !== id) : [...s, id]);

  return (
    <div className="nfg-app">
      {tab === 'guide'     ? <GuidePage     saved={saved} onSave={onSave} onOpen={setOpen}/> : null}
      {tab === 'merkliste' ? <MerklistePage saved={saved} onSave={onSave} onOpen={setOpen}/> : null}
      {tab === 'mehr'      ? <MehrPage/> : null}

      <nav className="nfg-tabs">
        <button className={tab === 'guide' ? 'on' : ''} onClick={() => setTab('guide')}>
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
            <path d="M3 6l6-2 6 2 6-2v14l-6 2-6-2-6 2zM9 4v16M15 6v16"/>
          </svg>
          Guide
        </button>
        <button className={tab === 'merkliste' ? 'on' : ''} onClick={() => setTab('merkliste')}>
          <svg width="20" height="20" viewBox="0 0 24 24" fill={tab === 'merkliste' ? 'currentColor' : 'none'} stroke="currentColor" strokeWidth="2">
            <path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"/>
          </svg>
          Merkliste
          {saved.length ? <span className="nfg-tab-badge">{saved.length}</span> : null}
        </button>
        <button className={tab === 'mehr' ? 'on' : ''} onClick={() => setTab('mehr')}>
          <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
            <circle cx="5" cy="12" r="1.5"/><circle cx="12" cy="12" r="1.5"/><circle cx="19" cy="12" r="1.5"/>
          </svg>
          Mehr
        </button>
      </nav>

      {open ? (
        <Profile
          item={open}
          onClose={() => setOpen(null)}
          saved={saved.includes(open.id)}
          onSave={onSave}
          onOpen={setOpen}
        />
      ) : null}
    </div>
  );
}

ReactDOM.createRoot(document.getElementById('root')).render(<App/>);
