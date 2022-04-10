module Api
  module V1
    class MaterialsController < ActionController::API
      def show
        references = Competence.where.not(materials: nil).joins(:user).where(title: params[:title]).pluck(:name, :materials)
        render json: { status: 'Competences Found!', message: 'Competences Found!', data: references  }, status: :ok
      end
      # Parametros aceitos
      private

      def competence_params
        params.permit(:group, :title, :description, :evidence, :materials, :user_id)
      end
    end
  end
end