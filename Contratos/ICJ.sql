SELECT DISTINCT 
SP_CONJUR, 
SP_CNTRAT, 
SP_TXCON,
ORDER_CURR,
SP_CONVLD, 
TXTMD,
TXTSH 
FROM 
item 
where 
SP_CONJUR in (select sp_conjur from item where sp_conjur<>'' group by sp_conjur having count(*)>1)
ORDER BY 
SP_CONJUR, 
SP_CNTRAT,
SP_TXCON, 
ORDER_CURR,
SP_CONVLD,
TXTMD