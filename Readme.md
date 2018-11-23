Aplicacion flask python iniciada con este ejemplo:
 
https://docs.docker.com/compose/gettingstarted/#step-4-build-and-run-your-app-with-compose


Comandos:
  make build

  esto genera la imagen para la aplicacion python

  make up
  esto levanta dos contenedores, uno basado en la imagen de python recien creada y otra basada en MySQL.


  make 

  esto ejecuta build y up


Mas info sobre la imagen de mysql aqui: https://docs.docker.com/samples/library/mysql/#environment-variables
