\ProvidesClass{btswhitepaper}[2015/08/20 V1 by Fabian Schuh]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[10pt,oneside,twocolumn,a4paper]{scrartcl}

\RequirePackage[latin1]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{fancyhdr}
\RequirePackage{amsmath,amssymb,amssymb}
\RequirePackage{paralist}
\RequirePackage[hyphens]{url}
\RequirePackage{breakurl} 
\RequirePackage[breaklinks]{hyperref}
\RequirePackage{enumitem}
\RequirePackage{cleveref}
\RequirePackage{graphicx}
\RequirePackage{algorithm}
\RequirePackage{algorithmicx}
\RequirePackage{algpseudocode}
\RequirePackage[per-mode=symbol]{siunitx}
\RequirePackage{tikz}

%% -----------------------------
%% Geometry and spacings
%% -----------------------------
\RequirePackage[a4paper]{geometry}
\geometry{left=.5in,right=.5in,top=1in,bottom=1in}
\footskip = 1in
\setitemize{itemsep=-1ex}

%% -----------------------------
%% Reduced spacing in bibliography
%% -----------------------------
\let\OLDthebibliography\thebibliography
\renewcommand\thebibliography[1]{
  \OLDthebibliography{#1}
  \setlength{\parskip}{0pt}
  \setlength{\itemsep}{0pt plus 0.3ex}
}

%------------------------------------------------------------------------------
% Algorithm
%------------------------------------------------------------------------------
\algrenewcommand\algorithmicindent{.5em}

%% -----------------------------
% use Times Roman font, so we'll default to Times.
%% -----------------------------
\RequirePackage{times}

%% -----------------------------
%% Terminology
%% -----------------------------
\def\contentsname{Contents}
\def\listfigurename{List of Figures}
\def\listtablename{List of Tables}
\def\refname{References}
\def\indexname{Index}
\def\tablename{TABLE}
\def\figurename{Figure}
\def\partname{Part}
\def\appendixname{Appendix}
\def\abstractname{Abstract}

%% -----------------------------
%% Color
%% -----------------------------
\usepackage{xcolor}
\definecolor{btsdark}{HTML}{00587c}
\definecolor{btslight}{HTML}{00a9e0}

%% -----------------------------
%% Headers
%% -----------------------------
\fancypagestyle{wp}{%
 \fancyhf{}
 \fancyhead[R]{{\color{black}\sffamily\thepage}}
 \fancyhead[L]{{\color{black}\sffamily \nouppercase{\textsc{\rightmark}}}}
 \fancyfoot{}
 \fancyfoot[R]{\includegraphics[height=2cm]{figures/btslogo4.png}}
 \renewcommand{\headrule}{\color{btslight}\hrule}
 \renewcommand{\headrulewidth}{0.4pt}
}
\fancypagestyle{plain}{%
 \fancyhf{}
 \fancyhead{}
 \fancyfoot{}
 \renewcommand{\headrule}{}
 \renewcommand{\headrulewidth}{0pt}
}
\pagestyle{wp}

%% -----------------------------
%% Diverse
%% -----------------------------
\hyphenpenalty=750
\hbadness=1350
\frenchspacing
\binoppenalty=1000
\relpenalty=800
\clubpenalty=1000
\widowpenalty=1000
\displaywidowpenalty=1000

%% -----------------------------
%% Title
%% -----------------------------
\usepackage[some]{background}
\backgroundsetup{
 scale=1,angle=0,opacity=1,
 contents={%
 \begin{tikzpicture}[remember picture,overlay]
  \path [fill=btsdark] (-0.5\paperwidth, 0.50\paperheight) 
              rectangle ( 0.5\paperwidth, 0.25\paperheight);
 \end{tikzpicture}}
}

\makeatletter
\def\@maketitle{%
 \vskip-5em
 \newpage
 \BgThispage
 \let \footnote \thanks
 \begin{flushright}
 \color{white}
  {\LARGE\bfseries\textsc{\@title} \par}%
   \vskip 3.5em%
   {\normalsize
     \lineskip .5em%
     \begin{minipage}{.3\linewidth}
     \end{minipage}
     {\color{white}\vrule width 2pt}\hskip.5em
     \begin{minipage}{.3\linewidth}
      \@author
     \end{minipage}
   }%
 \end{flushright}
 \vskip 3.5em
 \thispagestyle{plain}
}
\makeatother

%% -----------------------------
%% Abstract
%% -----------------------------
\def\abstract{\noindent\normalfont\bfseries\textit{\abstractname}---\relax}
\def\endabstract{\relax\vspace{1.34ex}\par\normalfont\normalsize}

%% -----------------------------
%% Headlines
%% -----------------------------
\usepackage{titlesec}
\titleformat{\section}
  {\normalfont\sffamily\large\bfseries\color{btslight}}
  {\thesection}{1em}{}
\titleformat{\subsection}
  {\normalfont\sffamily\large\bfseries\color{btslight}}
  {\thesubsection}{1em}{}
\titleformat{\subsubsection}
  {\normalfont\sffamily\large\bfseries\color{btslight}}
  {\thesubsubsection}{1em}{}
