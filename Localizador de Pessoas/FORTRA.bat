cls
d:
cd "D:\Babylon-Enterprise Server\projects\FORTRA"
del fortra.db
del fortratemp.rs
del Extractor_Log.txt
"D:\Babylon-Enterprise Server\Builder\Glossary Extractor\bin\GLSExtractor.exe" -build pre-fortra1.ini
"D:\Babylon-Enterprise Server\Builder\Glossary Extractor\bin\GLSExtractor.exe" -build fortra.ini