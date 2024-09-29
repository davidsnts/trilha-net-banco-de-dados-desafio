--1
SELECT nome,
       ano
FROM   filmes

--2
SELECT nome,
       ano,
       duracao
FROM   filmes
ORDER  BY ano ASC

--3
SELECT nome,
       ano,
       duracao
FROM   filmes
WHERE  nome = 'De Volta para o futuro'

--4
SELECT nome,
       ano,
       duracao
FROM   filmes
WHERE  ano = 1997

--5
SELECT nome,
       ano,
       duracao
FROM   filmes
WHERE  ano > 2000

--6
SELECT nome,
       ano,
       duracao
FROM   filmes
WHERE  duracao BETWEEN 100 AND 150
ORDER  BY duracao ASC

--7 
SELECT ano,
       Count(ano) AS Quantidade
FROM   filmes
GROUP  BY ano
ORDER  BY Count(ano) DESC

--8
SELECT primeironome,
       ultimonome,
       genero
FROM   atores
WHERE  genero = 'M'

--9
SELECT primeironome,
       ultimonome,
       genero
FROM   atores
WHERE  genero = 'F'
ORDER  BY primeironome

--10
SELECT nome,
       genero
FROM   filmes F
       JOIN filmesgenero FG
         ON f.id = fg.idfilme
       JOIN generos G
         ON G.id = fg.idgenero

--11
SELECT nome,
       genero
FROM   filmes F
       JOIN filmesgenero FG
         ON f.id = fg.idfilme
       JOIN generos G
         ON G.id = fg.idgenero
WHERE  g.genero = 'Mistério'

--12
SELECT F.nome,
       A.primeironome,
       A.ultimonome,
       EF.papel
FROM   filmes F
       JOIN elencofilme EF
         ON F.id = EF.idfilme
       JOIN atores A
         ON A.id = EF.idator 