# 🐳 Node.js + MongoDB in a Single Docker Container

This project demonstrates a professional, production-grade Node.js application running with MongoDB inside a **single Docker container**, orchestrated using `docker-compose`. Designed with simplicity, DevOps standards, and clarity in mind — ideal for learning, internal demos, or lightweight deployments.

---

## 🚀 Features

- Node.js app with Express and MongoDB
- Dockerfile and `docker-compose.yml` for single-container setup
- MongoDB runs inside the same container — no external dependency
- Data persistence verified
- Enhanced frontend output to validate the successful launch

---

## 📂 Project Structure

my-node-mongo-app/
│
├── public/ # Contains the HTML frontend
│ └── index.html
├── server.js # Node.js + Express backend
├── Dockerfile # Build instructions for the container
├── docker-compose.yml # Runs the app with MongoDB
├── package.json # App dependencies
└── README.md # You're reading it!

---

## 🧠 Getting Started

### 🔧 Prerequisites

- Docker Desktop installed (Linux, WSL, Mac, or Windows)
- Git (optional, for cloning)

### 🛠️ Setup

Clone the repo and build the container:

```bash
git clone https://github.com/your-username/my-node-mongo-app.git
cd my-node-mongo-app
docker-compose up --build -d
The app will be available at:
📍 http://localhost:5001

✅ Test It
Insert data:
bash
Copy
Edit
curl -X POST http://localhost:5001/user \
  -H "Content-Type: application/json" \
  -d '{"name": "Bunny"}'
Get data:
Visit in browser:
📍 http://localhost:5001/users

🔄 Replace with Your Own Project
You can replace the Node.js app in this container with your own:

Replace server.js with your own Express app.
Modify the Dockerfile only if your dependencies change.
Put your frontend in public/ or adjust as needed.
Run docker-compose up --build -d again.
Your app will now run inside the same container with MongoDB!

🧑‍💻 Author
Bhagwan Das
Junior DevOps Engineer
📧 bhagwan.das@ephlux.com
📱 +92 336 3810839
🔗 LinkedIn
