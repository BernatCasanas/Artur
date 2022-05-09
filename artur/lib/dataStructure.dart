import 'package:flutter/cupertino.dart';

enum TypeActivity { PRESENCIAL, VOZ, NONE }

class Activity {
  TypeActivity type;
  int duration;
  String name;
  String description;
  String longDescription;
  bool hasAR;
  String image;

  Activity(this.type, this.duration, this.name, this.hasAR, this.description,
      this.image, this.longDescription);
}

List<Activity> activities = [
  Activity(
      TypeActivity.PRESENCIAL,
      90,
      "Sant Antoni",
      false,
      "Tour presencial mostrando las calles de Sant Antoni",
      "https://www.sempreviaggiando.com/wp-content/uploads/2018/05/barcelona-2088158_1920.jpg",
      "El barrio de Sant Antoni, situado en el Eixample de Barcelona, es conocido por el mercado homónimo diseñado por Antoni Rovira i Trias, que data del siglo XIX y es un ejemplo de la arquitectura de hierro forjado de la ciudad. En el mercado de libros de los domingos, se pueden encontrar volúmenes antiguos, postales clásicas y sellos poco comunes. En el norte, los patinadores frecuentan la Plaça de la Universitat, y al sur, el Carrer del Parlament está repleto de vermuterías."),
  Activity(
      TypeActivity.VOZ,
      25,
      "Sagrada Familia",
      true,
      "Tour en voz explicando la historia de cómo fue construida la Sagrada Familia",
      "https://upload.wikimedia.org/wikipedia/commons/5/57/Sagrada_Familia_8-12-21_%281%29.jpg",
      "El Templo Expiatorio de la Sagrada Familia, conocido simplemente como la Sagrada Familia, es una basílica católica de Barcelona, diseñada por el arquitecto Antoni Gaudí. Iniciada en 1882, todavía está en construcción. Es la obra maestra de Gaudí, y el máximo exponente de la arquitectura modernista catalana."),
  Activity(
      TypeActivity.VOZ,
      30,
      "Plaça Catalunya",
      true,
      "Tour en voz explicando la historia de los lugares icónicos de Plaça Catalunya",
      "https://www.experienciasviajeras.blog/wp-content/uploads/2019/03/Plaza-Catalunya-en-Barcelona-1000x590.jpg",
      "Hasta que se derribaron las murallas, el espacio actualmente ocupado por la plaza era una explanada a las afueras de la ciudad situada justo enfrente de una de las puertas principales, desde donde salían caminos hacia las poblaciones de los alrededores. Esto convirtió el lugar en el emplazamiento ideal para situar mercados al aire libre, y lo convirtió en un punto importante de la vida de la ciudad. Posteriormente, se derribaron las murallas y se empezó a construir el Ensanche diseñado por Ildefonso Cerdá. El plan urbanístico de Cerdá no incluía ninguna plaza donde ahora está la plaza de Cataluña, puesto que según su plan el barrio gótico, igual que los otros núcleos de antiguas poblaciones del llano de Barcelona, quedaban relegados a barrios periféricos, mientras que el nuevo centro debía ser un lugar céntrico y bien comunicado, como por ejemplo la plaza de las Glorias Catalanas, que Cerdá diseñó con la voluntad de ser el nuevo epicentro, justo en el cruce de las principales vías de la ciudad, la avenida Diagonal, la Gran Vía de las Cortes Catalanas y la Avenida Meridiana."),
  Activity(
      TypeActivity.PRESENCIAL,
      60,
      "Plaça Catalunya",
      true,
      "Tour presencial mostrando los lugares icónicos de Plaça Catalunya",
      "https://meet.barcelona.cat/sites/default/files/styles/punts_interes_galeria/public/coloms-a-placa-catalunya.jpg_0.jpg?itok=YSqHRm5T",
      "Hasta que se derribaron las murallas, el espacio actualmente ocupado por la plaza era una explanada a las afueras de la ciudad situada justo enfrente de una de las puertas principales, desde donde salían caminos hacia las poblaciones de los alrededores. Esto convirtió el lugar en el emplazamiento ideal para situar mercados al aire libre, y lo convirtió en un punto importante de la vida de la ciudad.Posteriormente, se derribaron las murallas y se empezó a construir el Ensanche diseñado por Ildefonso Cerdá. El plan urbanístico de Cerdá no incluía ninguna plaza donde ahora está la plaza de Cataluña, puesto que según su plan el barrio gótico, igual que los otros núcleos de antiguas poblaciones del llano de Barcelona, quedaban relegados a barrios periféricos, mientras que el nuevo centro debía ser un lugar céntrico y bien comunicado, como por ejemplo la plaza de las Glorias Catalanas, que Cerdá diseñó con la voluntad de ser el nuevo epicentro, justo en el cruce de las principales vías de la ciudad, la avenida Diagonal, la Gran Vía de las Cortes Catalanas y la Avenida Meridiana."),
  Activity(
      TypeActivity.PRESENCIAL,
      60,
      "Sagrada Familia",
      true,
      "Tour presencial mostrando el interior de la Sagrada Familia",
      "https://mymodernmet.com/wp/wp-content/uploads/2020/11/antoni-gaudi-la-sagrada-familia-8.jpg",
      "El Templo Expiatorio de la Sagrada Familia, conocido simplemente como la Sagrada Familia, es una basílica católica de Barcelona, diseñada por el arquitecto Antoni Gaudí. Iniciada en 1882, todavía está en construcción. Es la obra maestra de Gaudí, y el máximo exponente de la arquitectura modernista catalana."),
  Activity(
      TypeActivity.VOZ,
      20,
      "Sant Antoni",
      false,
      "Tour en voz explicando la historia de las calles de Sant Antoni",
      "https://offloadmedia.feverup.com/barcelonasecreta.com/wp-content/uploads/2021/06/16085126/sant-antoni-1-1024x696.jpg",
      "El barrio de Sant Antoni, situado en el Eixample de Barcelona, es conocido por el mercado homónimo diseñado por Antoni Rovira i Trias, que data del siglo XIX y es un ejemplo de la arquitectura de hierro forjado de la ciudad. En el mercado de libros de los domingos, se pueden encontrar volúmenes antiguos, postales clásicas y sellos poco comunes. En el norte, los patinadores frecuentan la Plaça de la Universitat, y al sur, el Carrer del Parlament está repleto de vermuterías."),
];
