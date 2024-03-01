INSERIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
BUSCAR_RECEITAS = 3
SAIR = 4

def bem_vindo()
    puts "Bem-vindo ao CookBook, sua rede social de receitas"
end

def menu()
    puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
    puts "[#{VISUALIZAR_RECEITAS}] Ver todas as receitas"
    puts "[#{BUSCAR_RECEITAS}] Buscar receitas"
    puts "[#{SAIR}] Sair"
    print "Escolha uma opção: "
    return gets.chomp.to_i()
end

def inserir_receita()
    puts "Digite o nome da receita: "
    nome = gets.chomp.downcase
    puts "Digite o tipo da receita: "
    tipo = gets.chomp.downcase
    puts
    puts "Receita de #{nome} cadastrada com sucesso!"
    return {nome: nome, tipo: tipo}
end

def imprimir_receitas(receitas)
    puts "========== Receitas Cadastradas =========="                                       # for receita in receitas do
    receitas.each do |receita|                                                              # puts receita
        puts "#{receita[:nome]} - #{receita[:tipo]}"                                        # end
    end                                                                                     # receitas.each do |receita|
    puts
    if receitas.empty?
        puts "Nenhuma receita cadastrada."
        puts
    end
end

bem_vindo()

receitas = []

opcao = menu()

loop do
    if (opcao == INSERIR_RECEITA)
        receitas << inserir_receita()
    elsif (opcao == VISUALIZAR_RECEITAS)
        imprimir_receitas(receitas)
    elsif (opcao == SAIR)
        break
    else
        puts "Opção inválida."
    end

    opcao = menu()
end

puts
puts "Obrigado por usar o CookBook, até logo."
puts
