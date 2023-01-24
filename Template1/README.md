# Template1 英文作业模板

英文作业模板，要求含有**题目、解答、注记**三个基本的要素。

如果只是输入英文的话，文档类型选择article就够了，另外使用的宏包有amsmath、amsthm、amssymb、bm、graphicx、hyperref、mathrsfs。

为了方便，自己在文档里面写了一个简单的环境：

```latex
\newenvironment{problem}{\stepcounter{problemname}\par\noindent\textsc{Problem \arabic{problemname}. }}{\\\par}
\newenvironment{solution}{\par\noindent\textsc{Solution. }}{\\\par}
\newenvironment{note}{\par\noindent\textsc{Note of Problem \arabic{problemname}. }}{\\\par}
```

 [点此](main.pdf) 查看PDF文件
