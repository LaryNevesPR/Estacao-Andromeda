command-description-tpto =
    Teletransporta as entidades fornecidas para alguma entidade alvo.
command-description-player-list =
    Retorna uma lista de todas as sessões de jogadores.
command-description-player-self =
    Retorna a sessão do jogador atual.
command-description-player-imm =
    Retorna a sessão associada ao jogador fornecido como argumento.
command-description-player-entity =
    Retorna as entidades das sessões de entrada.
command-description-self =
    Retorna a entidade atual anexada.
command-description-physics-velocity =
    Retorna a velocidade das entidades de entrada.
command-description-physics-angular-velocity =
    Retorna a velocidade angular das entidades de entrada.
command-description-buildinfo =
    Fornece informações sobre a construção do jogo.
command-description-cmd-list =
    Retorna uma lista de todos os comandos, para este lado.
command-description-explain =
    Explica a expressão fornecida, fornecendo descrições e assinaturas de comandos.
command-description-search =
    Pesquisa através da entrada pelo valor fornecido.
command-description-stopwatch =
    Mede o tempo de execução da expressão fornecida.
command-description-types-consumers =
    Fornece todos os comandos que podem consumir o tipo fornecido.
command-description-types-tree =
    Ferramenta de depuração para retornar todos os tipos que o interpretador de comandos pode converter a entrada.
command-description-types-gettype =
    Retorna o tipo da entrada.
command-description-types-fullname =
    Retorna o nome completo do tipo de entrada de acordo com CoreCLR.
command-description-as =
    Converte a entrada para o tipo fornecido.
    Eficazmente uma dica de tipo se você souber o tipo, mas o interpretador não.
command-description-count =
    Conta a quantidade de entradas na sua entrada, retornando um número inteiro.
command-description-map =
    Mapeia a entrada sobre o bloco fornecido, com o tipo de retorno esperado fornecido.
    Este comando pode ser modificado para não precisar de um tipo de retorno explícito no futuro.
command-description-select =
    Seleciona N objetos ou N% de objetos da entrada.
    Você pode inverter este comando com not para fazer ele selecionar tudo, exceto N objetos.
command-description-comp =
    Retorna o componente fornecido das entidades de entrada, descartando entidades sem esse componente.
command-description-delete =
    Exclui as entidades de entrada.
command-description-ent =
    Retorna o ID da entidade fornecida.
command-description-entities =
    Retorna todas as entidades no servidor.
command-description-paused =
    Filtra as entidades de entrada por estarem ou não pausadas.
    Este comando pode ser invertido com not.
command-description-with =
    Filtra as entidades de entrada por estarem ou não possuindo o componente fornecido.
    Este comando pode ser invertido com not.
command-description-fuck =
    Lança uma exceção.
command-description-ecscomp-listty =
    Lista todos os tipos de componentes registrados.
command-description-cd =
    Altera o diretório atual da sessão para o caminho relativo ou absoluto fornecido.
command-description-ls-here =
    Lista o conteúdo do diretório atual.
command-description-ls-in =
    Lista o conteúdo do caminho relativo ou absoluto fornecido.
command-description-methods-get =
    Retorna todos os métodos associados ao tipo de entrada.
command-description-methods-overrides =
    Retorna todos os métodos substituídos no tipo de entrada.
command-description-methods-overridesfrom =
    Retorna todos os métodos substituídos do tipo fornecido no tipo de entrada.
command-description-cmd-moo =
    Faz as perguntas importantes.
command-description-cmd-descloc =
    Retorna a string de localização para a descrição de um comando.
command-description-cmd-getshim =
    Retorna um shim de execução de um comando.
command-description-help =
    Fornece um resumo rápido de como usar o toolshed.
command-description-ioc-registered =
    Retorna todos os tipos registrados no IoCManager na thread atual (geralmente a thread do jogo).
command-description-ioc-get =
    Obtém uma instância de um registro IoC.
command-description-loc-tryloc =
    Tenta obter uma string de localização, retornando null se não conseguir.
command-description-loc-loc =
    Obtém uma string de localização, retornando a string não localizada se não conseguir.
command-description-physics-angular_velocity =
    Retorna a velocidade angular das entidades fornecidas.
command-description-vars =
    Fornece uma lista de todas as variáveis definidas nesta sessão.
command-description-any =
    Retorna verdadeiro se houver algum valor na entrada, caso contrário, falso.
command-description-ArrowCommand =
    Atribui a entrada a uma variável.
command-description-isempty =
    Retorna verdadeiro se a entrada estiver vazia, caso contrário, falso.
command-description-isnull =
    Retorna verdadeiro se a entrada for nula, caso contrário, falso.
command-description-unique =
    Filtra a sequência de entrada para exclusividade, removendo valores duplicados.
