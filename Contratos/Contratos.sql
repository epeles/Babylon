SELECT DISTINCT *,
case when SP_CONJUR in (select sp_conjur from item where sp_conjur<>'' group by sp_conjur having count(*)=1) then SP_CONJUR
else '' end ICJ,
case when TXTSH in (select TXTSH from item where TXTSH<>'' group by TXTSH having count(*)=1) then TXTSH
else '' end ICJnomask,
case when substr(SP_CONADI,-1,1)='-' then '-' || replace(SP_CONADI,'-','')
else SP_CONADI end conadi,
substr(SP_CONADI,-1,1)='-' conadiNEG,
case when substr(SP_SACONT,-1,1)='-' then '-' || replace(SP_SACONT,'-','')
else SP_SACONT end SACONT,
substr(SP_SACONT,-1,1)='-' SACONTNEG,
splitstr(SP_PERCS,'.',1) || '.' || substr(splitstr(SP_PERCS,'.',2),1,1) percs
FROM 
item 
ORDER BY 
SP_CNTRAT