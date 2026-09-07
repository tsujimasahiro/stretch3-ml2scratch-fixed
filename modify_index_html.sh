LF=$(printf '\\\012_')
LF=${LF%_}
PAGE_TAG="<title>Stretch3 ML2Scratch 修正版</title>${LF}\
    <meta name=\"description\" content=\"ML2Scratchのラベル選択とステージ位置学習を修正した授業用Stretch3です。\" />${LF}\
    <script>window.gtag = function () {};</script>${LF}\
"
mv build/index.html build/index.html_orig
sed -e "s|<title>Scratch 3.0 GUI</title>|${PAGE_TAG}|g" build/index.html_orig > build/index.html
