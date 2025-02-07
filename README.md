# 🎯 Django E-Commerce Website

This is a **fully functional e-commerce website** built using **Django** with support for **Docker, Jenkins, Nginx, and AWS Deployment** for production.

---

## 📌 Features

✅ **User-friendly Interface** - Includes product listings, shopping cart, and checkout functionality  
✅ **Django Framework** - Backend powered by Django with a modular structure  
✅ **Database Support** - Uses Django ORM for database management  
✅ **Authentication** - User login/logout functionality  
✅ **Dockerized Deployment** - Includes `Dockerfile` and `docker-compose.yml`  
✅ **CI/CD Integration** - Automated deployment using **Jenkins**  
✅ **Nginx as Reverse Proxy** - Handles incoming traffic efficiently  
✅ **AWS Deployment** - The site is hosted on **AWS EC2** and accessible worldwide  

---

## 📂 Project Structure

```
├── mysite/               # Main Django project directory
│   ├── settings.py       # Django settings
│   ├── urls.py           # Main URL configurations
│   ├── wsgi.py           # WSGI entry point
│   ├── asgi.py           # ASGI entry point
│
├── store/                # E-commerce app
│   ├── models.py         # Database models (Products, Orders, etc.)
│   ├── views.py          # Business logic and API endpoints
│   ├── urls.py           # URL patterns for the store app
│   ├── templates/store/  # HTML templates (cart.html, checkout.html, store.html)
│
├── nginx/                # Nginx configuration files
│   ├── Dockerfile        # Nginx Dockerfile
│   ├── nginx.conf        # Nginx server configuration
│
├── Dockerfile            # Docker instructions for building the app
├── docker-compose.yml    # Defines multi-container setup
├── Jenkinsfile           # CI/CD pipeline for deployment
├── requirements.txt      # Python dependencies
├── manage.py             # Django management commands
├── .env                  # Environment variables (Database, Secret Key, etc.)
```

---

## 🚀 Installation & Setup

### 1️⃣ **Clone the Repository**
```sh
  git clone https://github.com/yourusername/ecom_site.git
  cd ecom_site
```

### 2️⃣ **Setup Virtual Environment** *(Optional but Recommended)*
```sh
  python3 -m venv venv
  source venv/bin/activate   # macOS/Linux
  venv\Scripts\activate      # Windows
```

### 3️⃣ **Install Dependencies**
```sh
  pip install -r requirements.txt
```

### 4️⃣ **Run Migrations**
```sh
  python manage.py makemigrations
  python manage.py migrate
```

### 5️⃣ **Create Superuser** (Admin Panel Access)
```sh
  python manage.py createsuperuser
```

### 6️⃣ **Run the Development Server**
```sh
  python manage.py runserver
```
Your site will be available at **http://127.0.0.1:8000/** 🎉

---

## 🐳 Deploying with Docker

### **1️⃣ Build & Start Containers**
```sh
  docker-compose up --build -d
```
This will start Django, PostgreSQL (or MySQL), and Nginx.

### **2️⃣ Stop Containers**
```sh
  docker-compose down
```

---

## ☁️ Deploying on AWS

### **1️⃣ AWS Setup**
- Deployed on **AWS EC2** for continuous availability
- Configured **Nginx as a reverse proxy**
- Used **Gunicorn** to serve the Django application
- **Security Groups** configured to allow global access

### **2️⃣ Steps to Deploy on AWS**
```sh
  ssh -i your-key.pem ubuntu@your-aws-instance-ip
  git clone https://github.com/yourusername/ecom_site.git
  cd ecom_site
  docker-compose up --build -d
```
- The website is now accessible **worldwide** 🌍

---

## 🔄 CI/CD with Jenkins

### **1️⃣ Install Jenkins Locally**
- Install [Jenkins](https://www.jenkins.io/download/)
- Install required plugins: **Docker Pipeline, Git, and Python**

### **2️⃣ Configure Jenkins Pipeline**
- Add the repository to Jenkins
- Set up a pipeline using the **Jenkinsfile** in the project
- Run the pipeline to automate deployment

---

## 🔥 Future Improvements

- 📦 Add **payment gateway integration**
- 📱 Implement **mobile-friendly UI**
- 🚀 Scale using **AWS Load Balancer**

---

## 🙌 Contributing
Feel free to **fork this repository**, submit issues, and send pull requests. Contributions are welcome! 🎉

---

## 📜 License
This project is licensed under the **MIT License**.

---

## 👨‍💻 Author

👤 **Parth Chauhan**  
📧 Email: [parthchauhan812@gmail.com](mailto:parthchauhan812@gmail.com)  
🔗 LinkedIn: [Parth Chauhan](https://www.linkedin.com/in/parth-chauhan-592127215/)  

🚀 **Enjoy the project! If you like it, give it a ⭐ on GitHub!**

