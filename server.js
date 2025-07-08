const express = require('express');
const mongoose = require('mongoose');
const path = require('path');

const app = express();
const PORT = process.env.PORT || 5000;
const MONGO_URI = process.env.MONGO_URI || "mongodb://localhost:27017/testdb";

// Middleware
app.use(express.json());

// Serve static files from "public" folder (your HTML welcome page)
app.use(express.static(path.join(__dirname, 'public')));

// MongoDB connection
mongoose.connect(MONGO_URI)
  .then(() => console.log("MongoDB connected"))
  .catch(err => console.error("MongoDB error:", err));

// Mongoose model
const User = mongoose.model('User', new mongoose.Schema({
  name: String,
  employee: String,
  contact: String,
  email: String,
  domain: String
}));

// API routes
app.post('/user', async (req, res) => {
  const user = new User(req.body);
  await user.save();
  res.send(user);
});

app.get('/users', async (req, res) => {
  const users = await User.find();
  res.send(users);
});

// Start server
app.listen(PORT, () => console.log(`Server running on port ${PORT}`));

