class User < ApplicationRecord
  has_many :competences, dependent: :destroy

  after_create :criar_competences

  def criar_competences
    Competence.create(group: 'Fundamentos',
                      title: 'Tem noção clara de como utilizar o terminal',
                      description: "Entende os conceitos de arquivos, diretórios e path do terminal",
                      evidence: "Fiz tal coisa e aprendi isso",
                      materials: "www.link.com",
                      user_id: id)
    Competence.create(group: 'Fundamentos',
                      title: 'Tem noção clara de comandos Git e do Github',
                      description: "Sabe os comandos básicos de Git para desenvolver um projeto(pull, push, create branch, commit, merge);",
                      evidence: "Fiz fiz etc e coisa e aprendi aquilo lá",
                      materials: "www.git.com",
                      user_id: id)
    Competence.create(group: 'Pessoas',
                      title: 'Desenvolve sua autonomia para fazer suas atividades por conta própria',
                      description: "Acaba com todas as possibilidades de pesquisas antes de pedir ajuda",
                      evidence: "Fiz fiz etc e coisa e aprendi aquilo lá",
                      materials: "www.git.com",
                      user_id: id)
    Competence.create(group: 'Pessoas',
                      title: 'Aceita bem feedbacks construtivos e entende que é para desenvolvimento de sua carreira/vida',
                      description: "Não fica mal por muito tempo quando recebe um feedback negativo",
                      evidence: "Aprendi a ser assim e lidei com tal coisa",
                      materials: "Consegui lidar assim e tal e meu lider noe.sobrenome me avaliou",
                      user_id: id)
    Competence.create(group: 'Programação',
                      title: 'Entende os conceitos básicos de uma API',
                      description: "O que é uma API? Diferença entre REST, RESTfull e SOAP",
                        evidence: "www.github.com",
                        materials: "material.com",
                      user_id: id)
    Competence.create(group: 'Programação',
                      title: 'Entende os conceitos básicos de desenvolvimento de Banco de dados',
                      description: "Saber para que serve um banco de dados e quando utilizar",
                        evidence: "www.gitlab.com",
                        materials: "artigo.com",
                      user_id: id)
  end
end