FROM openjdk:17-jdk-slim

WORKDIR /app

# Install curl for downloading Lavalink
RUN apt-get update && apt-get install -y curl && rm -rf /var/lib/apt/lists/*

# Download Lavalink.jar (latest release)
RUN curl -L -o Lavalink.jar https://github.com/freyacodes/Lavalink/releases/download/4.0.8/Lavalink.jar

# Copy your config
COPY application.yml .

# Render sets PORT dynamically
EXPOSE 2333

CMD ["java", "-jar", "Lavalink.jar"]
