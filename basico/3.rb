# 1 => Serve para tentar tratar comportamentos que vão contra o fluxo natural do sistema , jogando excecoes caso haja erros
# 2 => StandardError → classe base da maioria das exceções,RuntimeError → erro genérico (padrão do raise) ,ArgumentError → argumentos inválidos em métodos
# 5 => Serve para utilizar metodos de classe , metodos que podem sem usar sem instanciar um objeto  podendo sendo usando apenas chamando a classe
print "Digite um número:"
numero = gets.to_i
begin
  resultado = 100 / numero
rescue
  puts "Número digitado inválido!"
  exit
end
puts "100/#{numero} é aproximadamente #{resultado} "

class Consumo
  def self.verificaConsumo(consumo)
    if consumo < 7
      raise "Carro com consumo elevado"
    else
      puts "Consumo dentro do esperado"
    end
  end
end

# Exemplo de uso:
begin
  Consumo.verificaConsumo(5)
  #catch(e)
  #semelhanca com JS
rescue => e
  puts e.message
end

# 5=> exemplo de self
class Utils
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
end