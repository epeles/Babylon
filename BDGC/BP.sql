select distinct ELM_BP,elm_id_do_ic from BDGC where (ELM_NIVEL_3 = 'SERVIDOR' or ELM_NIVEL_3 = 'SERVER') and ELM_BP in
(
select ELM_BP from
(
select distinct ELM_BP,elm_id_do_ic from BDGC
where ELM_BP<>'' and ELM_BP <>'NAO IDENTIFICADO' and ELM_BP <>'N/A' and ELM_BP <>'UNICO'
)
group by
ELM_BP
having
count(*)>1
)
order by
ELM_BP,elm_id_do_ic