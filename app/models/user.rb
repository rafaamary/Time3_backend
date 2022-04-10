class User < ApplicationRecord
  has_many :competences, dependent: :destroy

  after_create :criar_competences

  def criar_competences
    Competence.create(group: 'Fundamentos',
                      title: 'Tem noção clara de como utilizar o terminal',
                      description: "Entende os conceitos de arquivos, diretórios e path do terminal \n
                        Utilizar os comandos básicos do unix (cd, ls, mkdir, rm, cp, cat less, mv, grep, tar, alias) \n
                        Entende quando utilizar sudo e sabe o básico permissões de arquivos e usuários (chmod) \n
                        Entende quais são os arquivos de configurações do shell (bashrc, profile e /env/)",
                      evidence: nil,
                      materials: nil,
                      user_id: id)
    Competence.create(group: 'Melhores Praticas',
                      title: 'Sabe identificar quando há a necessidade de documentar suas entregas',
                      description: "Documentar um novo script \n
                      Documentar um trecho de um script que esteja complexo \n
                      Documentar scripts existentes que não possuem documentação",
                      evidence: nil,
                      materials: nil,
                      user_id: id)
      Competence.create(group: 'Pessoas',
                      title: 'Desenvolve sua autonomia para fazer suas atividades por conta própria',
                      description: "Acaba com todas as possibilidades de pesquisas antes de pedir ajuda \n
                      Não tem medo de arriscar a fazer sozinho, porém com cautela, para aprender sozinho \n
                      Pede sugestões e opiniões de atividades feitas para aprimorar seus feitos",
                      evidence: nil,
                      materials: nil,
                      user_id: id)
      Competence.create(group: 'Programação',
                      title: 'Entende os conceitos básicos de uma API',
                      description: "O que é uma API? Diferença entre REST, RESTfull e SOAP \n
                      Autenticação + segurança: Basic Auth, OAuth, JWT \n
                      HTTP Status Code \n
                      Tráfego do dado obtido do banco de dados",
                      evidence: nil,
                      materials: nil,
                      user_id: id)
    end
end