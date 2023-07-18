\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{design}[2021-03-07 Design Conference Class]

\LoadClass[11pt, a4paper, oneside]{article}

\RequirePackage[top=2.5cm, left=2.5cm, right=2.5cm, bottom=3.2cm]{geometry}

% Fonts
\RequirePackage{fonts}

% Desirable formatting packages if installed
\RequirePackage[english]{babel}
\RequirePackage{microtype}
\RequirePackage{csquotes}
\RequirePackage[none]{hyphenat}

% Sections
\RequirePackage{titlesec} % section spacing
\titlespacing*{\section}{0pt}{12pt}{3pt}
\titlespacing*{\subsection}{0pt}{12pt}{3pt}
\titlespacing*{\subsubsection}{0pt}{12pt}{3pt}
\titleformat{\section}{\titlefont\Large\bfseries\raggedright}{\thesection.~}{0em}{}
\titleformat{\subsection}{\titlefont\large\bfseries\raggedright}{\thesubsection.~}{0em}{}
\titleformat{\subsubsection}{\it\titlefont\normalsize\raggedright}{\thesubsubsection.~}{0em}{}

% Captions
\RequirePackage{caption}
\DeclareCaptionFormat{capfont}{\titlefont\small#1#2#3}
\captionsetup{format=capfont,font=bf,labelsep=period} 

% Hyperlinks
\RequirePackage[colorlinks=true, allcolors=blue]{hyperref}
\urlstyle{same}

\RequirePackage{graphicx}
\RequirePackage{wrapfig}
\RequirePackage{xcolor}
\RequirePackage{mdframed}

% Referencing figures, tables and equations
\RequirePackage[capitalise, noabbrev]{cleveref}
\newcommand{\pref}[1]{(\cref{#1})}

% Paragraph noindent
\setlength{\parindent}{0em}

% Lists
\RequirePackage{enumitem}
\setlist[]{noitemsep,nosep,labelsep=1em}

\setlist[itemize,1]{label={$\bullet$~}}
\setlist[itemize,2]{label={$\circ$~}}
\setlist[itemize,3]{label={\tiny$\blacksquare$~}}

\setlist[enumerate,2]{label={\alph*.~}}
\setlist[enumerate,3]{label={--~}}

\newlist{letterlist}{enumerate}{5}
\setlist[letterlist,1]{label={\alph*)~}}
\setlist[letterlist,2]{label={\arabic*)~}}
\setlist[letterlist,3]{label={\tiny$\blacksquare$~}}


% Referencing
\RequirePackage[
    backend=biber,
    bibencoding=utf8,
    style=apa,
    maxcitenames=2, % Max names displayed when citing in text
    giveninits=true, % Use initials
    uniquename=false
]{biblatex}
\setlength\bibitemsep{0em}
\renewcommand*{\bibfont}{\small}
\addbibresource{bibliography.bib}

\RequirePackage{array}
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

\RequirePackage{soul}
\newcommand{\todo}[1]{\hl{[#1]}}

\raggedbottom
\pagenumbering{gobble}
