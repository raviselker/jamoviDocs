.. sectionauthor:: `Sebastian Jentschke <https://www.uib.no/en/persons/Sebastian.Jentschke>`_

==================================================
Write files to be used with jamovi (``write_omv``)
==================================================

Description
-----------

Write files to be used with the statistical spreadsheet `jamovi
<www.jamovi.org>`_.

Usage
-----

.. code-block:: r

   jmvWrite(dtaFrm = NULL, fleNme = "")

Arguments
---------

+------------+--------------------------------------------------------+
| ``dtaFrm`` | Data frame to be exported (default = NULL)             |
+------------+--------------------------------------------------------+
| ``fleNme`` | Name / position of the output file to be generated     |
|            | ("FILENAME.omv"; default = "")                         |
+------------+--------------------------------------------------------+
