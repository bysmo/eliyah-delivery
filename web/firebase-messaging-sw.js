importScripts("https://www.gstatic.com/firebasejs/7.20.0/firebase-app.js");
importScripts("https://www.gstatic.com/firebasejs/7.20.0/firebase-messaging.js");

firebase.initializeApp({
  apiKey: "AIzaSyAdf-U53fP8NL8HIGGTFlnQSLAydbIODpQ",
  authDomain: "eliyah-express.firebaseapp.com",
  projectId: "eliyah-express",
  storageBucket: "eliyah-express.firebasestorage.app",
  messagingSenderId: "345708509965",
  appId: "1:345708509965:web:2b17a9b781632456d20e44",
  measurementId: "G-1V2NR8B1VH"
});

const messaging = firebase.messaging();

// Optional:
messaging.onBackgroundMessage((message) => {
  console.log("onBackgroundMessage", message);
});