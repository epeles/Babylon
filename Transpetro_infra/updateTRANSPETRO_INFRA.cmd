cls
d:
cd "D:\Babylon-Enterprise Server\Projects\Transpetro_infra\"
del Extractor_Log.txt
del infra.db
"D:\Babylon-Enterprise Server\Builder\Glossary Extractor\bin\GLSExtractor.exe" -build Transpetro_infra1.ini
"D:\Babylon-Enterprise Server\Builder\Glossary Extractor\bin\GLSExtractor.exe" -build Transpetro_infra2.ini