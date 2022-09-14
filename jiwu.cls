\ProvidesClass{jiwu}[Physics lab report Latex template]
\NeedsTeXFormat{LaTeX2e}
\LoadClass{article}

\RequirePackage[UTF8]{ctex}
\RequirePackage{amsmath,amssymb,amsfonts,amsthm}
\RequirePackage{geometry}
\geometry{%
    a4paper,
    scale=0.8
}
\RequirePackage{enumitem}
\setenumerate{label=\arabic*.}

\newcommand{\@thetitle}{}
\newcommand{\thetitle}[1]{\renewcommand{\@thetitle}{#1}}
\newcommand{\@name}{}
\newcommand{\@num}{}
\newcommand{\@clas}{}
\newcommand{\theauthor}[3]{
        \renewcommand{\@name}{#1}
        \renewcommand{\@num}{#2}
        \renewcommand{\@clas}{#3}
}
\newcommand{\@thedate}{}
\newcommand{\thedate}[1]{\renewcommand{\@thedate}{#1}}
\newcommand{\@info}{姓名：\@name\quad 学号：\@num\quad 班级：\@clas}

\title{\@thetitle}
\author{\@info}
\date{\@thedate}

\setlength{\headheight}{12.64723pt}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhead{}
\fancyhead[L]{\@info}
\fancyhead[R]{\@thedate}
\fancyfoot[]{}
\fancyfoot[L]{\textit{\@thetitle}}
\fancyfoot[R]{\thepage}

\fancypagestyle{firstpage}{%
\fancyhf{}
    \fancyfoot[R]{\thepage}
    \renewcommand{\headrulewidth}{0pt}
} 

\renewcommand\thesection{\chinese{section}、}
\renewcommand\thesubsection{\arabic{subsection}.}
\renewcommand\thesubsubsection{\alph{subsubsection})}
\usepackage{caption}
\captionsetup[table]{name=表}
