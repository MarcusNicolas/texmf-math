\NeedsTeXFormat{LaTeX2e}[2021/06/01]
\ProvidesClass{cours}[2021/12/12]

\LoadClass[french,10pt]{memoir}

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[french]{babel}
\RequirePackage{titlesec}

\RequirePackage{amsmath}
\RequirePackage{amsthm}
\RequirePackage{ifthen}
\RequirePackage[inline]{enumitem}
\RequirePackage{tikz-cd}
\RequirePackage{xcolor}
\RequirePackage[hidelinks]{hyperref}
\RequirePackage{cleveref}

%%%%

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

\newcommand{\nouvterme}[1]{{\color{blue} #1}}


% Environnements mathématiques

\newenvironment{discussion}[1][]
{%
   \noindent\refstepcounter{thm}\textbf{\thethm.}
   \ifthenelse{\equal{#1}{}}{}{\textit{#1 ---}}
}{\par\addvspace{\medskipamount}}

\newenvironment{justif}
{\begin{proof}[Justification]}{\end{proof}}

\newenvironment{dém}
{\begin{proof}[Démonstration]}{\end{proof}}


\theoremstyle{plain}
\newtheorem{thm}{Théorème}[chapter]
\newtheorem{prop}[thm]{Proposition}
\newtheorem{lem}[thm]{Lemme}
\newtheorem{fait}[thm]{Fait}
\newtheorem{cor}[thm]{Corollaire}
\newtheorem{ax}[thm]{Axiome}

\newtheorem{metathm}[thm]{Métathéorème}


\theoremstyle{remark}
\newtheorem*{rmq}{Remarque}

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
\crefname{déf}{définition}{définitions}
\Crefname{déf}{Définition}{Définitions}
\crefname{ex}{exemple}{exemples}
\Crefname{ex}{Exemple}{Exemples}

\crefname{metathm}{métathéorème}{métathéorèmes}
\Crefname{metathm}{Métathéorème}{Métathéorèmes}

