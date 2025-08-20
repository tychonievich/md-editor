# CodeMirror, as bundled for use in the website demo
curl -O 'https://codemirror.net/codemirror.js' # tested 2023-12-28

# YAML for metadata
curl -O 'https://cdn.jsdelivr.net/npm/js-yaml/dist/js-yaml.min.js' # tested 4.1.0

# katex: tested version .../npm/katex@0.16.2/dist/...
curl -O 'https://cdn.jsdelivr.net/npm/katex/dist/katex.min.css'
curl -O 'https://cdn.jsdelivr.net/npm/katex/dist/katex.min.js'

# markdown-it: tested version .../npm/markdown-id@14.0.0/dist/...
curl -O 'https://cdn.jsdelivr.net/npm/markdown-it/dist/markdown-it.min.js'

# markdown-it plugins
curl -O 'https://cdn.jsdelivr.net/npm/markdown-it-deflist/dist/markdown-it-deflist.min.js' # tested 3.0.0
curl -O 'https://cdn.jsdelivr.net/npm/markdown-it-div/dist/markdown-it-div.min.js' # tested 1.0.1
curl -O 'https://cdn.jsdelivr.net/npm/markdown-it-footnote/dist/markdown-it-footnote.min.js' # tested 4.0.0
curl -O 'https://cdn.jsdelivr.net/npm/markdown-it-sub/dist/markdown-it-sub.min.js' # tested 2.0.0
curl -O 'https://cdn.jsdelivr.net/npm/markdown-it-sup/dist/markdown-it-sup.min.js' # tested 2.0.0
curl -O 'https://cdn.jsdelivr.net/npm/markdown-it-texmath/texmath.min.js' # tested 1.0.0
curl -O 'https://cdn.jsdelivr.net/npm/markdown-it-attrs/markdown-it-attrs.browser.min.js' # tested 4.1.6

# Split-plane view
curl -O 'https://cdn.jsdelivr.net/npm/split.js/dist/split.min.js' # tested 1.6.5

# katex fonts
if [ ! -d katex-fonts ]
then
    git clone --depth=1 --filter=blob:none --sparse 'https://github.com/KaTeX/katex-fonts.git'
    cd katex-fonts
    git sparse-checkout set fonts
    ln -sr fonts ../
    cd ../
else
    cd katex-fonts
    git pull
    cd ../
fi
