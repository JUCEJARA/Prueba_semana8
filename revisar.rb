def metodo_crearcsv
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
metodo_crearcsv

# file = File.open('nombres.csv', 'r')
# nombress = file.readlines
# file.close
# ahora

# nombres.each do |ausencias|
# califica = ausencias.split(', ').map(&:chomp)
# puts califica if califica[3] =='A'
# end


