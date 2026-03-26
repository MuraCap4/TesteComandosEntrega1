echo "==Brincando com a memória=="

echo "Memória antes:"
free -h

echo "\nAlocando memória..."
# Cria uma variável grande (~50MB)
MEM_TEST =$(head -c 50M </dev/zero | tr '\0' 'A')

echo "Memória depois de alocar:"
free -h

echo "\nSegurando memória por 5 segundos..."
sleep 5

echo "\nLiberando memória..."
unset MEM_TEST

echo "Memória depois de liberar:"
free -h 

echo "==== FIM ===="
