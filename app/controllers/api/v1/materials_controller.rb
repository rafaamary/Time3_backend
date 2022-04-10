module Api
  module V1
    class MaterialsController < ActionController::API

      #def index
      #  materials = Competence.order('created_at DESC').pluck(:materials)
      #  render json: { status: 'Competences Found!', message: 'Competences Found!', data: materials }, status: :ok
      #end

      def show
        materials = Competence.where(title: params[:title]).pluck(:materials)
        render json: { status: 'Competences Found!', message: 'Competences Found!', data: materials  }, status: :ok
      end
      # Parametros aceitos
      private
      
      def competence_params
        params.permit(:group, :title, :description, :evidence, :materials, :user_id)
      end
    end
  end
end