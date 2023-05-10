%%%%%%%%%%%%%%%%%%%%%% 基础设置 %%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}

% 文档类型
\LoadClass{report}

\RequirePackage{xstring}

%%%%%%%%%%%%%%%%%%%%% PDF元数据 %%%%%%%%%%%%%%%%%%%%%%

\AtBeginDocument[A]{
    \hypersetup{
        pdfsubject={\majorTitle}, % 文档主题
        pdftitle={\minorTitleCN}, % 文档标题
        pdfauthor={author}, % 文档作者
        pdfkeywords={keywords}, % 文档关键字
        pdfcreator={creator}, % PDF创作者
        pdfproducer={Mai}, % PDF创建者
    }
}

%%%%%%%%%%%%%%%%%%%%%% 纸张格式 %%%%%%%%%%%%%%%%%%%%%%

% 设置纸张格式
\RequirePackage[a4paper]{geometry}
\geometry{
  top           = 22mm, % 整体上边距
  bottom        = 20mm, % 整体下边距
  left          = 27mm, % 整体左边距
  right         = 27mm, % 整体右边距
  headheight    = 17pt, % 页眉上边距
  headsep       = 6mm, % 页眉文本间距
  footskip      = 8mm, % 页脚文本间距
  heightrounded,
}

% \setlength{\topmargin}        {200pt} % 页眉与页边的距离
% \setlength{\topskip}          {200pt} % 页眉与正文的距离
% \setlength{\oddsidemargin}    {200pt} % 奇数页的左面页边距
% \setlength{\evensidemargin}   {200pt} % 偶数页的左面页边距

%%%%%%%%%%%%%%%%%%%%%% 字体与段落 %%%%%%%%%%%%%%%%%%%%%%

\PassOptionsToPackage{quiet}{fontspec}
% \RequirePackage{fontspec}
\RequirePackage[UTF8,scheme=plain,fontset=none]{ctex}
% \RequirePackage{xeCJK}
\RequirePackage{indentfirst} % 设置缩进宏包
\RequirePackage{hologo} % 更多Logo宏包
\xeCJKsetup{CJKmath=true}

% 英文字体
\setmainfont{Times New Roman} % 衬线英文字体
% \setsansfont{Times New Roman} % 无衬线英文字体
\setmonofont{JetBrains Mono} % 等宽英文字体

% JetBrains Mono
\newfontfamily\JetBrainsMono{JetBrains Mono}

% 中文字体
\setCJKmainfont[Path=fonts/,BoldFont={SourceHanSerifCN-Bold.otf}] % 衬线中文字体
{SourceHanSerifCN-Regular.otf}

\setCJKsansfont[Path=fonts/,BoldFont={SourceHanSansCN-Bold.otf}] % 无衬线中文字体
{SourceHanSansCN-Regular.otf}

\setCJKmonofont{Noto Sans Mono CJK HK} % 等宽中文字体

% 字族
\setCJKfamilyfont{song}[Path=fonts/,BoldFont={SourceHanSerifCN-Bold.otf}]{SourceHanSerifCN-Regular.otf}
\newcommand{\songti}{\CJKfamily{song}} % 宋体

\setCJKfamilyfont{hei}[Path=fonts/,BoldFont={SourceHanSansCN-Bold.otf}]{SourceHanSansCN-Regular.otf}
\newcommand{\heiti}{\CJKfamily{hei}} % 黑体

\setCJKfamilyfont{fs}{FandolFang}
\newcommand{\fangsong}{\CJKfamily{fs}} % 仿宋

\setCJKfamilyfont{kaishu}{FandolKai}
\newcommand{\kaishu}{\CJKfamily{kaishu}} % 楷书

