class User < ApplicationRecord
  has_many :competences, dependent: :destroy

  after_create :criar_competences

  def criar_competences 
    Competence.create(group: 'Fundamentos', title: 'Conhecimento tecnico', description: 'Habitos', evidence: 'link aa', materials: 'link a', user_id: id)
    Competence.create(group: 'Pessoas', title: 'Organização', description: 'Habitos', evidence: 'link bb', materials: 'link b', user_id: id)
    Competence.create(group: 'Testes', title: 'Tipos de testes', description: 'Habitos', evidence: 'link cc',  materials: 'link c', user_id: id)
  end
end