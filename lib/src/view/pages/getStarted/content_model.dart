class UnbordingContent {
  String image;
  String title;
  String discription;

  UnbordingContent({required this.image, required this.title, required this.discription});
}

List<UnbordingContent> contents = [
  UnbordingContent(
    title: 'Vegetais Frescos',
    image: 'lib/assets/images/Vegetables.png',
    discription: "Oferecemos acesso a uma variedade de opções de vegetais frescos de alta " 
    "qualidade e trazendo conveniência de comprar com apenas alguns cliques, " 
    "garantindo que você tenha sempre ingredientes naturáis e nutritivos à disposição."
  ),
    UnbordingContent(
    title: 'Preços Acessíveis',
    image: 'lib/assets/images/Vegetables.png',
    discription: "Nosso aplicativo oferece uma ampla variedade de vegetais frescos a preços "
    "que cabem no seu bolso. Com opções de compra directa de produtores locais, "
    "garantimos que tenha acesso a todos produtos a preços justos."
  ),
  UnbordingContent(
    title: 'Entregas Rápidas',
    image: 'lib/assets/images/delivery.png',
    discription: "Com nosso aplicativo, você terá a conveniência de receber vegetais frescos "
    "em sua porta com entregas rápidas. Nosso sistema foi projectado para " 
    "garantir que você receba em tempo hábil, mantendo a qualidade e a frescura dos produtos."
  ),
];