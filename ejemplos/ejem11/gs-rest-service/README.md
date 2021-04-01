# Hello World Example

Un ejemplo de Hola Mundo con Java.

# Caracteristicas
    • RESTful API 
    • Java 8
    • Spring Boot
    • Maven
    • Docker
    • Swagger (Documentacion API Automatica)
    • JUnit 5 (Tests)
    
### Fuente

Hello World Example esta basado en este proyecto [tutorial](https://spring.io/guides/gs/rest-service/) de Spring. 

## Ejecutar los tests

Los tests pueden ser lanzados desde una consola.
Desde la raiz del proyecto ejecuta:
```sh
$ ./mvnw clean test
```
## Ejectuar la aplicacion desde la consola
Para lanzar el proyecto simplemente ejecuta  el siguiente comando desde una consola:

```sh
$ ./mvnw spring-boot:run
```

## Ejectuar la aplicacion con Docker
Docker construira el  .jar con Maven y ejecutara la aplicacion

Construir la imagen con Docker:

```sh
$ docker build -t hello-world .
```
Crear y lanzar el contenedor en segundo plano mapeando el puerto:
```sh
$ docker run -d -p 8080:8080 hello-world
```
Parar la aplicacion:
```sh
$ docker stop [CONTAINER_ID]
```
Entrar en un contenerdor que se esta ejecutando:
```sh
$ docker exec -it [CONTAINER_NAME] sh
```

## RESTful API
Una vez que la aplicacion este funcionando. Abre un navegador y escribe la siguiente URL
> http://localhost:8080

Debes ver el nombre de la aplicacion en la pantalla. 

Dirigete a la siguiente URL para acceder a la RESTful API
> http://localhost:8080/swagger-ui/

Desde aqui el Greeting-Controller esta disponible. Hay disponible un solo entry point con GET. 
Puedes probar la funcionalidad disponible con el boton _TRY IT OUT_.
Naturalmente tambien puedes utilizar el metodo GET directamente desde el navegador o con **Postman**.

> http://localhost:8080/greeting

## Docker por pasos
El fichero Dockerfile contiene dos instrucciones **FROM** porque tiene dos pasos:
- Fase de Construccion (usamos Maven para crear el .jar)
- Fase de Empaquetado (creamos la imagen que lanza dicho .jar)

### Fase de Construccion
Se creara una imagen basada en Maven  para construir el proyecto (.jar)
>FROM maven:3.6.3-jdk-11-slim **AS maven_build**
 RUN mvn clean package

### Fase de Empaquetado
Ahora que tenemos el .jar usaremos esta imagen que hemos nombrado **maven_build**
para construir la imagen que ejecutara la aplicacion.

> FROM openjdk:11-jre-slim
COPY **--from=maven_build** /usr/src/app/target/${JAR_NAME}.jar ./app.jar
CMD ["java","-jar", "./app.jar"]

