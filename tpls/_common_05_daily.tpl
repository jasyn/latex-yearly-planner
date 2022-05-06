{{- $today := .Body.Day -}}

\begin{minipage}[t]{\myLenTriCol}
{{template "schedule.tpl" dict "Cfg" .Cfg "Day" .Body.Day}}
  \vspace{\dimexpr4mm+.3pt}

{{- if .Cfg.CalAfterSchedule -}}
{{- template "monthTabularV2.tpl" dict "Month" .Body.Month "Today" $today -}}
{{- end -}}
\end{minipage}%
\hspace{\myLenTriColSep}%
\begin{minipage}[t]{\dimexpr2\myLenTriCol+\myLenTriColSep}
  \myUnderline{Priorities\myDummyQ}
  \hspace{\myLenTriColSep}%
  \eisensquare
  \vskip\dimexpr6.2mm
  \myUnderline{Notes\hfill{}{{ $today.LinkLeaf "DreamLog" "DreamLog" }} $\vert$ {{ $today.LinkLeaf "Gratitude" "Gratitude" }} $\vert$ {{ $today.LinkLeaf "CrutchLog" "CrutchLog" }}}
  \myMash[\myDailySpring]{\myNumDailyNotes}{\myNumDotWidthTwoThirds}
\end{minipage}
\par\pagebreak
