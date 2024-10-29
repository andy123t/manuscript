%%
%% This is file `manuscript.cls',
%%
%% @author Liutao Tian
%% @date 2024/10/29
%% @version v0.1
%% LaTeX template for paper manuscript
%%

% Specify the required LaTeX version
\NeedsTeXFormat{LaTeX2e}
% Declare new class
\ProvidesClass{manuscript}[2024/10/29 v0.1]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions\relax
% Load standard class
\LoadClass{article}

% Load required packages
\RequirePackage{ifthen}
\RequirePackage{calc}
% package for mathematics
\RequirePackage{amsmath,amssymb,amsthm}
% package for RSFS fonts in math
\RequirePackage{mathrsfs}
% package for special symbols
\RequirePackage{pifont}
% package for multilingual support
%\RequirePackage[english]{babel}
% package for figures
\RequirePackage{graphicx}
\RequirePackage{subfig}
% package for layout of list
\RequirePackage{enumitem}
% package for color
\RequirePackage{color}
% package for table
\RequirePackage{tabularx}
\RequirePackage{booktabs}
\RequirePackage{array}
\RequirePackage{makecell}
% package for multiple columns and rows
\RequirePackage{multirow,multicol}
% package for caption
\RequirePackage{caption}
% package for algorithm
\RequirePackage{algorithm,algorithmicx}
\RequirePackage{algpseudocode}
% package for author and affiliation style
\RequirePackage[affil-it]{authblk}
% package for using box and verbatim
\RequirePackage{fancybox}
% package for page headers and footers
\RequirePackage{fancyhdr}
% refinements for typographical perfection
\RequirePackage{microtype}
% package for hyperlink
\usepackage{hyperref}

% package for section etc.
\RequirePackage{titlesec}
\titleformat{\section}{\large\bfseries}{\thesection.}{1.2ex}{}
\titleformat{\subsection}{\normalfont\bfseries}{\thesubsection.}{1.2ex}{}
\titleformat{\subsubsection}{\normalfont\itshape}{\normalfont\thesubsubsection.}{1.2ex}{}

% allow page breaks between multiline formulas
\allowdisplaybreaks

% layout setting
\RequirePackage{geometry}
\geometry{left=1.25in,right=1.25in,top=1.25in,bottom=1.25in}
\setlength{\headheight}{18pt}
\setlength{\headsep}{18pt}
\setlength{\footskip}{25pt}
%\setlength{\textwidth}{15cm}
%\setlength{\textheight}{21.6cm}
%\setlength{\oddsidemargin}{0.5cm}
%\setlength{\evensidemargin}{0.5cm}

% define some new commands
\newcommand\cortext[1]{\def\@cortext{#1}}
\newcommand\shorttitle[1]{\def\@shorttitle{#1}}
\newcommand\shortauthor[1]{\def\@shortauthor{#1}}
\newcommand\lheader[1]{\def\@lheader{#1}}
\newcommand\cheader[1]{\def\@cheader{#1}}
\newcommand\rheader[1]{\def\@rheader{#1}}
\newcommand\lfooter[1]{\def\@lfooter{#1}}
\newcommand\cfooter[1]{\def\@cfooter{#1}}
\newcommand\rfooter[1]{\def\@rfooter{#1}}

\newcommand\cormark{\raisebox{-1.6pt}{*}}
\newcommand\blfootnote[1]{%
  \begingroup
  \renewcommand\thefootnote{}\footnote{#1}%
  %\addtocounter{footnote}{-1}%
  \endgroup
}
\newcommand{\tfootnote}[1]{%
  \textsuperscript{$\star$}%
  {\renewcommand{\thefootnote}{$\star$}%
  \footnotetext{#1}}
}

% headers and footers setting
\pagestyle{fancy}
\fancyhf{}
% First page style
\fancypagestyle{firststyle}{%
\fancyhead[L]{\ifx\@lheader\undefined{}\else\@lheader\fi}
\fancyhead[C]{\ifx\@cheader\undefined{}\else\@cheader\fi}
\fancyhead[R]{\ifx\@rheader\undefined{}\else\@rheader\fi}
\fancyfoot[L]{\ifx\@lfooter\undefined{}\else\@lfooter\fi}
\fancyfoot[C]{\ifx\@cfooter\undefined{}\else\@cfooter\fi}
\fancyfoot[R]{\ifx\@rfooter\undefined{}\else\@rfooter\fi}
}
% Header and footer
\fancyhead[CO]{\footnotesize\MakeUppercase{\ifx\@shorttitle\undefined{}\else\@shorttitle\fi}}
\fancyhead[CE]{\footnotesize\MakeUppercase{\ifx\@shortauthor\undefined{}\else\@shortauthor\fi}}
\fancyhead[RO]{\footnotesize\thepage}
\fancyhead[LE]{\footnotesize\thepage}
\renewcommand{\headrulewidth}{0pt}

% command for mark footnotes
%\RequirePackage[symbol]{footmisc}
%\renewcommand{\thefootnote}{\fnsymbol{footnote}}

% command for listsep
\setlist{nolistsep}

% command for equations, theorems and lemmas etc.
\theoremstyle{plain}
\newtheorem{theorem}{Theorem}[section]
\newtheorem{lemma}{Lemma}[section]
\newtheorem{corollary}{Corollary}[section]
%\newtheorem{lemma}[theorem]{Lemma}
%\newtheorem{corollary}[theorem]{Corollary}
\newtheorem{proposition}{Proposition}[section]
\newtheorem{assumption}{Assumption}[section]
\newtheorem{axiom}{Axiom}[section]
\newtheorem{property}{Property}[section]
\newtheorem{conjecture}{Conjecture}[section]

\theoremstyle{definition}
\newtheorem{definition}{Definition}[section]
\newtheorem{example}{Example}
\newtheorem{xca}{Exercise}[section]

\theoremstyle{remark}
\newtheorem{remark}{Remark}[section]

% automatic cross-referencing
%\newcommand{\theoremautorefname}{Theorem}
\newcommand{\lemmaautorefname}{Lemma}
\newcommand{\corollaryautorefname}{Corollary}
\newcommand{\propositionautorefname}{Proposition}
\newcommand{\assumptionautorefname}{Assumption}
\newcommand{\axiomautorefname}{Axiom}
\newcommand{\propertyautorefname}{Property}
\newcommand{\conjectureautorefname}{Conjecture}
\newcommand{\definitionautorefname}{Definition}
\newcommand{\exampleautorefname}{Example}
\newcommand{\xcaautorefname}{Exercise}
\newcommand{\remarkautorefname}{Remark}

% caption setting
%\captionsetup{font={small,singlespacing},labelfont={bf},labelformat={default},labelsep=period}
\captionsetup{labelformat={default},labelsep=period}
\captionsetup[figure]{position=bottom,skip={8pt},name={Figure}}
\captionsetup[table]{position=top,skip={4pt},name={Table}}
%\setlength{\textfloatsep}{12pt plus 2pt minus 2pt}
%\setlength{\floatsep}{10pt plus 2pt minus 2pt}
%\setlength{\intextsep}{10pt plus 2pt minus 2pt}
%\setlength{\abovecaptionskip}{2pt plus 1pt minus 1pt}
%\setlength{\belowcaptionskip}{3pt plus 1pt minus 2pt}

% number of equation, figure and table
\numberwithin{equation}{section}
\numberwithin{figure}{section}
\numberwithin{table}{section}

% redefine maketitle environment
\def\@maketitle{%
  \newpage
  \null
  %\vspace{-1.5em}%
  \begin{center}%
    \let \footnote \thanks
    {\Large \bfseries \@title \ifx\@cortext\undefined{}\else\blfootnote{\@cortext}\fi \par}%
    \vskip 1.5em%
    {\large
      \lineskip 0.5em%
      \begin{tabular}[t]{c}%
        \@author
      \end{tabular}\par}%
    \vskip 0.5em%
    {\large \@date}%
  \end{center}%
  \par
  \vskip 1em
}

% redefine abstract environment
\renewenvironment{abstract}{%
  \if@twocolumn
    \section*{\abstractname}%
  \else %% <- here removed \small
    \begin{center}%
      {\bfseries \large\abstractname\vspace{\z@}} %% <- here added \large
    \end{center}%
    \quotation
  \fi}{
  \if@twocolumn\else\endquotation\fi
}

\newcommand{\keywords}[1]{%
\medskip\par
\noindent\textbf{Keywords:} #1
}

\newcommand{\MSC}[2][]{%
\medskip\par
\noindent{\bfseries Mathematics Subject Classification%
\ifstrequal{#1}{}{}{ (#1)}:%
} #2
}

% End of file `manuscript.cls'.
