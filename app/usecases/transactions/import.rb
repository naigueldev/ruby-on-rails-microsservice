module Transactions
    class Import
        attr_accessor :file

        def initialize(file = nil)
            @file = file
        end

        def execute
          transaction = TransactionRepository.create(parse_file)
          byebug
          
        end

        def parse_file
          transactions = []
          File.foreach(@file.path).with_index do |line, index|
            amount = rule_amount(line)

            transactions << get_formated_transaction(
              line,
              amount,
            )
          end

          transactions
        end

        def get_formated_transaction(line, amount)
          {
            occurrence_date: rule_occurrence_date(line),
            amount: amount,
            cpf: rule_cpf(line),
            card_number: rule_card_number(line),
            occurrence_time: rule_occurrence_time(line),
          }
        end


        def rule_amount(line)
          line.slice(Cnab::fields[:amount])
        end

        def rule_occurrence_date(line)
          line.slice(Cnab::fields[:occurrence_date])
        end

        def rule_cpf(line)
          line.slice(Cnab::fields[:cpf])
        end

        def rule_card_number(line)
          line.slice(Cnab::fields[:card_number])
        end

        def rule_occurrence_time(line)
          line.slice(Cnab::fields[:occurrence_time])
        end
    end
end