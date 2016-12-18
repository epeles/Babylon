cls
d:
cd "D:\Babylon-Enterprise Server\projects\controlm"
dir
del control_m.db
del Extractor_Log.txt
"D:\Babylon-Enterprise Server\Builder\Glossary Extractor\bin\GLSExtractor.exe" -build pre-control_m1.ini
"D:\Babylon-Enterprise Server\Builder\Glossary Extractor\bin\GLSExtractor.exe" -build control_m.ini
