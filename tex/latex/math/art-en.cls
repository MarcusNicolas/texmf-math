\NeedsTeXFormat{LaTeX2e}[2024/01/25]
\ProvidesClass{art-en}[2024/01/25]


\LoadClass{amsart}
\RequirePackage[utf8]{inputenc}
\RequirePackage[margin=1in]{geometry}
\RequirePackage{graphicx}
\RequirePackage{ifthen}
\RequirePackage[inline]{enumitem}
\RequirePackage{mathtools}
\RequirePackage{stmaryrd}
\RequirePackage{amssymb, amsfonts, amsmath, amsrefs}
\RequirePackage{amsthm}
\RequirePackage{soul}
\RequirePackage{appendix}

\RequirePackage{tikz}
\RequirePackage{tikz-cd}

\RequirePackage[colorlinks=true, linktocpage=true, citecolor=blue,
linkcolor=blue, urlcolor=cyan]{hyperref}
\RequirePackage{cleveref}


\setcounter{tocdepth}{1}


%%% varphi, varepsilon

\renewcommand\phi{\varphi}
\renewcommand\epsilon{\varepsilon}


%%%% Thm formatting

\theoremstyle{plain}
\newtheorem{thm}{Theorem}[section]
\newtheorem{prop}[thm]{Proposition}
\newtheorem{lem}[thm]{Lemma}
\newtheorem{cor}[thm]{Corollary}


\newtheorem*{thm*}{Theorem}


\theoremstyle{remark}
\newtheorem{rmk}[thm]{Remark}

\theoremstyle{definition}
\newtheorem{dfn}[thm]{Definition}
\newtheorem{cstr}[thm]{Construction}
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
\crefname{cstr}{construction}{constructions}
\Crefname{cstr}{Construction}{constructions}
\crefname{ex}{example}{examples}
\Crefname{ex}{Example}{Examples}



\newenvironment{discussion}[1][]
{%
   \noindent\refstepcounter{thm}\textbf{\thethm.}
   \ifthenelse{\equal{#1}{}}{\kern-.4em}{\textit{#1 ---}}
}{\par\addvspace{\medskipamount}}


%%%% Layout

\geometry{letterpaper}


%%% Part

\makeatletter

\@ifundefined{c@part}{\newcounter{part}}{}
\renewcommand{\thepart}{\Roman{part}}
\providecommand{\partname}{Part}

\renewcommand{\tocpart}[3]{%
  \indentlabel{\@ifnotempty{#2}{\ignorespaces#1 #2.\quad}}#3%
}

\RenewDocumentCommand{\part}{s o m}{%
  \clearpage
  \thispagestyle{empty}%
  \IfBooleanTF{#1}
  {%
    \phantomsection
    \begin{center}
      \vspace*{\fill}
      {\Huge\bfseries #3\par}
      \vspace*{\fill}
    \end{center}
    \clearpage
  }
  {%
    \refstepcounter{part}%
    \phantomsection
    \IfNoValueTF{#2}
      {\addcontentsline{toc}{part}{\protect\tocpart{\partname}{\thepart}{#3}}}
      {\addcontentsline{toc}{part}{\protect\tocpart{\partname}{\thepart}{#2}}}%
    \begin{center}
      \vspace*{\fill}
      {\Large\scshape \partname~\thepart\par}
      \vspace{2em}
      {\Huge\bfseries #3\par}
      \vspace*{\fill}
    \end{center}
    \clearpage
  }%
}
\makeatother
