class UsersController < ApplicationController
        def metodo
            usuarios = User.all;

            render json: {status: 'success', message: 'Listo', data: usuarios}, status: :ok
          end
end
