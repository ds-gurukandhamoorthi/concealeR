" we need the conceal feature (vim ≥ 7.3)
if !has('conceal')
    finish
endif

" remove the keywords. we'll re-add them below
syntax clear ROperator


syntax keyword RNiceOperator in conceal cchar=∈
syntax match RNiceOperator "%in%" conceal cchar=∈
syntax match RNiceOperator "<-" conceal cchar=←
syntax match RNiceOperator "->" conceal cchar=→
syntax keyword RNiceOperator ifelse conceal cchar=⁈
syntax match RNiceOperator "else if" conceal cchar=⁉
syntax keyword RNiceOperator c conceal cchar=𝕔
syntax keyword RNiceOperator vector conceal cchar=𝕍
syntax keyword RNiceOperator identical conceal cchar=≣
syntax keyword RNiceOperator matrix conceal cchar=𝖬
syntax keyword RNiceOperator prod conceal cchar=∏
" syntax match RNiceOperator "%>%" conceal cchar=➤
" syntax match RNiceOperator "%>%" conceal cchar=⊳
" syntax match RNiceOperator "%>%" conceal cchar=⧽
" syntax match RNiceOperator "%>%" conceal cchar=⦊
syntax match RNiceOperator "%>%" conceal cchar=▷
" syntax match RNiceOperator "%>%" conceal cchar=¦
syntax match RNiceKeyword "as.integer" conceal cchar=ℤ
syntax keyword RNiceKeyword col_double conceal cchar=ℝ
" radioactivity = mutation
syntax keyword RNiceKeyword mutate conceal cchar=☢
syntax keyword RNiceOperator col_character conceal cchar=𝕤
syntax keyword RNiceKeyword desc conceal cchar=↘
syntax keyword RNiceKeyword arrange conceal cchar=⟠
syntax keyword RNiceOperator group_by conceal cchar=ѫ


syntax match RNiceOperator "\<or\>" conceal cchar=∨
syntax match RNiceOperator "\<and\>" conceal cchar=∧
" include the space after “not” – if present – so that “not a” becomes “¬a”.
" also, don't hide “not” behind  ‘¬’ if it is after “is ”.
syntax match RNiceOperator "\%(is \)\@<!\<not\%( \|\>\)" conceal cchar=¬
syntax match RNiceOperator "\<not in\>" conceal cchar=∉
syntax match RNiceOperator "<=" conceal cchar=≤
syntax match RNiceOperator ">=" conceal cchar=≥
" only conceal “==” if alone, to avoid concealing SCM conflict markers
syntax match RNiceOperator "=\@<!===\@!" conceal cchar=≡

