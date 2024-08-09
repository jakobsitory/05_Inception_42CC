# **Inception**
The Inception project is a challenge within the 42 School curriculum aimed at deepening students' understanding of system administration, Docker, and container orchestration. The goal is to set up a multi-container Docker application that includes a web server, a database, and a WordPress site.

## **Task**
The task was to implement a multi-container Docker application using Docker Compose. The application needs to handle various tasks such as:

Setting up...
- a MariaDB database container.
- an Nginx web server container.
- a WordPress container that connects to the MariaDB database.
- Configuring the containers to communicate with each other and persist data.

**Key objectives included:**

- Implementing a Docker Compose configuration that defines the services, networks, and volumes required for the application.
- Ensuring the containers are correctly configured to start, stop, and restart as needed.
- Demonstrating a deep understanding of Docker, Docker Compose, and container networking.


## **Key Achievements**

- Successful Multi-Container Setup: Implemented a robust Docker Compose configuration that sets up and manages multiple containers.
- Efficient Data Persistence: Configured volumes to ensure data persistence across container restarts.
- Comprehensive Error Handling: Integrated extensive error checking and handling to manage edge cases and unexpected scenarios, ensuring the application operates reliably in various conditions.

## **Installation**
To install the project, follow these steps:

1. Clone the repository: **`git clone git@github.com:jakobsitory/05_Inception_42CC.git`**
2. Navigate to the project directory: **`cd 05_Inception_42CC`**
3. Build and start the Docker containers: **`make`**

## **Usage**
The Docker Compose configuration is defined in the **`docker-compose.yml`** file. The services included are:

**MariaDB**: A container running MariaDB, configured using the Dockerfile and configuration files.
**Nginx**: A container running Nginx, configured using the Dockerfile and configuration files.
**WordPress**: A container running WordPress, configured using the Dockerfile and configuration files.

To start the application, run:
```bash
docker-compose up
```
This command starts all the services defined in the docker-compose.yml file. The WordPress site will be accessible at the domain specified in the .env file.

**Configuration**

The environment variables for the project need to be defined in a **`.env`** file. Key variables include:

```env
DOMAIN_NAME=

# MARIADB SETUP
MARIADB_DATABASE=
MARIADB_USER=
MARIADB_PASSWORD=
MARIADB_ROOT_USER=
MARIADB_ROOT_PASSWORD=

#WORDPRESS
SITE_TITLE=
WP_ADMIN_USER=
WP_ADMIN_PW=
WP_ADMIN_MAIL=
WP_USER=
WP_USER_MAIL=
WP_USER_PW=
```
Ensure these variables are set correctly before starting the application.
