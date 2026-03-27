
class Utils
    #Retorna o valor da soma dos valores fornecidos
    # params
    # values => numbers []
    def self.sum(values)
      sum = 0
      if values.length === 0  
          puts "Valores Faltando"
          return
      end 
      
      values.each do |value|
        sum += value
      end
      return sum
    end

    def self.is_pair?(value)
      return value % 2 == 0
    end

    def self.hohoho
      puts "ho"*50
    end

    #4
    def self.nome(nome)
      return "Meu nome é #{nome}"
    end

    #5
    def self.tratamento(nome)
      if nome[-1].downcase == "a"
        return "Sra. #{nome}"
      end
      return "Sr. #{nome}"
    end

    #6
    def self.print_array(values)
      values.each do |value|
        puts value
      end
    end

    #7
    def self.square_array(values)
      result = []

      values.each do |value|
        result << value * value
      end

      return result
    end

    #8
    def self.split_even_odd(values)
      pares = []
      impares = []

      values.each do |value|
        if value % 2 == 0
          pares << value
        else
          impares << value
        end
      end

      return [pares, impares]
    end

    #9
    def self.sort_desc(values)
      return values.sort.reverse
    end

    #10
    def self.capitalize_words(text)
      words = text.split(" ")
      result = []

      words.each do |word|
        result << word.capitalize
      end

      return result.join(" ")
    end

    #12
    def self.swap_strings(a, b)
      temp = a.dup
      a.replace(b)
      b.replace(temp)
    end
end

#11
class Carro
  attr_accessor :cor, :marca, :modelo, :som_motor

  def initialize(cor, marca, modelo, som_motor)
    @cor = cor
    @marca = marca
    @modelo = modelo
    @som_motor = som_motor
  end

  def ligar
    puts @som_motor
  end
end

#13
class Integer
  def par?
    return self % 2 == 0
  end

  def impar?
    return self % 2 != 0
  end
end

#14
dias = ["Segunda", "Terça", "Quarta", "Quinta", "Sexta", "Sábado"]
novo_dia = "Sétima feira"
dias << novo_dia

#15
texto = "exemplo"
simbolo = texto.to_sym

#alguns testes n fiz todos

sum = Utils.sum([])
pair = Utils.is_pair?(2)
Utils.hohoho

puts sum
puts pair