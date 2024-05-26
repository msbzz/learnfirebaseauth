# learnfirebaseauth

Projeto baseado na video aula '**Flutter Firebase Auth - The Cleanest & Fastest Way - IOS & Android**' que se encontra no YOUTUBE 'https://www.youtube.com/watch?v=rWamixHIKmQ&t=293s' que tem como intuito estudar o de cadastro de acesso e a autenticação no firebase que é uma plataforma de desenvolvimento de aplicativos móveis e web oferecida pelo Google.

obs: neste projeto foi considerado apenas o android e precisa dos arquivos 'google-services.json' e 'values.xml' que contem informações de sua conta firebase

## Inicializando o projeto

Para utilizar os serviços do Firebase em um aplicativo, é necessário criar e configurar uma conta no Firebase. O Firebase oferece uma variedade de ferramentas e serviços, incluindo autenticação de usuários, banco de dados em tempo real, armazenamento em nuvem e muito mais, facilitando o desenvolvimento de aplicativos robustos e escaláveis.

### Necessidade de uma Conta no Firebase

Ter uma conta no Firebase permite acessar o console do Firebase, onde é possível gerenciar todos os projetos e serviços relacionados. Além disso, a conta proporciona acesso a métricas e análises detalhadas do aplicativo, auxiliando na tomada de decisões para melhorias e crescimento contínuo.

### Configuração e Obtenção do Arquivo `google-services.json`

1. **Criação do Projeto Firebase**:
   - Acesse o console do Firebase (https://console.firebase.google.com/).
   - Clique em "Adicionar projeto" e siga as instruções para criar um novo projeto.

2. **Adicionar um Aplicativo Android ao Projeto**:
   - No painel do projeto, clique no ícone do Android para adicionar um aplicativo Android.
   - Preencha as informações solicitadas, como o nome do pacote do aplicativo.

3. **Download do Arquivo `google-services.json`**:
   - Após adicionar o aplicativo, o Firebase gerará o arquivo `google-services.json`.
   - Faça o download deste arquivo e coloque-o na pasta `app` do seu projeto Android.

### Configuração do Arquivo `values.xml`

Para garantir que o Firebase funcione corretamente com seu aplicativo, é necessário adicionar algumas configurações no arquivo `values.xml`:

1. **Localize o arquivo `values.xml`**:
   - Navegue até `app/src/main/res/values/` e abra o arquivo `values.xml`.

2. **Adicionar Configurações do Firebase**:
   - Adicione as seguintes linhas ao arquivo `values.xml`:
     ```xml
     <resources>
         <string name="default_web_client_id" translatable="false">[YOUR_CLIENT_ID]</string>
         <!-- Adicione outras chaves necessárias aqui -->
     </resources>
     ```
   - Substitua `[YOUR_CLIENT_ID]` pelo ID do cliente fornecido no console do Firebase.

### Configurações dos Arquivos `build.gradle`

Para integrar o Firebase ao projeto Android, são necessárias algumas configurações nos arquivos `build.gradle`:

1. **Arquivo `build.gradle` de nível de projeto** (`build.gradle` na raiz do projeto):
   ```gradle
   buildscript {
       repositories {
           // Outros repositórios
           google()
       }
       dependencies {
           // Outras dependências
           classpath 'com.google.gms:google-services:4.3.10' // Adicione esta linha
       }
   }
   allprojects {
       repositories {
           // Outros repositórios
           google()
       }
   }
   ```

2. **Arquivo `build.gradle` de nível de aplicativo** (`app/build.gradle`):
   ```gradle
   apply plugin: 'com.android.application'
   // Outras configurações do plugin

   android {
       // Configurações do Android
   }

   dependencies {
       // Outras dependências
       implementation 'com.google.firebase:firebase-auth:21.0.1' // Exemplo de dependência do Firebase
       // Adicione outras dependências necessárias do Firebase
   }

   apply plugin: 'com.google.gms.google-services' // Adicione esta linha no final do arquivo
   ```

### Conclusão

Ter uma conta no Firebase e configurar corretamente os arquivos `google-services.json`, `values.xml` e `build.gradle` é crucial para garantir a integração adequada dos serviços do Firebase com seu aplicativo Android. Essas etapas permitem o uso eficiente dos recursos oferecidos pelo Firebase, facilitando o desenvolvimento de aplicativos com autenticação de usuários, banco de dados e outros serviços essenciais.
 .
 
