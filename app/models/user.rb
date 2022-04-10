class User < ApplicationRecord
  has_many :competences, dependent: :destroy

  after_create :criar_competences

  def criar_competences 
    Competence.create(title: 'Conhecimento tecnico', group: 'Fundamentos', evidence: 'https://github.com/faker-ruby/faker', user_id: id)
    Competence.create(title: 'Organização', group: 'Pessoas', evidence: 'https://github.com/faker-ruby/faker', user_id: id)
    Competence.create(title: 'Tipos de testes', group: 'Testes', evidence: 'https://github.com/faker-ruby/faker',  user_id: id)
  end
end