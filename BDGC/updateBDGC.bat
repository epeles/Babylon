cls
set TMP=d:\temp
set TEMP=d:\temp
d:
cd "D:\Babylon-Enterprise Server\Projects\BDGC\"
del Extractor_Log.txt
del BDGC.db
"D:\Babylon-Enterprise Server\Builder\Glossary Extractor\bin\GLSExtractor.exe" -build "pre-BDGC.ini"
"D:\Babylon-Enterprise Server\Builder\Glossary Extractor\bin\GLSExtractor.exe" -build "BDGC.ini" -installlm