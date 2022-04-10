module Api
  module V1
    class CompetencesController < ActionController

      # Listar todas as Competences de um usuario especifico
      def index
        competences = Competence.where(user_id: params[:user_id])
        render json: { status: 'Competences Found!', message: 'Competences Found!', data: competences }, status: :ok
      end
      # Listar competence passando ID
      def show
        competence = Competence.find(params[:id])
        render json: { status: 'Competences Found!', message: 'Competences Found!', data: competence }, status: :ok
      end
    
      # Criar um novo Competence
      def create
        competence = Competence.new(competence_params)
        if competence.save
          render json: { status: 'Competences Found!', message: 'Competences Found!', data: competence }, status: :ok
        else
          render json: { status: 'ERROR', message: 'Competences not Found!', data: competence.errors }, status: :unprocessable_entity
        end
      end
  
      # Deletar User
      def destroy
        competence = Competences.find(params[:id])
        competence.destroy
        render json: { status: 'Competences Deleted!', message: 'Competences Deleted!', data: competence }, status: :ok
      end
    
      # Atualizar um Competence
      def update
        competence = Competences.find(params[:id])
        if competence.update(competence_params)
          render json: {status: 'SUCCESS', message:'Updated Competences!', data:competence},status: :ok
        else
          render json: {status: 'ERROR', message:'Competences not updated!', data:competence.errors}, status: :unprocessable_entity
        end
      end
  
      # Parametros aceitos
      private
      
      def competence_params
        params.permit(:group, :title, :description, :evidence, :materials, :user_id)
      end
    end
  end
end