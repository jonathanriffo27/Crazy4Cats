# Desafío de Relaciones N a N en los modelos - Crazy4Cats

Este es mi repositorio para el desafío de Relaciones N a N, en el que he creado una plataforma para amantes de los gatos llamada Crazy4Cats. La plataforma permite a los usuarios publicar sus aventuras con sus gatos, dar Me gusta o no me gusta a las publicaciones y comentar en ellas.

## Requerimientos

Para completar el desafío, se debían cumplir los siguientes requerimientos:

1. Set-up inicial del proyecto con sus relaciones y modelos.
2. La aplicación debe tener todas sus vistas bien estilizadas y con diseño agradable.
3. Implementar reacciones de un usuario a las publicaciones.
4. Implementar comentarios para las publicaciones.
5. Realizar deploy a Render con datos ficticios.

## Herramientas y conceptos aplicados

Para crear la plataforma, he aplicado los siguientes conceptos y herramientas:

- **Relaciones N a N en los modelos:** Para permitir que los usuarios puedan dar Me gusta o no me gusta a las publicaciones y comentar en ellas, he utilizado relaciones N a N en los modelos. En particular, he creado una tabla `likes` para relacionar usuarios y publicaciones, y una tabla `comments` para relacionar usuarios, publicaciones y comentarios.

- **Devise para la autenticación de usuarios:** Para permitir que los usuarios se registren y autentiquen en la plataforma, he utilizado la gema Devise. He creado un modelo `User` con los campos `email`, `password` y `username`, y he generado las vistas y controladores necesarios para el registro, inicio de sesión y cierre de sesión de los usuarios.

- **Faker para generar datos ficticios:** Para generar datos ficticios y poblar la base de datos, he utilizado la gema Faker. He creado un archivo `seeds.rb` en el que he generado usuarios, publicaciones, likes y comentarios aleatorios.

- **Bootstrap para el diseño de las vistas:** Para estilizar las vistas y darles un diseño agradable, he utilizado el framework Bootstrap. He creado vistas para la página de inicio, el perfil de usuario, la lista de publicaciones, la página de detalle de una publicación y el formulario para crear una nueva publicación. También he utilizado algunos componentes de Bootstrap, como los botones y los formularios, para mejorar la usabilidad de la plataforma.

- **Render para el deploy de la aplicación:** Para desplegar la aplicación en la nube, he utilizado la plataforma Render. He creado una cuenta en Render, he configurado la base de datos y he desplegado la aplicación utilizando Git. La aplicación está disponible en el siguiente enlace: [https://crazy4cats-pd28.onrender.com/](https://crazy4cats-pd28.onrender.com/)

## Cómo correr la aplicación

Para correr la aplicación en tu computadora, sigue los siguientes pasos:

1. Clona este repositorio en tu computadora.
2. Instala las dependencias con `bundle install`.
3. Crea la base de datos con `rails db:create`.
4. Corre las migraciones con `rails db:migrate`.
5. Genera datos ficticios con `rails db:seed`.
6. Corre la aplicación con `rails s`.
7. Abre tu navegador en `http://localhost:3000`.
