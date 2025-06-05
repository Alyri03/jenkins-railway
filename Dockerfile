FROM jenkins/jenkins:lts

USER root

# Instalar Node.js y npm para poder hacer deploy a Vercel
RUN apt-get update && \
    apt-get install -y curl gnupg && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Exponer el puerto por donde Jenkins servirá
EXPOSE 8080
