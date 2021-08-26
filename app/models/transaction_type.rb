class TransactionType < ApplicationRecord
    enum operation_type: ["entrada", "saída"]

    enum signal: ["positive", "negative"]
end
