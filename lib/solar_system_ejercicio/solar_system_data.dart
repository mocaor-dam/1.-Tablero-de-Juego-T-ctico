class Planeta {
  final String nombre;
  final String descripcion;
  final String imagenUrl;
  final String distanciaConElSol;

  const Planeta({
    required this.nombre,
    required this.descripcion,
    required this.imagenUrl,
    required this.distanciaConElSol,
  });
}

final List<Planeta> planetas = const [
  Planeta(
    nombre: "Earth",
    descripcion: "Earth – our home planet – is the third planet from the Sun, and the fifth largest planet.",
    imagenUrl: "assets/images/solar_system_images/earth.png",
    distanciaConElSol: "Distancia con el sol: 149,6 millones de km",
  ),
  Planeta(
    nombre: "Jupiter",
    descripcion: "Jupiter is the fifth planet from the Sun, and the largest planet in our solar system.",
    imagenUrl: "assets/images/solar_system_images/jupiter.png",
    distanciaConElSol: "Distancia con el sol: 778,5 millones de km",
  ),
  Planeta(
    nombre: "Mars",
    descripcion: "Mars is the fourth planet from the Sun, and the seventh largest planet.",
    imagenUrl: "assets/images/solar_system_images/mars.png",
    distanciaConElSol: "Distancia con el sol: 227,9 millones de km",
  ),
  Planeta(
    nombre: "Mercury",
    descripcion: "Mercury is the planet nearest to the Sun, and the smallest planet in our solar system.",
    imagenUrl: "assets/images/solar_system_images/mercury.png",
    distanciaConElSol: "Distancia con el sol: 57,9 millones de km",
  ),
  Planeta(
    nombre: "Moon",
    descripcion: "From lighting up our skies to preserving evidence of our solar system’s history, Earth’s closest neighbor plays a pivotal role in the study of our planet and beyond.",
    imagenUrl: "assets/images/solar_system_images/moon.png",
    distanciaConElSol: "Distancia con la Tierra 384.400 km (149,6 millones de km del Sol)",
  ),
  Planeta(
    nombre: "Neptune",
    descripcion: "Neptune is the eighth and most distant planet in our solar system. It's the fourth largest planet.",
    imagenUrl: "assets/images/solar_system_images/neptune.png",
    distanciaConElSol: "Distancia con el sol: 4.495 millones de km",
  ),
  Planeta(
    nombre: "Pluto",
    descripcion: "Pluto was long considered our solar system's ninth planet. It was reclassified as a dwarf planet in 2006 by the International Astronomical Union.",
    imagenUrl: "assets/images/solar_system_images/pluto.png",
    distanciaConElSol: "Distancia con el sol: 5.906 millones de km",
  ),
  Planeta(
    nombre: "Saturn",
    descripcion: "Saturn is the sixth planet from the Sun, the second largest planet in our solar system.",
    imagenUrl: "assets/images/solar_system_images/saturn.png",
    distanciaConElSol: "Distancia con el sol: 1.434 millones de km",
  ),
  Planeta(
    nombre: "Sun",
    descripcion: "The Sun is the star at the center of our solar system.",
    imagenUrl: "assets/images/solar_system_images/sun.png",
    distanciaConElSol: "Distancia con el sol: 0 km",
  ),
  Planeta(
    nombre: "Uranus",
    descripcion: "Uranus is the seventh planet from the Sun, and the third largest planet in our solar system.",
    imagenUrl: "assets/images/solar_system_images/uranus.png",
    distanciaConElSol: "Distancia con el sol: 2.871 millones de km",
  ),
  Planeta(
    nombre: "Venus",
    descripcion: "Venus is the second planet from the Sun, and the sixth largest planet.",
    imagenUrl: "assets/images/solar_system_images/venus.png",
    distanciaConElSol: "Distancia con el sol: 108,2 millones de km",
  ),
];
