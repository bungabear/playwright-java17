FROM mcr.microsoft.com/playwright:v1.34.0-jammy
RUN apt update
RUN apt install -y openjdk-17-jdk
COPY . .
RUN chmod +x gradlew
RUN ./gradlew playwright --args="install --with-deps"
WORKDIR /
RUN rm -rf /app