
-- 1
SELECT 
	Nome, 
	Ano 
FROM Filmes

-- 2
SELECT * FROM Filmes
Order by Ano

-- 3
SELECT * FROM Filmes
WHERE Nome = 'De Volta para o Futuro'

-- 4
SELECT * FROM Filmes
WHERE Ano = 1997

-- 5
SELECT * FROM Filmes
WHERE Ano > 2000

-- 6
SELECT * FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
Order by Duracao

-- 7
SELECT 
	Ano,
	COUNT(*) as Quantidade	
FROM Filmes 
Group by Ano
Order by Quantidade desc

-- 8
SELECT * FROM Atores 
WHERE Genero = 'M'

-- 9 
SELECT * FROM Atores
WHERE Genero = 'F'
Order by PrimeiroNome

-- 10
SELECT
	f.Nome,
	g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id

-- 11
SELECT
	f.Nome,
	g.Genero
FROM Filmes f
JOIN FilmesGenero fg ON f.Id = fg.IdFilme
JOIN Generos g ON fg.IdGenero = g.Id
WHERE Genero = 'Mistério'

-- 12
SELECT 
	f.Nome,
	a.PrimeiroNome,
	a.UltimoNome,
	ef.Papel
FROM Filmes f
JOIN ElencoFilme ef ON f.Id = ef.IdFilme
JOIN Atores a ON ef.IdAtor = a.Id
