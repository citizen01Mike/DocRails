# Dogs App

Dockerized Rails application and PostgreSQL database.

## Prerequisites

Ensure you have the following installed:
- Docker
- Docker Compose

## Getting Started

1. **Clone the repository:**

    ```sh
    git clone https://github.com/citizen01Mike/DocRails.git
    ```

2. **Set up the environment variables:**

    ```sh
    cp .env.example .env
    ```

    Modify `.env` with your specific settings.

3. **Build and run the Docker containers:**

    ```sh
    docker-compose up --build
    ```

4. **Set up the database:**

    ```sh
    docker-compose run web rails db:create
    docker-compose run web rails db:migrate
    ```

5. **Access the application:**

    Open a web browser and navigate to `http://localhost:3000`.

6. **Stopping the containers:**

    ```sh
    docker-compose down
    ```

## Troubleshooting

- Ensure that no other service is using ports 3000 or 5432.
- Check Docker and Docker Compose logs for any issues.
- Verify environment variables in the `.env` file are correct.

## License

Distributed under the MIT License.