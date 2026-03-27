
# ---

# 2 – Acesso à variável `curso`
# Em Ruby, variáveis de instância, como `@curso`, não podem ser acessadas diretamente fora da classe, pois são privadas por padrão. Para permitir o acesso, deve-se criar um método leitor usando `attr_reader :curso`, que cria automaticamente um método público para leitura do atributo.

# ---

# 4 – Função de `attr_reader` e `attr_writer`
# O `attr_reader` permite ler o valor de um atributo fora da classe, enquanto o `attr_writer` permite modificar o valor de um atributo. Existe também o `attr_accessor`, que combina ambos, permitindo leitura e escrita. Por exemplo, `attr_reader :idade` permite acessar a idade do objeto, mas não alterá-la, e `attr_writer :sexo` permite modificar o sexo, mas não lê-lo diretamente.

# ---

# 6 – Diferença entre variável de classe e de instância

# * Variável de instância (`@var`): pertence a cada objeto individual. Cada instância possui seu próprio valor.
# * Variável de classe (`@@var`): pertence à classe e é compartilhada por todas as instâncias. Existe apenas uma cópia do valor para toda a classe.

# ---

# 8 – Como acessar um método de classe
# Métodos de classe pertencem à própria classe e são chamados diretamente pelo nome da classe, sem criar instância. Por exemplo, se a classe `Carro` possui o método de classe `quantidade_de_carros`, ele é acessado assim: `Carro.quantidade_de_carros`.

# ---

# 10 – Diferença entre método de classe e de instância

# * Método de instância: pertence ao objeto; precisa criar uma instância da classe para chamá-lo.
# * Método de classe: pertence à classe; pode ser chamado diretamente pela classe, sem criar objeto.

# ---

# 14 – Tipos de acesso em Ruby
# Ruby possui três níveis de acesso para métodos:

# 1. public – métodos podem ser chamados de qualquer lugar, dentro ou fora da classe.
# 2. protected – métodos só podem ser chamados por objetos da mesma classe ou suas subclasses, incluindo a própria instância.
# 3. private – métodos só podem ser chamados dentro da própria instância, sem usar receptor explícito (`obj.metodo` não funciona).



class Student
    attr_reader :age
    attr_writer :gender
    attr_accessor :skin_tone
    # iniciado como nulo devido a necessidade da questao
    # @var ==>intancia
    # @@var ==> classe
    @@total_students=0
    def initialize
        @name = nil
        @course = nil
        @shift = nil
        @university = nil
        @mtr = nil
        @age =0
        @gender =nil
        @skin_tone=nil
        @notes = []
        @aproveed= false
    end

    def init(name,age, mtr, course, shift, university,notes)
        @name = name
        @age= age
        @course = course
        @shift = shift
        @university = university
        @mtr = mtr
        @@total_students+=1
        @notes = notes
    end

    def more_then_18?
        # m =  @age >= 18 ? "#{@name} é maior de idade" : "#{@name} é menor de idade"
        # puts m
        if @age >= 18
            puts"#{@name} é maior de idade"
        else
            puts"#{@name} é menor de idade"
        end
    end

    # utilizar ? por convecao de metodos booleanos
    def is_approved?
        @aproveed = avg(@notes) >=  7
    end

    private def avg(nums)
        sum = 0
        nums.each do |num|
            sum += num
    end
        sum / nums.length.to_f  
    end
    
    def to_s
        <<~STR
        Student:
            Name        : #{@name}
            Mtr         : #{@mtr}
            Course      : #{@course}
            Shift       : #{@shift}
            University  : #{@university}
            Gender      : #{@gender || "Dado não informado"}
            Skin tone   : #{@skin_tone || "Dado não informado"}
            Situation   : #{@aproveed}
        STR
    end

    def self.total_students
        @@total_students
    end
end


random = Random.new
s1 = Student.new
s2 = Student.new
s1.init("Marquinhos",20, random.rand(0..100), "BCC", "manhã", "UESPI",[1,4,6,7])
s2.init("Lucas",14, random.rand(0..100), "TSI", "noite", "UESPI",[1,5,6,2,1])
s1.more_then_18?
s2.more_then_18?

puts Student.total_students
puts s1





class People
  def initialize(born_time)
    @born_time = born_time
    @years = 0
  end
  
  # Pega o tempo em segundos e retorna o valor aproximado em anos
  def timelife(time)
    @years = time/(365*3600*24).to_i
  end

  def to_s
    timelife(@born_time)
      return "Essa pessoa tem #{@years} anos"
  end
end
p1 = People.new(979000000)
puts p1