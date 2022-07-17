class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatsData = [
  Chat(
    name: "THARUN",
    lastMessage: "Hope you are doing well...",
    image: "assets/img_3.png",
    time: "3m ago",
    isActive: false,
  ),
  Chat(
    name: "NAVEENA",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/img_6.png",
    time: "8m ago",
    isActive: true,
  ),
  Chat(
    name: "BALA PREETHIKA",
    lastMessage: "Do you have update...",
    image: "assets/preethika.jpg",
    time: "5d ago",
    isActive: false,
  ),
  Chat(
    name: "PRADEEPIKA",
    lastMessage: "You’re welcome :)",
    image: "assets/pradeepika.jpg",
    time: "5d ago",
    isActive: true,
  ),
  Chat(
    name: "MEGANAMANI",
    lastMessage: "Thanks",
    image: "assets/megna.jpg",
    time: "6d ago",
    isActive: false,
  ),

  Chat(
    name: "SASITHAR",
    lastMessage: "Hello Abdullah! I am...",
    image: "assets/img_5.png",
    time: "8m ago",
    isActive: true,
  ),

];