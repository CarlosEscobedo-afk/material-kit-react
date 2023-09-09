# Establece la imagen base (puedes usar una imagen diferente según tu aplicación)
FROM node:14

# Establece el directorio de trabajo en el contenedor
WORKDIR /usr/src

# Copia los archivos del proyecto al directorio de trabajo en el contenedor
COPY package*.json ./

# Instala las dependencias
RUN npm install

COPY package.json .
COPY package-lock.json .

# Expone el puerto en el que la aplicación escucha
EXPOSE 3000

# Comando para iniciar la aplicación
CMD ["npm", "start"]