create temp view names as

select distinct * from
(
select 
chave, nome, Lotacao Dept, REPLACE(Lotacao, '/', '-') Dept_URL ,
A||' '||B TERMO
from
fortra
 
UNION

select 
chave, nome, Lotacao Dept, REPLACE(Lotacao, '/', '-') Dept_URL ,
A||' '||B||' '||C TERMO
From
fortra
 
UNION

select 
chave, nome, Lotacao Dept, REPLACE(Lotacao, '/', '-') Dept_URL ,
A||' '||B||' '||C||' '||D TERMO
From
fortra
 
UNION

select 
chave, nome, Lotacao Dept, REPLACE(Lotacao, '/', '-') Dept_URL ,
A||' '||B||' '||C||' '||D||' '||E TERMO
From
fortra
 
UNION

select 
chave, nome, Lotacao Dept, REPLACE(Lotacao, '/', '-') Dept_URL ,
A||' '||C TERMO
From
fortra
 
UNION

select 
chave, nome, Lotacao Dept, REPLACE(Lotacao, '/', '-') Dept_URL ,
A||' '||D TERMO
From
fortra
 
UNION

select 
chave, nome, Lotacao Dept, REPLACE(Lotacao, '/', '-') Dept_URL ,
A||' '||E TERMO
From
fortra
 
UNION

select 
chave, nome, Lotacao Dept, REPLACE(Lotacao, '/', '-') Dept_URL ,
A TERMO
From
fortra

UNION

select 
chave, nome, Lotacao Dept, REPLACE(Lotacao, '/', '-') Dept_URL ,
B TERMO
From
fortra

UNION

select 
chave, nome, Lotacao Dept, REPLACE(Lotacao, '/', '-') Dept_URL ,
C TERMO
From
fortra

UNION

select 
chave, nome, Lotacao Dept, REPLACE(Lotacao, '/', '-') Dept_URL ,
D TERMO
From
fortra

UNION

select 
chave, nome, Lotacao Dept, REPLACE(Lotacao, '/', '-') Dept_URL ,
E TERMO
From
fortra
)