class Professor < Funcionario
  attr_accessor :disciplina

  def initialize(nome, matricula_funcionario, disciplina)
    super(nome, matricula_funcionario)
    @disciplina = disciplina
  end
end
