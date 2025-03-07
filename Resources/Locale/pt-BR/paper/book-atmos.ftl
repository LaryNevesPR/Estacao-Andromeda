book-text-atmos-distro = A rede de distribuição, ou "distro" para abreviar, é a linha vital da estação. É responsável por transportar ar dos serviços atmosféricos por toda a estação.

        Os tubos relevantes são frequentemente pintados de Azul Suave Estourando, mas uma maneira infalível de identificá-los é usar um scanner de bandeja para rastrear quais tubos estão conectados a saídas de ventilação ativas na estação.

        A mistura de gases padrão da rede de distribuição é 20 graus Celsius, 78% nitrogênio, 22% oxigênio. Você pode verificar isso usando um analisador de gases em um tubo de distro ou qualquer ventilação conectada a ele. Circunstâncias especiais podem exigir misturas especiais.

        Quando se trata de decidir uma pressão de distro, há algumas coisas a considerar. As ventilações ativas irão regular a pressão da estação, então enquanto tudo estiver funcionando corretamente, não existe uma pressão de distro muito alta.

        Uma pressão de distro mais alta permitirá que a rede de distro atue como um buffer entre os mineradores de gás e as saídas de ventilação, fornecendo uma quantidade significativa de ar extra que pode ser usada para re-pressurizar a estação após um espaço vazio.

        Uma pressão de distro mais baixa reduzirá a quantidade de gás perdida no caso de a distro ser espaçada, uma maneira rápida de lidar com a contaminação da distro. Também pode ajudar a retardar ou prevenir a sobrepressurização da estação no caso de problemas de ventilação.

        As pressões comuns de distro estão na faixa de 300-375 kPa, mas outras pressões podem ser usadas com conhecimento dos riscos e benefícios.

        A pressão da rede é determinada pela última bomba bombeando para ela. Para evitar gargalos, todas as outras bombas entre os mineradores e a última bomba devem ser configuradas para sua taxa máxima, e quaisquer dispositivos desnecessários devem ser removidos.

        Você pode validar a pressão da distro com um analisador de gases, mas tenha em mente que a alta demanda devido a coisas como espaços vazios pode fazer com que a distro esteja abaixo da pressão alvo definida por períodos prolongados. Então, se você vir uma queda de pressão, não entre em pânico - pode ser temporária.

book-text-atmos-waste = A rede de resíduos é o principal sistema responsável por manter o ar na estação livre de contaminantes.

        Você pode identificar os tubos relevantes pela cor Vermelho Opaco Prazeroso ou usando um scanner de bandeja para rastrear quais tubos estão conectados aos depuradores na estação.

        A rede de resíduos é usada para transportar gases residuais para serem filtrados ou espaçados. É ideal manter a pressão em 0 kPa, mas às vezes pode estar em uma pressão baixa não nula enquanto em uso.

        Os técnicos têm a opção de filtrar ou espaçar os gases residuais. Embora o espaçamento seja mais rápido, a filtragem permite que os gases sejam reutilizados para reciclagem ou venda.

        A rede de resíduos também pode ser usada para diagnosticar problemas atmosféricos na estação. Altos níveis de um gás residual podem sugerir um grande vazamento, enquanto a presença de gases não residuais pode indicar um problema de configuração do depurador ou de conexão física. Se os gases estiverem em alta temperatura, pode indicar um incêndio.

book-text-atmos-alarms = Alarmes de ar estão localizados por toda a estação para permitir o gerenciamento e monitoramento da atmosfera local.

            A interface do alarme de ar fornece aos técnicos uma lista de sensores conectados, suas leituras e a capacidade de ajustar limites. Esses limites são usados para determinar a condição de alarme do alarme de ar. Os técnicos também podem usar a interface para definir pressões alvo para saídas de ventilação e configurar as velocidades de operação e os gases-alvo para depuradores.

            Enquanto a interface permite ajustes finos dos dispositivos sob o controle do alarme de ar, há também vários modos disponíveis para configuração rápida do alarme. Esses modos são automaticamente alternados quando o estado do alarme muda:
            - Filtragem: O modo padrão
            - Filtragem (ampla): Um modo de filtragem que modifica a operação dos depuradores para uma área mais ampla
            - Preencher: Desabilita os depuradores e define as saídas de ventilação para sua pressão máxima
            - Pânico: Desabilita as saídas de ventilação e define os depuradores para sifonar

            Uma ferramenta múltipla ou um configurador de rede pode ser usado para vincular dispositivos aos alarmes de ar.

book-text-atmos-vents =
    Abaixo está um guia de referência rápida para vários dispositivos atmosféricos:

                Válvulas Passivas:
                Essas válvulas não requerem energia, permitem que gases fluam livremente para dentro e para fora da rede de tubos a que estão conectadas.

                Válvulas Ativas:
                Essas são as válvulas mais comuns na estação. Elas possuem uma bomba interna e requerem energia. Por padrão, elas apenas bombeiam gases para fora dos tubos, e somente até 101 kPa. No entanto, elas podem ser reconfiguradas usando um alarme de ar. Elas também serão bloqueadas se a sala estiver abaixo de 1 kPa, para evitar bombear gases para o espaço.

                Depuradores de Ar:
                Esses dispositivos permitem a remoção de gases do ambiente e a colocação na rede de tubos conectada. Eles podem ser configurados para selecionar gases específicos quando conectados a um alarme de ar.

                Injetores de Ar:
                Injetores são semelhantes às válvulas ativas, mas não possuem bomba interna e não requerem energia. Eles não podem ser configurados, mas podem continuar bombeando gases até pressões muito mais altas.
