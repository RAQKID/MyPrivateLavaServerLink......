FROM openjdk:17-jdk-slim

WORKDIR /app

# Copy Lavalink files
COPY Lavalink.jar .
COPY application.yml .

# Render injects PORT env var, Lavalink will use it
EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
