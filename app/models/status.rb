class Status < ApplicationRecord
    enum status_description: [:no_revisado, :en_espera, :finalizado, :vencido]
end
