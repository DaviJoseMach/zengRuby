# Coleções em Ruby

Ruby oferece uma variedade de coleções que podem ser usadas para armazenar e manipular conjuntos de dados. Neste guia, vamos explorar algumas das coleções mais comuns em Ruby.

## 1. Array

O Array é uma coleção ordenada de elementos. Os elementos podem ser de diferentes tipos, e o índice é baseado em zero.

### Criando um Array:

```ruby
# Array vazio
array_vazio = []

# Array com elementos
numeros = [1, 2, 3, 4, 5]
nomes = ["João", "Maria", "Pedro"]
```

### Acessando elementos:

```ruby
puts numeros[0] # Saída: 1
puts nomes[1]   # Saída: Maria
```

### Operações comuns:

```ruby
# Adicionar elementos
numeros << 6   # Adiciona o número 6 ao final do array
nomes.push("Ana")  # Adiciona "Ana" ao final do array

# Tamanho do array
puts numeros.length   # Saída: 6

# Iteração
numeros.each do |num|
  puts num
end

# Remover elementos
nomes.delete("João")  # Remove o elemento "João" do array
```

## 2. Hash

Hash é uma coleção de pares chave-valor, onde as chaves são únicas. É útil para armazenar informações associadas a determinados identificadores.

### Criando um Hash:

```ruby
# Hash vazio
hash_vazio = {}

# Hash com elementos
pessoa = { nome: "João", idade: 30, profissao: "Engenheiro" }
```

### Acessando elementos:

```ruby
puts pessoa[:nome]    # Saída: João
puts pessoa[:idade]   # Saída: 30
```

### Operações comuns:

```ruby
# Adicionar elemento
pessoa[:altura] = 1.80

# Tamanho do hash
puts pessoa.length   # Saída: 4

# Iteração
pessoa.each do |chave, valor|
  puts "#{chave}: #{valor}"
end

# Remover elemento
pessoa.delete(:profissao)   # Remove a chave "profissao" e seu valor do hash
```

## 3. Set

O Set é uma coleção de elementos não ordenados e não duplicados. É útil quando você precisa garantir que os elementos não se repitam.

### Criando um Set:

```ruby
require 'set'

# Set vazio
set_vazio = Set.new

# Set com elementos
numeros_unicos = Set.new([1, 2, 3, 4, 5])
```

### Operações comuns:

```ruby
# Adicionar elementos
numeros_unicos << 6

# Tamanho do set
puts numeros_unicos.length   # Saída: 6

# Iteração
numeros_unicos.each do |num|
  puts num
end

# Remover elemento
numeros_unicos.delete(3)   # Remove o elemento 3 do set
```

## Conclusão

As coleções em Ruby oferecem uma maneira poderosa de organizar e manipular dados em seus programas. Utilizando Arrays, Hashes e Sets, você pode armazenar informações de forma estruturada, acessá-las facilmente e realizar operações comuns como adicionar, remover e iterar sobre os elementos. Experimente essas coleções em seus projetos e aproveite a flexibilidade que elas oferecem!
