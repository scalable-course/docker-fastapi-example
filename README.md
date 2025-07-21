# Docker + FastAPI Example

This is a minimal example of running a FastAPI application inside a Docker container. The app exposes a single endpoint that returns a simple JSON message.

## Project Structure

- `main.py`: FastAPI application source code
- `Dockerfile`: Image build instructions
- `requirements.txt`: Python dependencies

## Quick Start

### 1. Build the Docker Image

```sh
docker build -t fastapi-example .
```

### 2. Run the Container

```sh
docker run -d -p 8000:8000 --name fastapi-example fastapi-example
```

The app will be available at [http://localhost:8000](http://localhost:8000)

### 3. Test the API

You can test the root endpoint with curl or your browser:

```sh
curl http://localhost:8000/
```

Expected response:

```json
{"message": "Hello World"}
```

### 4. View Container Logs

To view the logs from the running FastAPI container, use:

```sh
docker logs fastapi-example
```

### 5. Stop and Remove the Container

```sh
docker stop fastapi-example
docker rm fastapi-example
```

