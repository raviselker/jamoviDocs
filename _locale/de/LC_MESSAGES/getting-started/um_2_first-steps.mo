��    G      T              �  �   �  r  �  �   �    �  �   �
  o   �  2   �  �  *  �   �     �  �  �  �   /    �  D   �     3  �   F     .     =     L  �  T  ]   4  �   �  �     f   �  �   I  �   @  `   �  �   C    �  �  �  u   �  u   %     �  �   �  m  [     �      �      �   	   �   �  !     �"  �   #     �#  �   �#  �   �$  m   Y%  u   �%  �  =&  (   �'  �  (  �   �)  �   �*     S+  h   a+  �  �+  �  �-  C  �/     �0     �0  \  �0     Z3     c3     s3  9  �3  �  �4  a   �6     7     47     H7     a7  �  z7  �  9  �  �:  �   �<  �  �=  �   -A  x   B  A   �B  (  �B  �   �D     �E  �  �E  �   �G  h  lH  t   �I     JJ  L  _J     �K     �K     �K    �K  x   �M  �   rN  �    O  u   �O  @  tP  �   �Q  �   �R    IS  h  hT  !  �U     �W  �   sX     Y    *Y    IZ     d]  '   y]     �]     �]  1  �]     �_  �   �_     �`     �`    �a  �   �b  �   bc    d  <   f  �  Qf  ^  i  �   nj      k  `   2k  S  �k  S  �m  �  ;p     �q     �q  �  �q     t     �t  4   �t  �  �t  �  wv  �   *y  H   �y     ;z  ;   Uz  ;   �z   *Computed variable*\ s can be added to the data set, with the ``Add`` button available on the data tab. This will produce a formula box where you can specify the formula. The usual arithmetic operators are available. Some examples of formulas are: A number of functions appear in pairs, one prefixed with a ``V`` and the other not. ``V`` functions perform their calculation on a variable *as a whole*, where as non-``V`` functions perform their calculation row by row. For example, ``MEAN(A, B)`` will produce the mean of ``A`` and ``B`` for each row. Where as ``VMEAN(A)`` gives the mean of *all* the values in ``A``. A separate mean is calculated for each level of ``dose``, and each value in the computed variable will be the mean corresponding to it’s row’s value of ``dose``. A very common format for exchanging data is using files with “comma- separated values” (.csv or .txt). Given that these data are stored as simple text file using commas (or ";", "|", etc.) to separate values nearly any software package can read and write them (and you to can take a look using any text editor). An example is shown in the figure. The first line contains the variable names and any other line afterwards a measurement point (typically a person where data were acquired from). If you have your data in a spreadsheet program (e.g., Excel), you can create a CSV-file from your data by selecting ``File`` → ``Save as...`` and choose ``Comma delimited`` in the drop-down menu close to the ``Save as``-button. Thereafter, you may open the CSV-file in jamovi. Additionally ``V`` functions support a ``group_by`` argument (in \0.9.6 and up). When a ``group_by`` variable is specified, a separate value is calculated for each level of the ``group_by`` variable. In the following example: All the (original) names of the existing columns are matched to the names of the columns from the new data set. All the rows of the existing data set are deleted. Alternatively, existing data sets in a range of formats (CSV, Excel, LibreOffice, R, SPSS, Stata, SAS, JASP) can be opened in jamovi. Additionally, there are a number of example data sets available in jamovi. To open a file, select the file menu (☰, at the top left hand corner of jamovi), select ``Open`` and then ``Data library`` or ``This PC``, depending on whether you want to open an example, or a file stored on your computer. An overview with short, non-technical tutorials on how to do common procedures in jamovi can be found under `jamovi-guide <jg_0_welcome.html>`__ (later in this section). Analyses Analyses can be selected from the analyses ribbon or menu along the top. Selecting an analysis will present an “options panel” for that particular analysis, allowing you to assign different variables to different parts of the analysis, and select different options. At the same time, the results for the analysis will appear in the right “results panel”, and will update as you make changes to the options. Another R feature that may be of interest is the `Rj module <https://blog.jamovi.org/2018/07/30/rj.html>`__, which allows you to use R code to analyse data directly in jamovi. At present, the provided R syntax does not include the data import step, and this must be performed manually. There are many resources explaining how to import data into R, and we recommend you take a look at these (Most analyses in jamovi require data as a data frame). At present, there is no way to combine files horizontally in jamovi. Computed Variables Computed Variables are those which take their value by performing a computation on other Variables. Computed Variables can be used for a range of purposes, including log transforms, z-scores, sum-scores, negative scoring and means. Copy and Paste Data Variables Filters Filters in jamovi allow you to filter out rows that you don’t want included in your analysis. For example, you might want to only include people’s survey responses if they explicitly consented to having their data used, or you might want to exclude all left-handed people, or perhaps people who score “below chance” in an experimental task. In some cases you just want to exclude extreme scores, for example those that score more than 3 standard deviations from the mean. Following a file import, all the filters, computed variables, transforms and analyses update. For a video introduction to import and templates in jamovi, see this `blog post <https://blog.jamovi.org/2019/03/27/import.html>`__. If jamovi does not open a file correctly, do file an issue (bug report) in our GitHub `issue tracker <https://github.com/jamovi/jamovi/issues>`__. We are keen to make our importer as robust as possible. If no new column matches the column names in the existing data set, then those columns are left blank. If you decide you no longer need a particular analysis, you can remove it with the results context menu. Right-clicking on the analysis results will bring up a menu, and by selecting ``Analysis``, and then ``Remove``, the analysis can be removed. Import is available from the file menu (☰) at the top left of jamovi. When you import a file into an existing data set, the following operations are performed: In jamovi, data is represented in a spreadsheet, with each column representing a “variable”. In order, these are the sum of A and B, a log (base 10) transform of ``len``, the mean of ``A`` and ``B``, and the z-score of ``dose`` (twice). In syntax mode, analyses continue to operate as before, but now they produce R syntax, and “ASCII output” like an R session. Like all results objects in jamovi, you can right click on these items (including the R syntax) and copy and paste them, for example, into an R session. It is also possible to import multiple files at once. This can be useful when you are combining multiple data sets, for example, where each file represents a participant. The process is the same as the single-file import detailed above, except that you select multiple files when performing the import. You can do this by holding down control or shift when selecting data files, or with the “multi-select” button at the top of the import dialog. It is possible to simply begin typing values into the jamovi spreadsheet as you would any other spreadsheet software. More details about filters are covered in this `blog post <https://blog.jamovi.org/2018/04/25/jamovi-filters.html>`__ Multi-file Import New variables can be inserted or appended to the data set using the ``Add`` button from the data ribbon. The ``Add`` button also allows the addition of *Computed variables*. Once a data set is set up with filters, computed variables, transforms and analyses, sometimes you may want to update the data. This may be for a number of reasons – It might be that you have a new data set, that you want to apply the analyses you performed earlier to it, or you may be conducting an experiment where you’re tesing a number of participants, and you now have an additional participant’s data to analyse. By importing into an existing data set you can re-run your analyses without having to re-perform all of your data cleaning and analysis steps (making your jamovi files behave a bit like scripts). Recoded Variables Single-file Import Syntax Mode Templates Templates in jamovi are special data sets that are analagous to script files in more traditional statistical environments. They are a way to specify data types, computations, filters, transforms, and analyses in advance. Once the data becomes available, it can be imported into the template, and the template will update accordingly. The nice thing about jamovi templates is that they are entirely specified with the familiar user interface, and do not require working with a “syntax” or code. The Spreadsheet The filters in jamovi are build on top of jamovi’s *computed variable* formula system, which allows the building of arbitrarily complex formulas. The first steps in jamovi The measure types are designated by the symbol in the header of the variable’s column. Note that some combinations of data-type and measure- type don’t make sense, and jamovi won’t let you choose these. The most commonly used variables in jamovi are “Data Variables”, these variables simply contain data either loaded from a data file, or “typed in” by the user. Data variables can be one three data types: The new columns which did not match names in the original data set are appended to the right of the data set. The new values are imported to the existing columns, *keeping* the data and measure types from the existing data set. The variable editor can be invoked by selecting ``Setup`` from the ``Data`` tab, double-clicking on the column header, or by pressing ``F3``. The variable editor allows you to change the name of the variable, and (for data variables) the data type, the measure type, the order of the levels, and the label displayed for each level. The variable editor can be dismissed by clicking the close arrow, or by pressing ``F3`` again. There are many more functions available. To save a data set as a template, select ``Export`` from the file menu, and select ``jamovi template (.omt)`` from the file type box. When opening a template, you’ll see it contains columns but no rows, and that all the analysis results are blank. To use the template, import a new data set (or data sets) using the file import described above. The data will update, followed by the filters, computed variables, and finally the analysis results. To the left is the spreadsheet view, and to the right is where the results of statistical tests appear. Down the middle is a bar separating these two regions, and this can be dragged to the left or the right to change their sizes. Transformed and recoded variables are also available. See this `blog post <https://blog.jamovi.org/2018/10/23/transforming-variables.html>`__ for details. Updating data When first starting jamovi, you will be presented with a user interface which looks something like this. When importing multiple files like this, they are combined vertically with the rows of the second file appearing below the first, the rows of the third file appearing below the second, and so on. An additional column called ``source`` is created detailing which file each row has come from. This can be useful when you need to “split-by” or “group-by” each participant. This column can be particularly useful to use with the ``group_by`` argument to ``V``-functions described above. When starting with a blank spreadsheet and typing values in, the data and measure types will change automatically depending on the data you enter. This is a good way to get a feel for which variable types go with which sorts of data. Similarly, when opening a data file, jamovi will infer the variable type from the data in each column. In both cases, this automatic approach may not be correct, and it may be necessary to manually specify the data and measure type with the variable editor. When you have the analysis set up correctly, you can dismiss the analysis options by clicking the arrow to the top right of the options panel. If you wish to return to these options, you can click on the results that were produced. In this way, you can return to any analysis that you (or say, a colleague) created earlier. ``Decimal`` ``Integer`` ``Nominal`` and ``Ordinal`` are, predictably, for nominal and ordinal variables. ``Continuous`` is for variables with numeric values which are considered to be *Interval* or *Ratio* scales (Equivalent to ``Scale`` in SPSS). The ``ID`` measure type is, unlike the others, unique to jamovi. It’s intended for variables that contain identifiers that you would almost never want to analyse. For example, a persons name, or a participant ID. The advantage of IDs, is that jamovi does not need to maintain a list of levels internally, which can improve performance when interacting with very large data sets. ``Text`` ``V``-functions and one of four measure types: jamovi also provides an “R Syntax Mode”, in this mode, jamovi produces equivalent R code for each analysis. To change to syntax mode, select the application menu (⋮) at the top right of jamovi, and check the ``Syntax mode`` checkbox there. It is possible to leave syntax mode by clicking this a second time. jamovi produces nice APA formatted tables, and attractive plots. It is often useful to be able to copy and paste these, perhaps into a Word document, or into an email to a colleague. To copy results, right click on the object of interest, and from the menu select exactly what you want to copy. The menu allows you to choose to copy, say only the image, or the entire analysis. Selecting copy, copies the content to the clipboard, and can be pasted into the other program in the usual way. jamovi templates are also a great way to provide analyses to less capable students or colleagues. |continuous| ``Continuous`` |id|         ``ID`` |nominal|    ``Nominal`` |ordinal|    ``Ordinal`` Project-Id-Version:  jamovi
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-09-10 01:55+0200
PO-Revision-Date: 2020-07-20 23:24+0000
Last-Translator: Sebastian Jentschke, 2020
Language: de
Language-Team: German (https://www.transifex.com/jamovi/teams/111618/de/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 *Berechnete Variablen* können mit dem "Add"-Icon im Abschnitt "Variables" der Registerkarte "Data" zu einem Datensatz hinzugefügt werden. Dies öffnet ein Eingabefenster, in dem Sie die Formel in einem Eingabefeld angeben können (oder durch das Klicken auf "f(x)" zusammenstellen). Es stehen die üblichen arithmetischen Operatoren und eine Vielzahl mathematischer Funktionen zur Verfügung. Einige Beispiele für solche Formeln sind:: Eine Reihe von Funktionen existiert \"paarweise\", wobei eine Funktion jedes Paars ein ``V`` vorangestellt hat (und die andere nicht). ``V``-Funktionen führen ihre Berechnung für eine Variable *als Ganzes* durch (d.h. innerhalb einer Spalte), während Nicht-``V``-Funktionen ihre Berechnung zeilenweise durchführen. Zum Beispiel erzeugt "MEAN(A, B)" den Mittelwert von ``A`` und ``B`` für jede Zeile. "VMEAN(A)" berechnet den Mittelwert *aller* Werte (bzw. Fälle oder Zeilen) innerhalb der Variablen ``A``. wird für jede Stufe von "Dose" ein separater Mittelwert berechnet. Jeder Wert in den Zeilen der berechneten Variablen entspricht dem Mittelwert von "Dose" für alle Messwerte innerhalb dieser Faktorstufe. Ein sehr verbreitetes Datei-Format für den Datenaustausch ist die Verwendung von Komma-separierten Werten (.csv oder .txt). Da diese Daten als einfache Textdatei gespeichert werden, und die Werte mit Kommas (oder ";", "|" usw.) getrennt werden, kann fast jedes Softwarepaket sie lesen und schreiben (und Sie können solche Dateien mit jedem Texteditor öffnen, um sich den Inhalt anzusehen). Ein Beispiel ist in der Abbildung zu sehen. Die erste Zeile enthält die Variablennamen und jede weitere Zeile einen Messpunkt (normalerweise die Daten einer Person). Wenn Sie Ihre Daten in einem Tabellenkalkulationsprogramm (z. B. Excel) haben, können Sie aus Ihren Daten eine CSV-Datei erstellen, indem Sie "Datei" → "Speichern unter ..." auswählen und "Kommagetrennt (CSV)" im Dropdown-Menü in der Nähe der Schaltfläche "Speichern unter" auswählen. Danach können Sie die CSV-Datei in jamovi öffnen. Zusätzlich unterstützen ``V``-Funktionen ein ``group_by``-Argument. Wenn unter ``group_by`` eine bestimmte Variable angegeben wird, wird für jede Faktorstufe dieser Variablen ein separater Wert berechnet. Im folgenden Beispiel: Die Namen der Spalten aus dem neuen Datensatz werden mit den ursprünglichen) Namen der vorhandenen Spalten abgeglichen. Löschen Sie alle Zeilen innerhalb des existierenden Datensatzes. Normalerweise werden Sie aber mit existierenden Datensätzen arbeiten. jamovi erlaubt Ihnen solche Datensätze, die in verschiedenen Formaten (CSV, Excel, LibreOffice, R, SPSS, Stata, SAS, JASP) vorliegen können, zu öffnen. Darüber hinaus gibt es in jamovi eine Reihe von Beispieldatensätzen. Um eine Datei zu öffnen, benutzen Sie das Menü (☰) in der oberen linken Ecke von jamovi, wählen Sie ``Open`` und dann ``This PC`` oder ``Data Library``, je nachdem, ob Sie eine auf Ihrem Computer gespeicherte Datei oder ein Beispiel öffnen möchten. Eine Übersicht mit kurzen, nicht-technischen Einführungen zur Durchführung der am häufigsten verwendeten statistischen Verfahren in jamovi finden Sie unter `jamovi-guide <jg_0_welcome.html>`__ (später in diesem Abschnitt). Analysen Analysen können über das Ribbon-Menü mit den Analysen ausgewählt werden. Wenn Sie eine Analyse auswählen, wird ein Options-Panel für diese Analyse angezeigt, in dem Sie in verschiedenen Eingabefeldern Variablen zuweisen oder Optionen auswählen können. Gleichzeitig werden die Ergebnisse für die Analyse im Ausgabe-Panel rechten Teil des jamovi-Fensters angezeigt und aktualisiert, wenn Sie Änderungen an den Optionen vornehmen. Eine weitere interessante Möglichkeit ist, mithilfe des `Rj-Moduls <https://blog.jamovi.org/2018/07/30/rj.html>`__, R-Code zu verwenden, um ihre Daten direkt in jamovi mithilfe von R-Funktion zu analysieren. Derzeit enthält die bereitgestellte R-Syntax nicht die notwendigen R-Funktionen für den Import der Daten unter R. Dies muss manuell durchgeführt werden. Es gibt viele Ressourcen, die erklären, wie Daten in R importiert werden, und wir empfehlen, dass Sie sich diese ansehen. Die meisten jamovi-Analysen erfordern, dass die Daten als *data frame* vorliegen. Zurzeit gibt es in Jamovi noch keine Möglichkeit, Dateien horizontal zu kombinieren (d.h. Variablen hinzuzufügen). Berechnete Variablen Berechnete Variablen erhalten ihren Wert, indem sie mit ihnen Berechnungen für andere Variablen durchgeführt werden. Berechnete Variablen können für verschiedene Zwecke eingesetzt werden. Hierzu gehören Transformationen (z.B. Logarithmierung) sowie die Berechnung von z-, Summen- oder invertierten Scores oder von Mittelwerten. Copy and Paste Daten-Variablen Filter-Variablen Filter-Variablen in jamovi erlauben Ihnen Zeilen herausfiltern, die nicht in Analysen einbezogen werden sollen. Auf diese Weise können Sie beispielsweise nur die Umfrageantworten von Personen einbeziehen, die ausdrücklich der Verwendung ihrer Daten zugestimmt haben, oder Sie können alle Linkshänder oder Personen die in einer experimentellen Aufgabe „unter dem Zufallsniveau“ liegen ausschließen? Sie können auch Fälle ausschließen, die extreme Werte aufweisen und z.B. mehr als 3 Standardabweichungen vom Mittelwert abweichen. Nach einem Dateiimport werden alle berechneten oder umkodierten Variablen, alle Filter sowie alle Analysen aktualisiert. Eine Video-Einführung zum Importieren von Daten und zu Analyse-Vorlagen in jamovi finden Sie unter diesem `Blog-Beitrag <https://blog.jamovi.org/2019/03/27/import.html>`__. Wenn jamovi eine Datei nicht korrekt öffnet, melden Sie das Problem bitte über unserem GitHub `Issue Tracker <https://github.com/jamovi/jamovi/issues>`__. Wir möchten unseren Datei-Import so robust wie möglich machen. Wenn keine neue Spalte mit einem Spaltennamen des vorhandenen Datensatzes übereinstimmt, bleiben diese Spalten leer. Wenn Sie entscheiden, dass Sie eine bestimmte Analyse nicht mehr benötigen, können Sie diese über das Kontextmenü im Analyse-Fenster entfernen. Hierfür klicken Sie mit der rechten Maustaste auf die Analyseergebnisse. Im sich öffnenden Menü wählen Sie ``Analysis`` und dann ``Remove`` um die Analyse zu entfernen. Der Import von Dateien ist über das Dateimenü (☰, oben links im jamovi-Fenster) möglich. Wenn Sie eine Datei zu einem vorhandenen Datensatz hinzufügen wollen, müssen Sie die folgenden Schritte durchführen. In jamovi werden Daten in einer Tabelle dargestellt, wobei jede Spalte eine „Variable“ darstellt und jede Zeile einen Messpunkt (normalerweise eine Person von der Daten erhoben wurden). In der Reihenfolge der Zeilen sind dies die Summe der Variablen ``A`` und ``B``, eine logarithmische Transformation (mit der Basis 10) der Variable ``len``, der Mittelwert der Variablen ``A`` und ``B``, sowie des z-Scores von ``Dose`` (mittels zweier verschiedener Berechnungsmethoden). Im Syntax-Modus funktionieren die Analysen weiterhin wie zuvor, aber jetzt wird R-Syntax erzeugt und es erfolgt eine Ausgabe als ASCII wie in einer R-Sitzung. Wie bei allen Ergebnisobjekten in jamovi können Sie mit der rechten Maustaste auf diese Elemente (einschließlich der R-Syntax) klicken und sie beispielsweise kopieren und in eine R-Sitzung einfügen. Es ist auch möglich, mehrere Dateien gleichzeitig zu importieren. Dies kann nützlich sein, wenn Sie beispielsweise mehrere Datensätze (bei denen jede Datei einen Teilnehmer darstellt) kombinieren wollen. Der Vorgang ist der gleiche wie beim oben beschriebenen Import einzelner Dateien, außer dass Sie beim Importieren mehrere Dateien auswählen. Sie können dies tun, indem Sie bei der Auswahl von Daten-Dateien die Strg- oder Umschalt-Taste gedrückt halten oder die Schaltfläche "Mehrfachauswahl" links-oben im Importdialogfeld verwenden. Es ist möglich, wie bei jeder anderen Tabellenkalkulation, mit der Eingabe von Werten in die jamovi-Daten-Tabelle zu beginnen. Eine umfassendere Einführung zu Filter-Variablen in jamovi finden Sie im folgenden `Blog-Beitrag <https://blog.jamovi.org/2018/04/25/jamovi-filters.html>`__. Import mehrerer Dateien Neue Variablen können über die Schaltfläche ``Add`` im Abschnitt ``Variables`` der Registerkarte ``Data`` in den Datensatz eingefügt oder an diesen angehängt werden. Die Schaltfläche ``Add`` ermöglicht auch das Hinzufügen von *berechneten Variablen* und *umkodierten Variablen*. Sobald ein Datensatz mit Filtern, berechneten Variablen, Transformationen und Analysen eingerichtet ist, möchten Sie manchmal die Daten aktualisieren. Dies kann verschiedene Gründe haben: Möglicherweise verfügen Sie über einen umfangreicheren oder bereinigten Datensatz, mit dem Sie die zuvor durchgeführten Analysen erneut anwenden möchten oder Sie führen ein Experiment durch, bei dem Sie eine Reihe von Teilnehmern testen und Sie müssen zu einem späteren Zeitpunkt die Daten eines zusätzlichen Teilnehmers analysieren. Durch den Import und das Hinzufügen zu einem vorhandenen Datensatz können Sie Ihre Analysen erneut ausführen, ohne alle Schritte zur Datenbereinigung und -analyse erneut ausführen zu müssen (sodass sich Ihre jamovi-Dateien ein wenig wie Skripte verhalten). Umkodierte Variablen Importieren von einzelnen Daten-Dateien Syntax-Modus Analyse-Vorlagen Analyse-Vorlagen in jamovi sind ein spezieller Dateityp, der mit Skript-Dateien in traditionellen Statistik-Programmen vergleichbar ist. Sie sind eine Möglichkeit, Datentypen, Berechnungen, Filter, Transformationen und Analysen im Voraus festzulegen. Sobald die Daten verfügbar sind, können sie in die Vorlage importiert werden, und die Vorlage wird entsprechend aktualisiert. Das Schöne an Analyse-Vorlagen ist, dass sie vollständig mit der bekannten Benutzeroberfläche spezifiziert sind und nicht mit einer „Syntax“ oder einem Code arbeiten müssen. Daten-Editor Die Filter in jamovi basieren auf dem Formelsystem, mit dem auch *berechnete Variablen* erzeugt werden. Mit diesem System lassen sich beliebig komplexe Formeln erstellen. Erste Schritte in jamovi Das Skalenniveau einer Variablen wird durch ein Symbol in der Kopfzeile der Spalte angezeigt. Beachten Sie, dass einige Kombinationen aus Datentyp und Skalenniveau keinen Sinn ergeben und jamovi nicht zulässt, dass solche Kombinationen ausgewählt werden. Die in jamovi am häufigsten verwendeten Variablen sind „Datenvariablen“. Diese Variablen enthalten einfach Daten, die entweder aus einer Datendatei geladen oder vom Benutzer eingegeben wurden. Datenvariablen können zu einem von drei Datentypen gehören: Die Spalten, deren Name nicht mit einer Spalte des Originaldatensatzes übereinstimmt, werden rechts (am Ende) des existierenden Datensatzes hinzugefügt. Die neuen Werte werden in die vorhandenen Spalten importiert, wobei der Datentyp und das Skalenniveau der Variablen des vorhandenen Datensatzes *beibehalten* wird. Der Variableneditor kann durch Klicken auf das ``Setup``-Icon in der Registerkarte ``Data``, durch Doppelklicken auf die Spaltenüberschrift oder durch Drücken von ``F3`` aufgerufen werden. Mit dem Variableneditor können Sie den Namen der Variablen und (für Daten-Variablen) den Datentyp, das Skalenniveau, die Reihenfolge der Faktorstufen und die für jede Faktorstufe angezeigte Bezeichnung ändern. Der Variableneditor kann durch Klicken auf den Schließpfeil oder durch erneutes Drücken von ``F3`` geschlossen werden. Darüber hinaus existiert eine Vielzahl weiterer Funktionen. Um eine Analyse-Vorlage zu speichern, wählen Sie im Dateimenü (☰) die Option ``Export`` und als Dateityp die Option ``jamovi template (.omt)``. Wenn Sie eine Vorlage öffnen, sehen Sie, dass sie Spalten, aber keine Zeilen enthält und dass alle Analyseergebnisse leer sind. Um die Vorlage zu verwenden, importieren Sie einen neuen Datensatz (oder neue Datensätze) mithilfe des oben beschriebenen Dateiimports. Die Daten werden aktualisiert, die Daten werden entsprechend der festgelegten Bedingungen gefiltert, berechnete Variablen erhalten entsprechend der Berechnungsvorschriften (Formeln) ihren Wert und schließlich werden mit diesen Einstellungen und Variablen die Analyseergebnisse erzeugt. Links befindet sich die Tabelle mit Ihren Rohdaten (wie in einer Tabellenkalkulation), rechts werden die Ergebnisse der statistischen Tests angezeigt. In der Mitte befindet sich ein Balken, der diese beiden Bereiche trennt. Dieser Balken kann nach links oder rechts gezogen werden, um die Größe der beiden Bereiche (Tabelle und Ausgabe) zu ändern. Es ist ebenfalls möglich, Variablen zu rekodieren. Weitere Informationen finden Sie in diesem `Blog-Beitrag <https://blog.jamovi.org/2018/10/23/transforming-variables.html>`__. Daten importieren Beim ersten Start von jamovi wird eine Benutzeroberfläche angezeigt, die ungefähr so aussieht. Wenn Sie mehrere Dateien wie diese importieren, werden sie vertikal kombiniert, wobei die Zeilen der zweiten Datei unter der ersten, die Zeilen der dritten Datei unter der zweiten usw. eingefügt werden. Eine zusätzliche Spalte mit dem Namen ``source`` wird erstellt, in der angegeben wird, aus welcher Datei jede Zeile stammt. Dies kann nützlich sein, wenn Sie jeden die Daten für verschiedene Teilnehmer „aufteilen“ oder „gruppieren“ müssen. Diese Spalte kann besonders nützlich sein, um sie mit dem Argument ``group_by`` für die oben beschriebenen ``V``-Funktionen zu verwenden. Wenn Sie mit einer leeren Tabelle beginnen und Werte eingeben, ändern sich die Daten- und Kennzahlentypen automatisch in Abhängigkeit von den von Ihnen eingegebenen Daten. Dies ist ein guter Weg, um ein Gefühl dafür zu bekommen, welche Variablentypen zu welchen Datentypen gehören. In ähnlicher Weise leitet jamovi beim Öffnen einer Datendatei den Variablentyp aus den Daten in jeder Spalte ab. In beiden Fällen kann es sein, dass die automatische Bestimmung nicht korrekt ist. Dann kann es erforderlich sein, den Datentyp und das Skalenniveau manuell mit dem Variableneditor zu ändern. Wenn Sie das Setzen der Einstellungen für die Analyse beendet haben, können Sie das Eingabefenster mit den Analyseoptionen schließen, indem Sie auf den Pfeil oben rechts im Eingabefenster klicken. Wenn Sie zu diesen Optionen zurückkehren möchten, klicken Sie auf die Ergebnisausgabe. Auf diese Weise können Sie zu jeder Analyse zurückkehren, die Sie (oder eine andere Person) zuvor erstellt haben. ``Decimal`` ``Integer`` ``Nominal`` and ``Ordinal`` sind für Variablen mit nominalem bzw. ordinalem Skalenniveau. ``Continuous`` kennzeichnet Variablen die numerische Werte enthalten und die ein *Intervall*- oder *Verhältnis*-Skalenniveau aufweisen ähnlich der Einstellung ``Scale`` in SPSS). Der Kennzahlentyp \"ID\" ist nur in jamovi verfügbar. Es kennzeichnet Variablen, bei denen es wenig Sinn ergibt, sie zu analysieren, Dabei handelt es sich z.B. um Personennamen oder eine Teilnehmer-ID. Der Vorteil dieses Variablentyps besteht darin, dass jamovi intern keine Liste von Faktorstufen speichern muss, was die Leistung beim Analysieren sehr großen Datenmengen verbessern kann. ``Text`` ``V``-Funktionen außerdem existeren vier verschiedene Skalenniveaus: jamovi bietet auch einen „R-Syntax“-Modus. In diesem Modus erzeugt jamovi R-Code, um die entsprechende Analyse in R durchzuführen. Um in den Syntax-Modus zu wechseln, wählen Sie das Anwendungsmenü oben rechts in jamovi (⋮) und aktivieren Sie dort das Kontrollkästchen „Syntax mode“. Sie können den Syntax-Modus verlassen, indem Sie ein zweites Mal auf das Kontrollkästchen klicken (und den "Tick" entfernen). jamovi erzeugt Tabellen und Diagramme die entsprechend den Vorgaben des APA-Stils formatiert sind. Diese lassen sich einfach kopieren und einfügen, beispielsweise in ein Dokument oder in eine E-Mail an einen Kollegen. Um die Ergebnisse zu kopieren, klicken Sie mit der rechten Maustaste auf das gewünschte Ergebnis-Objekt und wählen im Kontext-Menü den Teil der Analyse aus, den Sie kopieren möchten. Das heißt, dass sie über das Kontext-Menü auswählen können, ob Sie nur das Bild, nur die Tabelle oder die gesamte Analyse kopieren möchten. Wenn Sie \"Copy\" auswählen, wird der Inhalt in die Zwischenablage kopiert und kann wie gewohnt in das andere Programm eingefügt werden. Analyse-Vorlagen sind außerdem eine großartige Möglichkeit, Studenten oder Kollegen, die weniger Erfahrung mit statistischen Analysen haben, dabei zu helfen, solche Analysen selbst durchzuführen. |continuous| ``Continuous`` (Variable mit kontinuierlichem Skalenniveau) |id| ``ID`` (ID-Variable) |nominal| ``Nominal`` (Variable mit nominalem Skalenniveau) |ordinal| ``Ordinal`` (Variable auf ordinalen Skalenniveau) 