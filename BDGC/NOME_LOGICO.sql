select distinct ELM_NOME_LOGICO,elm_id_do_ic from BDGC where ELM_NOME_LOGICO in
(
select ELM_NOME_LOGICO from
(
select distinct ELM_NOME_LOGICO,elm_id_do_ic from BDGC
where ELM_NOME_LOGICO<>''
)
group by
ELM_NOME_LOGICO
having
count(*)>1
)
order by
ELM_NOME_LOGICO,elm_id_do_ic