% hechos que muestran que categoria de peliculas les gusta ver.
ve_pelicula(roberto,suspenso).
ve_pelicula(jaanai,suspenso).
ve_pelicula(abimael,suspenso).
ve_pelicula(leonardo,romance).
ve_pelicula(miguel,terror).
% hechos que expresan el tipo de musica que escuchan.
escucha_musica(abelino,reggae).
escucha_musica(jose,rock).
escucha_musica(izmucaneth,reggae).
escucha_musica(rolando,rock).
escucha_musica(maldonado,regional).
% hechos que expresal el consumo al ver peliculas.
consume(roberto,palomitas). 
consume(jaanai,palomitas). 
consume(abimael,maruchan). 
consume(leonardo,maruchan). 
consume(miguel,ensalada). 
% hechos que expresan el tiempo libre.
tiempo_libre(roberto,no).
tiempo_libre(jaanai,no).
tiempo_libre(abimael,no).
tiempo_libre(leonardo,no).
tiempo_libre(miguel,no).
% hechos que expresan si usan audifonos al ver peliculas.
usa_audifonos(roberto,no).
usa_audifonos(jaanai,no).
usa_audifonos(abimael,no).
usa_audifonos(leonardo,no).
usa_audifonos(miguel,no).
% hechos que expresan si escuchan musica con audifonos.
tiene_audifonos(abelino,no).
tiene_audifonos(jose,no).
tiene_audifonos(izmucaneth,si).
tiene_audifonos(rolando,si).
tiene_audifonos(miguel,no).
%hechos que expresan si tienen spotify.
tiene_netflix(roberto,si).
tiene_netflix(jaanai,si).
tiene_netflix(abimael,si).
tiene_netflix(leonardo,no).
tiene_netflix(miguel,si).
%hechos que expresan si tienen spotify.
tiene_spotify(abelino,no).
tiene_spotify(jose,si).
tiene_spotify(izmucaneth,no).
tiene_spotify(maldonado,no).
%reglas
% 1 regla que indica quienes prefieren ver la pelicula.
ve_pelicula(x,f(suspenso,somande,terror)).

% 2 regla que iddica quienes escucham musica.
escucha_musica(x,f(reggae,rock,regional)).

% 3 regla que indica a alguien que ve peliculas de suspenso, disfruta verlas con palomitas, tiene una cunta de netflix.
tarde_perfecta(x):- ve_pelicula(X,suspenso),consume(X,palomitas),tiene_netflix(X,si),tiempo_libre(X,si).

% 4 regla que indica alguien que vepeliculas consumiendo ensalada, tiene una vida saludable.
vida_saludable(X):-ve_pelicula(X,_), consume(X,ensalada).

% 5 regla que indica  alguien que escuche regional, tiene audifonos y la aplicacion de spotify, disfruta a casa
disfruto_camino(X):- escucha_musica(X,regional),tiene_audifonos(X,si),tiene_spotify(X,si).

%6 regla que indica alguien es feliz si ve peliculas consumiendo maruchan,tiempo libre y netflix.
es_feliz(X):-ve_pelicula(X,_),consume(X,maruchan),tiempo_libre(X,si),tiene_netflix(X,si). 
