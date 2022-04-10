module Api
    module V1
      class ApplicationController < ActionController

        # Listar todos os alunos
        def index
          user = User.order('created_at DESC')
          render json: { status: 'User Found!', message: 'User Found!', data: user }, status: :ok
        end
        
        # Listar user passando ID
        def show
          user = User.find(params[:id])
          render json: { status: 'User Found!', message: 'User Found!', data: user }, status: :ok
        end

        # Criar um novo User
      def create
        user = User.new(user_params)
        if user.save
          render json: { status: 'User Found!', message: 'User Found!', data: user }, status: :ok
        else
          render json: { status: 'ERROR', message: 'User not Found!', data: user.errors }, status: :unprocessable_entity
        end
      end

      # Deletar User
      def destroy
        user = User.find(params[:id])
        user.destroy
        render json: { status: 'User Deleted!', message: 'User Deleted!', data: user }, status: :ok
      end

      # Atualizar um User
			def update
				user = User.find(params[:id])
				if aluno.update(user_params)
					render json: {status: 'SUCCESS', message:'Updated User!', data:user},status: :ok
        else
					render json: {status: 'ERROR', message:'User not updated!', data:user.errors}, status: :unprocessable_entity
				end
			end

      # Parametros aceitos
      private

      def user_params
        params.permit(:name, :contact, :link)
      end
    end
  end
end
