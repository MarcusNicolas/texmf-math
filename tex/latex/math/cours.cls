\NeedsTeXFormat{LaTeX2e}[2021/06/01]
\ProvidesClass{cours}[2021/12/12]

\LoadClass[french,10pt]{memoir}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[french]{babel}
\RequirePackage{titlesec}

\RequirePackage{ifthen}
\RequirePackage[inline]{enumitem}
\RequirePackage{mathtools}
\RequirePackage{stmaryrd}
\RequirePackage{amsthm}
\RequirePackage{amssymb, amsfonts, amsmath}
\RequirePackage{soul}
\RequirePackage{appendix}


\RequirePackage{tikz-cd}
\RequirePackage{xcolor}
\RequirePackage[most]{tcolorbox}


\RequirePackage[colorlinks=true, linktocpage=true, citecolor=violet, linkcolor=violet]{hyperref}
\RequirePackage{cleveref}

%%%%


% TODO absolument: mettre les numéros de page en bas (et pas systématiquement
% lorsque l'on commence un nouveau chapitre)


% Marges

\setlength{\headheight}{15pt}

\setlrmarginsandblock{3.5cm}{3cm}{*}
\setulmarginsandblock{4cm}{*}{1}
\checkandfixthelayout


% Numérotation des sections
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}
\titleformat*{\section}{\large\bfseries}
\titleformat*{\subsection}{\bfseries}



\chapterstyle{thatcher}


% Titre

\newlength{\drop}

\newcommand*{\couverture}{\begin{titlingpage}
\fontencoding{T1}\fontfamily{pnc}\selectfont
\drop=0.1\textheight
\vspace*{\drop}
\centering
{\HUGE \textbf{\textsc{\thetitle}}}\\[\baselineskip]
{\footnotesize \textsc{par}}\\[0.3\baselineskip]
{\textsc{\theauthor}}\\
\vspace{0.25\drop}
\rule{0.5\textwidth}{0.4pt}\par
\vspace{\drop}
\end{titlingpage}}




% Macros d'ordre général

\newcommand{\nterm}[1]{{\emph{#1}}}

\newcommand{\iso}{\simeq}

\newcommand{\defeq}{\vcentcolon=}
\newcommand{\defiso}{\vcentcolon\iso}


% Environnements mathématiques

\newenvironment{discussion}[1][]
{%
   \noindent\refstepcounter{thm}\textbf{\thethm.}
   \ifthenelse{\equal{#1}{}}{}{\textit{#1 ---}}
}{\par\addvspace{\medskipamount}}


%\xpatchcmd{\proof}{\itshape}{\itshape}{}{}

%\xpretocmd{\proof}{\setlength{\parindent}{15pt}}{}{}

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
  \begin{démtcb}[Démonstration]{black}%
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
\newtheorem{thm}{Théorème}[chapter]
\newtheorem{prop}[thm]{Proposition}
\newtheorem{lem}[thm]{Lemme}
\newtheorem{fait}[thm]{Fait}
\newtheorem{cor}[thm]{Corollaire}
\newtheorem{ax}[thm]{Axiome}

\newtheorem{metathm}[thm]{Métathéorème}


\theoremstyle{remark}
\newtheorem{rmq}[thm]{Remarque}

\theoremstyle{definition}
\newtheorem{déf}[thm]{Définition}
\newtheorem{ex}[thm]{Exemple}


\crefname{thm}{théorème}{théorèmes}
\Crefname{thm}{Théorème}{Théorèmes}
\crefname{prop}{proposition}{propositions}
\Crefname{prop}{Proposition}{Propositions}
\crefname{lem}{lemme}{lemmes}
\Crefname{lem}{Lemme}{Lemmes}
\crefname{fait}{fait}{faits}
\Crefname{fait}{Fait}{Faits}
\crefname{cor}{corollaire}{corollaires}
\Crefname{cor}{Corollaire}{Corollaires}
\crefname{ax}{axiome}{axiomes}
\Crefname{ax}{Axiome}{Axiomes}
\crefname{rmq}{remarque}{remarques}
\Crefname{rmq}{Remarque}{Remarques}
\crefname{déf}{définition}{définitions}
\Crefname{déf}{Définition}{Définitions}
\crefname{ex}{exemple}{exemples}
\Crefname{ex}{Exemple}{Exemples}

\crefname{metathm}{métathéorème}{métathéorèmes}
\Crefname{metathm}{Métathéorème}{Métathéorèmes}

