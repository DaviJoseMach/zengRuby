# Orientação a Objetos em Ruby

A linguagem de programação Ruby suporta a programação orientada a objetos (POO), que é um paradigma de programação onde os programas são construídos em torno de objetos e suas interações. Neste guia, vamos explorar os conceitos básicos da POO em Ruby.

## Classes e Objetos

Em Ruby, os objetos são instâncias de classes. As classes são como moldes que definem a estrutura e o comportamento dos objetos. Para criar uma classe em Ruby, utiliza-se a palavra-chave `class`, seguida pelo nome da classe (com inicial em letra maiúscula):

```ruby
class Carro
  # Atributos e métodos serão definidos aqui
end
```

Para criar um objeto a partir de uma classe, utiliza-se o método `new`:

```ruby
meu_carro = Carro.new
```

## Atributos

Os atributos são características dos objetos. Em Ruby, você pode definir os atributos em uma classe usando o método `attr_accessor`, que automaticamente cria os métodos de leitura e escrita para o atributo:

```ruby
class Carro
  attr_accessor :marca, :modelo, :ano
  
  def initialize(marca, modelo, ano)
    @marca = marca
    @modelo = modelo
    @ano = ano
  end
end
```

## Métodos

Os métodos são as ações que os objetos podem realizar. Eles são definidos dentro da classe e podem acessar os atributos do objeto usando a variável especial `@` seguida do nome do atributo. O primeiro argumento de um método é sempre `self`, que se refere ao próprio objeto:

```ruby
class Carro
  attr_accessor :marca, :modelo, :ano
  
  def initialize(marca, modelo, ano)
    @marca = marca
    @modelo = modelo
    @ano = ano
  end
  
  def acelerar(velocidade)
    puts "#{@marca} #{@modelo} está acelerando a #{velocidade} km/h."
  end
end
```

## Herança

Em Ruby, você pode criar classes que herdam atributos e métodos de outras classes. Para isso, utiliza-se a palavra-chave `class`, seguida pelo nome da nova classe e, em seguida, `<` e o nome da classe pai:

```ruby
class CarroEsportivo < Carro
  def initialize(marca, modelo, ano, velocidade_maxima)
    super(marca, modelo, ano)
    @velocidade_maxima = velocidade_maxima
  end
  
  def mostrar_velocidade_maxima
    puts "#{@marca} #{@modelo} tem uma velocidade máxima de #{@velocidade_maxima} km/h."
  end
end
```

## Instanciando objetos

Agora, podemos criar objetos das classes `Carro` e `CarroEsportivo`:

```ruby
meu_carro = Carro.new("Toyota", "Corolla", 2023)
meu_carro.acelerar(100)

carro_esportivo = CarroEsportivo.new("Ferrari", "F40", 1992, 320)
carro_esportivo.acelerar(200)
carro_esportivo.mostrar_velocidade_maxima
```

## Conclusão

A programação orientada a objetos em Ruby é uma maneira poderosa de organizar e estruturar seu código. Com classes e objetos, você pode modelar o mundo real e criar hierarquias de classes para reutilizar código e manter seu programa mais limpo e legível. Experimente e divirta-se criando seus próprios objetos e classes em Ruby!
