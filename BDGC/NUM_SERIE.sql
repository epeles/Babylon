select distinct ELM_NUMERO_DE_SERIE,elm_id_do_ic from BDGC where (ELM_NIVEL_3 = 'SERVIDOR' or ELM_NIVEL_3 = 'SERVER') and ELM_NUMERO_DE_SERIE in
(
select ELM_NUMERO_DE_SERIE from
(
select distinct ELM_NUMERO_DE_SERIE,elm_id_do_ic from BDGC
where ELM_NUMERO_DE_SERIE<>'' and ELM_NUMERO_DE_SERIE <> 'N/A' and ELM_NUMERO_DE_SERIE <> 'NAO IDENTIFICADO'
)
group by
ELM_NUMERO_DE_SERIE
having
count(*)>1
)
order by
ELM_NUMERO_DE_SERIE,elm_id_do_ic