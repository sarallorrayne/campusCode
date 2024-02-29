puts "Bem-vindo ao CookBook, sua rede social de receitas"

receitas = []

while (1 == 1) do
    puts "Digite o nome da receita: "
    nome = gets.chomp.downcase

    receitas << nome

    puts
    puts "Receita de #{nome} cadastrada com sucesso!"
    puts
    puts "========== Receitas Cadastradas =========="

    for receita in receitas do
    puts receita
    end
end
