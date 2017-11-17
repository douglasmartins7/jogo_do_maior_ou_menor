def da_boas_vindas
    puts "Bem vindo ao jogo da adivinhação"
    puts "Qual é o seu nome?"
    nome = gets.strip
    puts "\n\n\n\n\n\n"
    puts "Começaremos o jogo para você,  #{nome}"
end

def sorteia_numero_secreto
    puts "Escolhendo um número secreto entre 0 e 200..."
    sorteado = 175
    puts "Escolhido... que tal adivinhar hoje nosso número secreto?"
    sorteado
end

def pede_um_numero(chutes, tentativa, limite_de_tentativas)
    puts "\n\n\n\n"
    puts "Tentativa #{tentativa} de #{limite_de_tentativas}"
    puts "Chutes até agora: #{chutes}"
    puts "Entro com o número"
    chute = gets.strip
    puts "Será que acertou? Você chutou #{chute}"
    chute.to_i
end

#early return in if
def verifica_se_acertou numero_secreto, chute
    acertou = numero_secreto == chute
    if acertou
        puts "Acertou"
        return true
    end
    maior = numero_secreto > chute
        if maior
            puts "O número secreto é maior!"
        else    
            puts "O número secreto é menor!"
        end
        false
end


da_boas_vindas
numero_secreto = sorteia_numero_secreto

limite_de_tentativas = 5 
chutes = []
total_de_chutes = 0


for tentativa  in 1..limite_de_tentativas
    chute = pede_um_numero chutes, tentativa, limite_de_tentativas
    #chutes[chutes.size] = chute
    chutes << chute
    #total_de_chutes = total_de_chutes += 1
    if verifica_se_acertou numero_secreto, chute
        break
    end
end