" Guru's modifictations
syntax match RNiceOperator "\<contains\>" conceal cchar=∋
syntax match RNiceOperator "[a-zA-Z)]\zs\[0\]\ze" conceal cchar=₀
syntax match RNiceOperator "[a-zA-Z)]\zs\[1\]\ze" conceal cchar=₁
syntax match RNiceOperator "[a-zA-Z)]\zs\[2\]\ze" conceal cchar=₂
syntax match RNiceOperator "[a-zA-Z)]\zs\[3\]\ze" conceal cchar=₃
syntax match RNiceOperator "[a-zA-Z)]\zs\[4\]\ze" conceal cchar=₄
syntax match RNiceOperator "[a-zA-Z)]\zs\[5\]\ze" conceal cchar=₅
syntax match RNiceOperator "[a-zA-Z)]\zs\[6\]\ze" conceal cchar=₆
syntax match RNiceOperator "[a-zA-Z)]\zs\[7\]\ze" conceal cchar=₇
syntax match RNiceOperator "[a-zA-Z)]\zs\[8\]\ze" conceal cchar=₈
syntax match RNiceOperator "[a-zA-Z)]\zs\[9\]\ze" conceal cchar=₉
syntax match RNiceOperator "[a-zA-Z)]\zs\[-1\]\ze" conceal cchar=₋
syntax match RNiceOperator "!=" conceal cchar=≠
syntax match RNiceOperator "\[a\]" conceal cchar=ₐ
syntax match RNiceOperator "\[e\]" conceal cchar=ₑ
syntax match RNiceOperator "\[h\]" conceal cchar=ₕ
syntax match RNiceOperator "\[i\]" conceal cchar=ᵢ
syntax match RNiceOperator "\[j\]" conceal cchar=ⱼ
syntax match RNiceOperator "\[k\]" conceal cchar=ₖ
syntax match RNiceOperator "\[l\]" conceal cchar=ₗ
syntax match RNiceOperator "\[m\]" conceal cchar=ₘ
syntax match RNiceOperator "\[n\]" conceal cchar=ₙ
syntax match RNiceOperator "\[o\]" conceal cchar=ₒ
syntax match RNiceOperator "\[p\]" conceal cchar=ₚ
syntax match RNiceOperator "\[r\]" conceal cchar=ᵣ
syntax match RNiceOperator "\[s\]" conceal cchar=ₛ
syntax match RNiceOperator "\[t\]" conceal cchar=ₜ
syntax match RNiceOperator "\[u\]" conceal cchar=ᵤ
syntax match RNiceOperator "\[v\]" conceal cchar=ᵥ
syntax match RNiceOperator "\[x\]" conceal cchar=ₓ
syntax keyword RNiceOperator None conceal cchar=∅
syntax keyword RNiceOperator yield conceal cchar=↢
syntax keyword RNiceOperator while conceal cchar=⟳
" syntax keyword RNiceOperator from conceal cchar=⥺
syntax keyword RNiceOperator from conceal cchar=⊂
syntax keyword RNiceOperator for conceal cchar=∀
syntax keyword RNiceOperator if conceal cchar=⁇
syntax keyword RNiceOperator else conceal cchar=‼
syntax keyword RNiceOperator function conceal cchar=ƒ
syntax keyword RNiceOperator product conceal cchar=∏
syntax keyword RNiceOperator length conceal cchar=⍴
syntax keyword RNiceOperator shape conceal cchar=⍴
syntax keyword RNiceOperator reshape conceal cchar=⍴
" syntax keyword RNiceOperator range conceal cchar=𝕣
syntax keyword RNiceOperator range conceal cchar=…
syntax keyword RNiceOperator all conceal cchar=∀
syntax keyword RNiceOperator any conceal cchar=∃
syntax match RNiceOperator "\<not any\>" conceal cchar=∄
syntax keyword RNiceOperator self conceal cchar=@
syntax keyword RNiceOperator int conceal cchar=ℤ
syntax keyword RNiceOperator float conceal cchar=ℝ
syntax keyword RNiceOperator str conceal cchar=𝕤
syntax keyword RNiceOperator set conceal cchar=𝕊
syntax keyword RNiceOperator tuple conceal cchar=𝕋
syntax keyword RNiceOperator list conceal cchar=𝕃
syntax keyword RNiceOperator iter conceal cchar=𝕚
syntax keyword RNiceOperator complex conceal cchar=ℂ
syntax keyword RNiceOperator return conceal cchar=⇦
syntax keyword RNiceOperator library conceal cchar=⇲
syntax keyword RNiceOperator print conceal cchar=⎙
syntax keyword RNiceOperator abs conceal cchar=|
"enumerating is applying an index i to every ¨ element
"one can think of it as 'indexed'
syntax keyword RNiceOperator enumerate conceal cchar=ϊ
syntax keyword RNiceOperator zip conceal cchar=𝈄
syntax keyword RNiceOperator next conceal cchar=≺
syntax keyword RNiceOperator True conceal cchar=Ｔ
syntax keyword RNiceOperator False conceal cchar=Ｆ
"returns one result symbolized by the circle
syntax keyword RNiceOperator join conceal cchar=⨁
"returns many values  symbolized by the dots..
syntax keyword RNiceOperator split conceal cchar=⁜
" syntax keyword RNiceOperator other conceal cchar=Ö ⅋
syntax keyword RNiceOperator other conceal cchar=Ѻ
syntax keyword RNiceOperator assert conceal cchar=⊢
syntax match RNiceKeyword "\<\%(math\.\)\?exp\>" conceal cchar=ℯ
syntax keyword RNiceOperator reversed conceal cchar=ᴙ
syntax keyword RNiceOperator reverse conceal cchar=ᴙ
" syntax keyword RNiceOperator sorted conceal cchar=⇅
syntax keyword RNiceOperator sorted conceal cchar=⟠
syntax keyword RNiceStatement help conceal cchar=ℹ
"the inverted ¿ resembles the symbol d in 'd'escription
syntax keyword RNiceOperator description conceal cchar=¿
" syntax keyword RNiceOperator min conceal cchar=⋀
" syntax keyword RNiceOperator max conceal cchar=⋁
"As in APL ⌊⌈ are not visible 
syntax keyword RNiceOperator min conceal cchar=⎣
" we would use brackets ⎡⎣
syntax keyword RNiceOperator max conceal cchar=⎡
"As in APL
syntax keyword RNiceOperator map conceal cchar=¨
syntax keyword RNiceOperator filter conceal cchar=⊢
syntax keyword RNiceOperator filterfalse conceal cchar=⊬
" the idea of every pair ¨  reduced to one ⍢ or Ÿ
" or rather the idea of multiple values reduced to one 𐅱
syntax keyword RNiceOperator reduce conceal cchar=𐅱
" syntax keyword RNiceOperator groupby conceal cchar=⩞
"every element is verified using a criteriion (K) and is put in a group(bin) ж
"or every element is filtered by criterion to be put in a group(bin) ѫ
syntax keyword RNiceOperator groupby conceal cchar=ѫ
" syntax keyword RNiceOperator starmap conceal cchar=✪
"As in APL (Though the meaning may differ... in R : map ¨/starmap⍣
syntax keyword RNiceOperator starmap conceal cchar=⍣
syntax keyword RNiceOperator action conceal cchar=⚡
syntax keyword RNiceOperator res conceal cchar=𝖗
syntax match RNiceOperator "\<\%(np\.\)\?zeros\>" conceal cchar=𝟘
syntax match RNiceOperator "\<\%(np\.\)\?ones\>" conceal cchar=𝟙
syntax match RNiceOperator "\<\%(np\.\)\?array\>" conceal cchar=𝔸
syntax match RNiceOperator "\<\%(np\.\)\?dot\>" conceal cchar=•
syntax match RNiceOperator "\<\%(np\.\)\?arange\>" conceal cchar=…
syntax keyword RNiceOperator read conceal cchar=⇧
syntax keyword RNiceOperator imread conceal cchar=⇧
syntax match RNiceOperator "\<\%(pd\.\)\?read" conceal cchar=⇧
syntax keyword RNiceOperator write conceal cchar=⇩
syntax keyword RNiceOperator imsave conceal cchar=⇩
syntax keyword RNiceOperator args conceal cchar=𝖆
syntax match RNiceOperator "\<\%(sys\.\)\?argv\>" conceal cchar=𝖆
syntax keyword RNiceOperator takewhile conceal cchar=⤉
syntax keyword RNiceOperator dropwhile conceal cchar=⤈
syntax keyword RNiceOperator combinations conceal cchar=𝓒
syntax keyword RNiceOperator permutations conceal cchar=𝑃
syntax keyword RNiceOperator islice conceal cchar=⟦
syntax match RNiceOperator "\<\%(math\.\)\?log\>" conceal cchar=ℓ
syntax match RNiceOperator "\(\*\*\)a\ze\_W" conceal cchar=ᵃ
syntax match RNiceOperator "\(\*\*\)b\ze\_W" conceal cchar=ᵇ
syntax match RNiceOperator "\(\*\*\)c\ze\_W" conceal cchar=ᶜ
syntax match RNiceOperator "\(\*\*\)d\ze\_W" conceal cchar=ᵈ
syntax match RNiceOperator "\(\*\*\)e\ze\_W" conceal cchar=ᵉ
syntax match RNiceOperator "\(\*\*\)f\ze\_W" conceal cchar=ᶠ
syntax match RNiceOperator "\(\*\*\)g\ze\_W" conceal cchar=ᵍ
syntax match RNiceOperator "\(\*\*\)h\ze\_W" conceal cchar=ʰ
syntax match RNiceOperator "\(\*\*\)i\ze\_W" conceal cchar=ⁱ
syntax match RNiceOperator "\(\*\*\)j\ze\_W" conceal cchar=ʲ
syntax match RNiceOperator "\(\*\*\)k\ze\_W" conceal cchar=ᵏ
syntax match RNiceOperator "\(\*\*\)l\ze\_W" conceal cchar=ˡ
syntax match RNiceOperator "\(\*\*\)m\ze\_W" conceal cchar=ᵐ
syntax match RNiceOperator "\(\*\*\)n\ze\_W" conceal cchar=ⁿ
syntax match RNiceOperator "\(\*\*\)o\ze\_W" conceal cchar=ᵒ
syntax match RNiceOperator "\(\*\*\)p\ze\_W" conceal cchar=ᵖ
syntax match RNiceOperator "\(\*\*\)r\ze\_W" conceal cchar=ʳ
syntax match RNiceOperator "\(\*\*\)s\ze\_W" conceal cchar=ˢ
syntax match RNiceOperator "\(\*\*\)t\ze\_W" conceal cchar=ᵗ
syntax match RNiceOperator "\(\*\*\)u\ze\_W" conceal cchar=ᵘ
syntax match RNiceOperator "\(\*\*\)v\ze\_W" conceal cchar=ᵛ
syntax match RNiceOperator "\(\*\*\)w\ze\_W" conceal cchar=ʷ
syntax match RNiceOperator "\(\*\*\)x\ze\_W" conceal cchar=ˣ
syntax match RNiceOperator "\(\*\*\)y\ze\_W" conceal cchar=ʸ
syntax match RNiceOperator "\(\*\*\)z\ze\_W" conceal cchar=ᶻ
syntax match RNiceOperator "\(\*\*\)0\ze\_W" conceal cchar=⁰
syntax match RNiceOperator "\(\*\*\)1\ze\_W" conceal cchar=¹
syntax match RNiceOperator "\(\*\*\)2\ze\_W" conceal cchar=²
syntax match RNiceOperator "\(\*\*\)3\ze\_W" conceal cchar=³
syntax match RNiceOperator "\(\*\*\)4\ze\_W" conceal cchar=⁴
syntax match RNiceOperator "\(\*\*\)5\ze\_W" conceal cchar=⁵
syntax match RNiceOperator "\(\*\*\)6\ze\_W" conceal cchar=⁶
syntax match RNiceOperator "\(\*\*\)7\ze\_W" conceal cchar=⁷
syntax match RNiceOperator "\(\*\*\)8\ze\_W" conceal cchar=⁸
syntax match RNiceOperator "\(\*\*\)9\ze\_W" conceal cchar=⁹
syntax keyword RNiceOperator most_common conceal cchar=∇
" syntax keyword RNiceOperator Exception conceal cchar=⚠
syntax keyword RNiceOperator Exception conceal cchar=❗
"resembles speed bump
syntax keyword RNiceOperator raise conceal cchar=≏
syntax keyword RNiceOperator count conceal cchar=＃
syntax keyword RNiceOperator Counter conceal cchar=＃
" syntax keyword RNiceOperator items conceal cchar=＊
" syntax keyword RNiceOperator keys conceal cchar=⟜
" syntax keyword RNiceOperator values conceal cchar=⊸
syntax keyword RNiceOperator values conceal cchar=＊
" syntax keyword RNiceOperator keys conceal cchar=☌
syntax keyword RNiceOperator keys conceal cchar=⚷
syntax keyword RNiceOperator items conceal cchar=☍
syntax keyword RNiceOperator repeat conceal cchar=↻
syntax keyword RNiceOperator cycle conceal cchar=⥁
syntax keyword RNiceOperator compress conceal cchar=⨝
syntax keyword RNiceOperator tee conceal cchar=¦
" as in APL
syntax match RNiceOperator "\<\%(random\.\)\?sample\>" conceal cchar=⍰
syntax keyword RNiceOperator xs conceal cchar=Ẍ
syntax keyword RNiceOperator ys conceal cchar=Ÿ
syntax keyword RNiceOperator ts conceal cchar=ẗ
" as in APL
syntax match RNiceOperator "\<\%(re\.\)\?search\>" conceal cchar=⍷
" as in Haskell
syntax keyword RNiceOperator isinstance conceal cchar=∷
" syntax keyword RNiceOperator line conceal cchar=−
syntax keyword RNiceOperator lines conceal cchar=≣
" syntax keyword RNiceOperator word conceal cchar=⫾
syntax keyword RNiceOperator words conceal cchar=⫼
syntax keyword RNiceOperator columns conceal cchar=⫼
syntax match RNiceOperator "\<nb_" conceal cchar=ᴺ
syntax match RNiceOperator "_count\>" conceal cchar=#
syntax keyword RNiceOperator strip conceal cchar=︺
syntax keyword RNiceOperator encode conceal cchar=⭳
syntax keyword RNiceOperator decode conceal cchar=⭱
syntax keyword RNiceOperator replace conceal cchar=⇝
syntax match RNiceOperator "\<\%(re\.\)\?sub\>" conceal cchar=⇝
syntax keyword RNiceOperator group conceal cchar=ɠ
syntax keyword RNiceOperator or_ conceal cchar=∨
syntax keyword RNiceOperator and_ conceal cchar=∧
syntax keyword RNiceOperator not_ conceal cchar=¬
syntax keyword RNiceOperator union conceal cchar=∪
syntax keyword RNiceOperator intersection conceal cchar=∩
syntax keyword RNiceOperator t conceal cchar=ᵀ
syntax keyword RNiceOperator transpose conceal cchar=ᵀ
syntax keyword RNiceOperator maximum conceal cchar=⎡
syntax keyword RNiceOperator minimum conceal cchar=⎣
syntax keyword RNiceOperator ceil conceal cchar=⌈
syntax keyword RNiceOperator floor conceal cchar=⌊
syntax keyword RNiceOperator round conceal cchar=≈
syntax keyword RNiceOperator mean conceal cchar=μ
syntax keyword RNiceOperator std conceal cchar=σ
syntax keyword RNiceOperator cumsum conceal cchar=𝝨
syntax keyword RNiceOperator cumprod conceal cchar=𝝥
syntax match RNiceOperator "\<\%(random\.\)\?randrange\>" conceal cchar=Ʀ
syntax match RNiceOperator "\<\%(np\.random\.\)\?randn\>" conceal cchar=⍰
syntax match RNiceOperator " @ " conceal cchar=•
syntax keyword RNiceOperator index conceal cchar=⚷
syntax keyword RNiceOperator index_col conceal cchar=⚷
syntax keyword RNiceOperator isin conceal cchar=⋵
syntax keyword RNiceOperator iloc conceal cchar=⟦
syntax keyword RNiceOperator loc conceal cchar=⦃
syntax keyword RNiceOperator copy conceal cchar=⎘
syntax match RNiceKeyword "\<ascending=True\>" conceal cchar=↗
syntax match RNiceKeyword "\<ascending=False\>" conceal cchar=↘
syntax match RNiceOperator "\<\%(np\.\)\?nan\>" conceal cchar=ᴎ
" we create an intersection ^ of unique elements
" syntax keyword RNiceOperator unique conceal cchar=û
" no two elements are repeated
syntax keyword RNiceOperator unique conceal cchar=ƻ
syntax keyword RNiceOperator is_unique conceal cchar=ƻ
syntax keyword RNiceOperator diff conceal cchar=Δ
syntax keyword RNiceOperator sep conceal cchar=␣
syntax match RNiceKeyword "\<inplace=True\>" conceal cchar=！
syntax match RNiceKeyword "\<\%(time\.\)\?sleep\>" conceal cchar=⌛
" The order of the following two elements are important
syntax match RNiceKeyword "\<find_element" conceal cchar=𝟙
syntax match RNiceKeyword "\<find_elements" conceal cchar=＊
syntax match RNiceKeyword "\<get_attribute\>" conceal cchar=∷
syntax match RNiceKeyword "by_id\>" conceal cchar=#

syntax keyword RNiceOperator sum conceal cchar=∑
syntax match RNiceOperator "\<\%(math\.\)\?sqrt\>" conceal cchar=√
syntax match RNiceKeyword "\<\%(math\.\)\?pi\>" conceal cchar=π

syntax keyword RNiceStatement lambda conceal cchar=λ

hi link RNiceOperator Operator
hi link RNiceStatement Statement
hi link RNiceKeyword Keyword
hi! link Conceal Operator

setlocal conceallevel=1
