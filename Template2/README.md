# Template 2 中文作业模板

要求同上，只是这里希望可以输入中文。

经过试验后发现，选取 ctexart 的文档类型更好看、更方便。使用的宏包同中文作业。

```latex
\newenvironment{problem}{\stepcounter{problemname}\par\noindent\textsc{Problem \arabic{problemname}. }}{\\\par}
\newenvironment{solution}{\par\noindent\textsc{Solution. }}{\\\par}
\newenvironment{note}{\par\noindent\textsc{Note of Problem \arabic{problemname}. }}{\\\par}
```

 [点此](main.pdf) 查看使用效果
