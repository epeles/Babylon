select 
*,
case
when ELM_NOME_LOGICO in 
(select ELM_NOME_LOGICO  from (select distinct ELM_NOME_LOGICO,elm_id_do_ic from BDGC where ELM_NOME_LOGICO<>'')
group by ELM_NOME_LOGICO having count(*)=1) 
then ELM_NOME_LOGICO
else ''
end NOME_LOGICO,

case
when ELM_BP in 
(select ELM_BP  from (select distinct ELM_BP,elm_id_do_ic from BDGC where ELM_BP<>'')
group by ELM_BP having count(*)=1) and (ELM_NIVEL_3='SERVER' or ELM_NIVEL_3='SERVIDOR')
then ELM_BP
else ''
end BP,

case
when ELM_NUMERO_DE_SERIE in 
(select ELM_NUMERO_DE_SERIE  from (select distinct ELM_NUMERO_DE_SERIE,elm_id_do_ic from BDGC where ELM_NUMERO_DE_SERIE<>'')
group by ELM_NUMERO_DE_SERIE having count(*)=1) and (ELM_NIVEL_3='SERVER' or ELM_NIVEL_3='SERVIDOR')
then ELM_NUMERO_DE_SERIE
else ''
end NUM_SERIE,

case
when ELM_SIGLA in 
(select ELM_SIGLA  from (select distinct ELM_SIGLA,elm_id_do_ic from BDGC where ELM_SIGLA<>'')
group by ELM_SIGLA having count(*)=1) and ELM_NIVEL_2='APLICACAO DE NEGOCIO'
then ELM_SIGLA
else ''
end SIGLA

from 
BDGC 
Order By 
elm_id_do_ic,rtype,ID_DO_IC_R desc,rr DESC