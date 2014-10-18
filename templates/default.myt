[Sections]
All=<html>%0D%0A<head>%0D%0A<title>{List.Name} - MyFindex Export</title>%0D%0A<style>%0D%0A<!--%0D%0A.header {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; font-style: normal; font-weight: bold; background-color: #66CCFF; color: #000066}%0D%0A.grouphead { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; font-style: italic; font-weight: normal; background-color: #FFFFFF; color: #000000; padding-top: 8pt}%0D%0A.e { font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; font-style: normal; font-weight: normal; background-color: #EEEEEE; color: #000000; vertical-align: baseline}%0D%0Ah1 {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: large; font-weight: bold; font-style: italic; color: #003366; margin-left: 16pt}%0D%0A.info {  font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small}%0D%0A-->%0D%0A</style>%0D%0A</head>%0D%0A<body>%0D%0A<h1>{List.Name}</h1>%0D%0A<p class%3D%22info%22>%0D%0ABenutzer: <b>{User}</b><br>%0D%0ASammlung: <b><a href%3D%22myfiles:({Collection.ShortName})%22>{Collection.Name}</a></b><br>%0D%0AUhrzeit: <b>{Timestamp}</b>%0D%0A</p>%0D%0A{GROUPS}%0D%0A<hr width%3D%2290%25%22>%0D%0A<p class%3D%22info%22>%0D%0A<i>generiert durch <a href%3D%22http://myfindex.self-soft.de/%22>self soft MyFindex</a>, der flexiblen Software zur Datentr&auml;gerarchivierung (Freeware) - Copyright &copy; 2000-04 by Alexander Menk</i>%0D%0A</p>%0D%0A</body>%0D%0A</html>
All.Group=<table border%3D0 cellpadding%3D0 cellspacing%3D0 width%3D%2250%25%22>%0D%0A{GroupedCols}%0D%0A</table>%0D%0A%0D%0A<table border%3D0 width%3D%22100%25%22>%0D%0A<tr class%3D%22header%22>{ColHeader}</tr>%0D%0A{FILES}%0D%0A</table>%0D%0A
All.Group.File=<tr class%3D%22e%22>{COLUMNS}</tr>
All.Group.File.Column=<td width%3D%22{Width}%25%22>{Text}</td>
All.Group.HeaderCol=<tr class%3D%22grouphead%22>{COLUMNS}</tr>
All.Group.File.Column.Größe=<td width%3D%22{Width}%25%22 align%3Dright>{Text}</td>
All.Group.Header=<tr class%3D%22grouphead%22>{COLUMNS}</tr>

[Properties]
DefaultExt=.html
FileDesc=HTML-Dateien
Open=0
Typ=0
Desc=
Charset=2

[Columns]
SortOrder=Dateiname

[Column.Disk]
Group=0
Hide=0

[Column.Pfad]
Group=0
Hide=0

