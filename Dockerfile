# Temel image olarak OpenJDK 17 kullan
FROM eclipse-temurin:17-jdk-alpine

# Çalışma dizinini ayarla
WORKDIR /app

# Jar dosyasını konteynıra kopyala
COPY target/api-gateway-0.0.1-SNAPSHOT.jar app.jar

# Uygulamanın çalıştırılması
ENTRYPOINT ["java", "-jar", "app.jar"]
