module Imports
    class Files
        def self.validate(file = nil)
            validate_presence(file)
            validate_type(file) unless file.nil?
        end

        def self.accepted_types
            ["application/txt"]
        end

        def self.validate_type(file)
            raise 'Arquivo inválido' unless accepted_types.include? file.content_type
        end

        def self.validate_presence(file)
            raise 'Arquivo inválido' if file.nil?
        end
    end
end