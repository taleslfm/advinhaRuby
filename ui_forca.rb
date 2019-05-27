def da_boas_vindas
	puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	puts "@ Bem vindo ao jogo da forca. @"
	puts "@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@"
	puts
	puts "Qual seu nome?"
	nome = gets.strip
	puts "\n\n"
	puts "Começaremos o jogo agora, #{nome}."
	nome
end

def desenha_forca erros
    cabeca = "   "
    corpo = " "
    pernas = "   "
    bracos = "   "
    if erros >= 1
        cabeca = "(_)"
    end
    if erros >= 2
        bracos = " | "
        corpo = "|"
    end
    if erros >= 3
        bracos = "\\|/"
    end
    if erros >= 4
        pernas = "/ \\"
    end

    puts "  _______       "
    puts " |/      |      "
    puts " |      #{cabeca}  "
    puts " |      #{bracos}  "
    puts " |       #{corpo}  "
    puts " |      #{pernas}  "
    puts " |              "
    puts "_|___           "
    puts
end

def avisa_pontos_totais pontos
	puts "Você tem #{pontos}"
end

def avisa_campeao_atual dados
	puts "Nosso campeão atual é #{dados[0]} com #{dados[1]} pontos."
end

def nao_quer_jogar?
	puts "Deseja jogar novamente? [S/N]"
	quero_jogar = gets.strip
	nao_quero_jogar = quero_jogar.upcase == "N"
end

def cabecalho_de_chutes_erros chutes, erros, mascara
	puts
	desenha_forca erros
	puts "A palavra secreta é: #{mascara}"
	puts "Erros até agora: #{erros}"
	puts "Chutes até agora: #{chutes}"
end

def pede_um_chute
	puts "Entre com uma letra ou palavra: "
	chute = gets.strip.downcase
	puts "Será que acertou? Seu chute foi #{chute}"
	chute
end

def avisa_um_chute_ja_efetuado chute
	puts "Você já chutou #{chute}"
end

def avisa_letra_nao_encontrada
	puts "Letra não encontrada"
end

def avisa_letra_encontrada total_encontrado
	puts "Letra encontrada #{total_encontrado} vezes"			
end

def avisa_acertou_palavra
    puts "\nParabéns, você ganhou!"
    puts

    puts "       ___________      "
    puts "      '._==_==_=_.'     "
    puts "      .-\\:      /-.    "
    puts "     | (|:.     |) |    "
    puts "      '-|:.     |-'     "
    puts "        \\::.    /      "
    puts "         '::. .'        "
    puts "           ) (          "
    puts "         _.' '._        "
    puts "        '-------'       "
    puts
end

def avisa_errou_palavra
	puts "Que pena, você errou"
end

def pontuacao_final_do_jogo pontos_ate_agora
	puts "Você ganhou #{pontos_ate_agora} pontos"
end

def escolhendo_palavra
	puts "Escolhendo a palavra..."
end

def palavra_secreta_escolhida palavra_secreta
	puts "palavra secreta com #{palavra_secreta.size} letras. Boa sorte!"
	palavra_secreta
end