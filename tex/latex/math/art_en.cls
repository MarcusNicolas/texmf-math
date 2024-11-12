\NeedsTeXFormat{LaTeX2e}[2024/01/25]
\ProvidesClass{art_en}[2024/01/25]


\LoadClass{amsart}
\RequirePackage[utf8]{inputenc}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{ifthen}
\RequirePackage{mathtools}
\RequirePackage{amssymb, amsfonts, amsmath, amsrefs}
\RequirePackage{soul}
\RequirePackage{appendix}

\RequirePackage{tikz}
\RequirePackage{tikz-cd}

\RequirePackage[colorlinks=true, linktocpage=true, citecolor=blue, linkcolor=blue]{hyperref}
\RequirePackage{cleveref}


%%% varphi, varepsilon

\renewcommand\phi{\varphi}
\renewcommand\epsilon{\varepsilon}


%%%% Thm formatting

\theoremstyle{plain}
\newtheorem{thm}{Theorem}[section]
\newtheorem{prop}[thm]{Proposition}
\newtheorem{lem}[thm]{Lemma}
\newtheorem{cor}[thm]{Corollary}


\theoremstyle{remark}
\newtheorem{rmk}[thm]{Remark}

\theoremstyle{definition}
\newtheorem{dfn}[thm]{Definition}
\newtheorem{ex}[thm]{Example}


\crefname{thm}{theorem}{theorems}
\Crefname{thm}{Theorem}{Theorems}
\crefname{prop}{proposition}{propositions}
\Crefname{prop}{Proposition}{Propositions}
\crefname{lem}{lemma}{lemmas}
\Crefname{lem}{Lemma}{Lemmas}
\crefname{cor}{corollary}{corollaries}
\Crefname{cor}{Corollary}{Corollaries}
\crefname{rmk}{remark}{remarks}
\Crefname{rmk}{Remark}{Remarks}
\crefname{dfn}{definition}{definitions}
\Crefname{dfn}{Definition}{Definitions}
\crefname{ex}{example}{examples}
\Crefname{ex}{Example}{Examples}



\newenvironment{discussion}[1][]
{%
   \noindent\refstepcounter{thm}\textbf{\thethm.}
   \ifthenelse{\equal{#1}{}}{}{\textit{#1 ---}}
}{\par\addvspace{\medskipamount}}




%%%% General macros

\newcommand{\nterm}[1]{{\emph{#1}}}

\newcommand{\iso}{\simeq}

\newcommand{\defeq}{\vcentcolon=}
\newcommand{\defiso}{\vcentcolon\iso}


%%%% Layout

\geometry{letterpaper}