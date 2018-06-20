select distinct ELM_SIGLA,elm_id_do_ic from BDGC where ELM_NIVEL_1 = 'SOFTWARE' and ELM_SIGLA in
(
select ELM_SIGLA from
(
select distinct ELM_SIGLA,elm_id_do_ic from BDGC
where ELM_SIGLA<>'' and ELM_SIGLA <> 'N/A' and ELM_SIGLA <> 'n/a' and ELM_SIGLA <> 'n\a'
)
group by
ELM_SIGLA
having
count(*)>1
)
order by
ELM_SIGLA,elm_id_do_ic