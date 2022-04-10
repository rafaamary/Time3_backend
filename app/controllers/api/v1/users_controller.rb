module Api
    module v1
      class ApplicationController < ActionController::API
        # Listar aluno passando ID
        def show
          aluno = Aluno.find(params[:id])
          render json: { status: 'Aluno Carregado!', message: 'Aluno Carregado!', data: aluno }, status: :ok
        end
      end
    end
end
