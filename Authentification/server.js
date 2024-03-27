const express = require("express");
const sqlite3 = require("sqlite3");
const cors = require("cors");
const app = express();
const port = 3000;

// Connexion à la base de données SQLite
const db = new sqlite3.Database("./bdd/auth.db");

//Création de l'application
app.use(
  express.json(),
  cors({
    origin: "http://localhost:5174",
  })
);

// Démarrer le serveur
app.listen(port, () => {
  console.log(`Le serveur est en cours d'exécution sur le port ${port}`);
});

// Appel des routes
const usersRoutes = require("./routes/users")(db);
app.use("/api/users", usersRoutes);
