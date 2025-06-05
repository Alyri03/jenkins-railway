FROM jenkins/jenkins:lts

USER root

# Instalar Node.js y npm para poder usar Vercel CLI
RUN apt-get update && \
    apt-get install -y curl gnupg && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Exponer el puerto de Jenkins
EXPOSE 8080
