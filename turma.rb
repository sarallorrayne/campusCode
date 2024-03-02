class Turma
  attr_accessor :nome, :sala, :responsavel, :adicionar_aluno
  attr_reader :alunos

  def initialize(nome, sala, responsavel)
    @nome = nome
    @sala = sala
    @responsavel = responsavel
    @alunos = []
  end

  def adicionar_aluno(aluno)
    alunos << aluno
  end

  private

  attr_writer :alunos
end
