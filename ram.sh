#!/data/data/com.termux/files/usr/bin/bash

# Função para mostrar a contagem de RAM
mostrar_ram() {
    echo "Contagem de RAM:"
    free -h | grep Mem
}

# Função para mostrar a memória RAM livre
mostrar_ram_livre() {
    echo "Memória RAM livre:"
    free -h | awk '/Mem/{print $4}'
}

# Mostrar a contagem de RAM
mostrar_ram

# Mostrar a memória RAM livre
mostrar_ram_livre

# Mostrar os aplicativos que estão usando mais RAM
echo "Aplicativos que estão usando mais RAM:"
ps -eo pid,comm,%mem --sort=-%mem | head -n 10

echo "Lista de aplicativos exibida!"

