# Elegimos la imagen, e este caso la 14 que es la última LTS:
# https://hub.docker.com/_/node

FROM node:14-alpine

# instalar un simple servidor http para servir nuestro contenido estático
RUN npm install -g http-server

# hacer la carpeta 'app' el directorio de trabajo actual
WORKDIR /app

# copiar 'package.json' y 'package-lock.json' (si están disponibles)
COPY package*.json ./

# instalar dependencias del proyecto
RUN npm install

# copiar los archivos y carpetas del proyecto al directorio de trabajo actual (es decir, la carpeta 'app')
COPY . .

# construir aplicación para producción minificada
RUN npm run build

# Exponemos el puerto y ejecutamos el servidor
EXPOSE 8080
CMD [ "http-server", "dist" ]

# Puede parecer redundante copiar primero package.json ypackage-lock.json y luego todos los archivos y carpetas del proyecto en dos pasos separados, 
# pero en realidad hay una muy buena razón para eso (adelanto: nos permite aprovechar las capas de Docker almacenadas en caché).

# Para subirla al registro, primero le ponemos una tag
# docker build -t joseluisgs/joseluisgs/docker-vuejs-app .
# Subirla:
# docker push joseluisgs/docker-vuejs-app
# Ejecutarla: 
# docker run -it -p 8080:8080 --rm --name docker-vuejs-app-1 joseluisgs/docker-vuejs-app
