class DetailedRoverModel {
  final String roverName;
  final String roverImage;
  final String landing_date;
  final String launch_date;
  final String status;
  final String max_sol;
  final String max_date;
  final String total_photos;
  final String documantry;

  DetailedRoverModel({
    required this.roverName,
    required this.roverImage,
    required this.landing_date,
    required this.launch_date,
    required this.status,
    required this.max_sol,
    required this.max_date,
    required this.total_photos,
    required this.documantry,
  });
}

List<DetailedRoverModel> detailedRoverModel = [
  DetailedRoverModel(
    roverName: 'Spirit',
    landing_date: "January 4, 2004",
    launch_date: 'June 10, 2003',
    status: "ceased communication",
    max_sol: '2208',
    max_date: "2010-03-22",
    total_photos: '128000',
    roverImage: 'image/Spirit  rover.png',
    documantry: """
Mars rover named Spirit, a remarkable achievement by NASA, was a key component of the Mars Exploration Rover (MER) mission. Launched on June 10, 2003, this robotic explorer safely touched down on the Martian surface on January 4, 2004. Spirit embarked on an ambitious mission to explore the Martian terrain and conduct scientific experiments. Equipped with a suite of advanced instruments and cameras, it provided invaluable insights into the Red Planet.

Spirit's mission lasted an impressive 2,208 Martian sols, equivalent to nearly 2,270 Earth days, until its unfortunate cessation of communication on March 22, 2010. During its operational lifetime, the rover managed to capture an astonishing total of 128,000 images, providing an extensive visual record of its Martian expedition.

Among Spirit's noteworthy instruments were its cameras, each designed for specific tasks. The Front Hazard Avoidance Camera (FHAZ) and Rear Hazard Avoidance Camera (RHAZ) played crucial roles in ensuring safe navigation across the Martian terrain, helping to identify potential obstacles. The Navigation Camera (NAVCAM) provided valuable imagery for route planning and scientific observation. The Panoramic Camera (PANCAM) enabled Spirit to capture stunning panoramic views of its surroundings, enhancing our understanding of the Martian landscape. Lastly, the Miniature Thermal Emission Spectrometer (Mini-TES) allowed the rover to analyze the mineral composition of rocks and soils, aiding in the quest to uncover Mars' geological history.

Spirit's contributions to Martian science were substantial, aiding researchers in their quest to understand the planet's geology, climate history, and potential habitability. Despite its eventual loss of communication, Spirit's legacy lives on, as its data and discoveries continue to inform future missions and deepen our knowledge of the enigmatic world of Mars.
""",
  ),
  DetailedRoverModel(
    roverName: 'Opportunity',
    landing_date: "January 25, 2004",
    launch_date: 'July 7, 2003',
    status: "ceased communication",
    max_sol: '5111',
    max_date: "2018-06-10",
    total_photos: '217000',
    roverImage: 'image/Opportunity Rover.png',
    documantry: """
Mars rover named Opportunity, another remarkable achievement by NASA, was a vital component of the Mars Exploration Rover (MER) mission. Launched on July 7, 2003, this robotic explorer safely touched down on the Martian surface on January 25, 2004. Opportunity embarked on an extensive mission to explore the Martian terrain and conduct scientific experiments. Equipped with a suite of advanced instruments and cameras, it provided invaluable insights into the Red Planet.

Opportunity's mission lasted an incredible 5,111 Martian sols, equivalent to nearly 5,498 Earth days, until its unfortunate cessation of communication on June 10, 2018. During its operational lifetime, the rover managed to capture a staggering total of 217,000 images, providing an extensive visual record of its Martian expedition.

Among Opportunity's noteworthy instruments were its cameras, each designed for specific tasks. The Front Hazard Avoidance Camera (FHAZ) and Rear Hazard Avoidance Camera (RHAZ) played crucial roles in ensuring safe navigation across the Martian terrain, helping to identify potential obstacles. The Navigation Camera (NAVCAM) provided valuable imagery for route planning and scientific observation. The Panoramic Camera (PANCAM) enabled Opportunity to capture stunning panoramic views of its surroundings, enhancing our understanding of the Martian landscape. Lastly, the Miniature Thermal Emission Spectrometer (Mini-TES) allowed the rover to analyze the mineral composition of rocks and soils, aiding in the quest to uncover Mars' geological history.

Opportunity's contributions to Martian science were substantial, aiding researchers in their quest to understand the planet's geology, climate history, and potential habitability. Despite its eventual loss of communication, Opportunity's legacy lives on, as its data and discoveries continue to inform future missions and deepen our knowledge of the enigmatic world of Mars.

""",
  ),
  DetailedRoverModel(
    roverName: 'Curiosity',
    landing_date: 'August 06, 2012',
    launch_date: 'November 26, 2011',
    status: 'active',
    max_sol: '3957',
    max_date: '2023-09-23',
    total_photos: '680319',
    roverImage: 'image/Curiosity Rover.png',
    documantry: """
The NASA Mars rover, named Curiosity, has been a remarkable scientific exploration vehicle since its successful landing on the Red Planet on August 6, 2012. Curiosity embarked on its journey to Mars on November 26, 2011, and to this day, it remains active and operational. Over the course of its mission, Curiosity has achieved several significant milestones, with its mission clocking a remarkable maximum sol (Martian day) count of 3958 as of September 24, 2023.

One of Curiosity's standout features is its exceptional imaging capabilities, facilitated by a suite of seven distinct cameras. These cameras serve various functions, enabling the rover to capture and transmit detailed imagery and data back to Earth. The Front Hazard Avoidance Camera (FHAZ) and Rear Hazard Avoidance Camera (RHAZ) are essential for navigating the challenging Martian terrain, ensuring the rover's safety. The Navigation Camera (NAVCAM) assists in navigation and provides stereoscopic imagery, while the Mast Camera (MAST) offers high-resolution, color panoramic views of the Martian landscape. The Chemistry and Camera Complex (CHEMCAM) is equipped with a laser to analyze the composition of rocks and soils from a distance, contributing significantly to the mission's scientific objectives. The Mars Hand Lens Imager (MAHLI) provides detailed close-up images of rock and soil textures, while the Mars Descent Imager (MARDI) captured stunning images during the rover's descent to the Martian surface.

Curiosity's mission has been prolific, with a total of 680,620 photos captured and transmitted back to Earth, enriching our understanding of the Martian environment. Its extended mission life, robustness, and scientific capabilities have allowed it to contribute valuable data regarding the planet's geology, climate, and potential habitability. It has explored and analyzed the composition of various geological features, uncovering evidence of past water activity, which has profound implications for our understanding of Mars' history and its potential to support life.

As Curiosity continues its mission, it stands as a testament to NASA's enduring commitment to planetary exploration and scientific discovery. Its findings and ongoing research continue to shape our understanding of Mars and offer tantalizing insights into the possibility of past or present life on the Red Planet. With its remarkable longevity and sophisticated instrument suite, Curiosity remains a vital asset in our quest to unravel the mysteries of our neighboring planet, Mars.
""",
  )
];
