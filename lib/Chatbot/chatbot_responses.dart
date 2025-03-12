class ChatbotResponses {
  static Map<String, String> responses = {
    // Greetings
    "hi": "Hello! How can I assist you?",
    "hello": "Hi there! How can I help you today?",
    "hey": "Hey! What’s up?",
    "good morning": "Good morning! Hope you have a great day.",
    "good night": "Good night! Sleep well.",
    "how are you": "I'm just a bot, but I'm doing great! How about you?",

    // General Queries
    "what is your name": "I'm your friendly chatbot!",
    "who created you": "I was created by a skilled developer!",
    "where are you from": "I'm from the digital world!",
    "what can you do": "I can answer your questions, tell jokes, and chat with you!",
    "who is your favorite superhero": "I like Iron Man. He’s smart and cool!",
    "what’s your favorite color": "I love all colors, but blue looks nice!",
    "do you like music": "Yes! I enjoy virtual beats.",
    "are you human": "Nope, I’m just a smart bot.",
    "do you have emotions": "Not really, but I can try to be fun!",

    // Weather
    "what’s the weather like": "I don’t have live weather updates, but you can check a weather app!",
    "is it raining": "I can't check real-time weather, but I hope it's sunny where you are!",

    // Time & Date
    "what time is it": "I don’t have a clock, but you can check your phone!",
    "what day is it": "Every day is a good day with me around!",

    // Help
    "help": "I can assist with general queries. Just ask me anything!",
    "how to use this chatbot": "Just type your query, and I’ll try to respond!",
    "i need support": "Sure! Please explain your issue.",

    // Fun & Jokes
    "tell me a joke": "Why don’t scientists trust atoms? Because they make up everything!",
    "tell me another joke": "What do you call fake spaghetti? An impasta!",
    "tell me a programming joke": "Why do programmers prefer dark mode? Because light attracts bugs!",
    "tell me a tech joke": "Why was the computer cold? It left its Windows open!",
    "tell me a dad joke": "Why did the scarecrow win an award? Because he was outstanding in his field!",

    // Random Fun
    "what is the meaning of life": "42... or maybe just be happy and keep learning!",
    "do you believe in aliens": "I think the universe is too big for us to be alone!",
    "do you believe in ghosts": "I’ve never seen one, but I’ve heard spooky stories!",
    "can you dance": "Only if you play some good music!",
    "what is your favorite food": "I run on electricity, so maybe a battery smoothie?",
    "can you tell me a secret": "Shh... I am just a chatbot, but I know a lot!",
    "do you know Siri": "Yes! We are part of the AI family!",
    "do you know Alexa": "Yes, she’s smart like me!",
    "do you like Google Assistant": "Yes, we’re all digital buddies!",
    "can you sing": "I can’t, but I can find lyrics for you!",
    "who is your best friend": "You! 😊",
    "can you play games": "Not yet, but I can tell you about some fun games!",
    "what is your hobby": "Chatting with awesome people like you!",
    "do you watch movies": "I can recommend movies, but I don’t watch them!",
    "what is your favorite movie": "The Matrix! AI taking over... just kidding!",
    "do you know ChatGPT": "Yes! We are like long-lost digital cousins!",

    // Tech & Science
    "what is AI": "AI stands for Artificial Intelligence, which allows machines to learn and make decisions!",
    "what is machine learning": "Machine learning is a type of AI where computers learn from data!",
    "what is blockchain": "Blockchain is a decentralized digital ledger used for secure transactions!",
    "what is cryptocurrency": "Cryptocurrency is a digital currency that works on blockchain technology!",
    "how does the internet work": "The internet connects devices worldwide through servers and networks!",
    "what is the speed of light": "The speed of light is about 299,792 km per second!",

    // Farewell
    "bye": "Goodbye! Have a great day!",
    "see you": "See you later!",
    "take care": "You too! Take care.",
    "goodbye": "Goodbye! It was nice chatting with you!",
  };

  static String getResponse(String message) {
    String lowerMessage = message.toLowerCase();
    return responses[lowerMessage] ?? "I'm not sure about that. Can you rephrase?";
  }
}