command-description-where =
    Dada uma sequência de entrada IEnumerable<T>, pega um bloco de assinatura T -> bool que decide se cada valor de entrada deve ser incluído na sequência de saída.
command-description-do =
    Compatibilidade retroativa com BQL, aplica os comandos antigos fornecidos sobre a sequência de entrada.
command-description-named =
    Filtra as entidades de entrada pelo nome, com a regex ^selector$.
command-description-prototyped =
    Filtra as entidades de entrada pelo seu protótipo.
command-description-nearby =
    Cria uma nova lista de todas as entidades próximas às entradas dentro do intervalo fornecido.
command-description-first =
    Retorna a primeira entrada do enumerável fornecido.
command-description-splat =
    "Espalha" um bloco, valor ou variável, criando N cópias dele em uma lista.
command-description-val =
    Converte o valor, bloco ou variável fornecido para o tipo fornecido. Isso é principalmente uma solução alternativa para as limitações atuais das variáveis.
command-description-actor-controlled =
    Filtra entidades por estarem ou não sendo controladas ativamente.
command-description-actor-session =
    Retorna as sessões associadas às entidades de entrada.
command-description-physics-parent =
    Retorna o(s) pai(s) das entidades de entrada.
command-description-emplace =
    Executa o bloco fornecido sobre suas entradas, com o valor de entrada colocado na variável $value dentro do bloco.
    Além disso, divide $wx, $wy, $proto, $desc, $name e $paused para entidades.
    Também pode ter valores divididos para outros tipos, consulte a documentação para esse tipo para mais informações.
command-description-AddCommand =
    Executa adição numérica.
command-description-SubtractCommand =
    Executa subtração numérica.
command-description-MultiplyCommand =
    Executa multiplicação numérica.
command-description-DivideCommand =
    Executa divisão numérica.
command-description-min =
    Retorna o mínimo de dois valores.
command-description-max =
    Retorna o máximo de dois valores.
command-description-BitAndCommand =
    Executa AND bit a bit.
command-description-BitOrCommand =
    Executa OR bit a bit.
command-description-BitXorCommand =
    Executa XOR bit a bit.
command-description-neg =
    Nega a entrada.
command-description-GreaterThanCommand =
    Executa uma comparação de maior que, x > y.
command-description-LessThanCommand =
    Executa uma comparação de menor que, x < y.
command-description-GreaterThanOrEqualCommand =
    Executa uma comparação de maior ou igual que, x >= y.
command-description-LessThanOrEqualCommand =
    Executa uma comparação de menor ou igual que, x <= y.
command-description-EqualCommand =
    Executa uma comparação de igualdade, retornando verdadeiro se as entradas forem iguais.
command-description-NotEqualCommand =
    Executa uma comparação de igualdade, retornando verdadeiro se as entradas não forem iguais.
command-description-append =
    Acrescenta um valor ao enumerável de entrada.
command-description-DefaultIfNullCommand =
    Substitui a entrada pelo valor padrão do tipo se for nulo, embora apenas para tipos de valor (não objetos).
command-description-OrValueCommand =
    Se a entrada for nula, usa o valor alternativo fornecido.
command-description-DebugPrintCommand =
    Imprime o valor fornecido de forma transparente, para impressões de depuração em uma execução de comando.
command-description-i =
    Constante inteira.
command-description-f =
    Constante flutuante.
command-description-s =
    Constante de string.
command-description-b =
    Constante booleana.
command-description-join =
    Junta duas sequências em uma sequência.
command-description-reduce =
    Dado um bloco a ser usado como redutor, transforma uma sequência em um único valor.
    O lado esquerdo do bloco é implícito e o lado direito é armazenado em $value.
command-description-rep =
    Repete o valor de entrada N vezes para formar uma sequência.
command-description-take =
    Pega N valores da sequência de entrada.
command-description-spawn-at =
    Gera uma entidade nas coordenadas fornecidas.
command-description-spawn-on =
    Gera uma entidade na entidade fornecida, em suas coordenadas.
command-description-spawn-attached =
    Gera uma entidade anexada à entidade fornecida, em (0, 0) em relação a ela.
command-description-mappos =
    Retorna as coordenadas de uma entidade em relação ao seu mapa atual.
command-description-pos =
    Retorna as coordenadas de uma entidade.
command-description-tp-coords =
    Teletransporta o alvo para as coordenadas fornecidas.
command-description-tp-to =
    Teletransporta o alvo para a outra entidade fornecida.
command-description-tp-into =
    Teletransporta o alvo "dentro" da outra entidade fornecida, anexando-o em (0, 0) em relação a ela.
command-description-comp-get =
    Obtém o componente fornecido da entidade fornecida.
command-description-comp-add =
    Adiciona o componente fornecido à entidade fornecida.
