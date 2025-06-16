# Inicia un bucle que recorre todos los archivos que terminan en .txt
for file in *.txt; do
# Verifica si "$file" es realmente un archivo
# Si no lo es, pasa al siguiente archivo sin hacer nada
  [ -f "$file" ] || continue
# Usa el comando 'wc -l' para contar la cantidad de líneas del archivo
# El operador '<' redirige el contenido del archivo como entrada al comando
# El resultado se guarda en la variable 'sumatoria'
  sumatoria=$(wc -l < "$file")
# Muestra por pantalla el nombre del archivo y cuántas líneas tiene
  echo "$file tiene $sumatoria líneas."
# Termina el bucle
done
