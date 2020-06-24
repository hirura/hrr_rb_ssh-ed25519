require 'hrr_rb_ssh/codable'

module HrrRbSsh
  module Algorithm
    class Publickey
      class SshEd25519
        class Signature
          include Codable
          DEFINITION = [
            [DataTypes::String, :'public key algorithm name'],
            [DataTypes::String, :'signature blob'],
          ]
        end
      end
    end
  end
end
