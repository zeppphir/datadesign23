CREATE TABLE `personnes` (
  `nom_complet` varchar(255),
  `age` int,
  `residence` float,
  `photo` blob
);

CREATE TABLE `films` (
  `nom_film` varchar(255),
  `duree` timestamp,
  `realisateur` varchar(255),
  `resume` blob,
  `affiche` blob
);

CREATE TABLE `statistiques` (
  `nom_film` varchar(255),
  `realisateur` varchar(255),
  `nom_pays` verchar,
  `ventes_pays` int,
  `geoloc_pays` floatt,
  `ventes_monde` int,
  `nb_salles` int,
  `selection_oscars` boolean
);

ALTER TABLE `films` ADD FOREIGN KEY (`realisateur`) REFERENCES `personnes` (`nom_complet`);

ALTER TABLE `statistiques` ADD FOREIGN KEY (`nom_film`) REFERENCES `films` (`nom_film`);

ALTER TABLE `statistiques` ADD FOREIGN KEY (`realisateur`) REFERENCES `personnes` (`nom_complet`);
