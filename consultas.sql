--select * from musicas;

--select id, compositor from musicas;

--select distinct composicao, compositor from musicas

--select * from musicas where tempo > 200;

--select * from musicas where tempo > 200 AND tempo < 400;

--select * from musicas where tempo between 200 and 400;

--select * from musicas where compositor = 'Schubert' or compositor = 'Bach';

--select * from musicas where compositor is null;

--select * from musicas where compositor is not null;

--select * from musicas limit 3;

--select * from musicas offset 3;

--select * from musicas limit 3 offset 4;

--select * from musicas offset 12 limit 20;

--select * from musicas limit 10 offset 10;

--select * from musicas order by id desc limit 10;

--select * from musicas where compositor = 'Schubert' order by id desc limit 20 offset 10;

--select * from musicas order by compositor asc;

--select * from musicas order by compositor desc; 

--select * from musicas where composicao like '% in G minor';

select compositor, composicao, tempo from musicas where tempo between 60*2 and 60*5 and compositor <> 'Mozart';