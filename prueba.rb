
def met_crearcsv
     file = File.open('nombres.csv', 'r')
        nombres = file.readlines.map(&:chomp)
        file.close
       archivo = File.open('calificaciones.csv', 'w')
        nombres.each do |linea|
        arreglo = linea.split(', ')
        name=arreglo.delete_at(0)
        sum= arreglo.inject(0){|suma,num| suma+num.to_i}
        promedio = sum / arreglo.length.to_f
        archivo = File.open('calificaciones.csv', 'a')
        archivo.puts "#{name}, #{promedio}"
        archivo.close

    end
end
def met_nombre

    file = File.open('nombres.csv', 'r')
        nombres = file.readlines.map(&:chomp)
        file.close


end        

 

puts '################################################'
puts 'Selecciones una de las cuatro opciones del menu.'
puts '#################################################'

opcion = 0
while opcion !=4

 puts 'Ingrese 1 para ver Nombres de los  Alumnos' #Debe generar un archivo con el nombre de cada alumno
 puts 'ingrese 2 para cer Inasistencias'# Debe contar la cantidad de inasistencias totales
 puts 'Ingrese 3 para Alumnos aprobados' #mostrar los nombres de los alumnos aprobados
 puts 'Ingrese opción 4 para Salir'
 
 opcion = gets.chomp.to_i

puts case opcion

when 1
   puts met_crearcsv ('name')

when 2

when 3

when 4

    else
    puts 'mal ingresado'
    end

end

#  puts '1.-Nombre Alumno'  if select == 1
#  puts '2.-Inasistencias'  if select == 2
#  puts '3.-Alumnos aprobados'  if select == 3
#  puts '4.-Salir'  if select == 4
#  while
 



  
