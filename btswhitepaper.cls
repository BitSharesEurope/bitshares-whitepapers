\ProvidesClass{btswhitepaper}[2015/08/20 V1 by Fabian Schuh]
\NeedsTeXFormat{LaTeX2e}
\LoadClass[10pt,oneside,twocolumn,a4paper]{scrartcl}

\RequirePackage[latin1]{inputenc}
\RequirePackage[english]{babel}
\RequirePackage{fancyhdr}
\RequirePackage{amsmath,amssymb,amssymb}
\RequirePackage{paralist}
\RequirePackage[shortlabels]{enumitem}
\RequirePackage[hyphens]{url}
\RequirePackage{breakurl} 
\RequirePackage[breaklinks]{hyperref}
\RequirePackage{enumitem}
\RequirePackage{cleveref}
\RequirePackage{graphicx}
\RequirePackage{algorithm}
\RequirePackage{algorithmicx}
\RequirePackage{algpseudocode}
\RequirePackage{siunitx}
\RequirePackage{tikz}
\RequirePackage{gitinfo2}

%% -----------------------------
%% Options
%% -----------------------------
\newcommand{\draftcode}{}
\DeclareOption{unpublished}{
 \renewcommand{\draftcode}{
  \begin{tikzpicture}[remember picture,overlay]
  \node [rotate=-45,scale=15,
         text opacity=0.8,text=red!45]
         at (current page.center) {Draft};
  \end{tikzpicture}
 }
}
\ProcessOptions\relax

%% -----------------------------
%% SIUnits
%% -----------------------------
\sisetup{locale = US,
         per-mode=symbol,
         group-separator={,},
        }

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
%% Makros
%% -----------------------------
\newcommand{\note}[1]{ {\color{red}(#1)} }

%% -----------------------------
%% Title
%% -----------------------------
\usepackage[some]{background}
\backgroundsetup{
 scale=1,angle=0,opacity=1,
 contents={%
 \begin{tikzpicture}[remember picture,overlay]
  %\path [fill=btsdark] (-0.5\paperwidth, 0.50\paperheight) 
  %           rectangle ( 0.5\paperwidth, 0.25\paperheight);
  \clip                (-0.5\paperwidth, 0.50\paperheight) 
             rectangle ( 0.5\paperwidth, 0.25\paperheight);
  \node[anchor=north] at (0, 0.5\paperheight) {\includegraphics[width=\paperwidth]{figures/bg.jpg}};
 \end{tikzpicture}}
}

%\makeatletter
\def\@maketitle{%
 \vskip-5em
 \newpage
 \BgThispage
 \let \footnote \thanks
 \begin{minipage}[t][.25\paperheight][t]{\textwidth}
  \begin{flushright}
   \color{white}
    {\LARGE\bfseries\textsc{\@title} \par}%
    \vskip 5ex%
    {\normalsize
      \lineskip .5em%
      \begin{minipage}{.5\linewidth}
       \begin{flushright}
       \@author
       \end{flushright}
      \end{minipage}
      \hskip.5em
      {\color{white}\vrule width 2pt}
    }%
  \end{flushright}
 \end{minipage}
 \thispagestyle{plain}
}
%\makeatother

%% -----------------------------
%% Headers
%% -----------------------------
\newcommand{\gitline}{\raisebox{2ex}{\color{lightgray}Release: \gitDescribe\ (\gitAuthorDate)}}
\fancypagestyle{wp}{%
 \fancyhf{}
 \fancyhead[R]{{\color{black}\sffamily\thepage}\draftcode}
 \fancyhead[L]{{\color{black}\sffamily \nouppercase{\textsc{\rightmark}}}}
 \fancyfoot{}
 \fancyfoot[L]{\gitline}
 \fancyfoot[R]{\includegraphics[height=2cm]{figures/btslogo4.png}}
 \renewcommand{\headrule}{\color{btslight}\hrule}
 \renewcommand{\headrulewidth}{0.4pt}
}
\fancypagestyle{plain}{%
 \fancyhf{}
 \fancyhead{\draftcode}
 \fancyfoot{}
 \fancyfoot[L]{\gitline}
 \renewcommand{\headrule}{}
 \renewcommand{\headrulewidth}{0pt}
}
\pagestyle{wp}

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
