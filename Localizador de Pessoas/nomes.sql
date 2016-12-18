select 
	chave,
	trim(termo) termo,
	trim(nome) nome,
	dept,
	dept_url
from 
	names
where 
	trim(termo)<>'' AND
	trim(termo) not in
		(
			select trim(termo) from names group by trim(termo) having count(*)>900
		)
group by 
	chave,
	trim(termo),
	trim(nome),
	dept,
	dept_url
order by
		trim(termo),
		nome,
		dept