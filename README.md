# Continuous Integration/Continuous Deployment (CI/CD) con Git, Github, Jenkins, Maven, Ansible e Docker
## Progetto per l'esame di Sistemi Cloud
L'obiettivo del progetto è descrivere l'intera pipeline di CI/CD per compilare e rilasciare un applicativo java. Durante il progetto andremo ad usare: Git, un software per il controllo di versione distribuito; Github, un servizio di hosting per progetti software; Jenkins server, un tool per la Continuous Integration; Maven, uno strumento di build automation; Ansible, strumento di automazione delle procedure di configurazione e gestione (provisioning); e Docker, per la containerizzazione delle applicazioni.
Le macchine virtuali, su cui risiede l'intera infrastruttura di CI/CD, sono quelle offerte dal servizio cloud di Amazon: EC2 (Elastic Compute Cloud). Amazon EC2 è un servizio web in grado di fornire capacità di calcolo scalabile, più precisamente permette l’esecuzione di server virtuali in grado di ospitare servizi e applicazioni, ambienti di elaborazione virtuale meglio conosciuti come Istanze.
Una delle peculiarità più interessanti di questo servizio, da qui la definizione “Elastic”, consiste nella possibilità di gestione delle variazioni in termini di requisiti, popolarità e necessità proprie dell’impresa e della piattaforma: in sostanza, Amazon EC2 consente sia di calibrare gli interventi all’interno dello spazio preposto, che di ottenere e configurare capacità di elaborazione sicura e ridimensionabile.
Diamo uno sguardo come queste tecnologie cooperano:
![alt text](https://github.com/pierpaologumina/CloudSystemsExam/blob/main/CI-CD_slide.jpg "CI/CD Pipeline")
1. Lo sviluppatore fa una commit del proprio codice nel branch master del Repository.
2. Poiché il codice deve essere compilato, il server Jenkins si occupa di prelevare il codice da Github.
3. Successivamente Jenkins compila il codice tramite Maven producendo un artefatto.
4. L'artefatto prodotto viene quindi copiato nel server Ansible.
5. Ansible provvede a creare un'immagine docker a partire dall'artefatto e la
caricherà su docker hub.
6. Sempre il server Ansible avvierà il container docker sul server docker, il
quale preleverà l'immagine dal docker hub.

Per ulteriori dettagli consultare il report.
