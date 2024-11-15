# EnergySaver <img src="https://github.com/user-attachments/assets/89b69752-08d4-46a4-948d-e74a8e2905ab" alt="Descrição da imagem" width="150"/>


### Projeto destinado aos entregáveis da Global Solutions 2024.2
### Tema: Energia sustentável

### Visão Geral
O projeto propõe uma solução de monitoramento energético para postes públicos, utilizando a Internet das Coisas (IoT) para registrar o consumo e status de cada poste. A aplicação inclui uma API Rest em Java para gerenciar dados e um aplicativo mobile para visualização. A interface exibe um **dashboard de economia de energia** voltado para órgãos governamentais, além de relatórios detalhados sobre o consumo, promovendo transparência e eficiência no uso de recursos públicos.

---

### Objetivos da Solução
A solução tem como principais objetivos:
- Monitorar o **consumo energético em tempo real** de cada poste público.
- Registrar e calcular a **economia de energia** comparada ao consumo médio esperado.
- Facilitar o **acesso a relatórios de consumo e economia** para gestores e técnicos.
- Reduzir custos com energia e otimizar a manutenção de postes.

---

### Benefícios para o Negócio
1. **Redução de Custos Operacionais**  
   O monitoramento em tempo real permite detectar anomalias de consumo e identificar rapidamente postes que demandam manutenção, reduzindo despesas com energia e manutenção preventiva.

2. **Eficiência Energética**  
   A análise contínua do consumo possibilita a economia de energia ao ajustar automaticamente os níveis de potência de iluminação dos postes, especialmente em horários e locais de baixa demanda.

3. **Facilidade na Tomada de Decisões**  
   Relatórios detalhados e dashboards personalizados oferecem aos gestores uma visão completa do sistema, permitindo tomadas de decisão mais informadas e baseadas em dados reais.

4. **Transparência e Responsabilidade Ambiental**  
   A solução promove a transparência no uso de recursos públicos e incentiva práticas sustentáveis, alinhando-se a metas climáticas e ao compromisso com a sustentabilidade ambiental.

---

### Arquitetura da Solução

![image](https://github.com/user-attachments/assets/dbc38619-a34c-4692-a9c7-754b14a517b7)


### Tecnologias Utilizadas
- **Java** e **Spring Boot** para a API Rest
- **Banco de Dados**: MySQL ou PostgreSQL para dados relacionais
- **Aplicativo Mobile**: Framework (React Native ou Flutter) para interface do usuário
- **Internet das Coisas (IoT)** para sensores e dispositivos de monitoramento de postes

---

### Configuração do Ambiente
1. Clonar o repositório:  
   ```
   git clone https://github.com/dudaolidev/EnergySaverGS.git
   ```


### Configuração do Ambiente

1. **Configurar o Banco de Dados**:
   - Criar um banco de dados Oracle.
   - Executar o script de criação de tabelas fornecido em `scripts.sql`.

2. **Configurar a API**:
   - Configurar as variáveis de ambiente no arquivo `application.properties`.
   - Iniciar o servidor:
     ```bash
     mvn spring-boot:run
     ```

