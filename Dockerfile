# Establecer la imagen base
FROM node:14

# Crear directorio de aplicación
WORKDIR /usr/src/app

# Instalar las dependencias de la aplicación
# A wildcard (*) se utiliza para asegurar que tanto el package.json Y el package-lock.json sean copiados
# donde esté disponible (npm@5+)
COPY package*.json ./

RUN npm install
# Si estás construyendo tu código para producción
# RUN npm ci --only=production

# Copiar el código de la aplicación
COPY . .

# Exponer el puerto en el que se ejecuta la aplicación
EXPOSE 80

# Comando para iniciar la aplicación
CMD [ "node", "app.js" ]