% \setCJKfamilyfont{ExtraLight}[Path=fonts/]{SourceHanSerifCN-ExtraLight.otf}
% \newcommand{\extraLight}[1]{\CJKfamily{ExtraLight}{#1}\CJKfamily{song}} % 极细-宋体

% \setCJKfamilyfont{Light}[Path=fonts/]{SourceHanSerifCN-Light.otf}
% \newcommand{\light}[1]{\CJKfamily{Light}{#1}\CJKfamily{song}} % 细-宋体

% \setCJKfamilyfont{Medium}[Path=fonts/]{SourceHanSerifCN-Medium.otf}
% \newcommand{\medium}[1]{\CJKfamily{Medium}{#1}\CJKfamily{song}} % 中等-宋体

% \setCJKfamilyfont{SemiBold}[Path=fonts/]{SourceHanSerifCN-SemiBold.otf}
% \newcommand{\semiBold}[1]{\CJKfamily{SemiBold}{#1}\CJKfamily{song}} % 半粗-宋体

% \setCJKfamilyfont{Heavy}[Path=fonts/]{SourceHanSerifCN-Heavy.otf}
% \newcommand{\heavy}[1]{\CJKfamily{Heavy}{#1}\CJKfamily{song}} % 特粗-宋体

% \setCJKfamilyfont{heitiExtraLight}[Path=fonts/]{SourceHanSansCN-ExtraLight.otf}
% \newcommand{\heitiExtraLight}[1]{\CJKfamily{heitiExtraLight}{#1}\CJKfamily{song}} % 极细-黑体

% \setCJKfamilyfont{heitiLight}[Path=fonts/]{SourceHanSansCN-Light.otf}
% \newcommand{\heitiLight}[1]{\CJKfamily{heitiLight}{#1}\CJKfamily{song}} % 细-黑体

% \setCJKfamilyfont{heitiNormal}[Path=fonts/]{SourceHanSansCN-Normal.otf}
% \newcommand{\heitiNormal}[1]{\CJKfamily{heitiNormal}{#1}\CJKfamily{song}} % 普通-黑体

\setCJKfamilyfont{heitiMedium}[Path=fonts/]{SourceHanSansCN-Medium.otf}
\newcommand{\heitiMedium}[1]{\CJKfamily{heitiMedium}{#1}\CJKfamily{song}} % 中等-黑体

% \setCJKfamilyfont{heitiHeavy}[Path=fonts/]{SourceHanSansCN-Heavy.otf}
% \newcommand{\heitiHeavy}[1]{\CJKfamily{heitiHeavy}{#1}\CJKfamily{song}} % 特粗-黑体

% 1.25倍行距
\linespread{1.25}

% 段落缩进距离
\setlength\parindent{2\ccwd}

% 段落间距离
% \setlength{\parskip}{30pt}

%%%%%%%%%%%%%%%%%%%%%% 封面 %%%%%%%%%%%%%%%%%%%%%%

% 信息栏下划线自定义指令
\newcommand{\dunderline}[3][-3.3pt]{{
  \setbox0=\hbox{#3}
  \ooalign{\copy0\cr\rule[\dimexpr#1-#2\relax]{\wd0}{#2}}
}}

% 信息栏自定义指令
\newcommand{\infobox}[4]{
    \centering \songti \zihao{#2} \textbf{\selectfont{#3~\dunderline{0.8pt}{\makebox[#1][c]{#4}}}}
}

% 封面页
\newcommand{\CoverPage}[4]{

    \newgeometry{ % 设置独立纸张格式
        top=13mm,
        bottom=15mm,
        left=15mm,
        right=15mm,
    }
    \NoBgThispage % 取消水印
    
    \begin{titlepage}

        % 分类信息
        \IfEqCase{#1}{
        {both}{
            \begin{table}[H]
            \centering
            \renewcommand\arraystretch{1.5}
                \begin{tabular}{|p{1.5cm}<{\centering}|p{1.5cm}<{\centering}|p{9.8cm}<{\centering}|p{1.5cm}<{\centering}|p{1.5cm}<{\centering}|}
                    
                    \cline{1-2} \cline{4-5}
                    \bfseries 分类号 & \bfseries \classificationNumber &  & \bfseries 密~~~~级 & \bfseries \confidentialLevel \\ 
                    \cline{1-2} \cline{4-5} 
                    \bfseries U~\,D~\,C & \bfseries \UDC &  & \bfseries 编~~~~号 & \bfseries \serialNumber \\ 
                    \cline{1-2} \cline{4-5} 
                    
                \end{tabular}
            \end{table}
        }
        {left}{
            \begin{table}[H]
            \centering
            \renewcommand\arraystretch{1.5}
                \begin{tabular}{|p{1.5cm}<{\centering}|p{1.5cm}<{\centering}|p{9.8cm}<{\centering}p{1.5cm}<{\centering}p{1.5cm}<{\centering}}
                    
                    \cline{1-2} 
                    \bfseries 分类号 & \bfseries \classificationNumber &  &  &  \\ 
                    \cline{1-2} 
                    \bfseries U~\,D~\,C & \bfseries \UDC &  &  &  \\ 
                    \cline{1-2}
                    
                \end{tabular}
            \end{table}
        }
        {right}{
            \begin{table}[H]
            \centering
            \renewcommand\arraystretch{1.5}
                \begin{tabular}{p{1.5cm}<{\centering}p{1.5cm}<{\centering}p{9.8cm}<{\centering}|p{1.5cm}<{\centering}|p{1.5cm}<{\centering}|}
                    
                    \cline{4-5}
                    &  &  & \bfseries 密~~~~级 & \bfseries \confidentialLevel \\ 
                    \cline{4-5} 
                    &  &  & \bfseries 编~~~~号 & \bfseries \serialNumber \\ 
                    \cline{4-5} 
                    
                \end{tabular}
            \end{table}
        }
        {empty}{
        
        }
        }[\PackageError{header}{未知的封面类型: #1}{}]

        \vspace*{\fill} % 空白填充

        \centering
        \ifx\titlePageImages\undefined
        \else
            \zihao{5}\titlePageImages % 封面图片
            \vspace{1cm} % 间距设置
        \fi


        \centering
        
        \ifx\majorTitle\undefined
        \else
            \zihao{#2}\textbf{\songti \ziju{0.15} \majorTitle}\\ % 大标题
        \fi        
        \vspace{0.3cm} % 间距设置

        % \rule[0pt]{18cm}{0.05em}
        
        \ifx\minorTitleCN\undefined
        \else
            \zihao{#3}\textbf{\songti \minorTitleCN}\\ % 中文标题
        \fi       
        \vspace{0.3cm} % 间距设置
        \ifx\minorTitleCN\undefined
        \else
            \zihao{#4}\textbf{\minorTitleEN}\\ % 英文标题
        \fi

        % \rule[0pt]{18cm}{0.05em}
        
        \vspace{1cm} % 间距设置
        
        \flushleft
        
        \begin{spacing}{1.25}
            \ifx\titlePageInfoBox\undefined
            \else
                \titlePageInfoBox % 个人信息栏
            \fi
        \end{spacing}
        
        \vspace{0.5cm} % 间距设置
        
        \centering
        \ifx\currentDate\undefined
        \else
            \zihao{-2} \textbf{\songti{\currentDate}} % 日期
        \fi
        
        \vspace*{\fill} % 空白填充
        
        \end{titlepage}
        
        \restoregeometry % 重置纸张格式

}

%%%%%%%%%%%%%%%%%%%%%% 水印相关 %%%%%%%%%%%%%%%%%%%%%%

% 解决第一个水印透明度问题
\RequirePackage{silence}
\WarningsOff[everypage]

% \RequirePackage{everypage-1x}
\RequirePackage[contents = ~]{background}

% 文本水印
\newcommand{\textWatermark}[5]{
    \backgroundsetup{
        color = #1, % 文本颜色
        angle = #2, % 旋转角度
        scale = #3, % 放缩比例
        opacity = #4, % 透明度
        contents = {\zihao{4} \rmfamily{\songti #5}} % 内容
    }
}

% 图片水印
\newcommand{\imageWatermark}[4]{
    \backgroundsetup{
        angle = #1, % 旋转角度
        scale = #2, % 缩放比例
        opacity = #3, % 透明度
        contents = {\includegraphics[width = \paperwidth, height = \paperwidth, keepaspectratio]{#4}} % 内容
    }
}

%%%%%%%%%%%%%%%%%%%%%% 摘要相关 %%%%%%%%%%%%%%%%%%%%%%

% 中文摘要
\newenvironment{abstractCN}[1][2]{
    
    % \vspace*{\fill} % 空白自动填充

    \def\currentChapterInfo{摘要} % 自定义当前章节名

    \phantomsection
    
    \begin{center}
        \ifx\minorTitleCN\undefined
            \vspace*{-40pt}
        \else
            \vspace*{-10pt}
            \zihao{#1}\textbf{\songti \minorTitleCN} % 中文摘要标题
            \vspace{16pt}
        \fi
        
        \zihao{3}\textbf{\songti 摘~~~~要}
        \vspace{8pt}
    \end{center}
    
    \addcontentsline{toc}{chapter}{摘~~~~要}
    \zihao{-4}\ignorespaces
}{
    \vspace{20pt}
    \noindent\textbf{\heiti 关键词： \keywordsCN}

    % \vspace*{\fill} % 空白自动填充
    
    \clearpage

    \def\currentChapterInfo{\leftmark} % 恢复当前章节名
}

% 英文摘要
\newenvironment{abstractEN}[1][2]{
    
    % \vspace*{\fill} % 空白自动填充

    \def\currentChapterInfo{Abstract} % 自定义当前章节名
    
    \phantomsection
    
    \begin{center}
        \ifx\minorTitleEN\undefined
            \vspace*{-40pt}
        \else
            \vspace*{-10pt}
            \zihao{#1}\textbf{\minorTitleEN} % 英文摘要标题
            \vspace{16pt}
        \fi
        
        \zihao{3}\textbf{Abstract}
        \vspace{8pt}
    \end{center}
    
    \addcontentsline{toc}{chapter}{Abstract}
    \zihao{4}\ignorespaces
}{
    \vspace{20pt}
    \noindent\textbf{Keywords: \keywordsEN}

    % \vspace*{\fill} % 空白自动填充
    
    \clearpage

    \def\currentChapterInfo{\leftmark} % 恢复当前章节名
}

%%%%%%%%%%%%%%%%%%%%%% 章节标题样式 %%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{setspace,titlesec,zhnumber}

% 标题深度
\setcounter{secnumdepth}{3}

% 一级标题编号
\renewcommand{\thechapter}{\texorpdfstring{}{第 }\arabic{chapter}\texorpdfstring{}{ 章  }}

% 二级标题编号
\renewcommand{\thesection}{\arabic{chapter}.\arabic{section}}

% 三级标题编号
\renewcommand{\thesubsection}{\arabic{chapter}.\arabic{section}.\arabic{subsection}}

% 四级标题编号
\renewcommand{\thesubsubsection}{\arabic{chapter}.\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}

% 一级标题开始时换页
\newcommand{\chapterbreak}{\clearpage}

% 一级标题样式
\newcommand{\LOneTitle}{
    \titleformat{\chapter}[block]
        {\vspace{-60pt} \centering \zihao{-2} \songti \bfseries} % 标题和上文距离 字号 字体
        {第 \thechapter 章~~} % 标题序号样式
        {5pt} % 标题序号和标题文本距离
        {\vspace{-20pt}} % 标题和下文距离
}

% 二级标题样式
\newcommand{\LTwoTitle}{
    \titleformat{\section}[block]
        {\vspace{-10pt} \zihao{4} \heiti} % 标题和上文的距离 字号 字体
        {\bfseries \thesection~~} % 标题序号样式
        {5pt} % 标题序号和标题文本距离
        {\vspace{0pt}} % 标题和下文距离
}

% 三级标题样式
\newcommand{\LThreeTitle}{
    \titleformat{\subsection}
        {\vspace{-10pt} \zihao{4} \heiti} % 标题和上文的距离 字号 字体
        {\bfseries \thesubsection~~} % 标题序号样式
        {5pt} % 标题序号和标题文本距离
        {\vspace{0pt}} % 标题和下文距离
}

% 四级标题样式
\newcommand{\LFourTitle}{
    \titleformat{\subsubsection}
        {\vspace{-10pt} \zihao{4} \heiti} % 标题和上文的距离 字号 字体
        {\bfseries \thesubsubsection~~} % 标题序号样式
        {5pt} % 标题序号和文本距离
        {\vspace{0pt}} % 标题和下文距离
}

\LOneTitle
\LTwoTitle
\LThreeTitle
\LFourTitle

%%%%%%%%%%%%%%%%%%%%%% 目录相关 %%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{titletoc} % 目录宏包
\RequirePackage{hyperref} % 设置目录与引用的超链接（需要编译多次）

% 目录深度
\setcounter{tocdepth}{3}

% 总目录一级标题目录样式
\titlecontents{chapter}
    [0pt] % 左间距
    {\bfseries \songti \zihao{-4}} % 标题样式
    {第 \thecontentslabel 章~~} % 标题格式
    {}
    {\titlerule*[0.4795em]{·}\contentspage} % 指引线样式
    [\addvspace{0pt}] % 每条间距

% 总目录二级标题目录样式
\titlecontents{section}
    [1\ccwd] % 左间距
    {\songti \zihao{-4}} % 标题样式
    {\thecontentslabel~~} % 标题格式
    {}
    {\titlerule*[0.5em]{·}\contentspage} % 指引线样式
    [\addvspace{0pt}] % 每条间距

% 总目录三级标题目录样式
\titlecontents{subsection}
    [2\ccwd] % 左间距
    {\songti \zihao{-4}} % 标题样式
    {\thecontentslabel~~} % 标题格式
    {}
    {\titlerule*[0.5em]{·}\contentspage} % 指引线样式
    [\addvspace{0pt}] % 每条间距

% 总目录四级标题目录样式
\titlecontents{subsubsection}
    [3\ccwd] % 左间距
    {\songti \zihao{-4}} % 标题样式
    {\thecontentslabel~~} % 标题格式
    {} % 整体上边距
    {\titlerule*[0.5em]{·}\contentspage} % 指引线样式
    [\addvspace{0pt}] % 每条间距

% 防止总目录一级标题跳转错误
\renewcommand*{\theHchapter}{\thechapter.\arabic{chapter}}

% 重置图片编号
\renewcommand\figurename{图}
\renewcommand{\thefigure}{\thechapter-\arabic{figure}}

% 图目录图号样式
\titlecontents{figure}
    [0pt] % 左间距
    {\songti \zihao{-4}} % 目录样式
    {\figurename~\thecontentslabel\quad} % 目录格式
    {} % 整体上边距
    {\titlerule*[0.5em]{·}\contentspage} % 指引线样式
    [\addvspace{0pt}] % 每条间距

% 重置表格编号
\renewcommand\tablename{表}
\renewcommand{\thetable}{\thechapter-\arabic{table}}

% 表目录表号样式
\titlecontents{table}
    [0pt] % 左间距
    {\songti \zihao{-4}} % 目录样式
    {\tablename~\thecontentslabel\quad} % 目录格式
    {} % 整体上边距
    {\titlerule*[0.5em]{·}\contentspage} % 指引线样式
    [\addvspace{0pt}] % 每条间距

% 总目录自定义指令
\newcommand{\contentPage}[2]{

    \clearpage
    \def\currentChapterInfo{目录} % 自定义当前章节名

    % 总目录标题文本样式
    \renewcommand\contentsname{#2}

    % 总目录标题样式
    \titleformat{\chapter}[block]
        {\vspace{-70pt} \centering \zihao{-2} \bfseries} % 标题和上文距离 字号 字体
        {\contentsname} % 标题序号样式
        {0pt} % 标题序号和标题文本距离
        {\vspace{-30pt}} % 标题和下文距离

    \begin{spacing}{#1} % 目录行距
        \tableofcontents
    \end{spacing}

    \clearpage
    \LOneTitle % 恢复一级标题样式
    \def\currentChapterInfo{\leftmark} % 恢复当前章节名
}

% 图目录自定义指令
\newcommand{\contentpageOfFigures}[2]{

    \clearpage
    \def\currentChapterInfo{图目录} % 自定义当前章节名

    % 图目录标题文本样式
    \renewcommand\listfigurename{#2}

    % 图目录标题样式
    \titleformat{\chapter}[block]
        {\vspace{-70pt} \centering \zihao{-2} \bfseries} % 标题和上文距离 字号 字体
        {\listfigurename} % 标题序号样式
        {0pt} % 标题序号和标题文本距离
        {\vspace{-30pt}} % 标题和下文距离
    
    \begin{spacing}{#1} % 目录行距
        \renewcommand{\addvspace}[1]{} % 关闭图目录章节间间隔
        \listoffigures
        \renewcommand{\addvspace}[1]{\origaddvspace{#1}} % 关闭图目录章节间间隔
    \end{spacing}

    \clearpage
    \LOneTitle % 恢复一级标题样式
    \def\currentChapterInfo{\leftmark} % 恢复当前章节名
}

% 表目录自定义指令
\newcommand{\contentpageOfTables}[2]{

    \clearpage
    \def\currentChapterInfo{表目录} % 自定义当前章节名

    % 表目录标题文本样式
    \renewcommand\listtablename{\zihao{-2} #2}

    % 表目录标题样式
    \titleformat{\chapter}[block]
        {\vspace{-70pt} \centering \zihao{-2} \bfseries} % 标题和上文距离 字号 字体
        {\listtablename} % 标题序号样式
        {0pt} % 标题序号和标题文本距离
        {\vspace{-30pt}} % 标题和下文距离

    \begin{spacing}{#1} % 目录行距
        \renewcommand{\addvspace}[1]{} % 关闭表目录章节间间隔
        \listoftables
        \renewcommand{\addvspace}[1]{\origaddvspace{#1}} % 关闭表目录章节间间隔
    \end{spacing}

    \clearpage
    \LOneTitle % 恢复一级标题样式
    \def\currentChapterInfo{\leftmark} % 恢复当前章节名
}

%%%%%%%%%%%%%%%%%%%%%% 页眉页脚 %%%%%%%%%%%%%%%%%%%%%%

% 页眉页脚宏包
\RequirePackage{fancyhdr}

% 自定义页眉一级标题名
\renewcommand{\chaptername}{第\arabic{chapter}章}

% 页眉一级标题名处理
\renewcommand\chaptermark[1]{%
  \markboth{%
    \ifnum \c@secnumdepth>\m@ne
      \if@mainmatter
        \@chapapp\ \ %
      \fi
    \fi
    #1}{}%
}

\def\currentChapterInfo{\leftmark} % 默认章节动态文本

\newcommand{\Header}[7]{%
    \IfEqCase{#1}{%
        {common}{ % 普通页眉
            \clearpage
            \fancypagestyle{plain}{
                \renewcommand\headrulewidth{#2} % 页眉分隔线
                \makeatletter
                    \def\headrule{{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
                    \hrule\@height\headrulewidth\@width\headwidth
                    \vskip #3 % 两线间距
                    \hrule\@height#4\@width\headwidth % 下线宽度
                    \vskip-\headrulewidth
                    \vskip-1.5pt}}
                \makeatother
                \fancyhead[L]{\zihao{5} \fangsong #5} % 页眉左
                \fancyhead[C]{\zihao{5} \fangsong #6} % 页眉中
                \fancyhead[R]{\zihao{5} \fangsong #7} % 页眉右
            }
            \pagestyle{plain}
        }
        {publish}{ % 印刷页眉
            \clearpage
            \fancypagestyle{plain}{
                \renewcommand\headrulewidth{#2} % 上线宽度
                \makeatletter
                    \def\headrule{{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
                    \hrule\@height\headrulewidth\@width\headwidth
                    \vskip #3 % 两线间距
                    \hrule\@height#4\@width\headwidth % 下线宽度
                    \vskip-\headrulewidth
                    \vskip-1.5pt}}
                \makeatother
                \fancyhead[LO,RE]{\zihao{5} \fangsong #5} % 页眉奇数左、偶数偶
                \fancyhead[C]{\zihao{5} \fangsong #6} % 页眉中
                \fancyhead[RO,LE]{\zihao{5} \fangsong #7} % 页眉奇数右、偶数左
            }
            \pagestyle{plain}
        }
        {empty}{ % 空页眉
            \clearpage
            \fancypagestyle{empty}{
                \renewcommand\headrulewidth{0pt} % 上线宽度
                \makeatletter
                    \def\headrule{{\if@fancyplain\let\headrulewidth\plainheadrulewidth\fi
                    \hrule\@height\headrulewidth\@width\headwidth
                    \vskip 0pt % 两线间距
                    \hrule\@height0pt\@width\headwidth % 下线宽度
                    \vskip-\headrulewidth
                    \vskip-1.5pt}}
                \makeatother
                \fancyhead[LE,RO]{} % 关闭页眉
                \fancyhead[RE,LO]{} % 关闭页眉
                \fancyhead[C]{} % 关闭页眉
                \renewcommand{\headrulewidth}{0pt} % 关闭页眉分隔线
            }
            \pagestyle{empty}
        }
    }[\PackageError{header}{未知的页眉类型: #1}{}]
}

\newcommand{\Footer}[7]{
    \IfEqCase{#1}{
        {common}{ % 普通页脚
            \clearpage
            \fancypagestyle{plain}{
                \renewcommand\footrulewidth{#2} % 上线宽度
                \makeatletter
                    \def\footrule{{\if@fancyplain\let\footrulewidth\plainfootrulewidth\fi
                    \hrule\@height\footrulewidth\@width\headwidth
                    \vskip #3 % 两线间距
                    \hrule\@height#4\@width\headwidth % 下线宽度
                    \vskip-\footrulewidth
                    \vskip-1.5pt}}
                \makeatother
                \fancyfoot[L]{\zihao{5} \fangsong #5} % 页眉左
                \fancyfoot[C]{\zihao{5} \fangsong #6} % 页眉中
                \fancyfoot[R]{\zihao{5} \fangsong #7} % 页眉右
            }
            \pagestyle{plain}
        }
        {publish}{ % 印刷页脚
            \clearpage
            \fancypagestyle{plain}{
                \renewcommand\footrulewidth{#2} % 上线宽度
                \makeatletter
                    \def\footrule{{\if@fancyplain\let\footrulewidth\plainfootrulewidth\fi
                    \hrule\@height\footrulewidth\@width\headwidth
                    \vskip #3 % 两线间距
                    \hrule\@height#4\@width\headwidth % 下线宽度
                    \vskip-\footrulewidth
                    \vskip-1.5pt}}
                \makeatother
                \fancyfoot[LO,RE]{\zihao{5} \fangsong #5} % 页脚奇数左、偶数偶
                \fancyfoot[C]{\zihao{5} \fangsong #6} % 页脚中
                \fancyfoot[RO,LE]{\zihao{5} \fangsong #7} % 页脚奇数右、偶数左
            }
            \pagestyle{plain}
        }
        {empty}{ % 空页脚
            \clearpage
            \fancypagestyle{empty}{
                \renewcommand\footrulewidth{0pt} % 上线宽度
                \makeatletter
                    \def\footrule{{\if@fancyplain\let\footrulewidth\plainfootrulewidth\fi
                    \hrule\@height\footrulewidth\@width\headwidth
                    \vskip 0pt % 两线间距
                    \hrule\@height0pt\@width\headwidth % 下线宽度
                    \vskip-\footrulewidth
                    \vskip-1.5pt}}
                \makeatother
                \fancyfoot[LE,RO]{} % 关闭页脚
                \fancyfoot[RE,LO]{} % 关闭页脚
                \fancyfoot[C]{} % 关闭页脚
                \renewcommand{\footrulewidth}{0pt} % 关闭页脚分隔线
            }
            \pagestyle{empty}
        }
    }[\PackageError{footer}{未知的页脚类型: #1}{}]
}

% 设置罗马数字页码
\newcommand{\SetRomanPageNumber}[1]{
    \pagenumbering{Roman} % 页码格式为罗马数字
    \setcounter{page}{#1} % 重置起始页
}

% 设置阿拉伯数字页码
\newcommand{\SetArabicPageNumber}[1]{
    \pagenumbering{arabic} % 页码格式为阿拉伯数字
    \setcounter{page}{#1} % 重置起始页
}

%%%%%%%%%%%%%%%%%%%%%% 图表相关 %%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{multirow} % 合并多行单元格
\RequirePackage{multicol} 
\RequirePackage{longtable} % 长表格
\RequirePackage{supertabular}
\RequirePackage{makecell}
\RequirePackage{threeparttable} % 制作三线表格
\RequirePackage{booktabs}
\RequirePackage{tabu}
\RequirePackage{arydshln}
\RequirePackage{tabularx}
\RequirePackage{graphicx}
\RequirePackage{animate}
\RequirePackage{inputenc}
\RequirePackage{pgfplots}
\RequirePackage{scalefnt} %设置图片中字体

\usepgfplotslibrary{fillbetween}
\pgfplotsset{compat=1.18}

\RequirePackage{tikz}
\usetikzlibrary{arrows}
\pgfdeclarelayer{background}
\pgfsetlayers{background,main}

\RequirePackage[justification=centering]{caption}
\RequirePackage{subcaption}

\DeclareCaptionLabelSeparator{onespace}{~~}

% 预定义图片路径
\graphicspath{
    {images/}
    {images/logos/}
}

% 图片 caption和表格距离 caption序号标题分隔符
\captionsetup[figure]{skip=8pt,labelsep=onespace}
% 表格 caption和表格距离 caption序号标题分隔符
\captionsetup[table]{skip=8pt,labelsep=onespace}
% 长表格 caption和表格距离 caption序号标题分隔符
% \captionsetup[longtable]{labelsep=onespace}

% 三线表线条距离
% \renewcommand{\cmidrulesep}{1pt} % 定义两条相邻\cmidrule之间的间隔
% \setlength{\aboverulesep}{2pt} % 在线条（不包括\toprule）上面增加一段垂直距离
% \setlength{\belowrulesep}{2pt} % 在线条（不包括\bottomrule）下面增加一条垂直距离
% \setlength{\abovetopsep}{5pt} % 在线条\toprule上面，即表格与上面的文字之间的距离。
% \setlength{\belowbottomsep}{5pt} % 在线条\bottomrule下面，即表格与下面的文字之间的距离。

% 表格中文本和边框的距离
% \renewcommand\arraystretch{1.15}

% 表格列间距
% \setlength{\tabcolsep}{20pt}

% % 长表格整体上边距
% \setlength{\LTpre}{10pt}
% % 长表格整体下边距
% \setlength{\LTpost}{10pt}

% 图表标题文本样式
\renewcommand{\captionfont}{\songti \zihao{5}}

% 图表与公式编号样式
\counterwithin{figure}{chapter}
\counterwithin{table}{chapter}
\counterwithin{equation}{chapter}

% 图编号样式
\renewcommand{\thefigure}{\arabic{chapter}-\arabic{figure}}
% 表编号样式
\renewcommand{\thetable}{\arabic{chapter}-\arabic{table}}
% 等式编号样式
\renewcommand{\theequation}{\arabic{chapter}-\arabic{equation}}

%%%%%%%%%%%%%%%%%%%%%% 数学相关 %%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{array} % 数组或矩阵的排版
\RequirePackage{siunitx} % 数学单位
\RequirePackage{upgreek} % 符号
\RequirePackage{calc} % 四则运算
\RequirePackage{amsmath}
\RequirePackage{amssymb}
\RequirePackage{ntheorem}
\RequirePackage{mathtools}
\RequirePackage{libertine}
\RequirePackage[slantedGreek,libertine]{newtxmath}
\RequirePackage{annotate-equations}

 % QED证毕
\newcommand{\QED}{$\hfill\blacksquare$}

% 中文定理环境
\theorembodyfont{\songti} % 定理环境字体
\newtheorem{proof}{\indent \heiti 证明}[chapter]
\newtheorem{definition}{\indent \heiti 定义}[chapter]
\newtheorem{proposition}{\indent \heiti 命题}[chapter]
\newtheorem{lemma}{\indent \heiti 引理}[chapter]
\newtheorem{theorem}{\indent \heiti 定理}[chapter]
\newtheorem{corollary}{\indent \heiti 推论}[chapter]
\newtheorem{remark}{\indent \heiti 注}[chapter]
\newtheorem{example}{\indent \heiti 例}[chapter]
\newtheorem{axiom}{\indent \heiti 公理}[chapter]
\newtheorem{property}{\indent \heiti 性质}[chapter]
\newtheorem{assumption}{\indent \heiti 假设}[chapter]

% 英文定理环境
% % \renewcommand{\proofname}{Proof}[chapter]
% \newtheorem{definition}{Definition}[chapter]
% \newtheorem{proposition}{Proposition}[chapter]
% \newtheorem{lemma}{Lemma}[chapter]
% \newtheorem{theorem}{Theorem}[chapter]
% \newtheorem{corollary}{Corollary}[chapter]
% \newtheorem{remark}{Remark}[chapter]
% \newtheorem{example}{Example}[chapter]
% \newtheorem{axiom}{Axiom}[chapter]
% \newtheorem{property}{Property}[chapter]
% \newtheorem{assumption}{Assumption}[chapter]

%%%%%%%%%%%%%%%%%%%%%% 代码相关 %%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{listings}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}

% 代码标题
\renewcommand{\lstlistingname}{代码}

% 代码编号样式
\AtBeginDocument[B]{
    \renewcommand{\thelstlisting}{\arabic{chapter}-\arabic{lstlisting}}
}

% 代码caption和代码距离 caption序号标题分隔符
\captionsetup[lstlisting]{skip=8pt, labelsep=onespace}

% 行号样式
% \renewcommand{\thelstnumber}{\arabic{lstnumber}}

\lstdefinestyle{defaultstyle}{
    backgroundcolor=\color[RGB]{252,252,252}, % 背景颜色
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    basicstyle=\linespread{1} \JetBrainsMono,% 行距 字体 字号
    breaklines=true,
    keepspaces=true,
    tabsize=2,
    flexiblecolumns,
    numbers=left, % 行号的位置在左边
    numberstyle=\zihao{-5}\ttfamily, % 行号字号字体
    showspaces=false, % 是否显示空格
    showstringspaces=false,
    captionpos=t, %这段代码的名字所呈现的位置，t指的是top上面
    frame=ltrb,   % 边框
    % framesep=30pt, % 设置边框与代码的距离
    framexleftmargin=0pt, % 边框左扩展距离
    framexrightmargin=0pt, % 边框右扩展距离
    framextopmargin=-80pt, % 边框上扩展距离
    framexbottommargin=-40pt, % 边框下扩展距离
}

\lstset{style=defaultstyle}

%%%%%%%%%%%%%%%%%%%%%% 代码语法高亮支持 %%%%%%%%%%%%%%%%%%%%%%

% 高亮颜色定义
\RequirePackage{color}
\definecolor{lightgray}{rgb}{.9,.9,.9}
\definecolor{darkgray}{rgb}{.4,.4,.4}
\definecolor{purple}{rgb}{0.65, 0.12, 0.82}

% JavaScript语法高亮
\lstdefinelanguage{JavaScript}{
  keywords={typeof, new, true, false, catch, function, return, null, catch, switch, var, if, in, while, do, else, case, break, const},
  keywordstyle=\color{blue}\bfseries,
  ndkeywords={class, export, boolean, throw, implements, import, this, async},
  ndkeywordstyle=\color{darkgray}\bfseries,
  identifierstyle=\color{black},
  sensitive=false,
  comment=[l]{//},
  morecomment=[s]{/*}{*/},
  commentstyle=\color{purple}\ttfamily,
  stringstyle=\color{red}\ttfamily,
  morestring=[b]',
  morestring=[b]"
}

% JavaScript样式
\lstdefinestyle{JavaScript}{
    language=JavaScript, % 语言选择
    breaklines=true,   % 自动换行，建议不要写太长的行
    columns=fixed  % 字间距固定
}

%%%%%%%%%%%%%%%%%%%%%% 算法相关 %%%%%%%%%%%%%%%%%%%%%%

% 算法相关宏包
\RequirePackage{algorithm}
\RequirePackage{algorithmic}
% \RequirePackage{algpseudocode}

% 算法编号样式
\renewcommand\thealgorithm{\arabic{chapter}-\arabic{algorithm}}

% 英文格式
% \floatname{algorithm}{Algorithm}  
% \renewcommand{\algorithmicrequire}{\textbf{Input: }\unskip}
% \renewcommand{\algorithmicensure}{\textbf{Output: }\unskip}

% 中文格式
\floatname{algorithm}{算法}  
\renewcommand{\algorithmicrequire}{\textbf{输入：}\unskip}
\renewcommand{\algorithmicensure}{\textbf{输出：}\unskip}

%%%%%%%%%%%%%%%%%%%%%% 引用以及PDF相关 %%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{bookmark}

% 引用设置以及PDF设置
\hypersetup{
    colorlinks=true, % false: 使用方框标示超链接; true: 使用颜色标示超链接
    linkcolor=black, % 超链接颜色
    citecolor=black, % 引用颜色
    filecolor=black, % 文件链接颜色
    urlcolor=black, % URL颜色
    bookmarksopen=true, % 是否展开书签
    bookmarksnumbered=true, % 书签是否有章节编号
    pdfborder={0 0 0}, % PDF文件中引用边框样式 0 0 0 为取消边框
    pdftoolbar=true, % 是否展示Acrobat工具栏
    pdfmenubar=false, % 是否展示Acrobat菜单
    pdffitwindow=true, % 打开文件时页宽适应窗口宽度
    % pdfstartview={FitH}, % 打开文件时按照窗口高度适配
    % pdfnewwindow=true, % 在新窗口中打开
}

% URL字体设置
\urlstyle{same}

%%%%%%%%%%%%%%%%%%%%%% 参考文献相关 %%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{gbt7714}
\RequirePackage{natbib}

\bibliographystyle{gbt7714-numerical}
\setlength{\bibsep}{0pt} % 参考文献内容间距
\def\bibfont{\zihao{5} \vspace{0pt}} % 参考文献标题样式

% 参考文献目录标题
\newenvironment{references}{
    \clearpage\phantomsection\addcontentsline{toc}{chapter}{参考文献}
}{
    \clearpage
}

\renewcommand{\bibname}{参考文献} % 参考文献标题文本
% \renewcommand*{\bibfont}{\zihao{0}} % 参考文献内容样式

% 引用样式
% \setcitestyle{round} % 使用圆括号(默认)
\setcitestyle{square} % 使用方括号
% \setcitestyle{curly} % 使用花括号
% \setcitestyle{angle} % 使用尖括号

% \setcitestyle{colon} % 用引号分隔多个引用(默认)
\setcitestyle{comma} % 用逗号分隔多个引用

% \setcitestyle{authoryear} % 使用作者–年引用形式(默认)
% \setcitestyle{numbers} % 使用取消上标编号引用形式
\setcitestyle{super} % 使用上标编号引用

\setcitestyle{sort} % 多个引用按照首字母排序
\setcitestyle{sort&compress} % 除排序外，多个引用可以合并
% \setcitestyle{longnamesfirst} % 多个作者的文献第一次被引用时列出所有作者，以后的引用可以缩写为 et al.

%%%%%%%%%%%%%%%%%%%%%% 脚注相关 %%%%%%%%%%%%%%%%%%%%%%

\RequirePackage{pifont}  % 脚注格式宏包
\RequirePackage[bottom]{footmisc} % 脚注置底

\renewcommand{\footnotesize}{\zihao{5}} % 脚注文本字号

\renewcommand{\footnotemargin}{2\ccwd} % 脚注缩进
% \renewcommand{\footnotelayout}{\hspace{1em}} % 脚注编号和脚注文本间间距

% \setlength{\skip\footins}{0mm} % 脚注和正文之间间距
% \setlength{\footnotesep}{0.5cm} % 多条脚注间间距

% 脚注样式
\RequirePackage{xpatch}
\RequirePackage{xunicode-addon}

% 设置带圈数字
\AtBeginUTFCommand[\textcircled]{\begingroup\EnclosedNumbers}
\AtEndUTFCommand[\textcircled]{\endgroup}

% 设置带圈数字字体
\xeCJKDeclareCharClass{Default}{"24EA, "2460->"2473, "3251->"32BF}
\newfontfamily\EnclosedNumbers{Garamond-Math.otf}

% 设置阿拉伯数字计数以及带圈数字字号
\renewcommand\thefootnote{~\zihao{-4}\textcircled{\@arabic\c@footnote}}

\makeatletter
    \xpatchcmd\@makefntext
      {{\hss\@makefnmark}}
      {{\hss\@makefnmark@nosuperscript}\space}
      {}{\fail}
    \def\@makefnmark@nosuperscript{\hbox{\normalfont\@thefnmark}}
\makeatother

%%%%%%%%%%%%%%%%%%%% 自定义枚举 %%%%%%%%%%%%%%%%%%%%

\RequirePackage{enumitem}

% 术语枚举环境
\newlist{denotation}{description}{1}

% 术语枚举环境配置
\setlist[denotation]{ 
  % font=\normalfont, % 字体设置
  nosep,
  align=left, % 对齐方式
  leftmargin=!, % 左间距
  labelindent=0pt, % 标签缩进
  labelwidth=2.5cm, % 列宽
  labelsep*=1.5cm, % 列间距
  itemindent=0pt, % 内容缩进
}

%%%%%%%%%%%%%%%%%%%%%%%% 附录 %%%%%%%%%%%%%%%%%%%%%%%

% 附录 
\newcommand{\StartAppendix}{

    % 重置页眉
    \renewcommand{\chaptername}{附录\Alph{chapter}}
    % \renewcommand{\appendixname}{附录\Alph{chapter}}
    
    % 重置一级标题记数
    \setcounter{chapter}{0}

    % % 重置图片编号
    % \renewcommand\figurename{附图}
    % \renewcommand{\thefigure}{\thechapter-\arabic{figure}}
    
    % % 重置表格编号
    % \renewcommand\tablename{附表}
    % \renewcommand{\thetable}{\thechapter-\arabic{table}}

    % 图目录图号样式
    \titlecontents{figure}
        [0.5cm] % 左间距
        {\songti \zihao{-4}} % 标题样式
        {\figurename~\thecontentslabel\quad} % 标题格式
        {}
        {\titlerule*[0.5em]{·}\contentspage} % 指引线样式
        [\addvspace{0pt}] % 每条间距

    % 表目录表号样式
    \titlecontents{table}
        [0.5cm] % 左间距
        {\songti \zihao{-4}} % 标题样式
        {\tablename~\thecontentslabel\quad} % 标题格式
        {}
        {\titlerule*[0.5em]{·}\contentspage} % 指引线样式
        [\addvspace{0pt}] % 每条间距

    % 重置一级标题目录样式
    \titlecontents{chapter}[0pt]{\bfseries \songti \zihao{-4}} % 缩进、字体字号
    {附录 \thecontentslabel~~}{}
    {\titlerule*[0.5em]{·}\contentspage} % 连接符样式、密度
    
    % 重置一级标题样式
    \titleformat{\chapter}[block]
    {\vspace*{-60pt} \centering \zihao{-2} \songti \bfseries} % 标题和上文距离 字号 字体
    {附录 \thechapter~~} % 标题序号样式
    {5pt} % 标题序号和标题文本距离
    {\vspace{-30pt}} % 标题和下文距离

    % 重置二级标题样式
    \titleformat{\section}[block]
    {\vspace{0pt} \zihao{4} \heiti} % 标题和上文的距离 字号 字体
    {\bfseries \thesection~~} % 标题序号样式
    {5pt} % 标题序号和标题文本距离
    {\vspace{0pt}} % 标题和下文距离
    
    % 重置三级标题样式
    \titleformat{\subsection}
    {\vspace{0pt} \zihao{4} \heiti} % 标题和上文的距离 字号 字体
    {\bfseries \thesubsection~~} % 标题序号样式
    {5pt} % 标题序号和标题文本距离
    {\vspace{0pt}} % 标题和下文距离
    
    % 重置四级标题样式
    \titleformat{\subsubsection}
    {\vspace{0pt} \zihao{4} \heiti} % 标题和上文的距离 字号 字体
    {\bfseries \thesubsubsection~~} % 标题序号样式
    {5pt} % 标题序号和文本距离
    {\vspace{0pt}} % 标题和下文距离

    % 重置一级标题编号
    \renewcommand{\thechapter}{\texorpdfstring{}{附录 }\Alph{chapter}\texorpdfstring{}{  }}

    % 重置二级标题编号
    \renewcommand{\thesection}{\thechapter.\arabic{section}}
    
    % 重置三级标题编号
    \renewcommand{\thesubsection}{\thechapter.\arabic{section}.\arabic{subsection}}
    
    % 重置四级标题编号
    \renewcommand{\thesubsubsection}{\thechapter.\arabic{section}.\arabic{subsection}.\arabic{subsubsection}}

    % 重置公式编号
    \renewcommand\theequation{\thechapter-\arabic{equation}}

    % 代码编号样式
    \renewcommand{\thelstlisting}{\thechapter-\arabic{lstlisting}}

}

%%%%%%%%%%%%%%%%%%%%%%%% 致谢 %%%%%%%%%%%%%%%%%%%%%%%

% 致谢
\newcommand{\StartAcknowledgements}{

    \def\currentChapterInfo{致谢} % 自定义当前章节名

    \NoBgThispage % 取消水印
    
    % 重置图片编号
    \renewcommand\figurename{图}
    \renewcommand{\thefigure}{\thesection-\arabic{figure}}
    
    % 重置表格编号
    \renewcommand\tablename{表}
    \renewcommand{\thetable}{\thesection-\arabic{table}}

    % 换页
    \clearpage

    \phantomsection

    % 添加致谢到目录
    \addcontentsline{toc}{chapter}{致~~~~谢}

    % 致谢标题
    \vspace*{-20pt}
    \begin{center}
        \zihao{-2} \songti \bfseries 致~~~~谢
    \end{center}
    \vspace*{10pt}

}

%%%%%%%%%%%%%%%%%%%%%% 命令封装 %%%%%%%%%%%%%%%%%%%%%%

\DeclareRobustCommand\cs[1]{{\char`\\#1}} % 指令
\DeclareRobustCommand\file{\nolinkurl} % 文件
\DeclareRobustCommand\env{\textsf} % 环境
\DeclareRobustCommand\pkg{\textsf} % 宏包