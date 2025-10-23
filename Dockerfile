# Use OpenJDK to build and run the bot
FROM eclipse-temurin:17-jdk

# Set working directory
WORKDIR /app

# Copy the project files
COPY . .

# Build with Gradle
RUN ./gradlew build --no-daemon

# Run the bot
CMD ["java", "-jar", "build/libs/MusicBot.jar"]
