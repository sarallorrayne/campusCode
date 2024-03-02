class Funcionario
  attr_accessor :nome, :ferias, :matricula_funcionario, :data_inicio, :data_fim
  attr_reader :ferias

  def initialize(nome, matricula_funcionario)
    @nome = nome
    @matricula_funcionario = matricula_funcionario
    @ferias = false
  end

  def inicia_ferias()
    @ferias = true
    @data_inicio = Time.now()
  end

  def finaliza_ferias()
    @ferias = false
    @data_fim = Time.now()
  end

  def imprime()
    puts ("Funcionário: #{nome} - Matrícula: #{matricula_funcionario} - Férias: #{ferias}")
  end
end
