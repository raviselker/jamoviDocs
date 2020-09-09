��                          �    ;   �  D   �  0   -  '   ^  n   �  �   �  i   z  �   �  W   �  J     t   S  �  �  V   O	  �   �	  ;   9
  �   u
  )   /  �   Y  E   �  �   (  H   �  �   !  e   �  6     �   F  �   �  I   �  K   �  �   I  �  �  �  �  N     N   m  �   �  B   Q  �   �  �     �   �  �   K  x   =  n   �  �   %  �    p   �  �   R  I     �   [  C   D  �   �  v   0   �   �   Q   _!  �   �!  �   U"  <   �"  �   #  9  
$  x   D%  b   �%  �    &   :red:`PLEASE NOTE: If you already filtered cases, the lines with filtered cases are not included and the line numbers when using the R-scripts get wrong. Open the filter settings by either double-clicking on the header line of the filter variable or use the funnel-symbol in the bottom-left corner of the jamovi window (note that you can only see it, if you selected the tab “Data”) and deactivate the filter.` How do I create a filter variable and use it for selection? How to manually create a variable for selecting / deselecting cases? based on the Mahalanobis distance (multivariate) based upon the IQR (like in a box plot) based upon z-scores (the absolute value should be larger 3.3; this equals to a probability of 0.1% = 1 / 1000) briefly check how many participants are contained in your file by going to the last line of your data set, remember this line number copy the column with the ``1`` you just created to jamovi and paste it into the variable you just created for 1., there exists a function in jamovi (see next bullet point), for 2. and 3. you have to use R-code (decribed two bullet point below); for 2. you could also do it visually (three bullet points below) go to the first column (if there are filter variables, to the first column after those) in order to access functions, press the ``fx`` icon in the filter settings now you can de-select case by changing them ``1`` to ``0`` (and also select them again by changing ``0`` into ``1``) now, we have to to a little bit of magic in Excel, LibreOffice Calc or `Google Sheets <https://docs.google.com/spreadsheets>`__: open one of these programs, write ``1`` in the first and the second line of an empty spreadsheet, mark these two lines and then use the little black marker bottom right to drag the ones until you reached the number of participants in your data set within jamovi obviously you have to adjust ``[VARIABLE NAME]`` to the name of your selected variable open the ``Data`` tab and select ``Filter`` (either by using the symbol in the icon bar or the one in the bottom-left corner of the jamovi window) open the ``Data`` tab so that you see your data spreadsheet open the filter settings (either by using the symbol in the icon bar or the funnel-icon in the bottom-left corner of the jamovi window) and either change an existing filter with adding: or create a new filter with just writing: right-click on the header line in that column, choose ``Add variable`` in the menu that opens, and then ``Data Variable`` → ``Insert`` the filter conditions can be combined using boolean ``and`` / ``or``: the first code example does this based upon the interquartile range (doing the same with code that you visually do with box plots; remember to adjust the variable names in VL) the output from those scripts tells you which lines you should de-select the second code example detects multivariate outliers based upon the Mahalanobis distance (remember to adjust the variable names in VL) there also is a switch where you can activate or deactivate the filter (see the comment in red below) there are three large approaches, to exclude outliers: you can also de-select cases by setting limits to the values of variables (after visually checking the box-plots under ``Descriptives``): you can create a select variable (how to do that is `described below <#how-to-manually-create-a-variable-for-selecting-deselecting-cases>`__), use R-scripts to find outliers and mark those outliers in the variable you created: you can either use an function-based selection (e.g., based on z-scores): you close the filter settings by pressing the arrow in the top-right corner you use the scripts within the `Rj editor <jamovi-module_Rj>`__, just copy-and-paste them and run them by hitting the ►-button (the little green triangle) Project-Id-Version:  jamovi
Report-Msgid-Bugs-To: 
POT-Creation-Date: 2020-09-10 00:26+0200
PO-Revision-Date: 2020-08-18 12:09+0000
Last-Translator: Sebastian Jentschke, 2020
Language: de
Language-Team: German (https://www.transifex.com/jamovi/teams/111618/de/)
Plural-Forms: nplurals=2; plural=(n != 1)
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Generated-By: Babel 2.8.0
 :red:`BITTE BEACHTEN SIE: Wenn Sie bereits Fälle gefiltert haben, sind die Zeilen mit gefilterten Fällen nicht enthalten und die Zeilennummern, welche von den R-Skripten ausgegeben werden, sind dadurch falsch. Daher ist es notwendig, dass Sie vor dem Ausführen der Skripte die Filtereinstellungen öffnen und deaktivieren Sie den Filter. Öffnen Sie die Einstellungen entweder indem Sie auf die Kopfzeile der Filtervariablen doppelklicken oder indem sie das Trichtersymbol in der unteren linken Ecke des jamovi-Fensters verwenden (beachten Sie, dass Sie das Trichtersymbol nur dann sehen können, wenn Sie die Registerkarte „Data“ ausgewählt haben).` Wie erstelle ich eine Filtervariable und verwende sie zur Auswahl von Fällen? Wie erstelle ich manuell eine Variable zum Auswählen / Abwählen von Fällen? basierend auf der Mahalanobis-Distanz (dies ist ein multivariates Verfahren, dass den Abstand aller Prediktorvariablen gleichzeitig berücksichtigt) basierend auf dem IQR (Inter-Quartil-Range; wie bei einem Boxplot) basierend auf z-Scores (wenn der absolute Wert größer als 3,3 ist; dies entspricht einer Wahrscheinlichkeit von 0,1% = 1/1000) überprüfen Sie kurz, wie viele Teilnehmer in Ihrer Datei enthalten sind, indem Sie zur letzten Zeile Ihres Datensatzes gehen und merken Sie sich diese Zeilennummer kopieren Sie die Spalte mit ``1``, die Sie gerade erstellt haben, in jamovi und fügen Sie sie diese Werte in die gerade erstellte Variable ein für 1. existiert eine Funktion in jamovi (siehe nächster Aufzählungspunkt), für 2. und 3. müssen Sie R-Code verwenden (zwei Aufzählungspunkte unten beschrieben); für 2. können Sie dies auch visuell tun (drei Aufzählungspunkte unten) gehen Sie zur ersten Spalte (wenn Sie bereits Filtervariable erstellt haben, zur ersten Spalte nach den Filtervariablen) um auf (Rechen-)Funktionen zugreifen zu können, drücken Sie in den Filtereinstellungen auf das Symbol ``fx`` nun können Sie einzelne Fälle / Teilnehmer auswählen, indem Sie die Werte in der Spalte für den entsprechenden Fall von ``1`` in ``0`` ändern (oder den Fall wieder einschließen, indem Sie den Wert von ``0`` in ``1`` ändern) nun müssen Sie ein wenig in Excel, LibreOffice Calc oder `Google Sheets <https://docs.google.com/spreadsheets>`__ «zaubern»: Öffnen Sie eines dieser Programme, schreiben Sie ``1`` in die erste und zweite Zeile einer leeren Tabelle, markieren Sie diese beiden Zeilen und verwenden Sie dann die kleine schwarze Markierung unten rechts, um die Werte in den Zellen automatisch zu ergänzen, bis Sie die Anzahl der Teilnehmer in Ihrem Datensatz in jamovi erreicht haben natürlich müssen Sie dabei ``[VARIABLE NAME]`` mit dem Namen der von Ihnen erstellten Auswahlvariable ersetzen öffnen Sie die Registerkarte ``Data`` und wählen Sie ``Filter`` (entweder mithilfe des Symbols in der Symbolleiste oder des Trichter-Symbols in der unteren linken Ecke des jamovi-Fensters) öffnen Sie die Registerkarte ``Data``, damit Sie Ihre Datentabelle sehen öffnen Sie die Filtereinstellungen (entweder mithilfe des Symbols in der Symbolleiste oder des Trichtersymbols in der linken unteren Ecke des jamovi-Fensters) und ändern Sie entweder einen vorhandenen Filter durch Hinzufügen von: oder erstellen Sie einen neuen Filter, indem Sie einfach schreiben: klicken Sie mit der rechten Maustaste auf die Kopfzeile dieser Spalte, wählen Sie im sich öffnenden Menü ``Add variable`` und dann ``Data Variable`` → ``Insert``. die Filterbedingungen können durch die Verwendung der Schlüsselworte ``and`` / ``or`` miteinander kombiniert werden: das erste Codebeispiel basiert auf dem Interquartilbereich (denken Sie daran, die Variablennamen in VL anzupassen; der R-Code ist ein Äquivalent zu dem, was Box-Plots visualisieren): die Ausgabe dieser R-Skripte zeigt Ihnen, welche Zeilen Sie deselektieren sollten das zweite Codebeispiel detektiert multivariate Ausreißer basierend auf der Mahalanobis-Distanz (denken Sie auch hier daran, die Variablennamen in VL anzupassen): es gibt auch einen Schalter, mit dem Sie den Filter aktivieren oder deaktivieren können (siehe den Kommentar in rot weiter unten) Drei wichtige Ansätze, um Ausreißer auszuschließen, sind: außerdem können Sie Fälle auswählen, indem Sie Grenzwerte (Minima oder Maxima) für die Werte von Variablen festlegen (die erforderlichen Grenzwerte lassen sich aus den Box-Plots oder mit den Werten in der ``Descriptives``-Tabelle ablesen): Sie können eine Auswahlvariable erstellen (wie das geht, ist `weiter unten <#how-to-manually-create-a-variable-for-selecting-deselecting-cases>`__ beschrieben). Danach können Sie R-Skripte verwenden, um Ausreißer zu identifizieren und diese Ausreißer in der von Ihnen erstellten Auswahlvariablen zu markieren: Sie können entweder eine Auswahl basierend auf jamovi's Berechnungsfunktionen verwenden (z. B. basierend auf z-Scores): sie schließen die Filtereinstellungen, indem Sie auf den Pfeil in der oberen rechten Ecke klicken Sie verwenden die Skripte im `Rj-Editor <jamovi-module_Rj>`__, indem Sie diese kopieren einfügen und ausführen. Das Ausführen geschieht, indem Sie auf die Schaltfläche ► (das kleine grüne Dreieck) klicken. 