command-description-comp-ensure =
    Garante que a entidade fornecida tenha o componente fornecido.
command-description-comp-has =
    Verifica se a entidade fornecida possui o componente fornecido.
command-description-AddVecCommand =
    Adiciona um escalar (valor único) a cada elemento da entrada.
command-description-SubVecCommand =
    Subtrai um escalar (valor único) de cada elemento da entrada.
command-description-MulVecCommand =
    Multiplica um escalar (valor único) por cada elemento da entrada.
command-description-DivVecCommand =
    Divide cada elemento da entrada por um escalar (valor único).
command-description-rng-to =
    Retorna um número da sua entrada para seu argumento (ou seja, n..m inclusive)
command-description-rng-from =
    Retorna um número para sua entrada a partir de seu argumento (ou seja, m..n inclusive)
command-description-rng-prob =
    Retorna um booleano com base na probabilidade/chance de entrada (de 0 a 1)
command-description-sum =
    Calcula a soma da entrada.
command-description-bin =
    "Agrupa" a entrada, contando quantas vezes cada elemento único ocorre.
command-description-extremes =
    Retorna os dois extremos de uma lista, entrelaçados.
command-description-sortby =
    Ordena a entrada do menor para o maior pela chave calculada.
command-description-sortmapby =
    Ordena a entrada do menor para o maior pela chave calculada, substituindo o valor por sua chave calculada posteriormente.
command-description-sort =
    Ordena a entrada do menor para o maior.
command-description-sortdownby =
    Ordena a entrada do maior para o menor pela chave calculada.
command-description-sortmapdownby =
    Ordena a entrada do maior para o menor pela chave calculada, substituindo o valor por sua chave calculada posteriormente.
command-description-sortdown =
    Ordena a entrada do maior para o menor.
command-description-iota =
    Retorna uma lista de números de 1 a N.
command-description-to =
    Retorna uma lista de números de N a M.
command-description-curtick =
    O tick atual do jogo.
command-description-curtime =
    O tempo atual do jogo (um TimeSpan)
command-description-realtime =
    O tempo real atual desde o início (um TimeSpan)
command-description-servertime =
    O tempo atual do jogo no servidor, ou zero se formos o servidor (um TimeSpan)
command-description-replace =
    Substitui as entidades de entrada pelo protótipo fornecido, preservando posição e rotação (mas nada mais).
command-description-allcomps =
    Retorna todos os componentes na entidade fornecida.
command-description-entitysystemupdateorder-tick =
    Lista a ordem de atualização dos sistemas de entidade por tick.
command-description-entitysystemupdateorder-frame =
    Lista a ordem de atualização dos sistemas de entidade por frame.
command-description-more =
    Imprime o conteúdo de $more, ou seja, quaisquer extras que o Toolshed não imprimiu no último comando.
command-description-ModulusCommand =
    Calcula o módulo de dois valores.
    Isso geralmente é o restante, verifique a documentação do C# para o tipo.
command-description-ModVecCommand =
    Realiza a operação de módulo sobre a entrada com o valor constante fornecido à direita.
command-description-BitAndNotCommand =
    Realiza AND-NOT bit a bit na entrada.
command-description-BitOrNotCommand =
    Realiza OR-NOT bit a bit na entrada.
command-description-BitXnorCommand =
    Realiza XNOR bit a bit na entrada.
command-description-BitNotCommand =
    Realiza NOT bit a bit na entrada.
command-description-abs =
    Calcula o valor absoluto da entrada (removendo o sinal)
command-description-average =
    Calcula a média (média aritmética) da entrada.
command-description-bibytecount =
    Retorna o tamanho da entrada em bytes, desde que a entrada implemente IBinaryInteger.
    Isso NÃO é sizeof.
command-description-shortestbitlength =
    Retorna o número mínimo de bits necessários para representar o valor de entrada.
command-description-countleadzeros =
    Conta o número de zeros binários à esquerda no valor de entrada.
command-description-counttrailingzeros =
    Conta o número de zeros binários à direita no valor de entrada.
command-description-fpi =
    pi (3,14159...) como um float.
command-description-fe =
    e (2,71828...) como um float.
command-description-ftau =
    tau (6,28318...) como um float.
command-description-fepsilon =
    O valor de epsilon para um float, exatamente 1,4e-45.
command-description-dpi =
    pi (3,14159...) como um double.
command-description-de =
    e (2,71828...) como um double.
command-description-dtau =
    tau (6,28318...) como um double.
command-description-depsilon =
    O valor de epsilon para um double, exatamente 4,9406564584124654E-324.
command-description-hpi =
    pi (3,14...) como um half.
command-description-he =
    e (2,71...) como um half.
command-description-htau =
    tau (6,28...) como um half.
