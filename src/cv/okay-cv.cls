%% okay-cv.cls
%
%


\ProvidesClass{okay-cv}[2018/12/12 Okay CV]
\NeedsTeXFormat{LaTeX2e}


\LoadClass{article}


% Inherit options of article
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax

\usepackage[utf8]{inputenc}
\usepackage{setspace}
\usepackage{hyperref}

\pagenumbering{gobble}

%Change the margins to fit CV/resume content
\usepackage[left=1in, right=1in, bottom=1.25in, top=1.25in]{geometry}

%Create commands for header
\newcommand*{\email}[1]{\gdef\@email{#1}%
}
\newcommand*{\@email}{\texttt{\string\email} currently
not set. Please fix this.}

\newcommand*{\phone}[1]{\gdef\@phone{#1}%
}
\newcommand*{\@phone}{\texttt{\string\phone} currently
not set. Please fix this.}


\newcommand*{\github}[1]{\gdef\@github{#1}%
}
\newcommand*{\@github}{\texttt{\string\github} currently
not set. Please fix this.}


\newcommand*{\linkedin}[1]{\gdef\@linkedin{#1}%
}
\newcommand*{\@linkedin}{\texttt{\string\linkedin} currently
not set. Please fix this.}

\renewcommand*{\maketitle}{%
    \begin{flushright}
    \noindent  \LARGE{\textbf{\@author}} \\
    \noindent\makebox[\linewidth]{\rule{\paperwidth}{0.4pt}}
    \vspace{-2ex}
    \normalsize
    \end{flushright}

    \begin{center}
    \begin{tabular}{l l}
         Email     & \hspace{1in} \href{mailto:\@email}{\@email} \\
         Phone     & \hspace{1in} \@phone \\
         GitHub    & \hspace{1in} \href{https://www.\@github}{\@github} \\
         LinkedIn  & \hspace{1in} \href{https://www.\@linkedin}{\@linkedin} \\
    \end{tabular}
    \end{center}
}
