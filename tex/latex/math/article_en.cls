\NeedsTeXFormat{LaTeX2e}[2024/01/25]
\ProvidesClass{article_en}[2024/01/25]

\LoadClass[12pt]{memoir}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[backend=biber, style=alphabetic]{biblatex}

\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{ifthen}
\RequirePackage[inline]{enumitem}
\RequirePackage{tikz-cd}
\RequirePackage{xcolor}
\RequirePackage[most]{tcolorbox}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage[french]{cleveref}

%%%%

\pagestyle{plain}


% Biblio

\nobibintoc

\defbibheading{bibliography}[\bibname]{%
\section*{#1}%
\markboth{#1}{#1}}

\AtBeginDocument{%
  \renewcommand{\bibname}{References}
}




% Marges

\setlength{\headheight}{15pt}

\setlrmarginsandblock{3.5cm}{3.5cm}{*}
\setulmarginsandblock{4cm}{*}{1}
\checkandfixthelayout


% Numérotation des sections
\renewcommand{\thesection}{\arabic{section}.}
\setsecheadstyle{\center\bfseries\scshape}


% Table des matières

\renewcommand{\printtoctitle}[1]{\center\bfseries\scshape #1}
\setcounter{secnumdepth}{1}



% Résumé / abstract

\renewcommand{\abstractname}{}

% Titre

\newlength{\drop}

\newcommand*{\couverture}{%
{\fontencoding{T1}\fontfamily{pnc}\selectfont
\drop=0.1\textheight
\vspace*{\drop}
\centering
{\HUGE \textbf{\textsc{\thetitle}}}\\[\baselineskip]
{\textsc{\theauthor}}\\
\vspace{0.25\drop}
\rule{0.5\textwidth}{0.4pt}\par}}




% Macros d'ordre général

\newcommand{\nouvterme}[1]{{\color{blue} #1}}


% Environnements mathématiques

\newenvironment{discussion}[1][]
{%
   \noindent\refstepcounter{thm}\textbf{\thethm.}
   \ifthenelse{\equal{#1}{}}{}{\textit{#1 ---}}
}{\par\addvspace{\medskipamount}}



\newtcolorbox{démtcb}[2][]{
  blanker,
  enhanced,
  title={#1},
  fonttitle=\itshape,
  coltitle=black,
  colframe=black,
  colback=#2!3!white,
  attach boxed title to top left=
    {xshift=-2mm},
  boxed title style={
    enhanced,
    arc=0pt,
    outer arc=0pt,
    boxsep=0pt,
    left=0pt,
    right=5pt,
    top=3pt,
    bottom=5pt,
    boxrule=0pt,
    frame hidden,
    colback=white,
    borderline south={.5pt}{0pt}{black}
  },
	before skip=\topsep,
	after skip=\topsep,
  boxrule=0pt,
  borderline west={.5pt}{0pt}{black},
  boxsep=7pt,
  left=9pt,
  right=8pt,
  left skip=2mm,
  boxrule=0pt,
  frame hidden,
  before upper={\setlength{\parindent}{10pt}},
  fontupper=\small,
  after skip balanced=\baselineskip,
	breakable
}


\newenvironment{dém}{%
  \begin{démtcb}[Proof]{black}%
  \tikzcdset{background color=black!3!white}%
}{%
  \tikzcdset{background color=white}%
  \end{démtcb}%
}

\newenvironment{justif}{%
  \begin{démtcb}[Justification]{blue}%
  \tikzcdset{background color=blue!3!white}%
}{%
  \tikzcdset{background color=white}%
  \end{démtcb}%
}



\theoremstyle{plain}
\newtheorem{thm}{Theorem}[section]
\newtheorem{prop}[thm]{Proposition}
\newtheorem{lem}[thm]{Lemma}
\newtheorem{fait}[thm]{Fact}
\newtheorem{cor}[thm]{Corollary}
\newtheorem{ax}[thm]{Axiom}


\theoremstyle{remark}
\newtheorem{rmq}[thm]{Remark}

\theoremstyle{definition}
\newtheorem{déf}[thm]{Definition}
\newtheorem{ex}[thm]{Example}


\crefname{thm}{theorem}{theorems}
\Crefname{thm}{Theorem}{Theorems}
\crefname{prop}{proposition}{propositions}
\Crefname{prop}{Proposition}{Propositions}
\crefname{lem}{lemma}{lemmas}
\Crefname{lem}{Lemma}{Lemmas}
\crefname{fait}{fact}{facts}
\Crefname{fait}{Fact}{Facts}
\crefname{cor}{corollary}{corollaries}
\Crefname{cor}{Corollary}{Corollaries}
\crefname{ax}{axiom}{axioms}
\Crefname{ax}{Axiom}{Axioms}
\crefname{rmq}{remark}{remarks}
\Crefname{rmq}{Remark}{Remarks}
\crefname{déf}{definition}{definitions}
\Crefname{déf}{Definition}{Definitions}
\crefname{ex}{example}{examples}
\Crefname{ex}{Example}{Examples}