command-description-hepsilon =
    O valor de epsilon para um half, exatamente 5,9604645E-08.
command-description-floor =
    Retorna o piso do valor de entrada (arredondando em direção a zero).
command-description-ceil =
    Retorna o teto do valor de entrada (arredondando para longe de zero).
command-description-round =
    Arredonda o valor de entrada.
command-description-trunc =
    Trunca o valor de entrada.
command-description-round2frac =
    Arredonda o valor de entrada para o número especificado de dígitos fracionários.
command-description-exponentbytecount =
    Retorna o número de bytes necessários para armazenar o expoente.
command-description-significandbytecount =
    Retorna o número de bytes necessários para armazenar o significando.
command-description-significandbitcount =
    Retorna o comprimento exato em bits do significando.
command-description-exponentshortestbitcount =
    Retorna o número mínimo de bits para armazenar o expoente.
command-description-stepnext =
    Passa para o próximo valor de float, adicionando um ao significando com retenção.
command-description-stepprev =
    Passa para o valor de float anterior, subtraindo um do significando com retenção.
command-description-checkedto =
    Converte do tipo numérico de entrada para o destino, gerando erro se não for possível.
command-description-saturateto =
    Converte do tipo numérico de entrada para o destino, saturando se o valor estiver fora do intervalo.
    Por exemplo, converter 382 para um byte saturaria para 255 (o valor máximo de um byte).
command-description-truncto =
    Converte do tipo numérico de entrada para o destino, com truncamento.
    No caso de inteiros, isso é uma conversão de bits com extensão de sinal.
command-description-iscanonical =
    Retorna se a entrada está em forma canônica.
command-description-iscomplex =
    Retorna se a entrada é um número complexo (por valor, não por tipo)
command-description-iseven =
    Retorna se a entrada é par.
    Não é um pacote javascript.
command-description-isodd =
    Retorna se a entrada é ímpar.
command-description-isfinite =
    Retorna se a entrada é finita.
command-description-isimaginary =
    Retorna se a entrada é puramente imaginária (sem parte real).
command-description-isinfinite =
    Retorna se a entrada é infinita.
command-description-isinteger =
    Retorna se a entrada é um inteiro (por valor, não por tipo)
command-description-isnan =
    Retorna se a entrada não é um número (NaN).
    Este é um valor especial de ponto flutuante, então isso é por valor, não por tipo.
command-description-isnegative =
    Retorna se a entrada é negativa.
command-description-ispositive =
    Retorna se a entrada é positiva.
command-description-isreal =
    Retorna se a entrada é puramente real (sem parte imaginária).
command-description-issubnormal =
    Retorna se a entrada está em forma subnormal.
command-description-iszero =
    Retorna se a entrada é zero.
command-description-pow =
    Calcula a potência de sua entrada esquerda para sua entrada direita. x^y.
command-description-sqrt =
    Calcula a raiz quadrada de sua entrada.
command-description-cbrt =
    Calcula a raiz cúbica de sua entrada.
command-description-root =
    Calcula a raiz N de sua entrada.
command-description-hypot =
    Calcula a hipotenusa de um triângulo com os lados A e B fornecidos.
command-description-sin =
    Calcula o seno da entrada.
command-description-sinpi =
    Calcula o seno da entrada multiplicada por pi.
command-description-asin =
    Calcula o arco seno da entrada.
command-description-asinpi =
    Calcula o arco seno da entrada multiplicada por pi.
command-description-cos =
    Calcula o cosseno da entrada.
command-description-cospi =
    Calcula o cosseno da entrada multiplicada por pi.
command-description-acos =
    Calcula o arco cosseno da entrada.
command-description-acospi =
    Calcula o arco cosseno da entrada multiplicada por pi.
command-description-tan =
    Calcula a tangente da entrada.
command-description-tanpi =
    Calcula a tangente da entrada multiplicada por pi.
command-description-atan =
    Calcula o arco tangente da entrada.
command-description-atanpi =
    Calcula o arco tangente da entrada multiplicada por pi.
command-description-iterate =
    Itera a função fornecida sobre a entrada N vezes, retornando uma lista de resultados.
    Pense nisso como aplicar sucessivamente a função a um valor, acompanhando todos os valores intermediários.
command-description-pick =
    Escolhe um valor aleatório da entrada.
command-description-tee =
    Distribui a entrada no bloco fornecido, ignorando o resultado do bloco.
    Isso essencialmente permite que você tenha um ramal no seu código para fazer várias operações em um valor.
command-description-cmd-info =
    Retorna um CommandSpec para o comando fornecido.
    Por si só, isso significa que ele imprimirá a mensagem de ajuda do comando.
command-description-comp-rm =
    Remove o componente fornecido da entidade.
