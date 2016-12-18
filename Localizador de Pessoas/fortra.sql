select
	CHAVE, 
	MATRICULA_IDENT,
	VINCULO,
	COR_CRACHA,
	MATRICULA_IDENT_VISIVEL,
	UN_INTER_EMPRESA,
	case 
		when vinculo='C' and MATRICULA_IDENT_VISIVEL='S' then 'Identificador:'
		when vinculo='E' and MATRICULA_IDENT_VISIVEL='S' then 'Identificador:'
		when vinculo='F' and MATRICULA_IDENT_VISIVEL='S' then 'Matrícula:'
		when vinculo='I' and MATRICULA_IDENT_VISIVEL='S' and MATRICULA_IDENT<>'' then 'Matrícula:'
		when vinculo='T' and MATRICULA_IDENT_VISIVEL='S' then 'Matrícula:'
		else 'X' 
	end Matricula_Title,	
	cargo, 
	NOME_ORGAO,
    SIGLA_ORGAO "Lotacao",
	case 
		when vinculo='C' then 'Área de atuação:'
		when vinculo='E' then 'Área de atuação:'
		when vinculo='F' then 'Lotação:'
		when vinculo='I' then 'Lotação:'
		when vinculo='T' then 'Lotação:'
		else 'X' 
	end Lotacao_Title,	
	funcao, 
	NOME, 
	trim(substr(nome||' ',1,instr(nome||' ',' ',1,1))) A,
	trim(substr(nome||' ',instr(nome||' ',' ',1,1),instr(nome||' ',' ',1,2)-instr(nome||' ',' ',1,1))) B,
	trim(substr(nome||' ',instr(nome||' ',' ',1,2),instr(nome||' ',' ',1,3)-instr(nome||' ',' ',1,2))) C,
	trim(substr(nome||' ',instr(nome||' ',' ',1,3),instr(nome||' ',' ',1,4)-instr(nome||' ',' ',1,3))) D,
	trim(substr(nome||' ',instr(nome||' ',' ',1,4),instr(nome||' ',' ',1,5)-instr(nome||' ',' ',1,4))) E,
	case
		when vinculo='C' then 'Empresa de atuação:'
		when vinculo='F' then 'Empresa:'
		when vinculo='E' then 'Empresa:'
		when vinculo='T' then 'Cedido para:'
		when vinculo='I' then 'Expatriado para:'
		else 'X' 
	end empresa_title,
	EMPRESA_CONTRATADA,
	EMPRESA_ORIGEM,
	EMPRESA_ACESSO, 
	LINK_FOTO,
	PAIS_EMPRESA_ACESSO,
	TIPO_TELEFONE "tipo_tel", 
	TELEFONE "Ramal", 
	case
		when TIPO_TELEFONE='1' then 'Externo:'
		when TIPO_TELEFONE='7' then 'Ramal:'
		when TIPO_TELEFONE='99' then 'Tel. de contato:'
		else 'X' 
	end Ramal_Title,
    NOME_INTERNET "E-mail", 
	case 
		when vinculo='C' then 'Local da prestação de serviço:'
		when vinculo='E' then 'Local do estágio:'
		when vinculo='F' then 'Imóvel:'
		when vinculo='I' then 'Imóvel:'
		when vinculo='T' then 'Imóvel:'
		else 'X' 
	end imovel_title,
	SIGLA_IMOVEL,
	RUA_IMOVEL,
	CIDADE_IMOVEL,
	COMPL_NUMERO_IMOVEL,
	BAIRRO_IMOVEL,
	ESTADO_IMOVEL
from 
VW_LOCALIZADOR_PESSOAS
Order By
chave