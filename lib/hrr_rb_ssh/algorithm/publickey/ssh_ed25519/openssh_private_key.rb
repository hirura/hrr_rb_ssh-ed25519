require 'hrr_rb_ssh/codable'

module HrrRbSsh
  module Algorithm
    class Publickey
      class SshEd25519
        class OpenSSHPrivateKey
          include Codable
          DEFINITION = [
            [DataTypes::String, :'cipher'],
            [DataTypes::String, :'kdfname'],
            [DataTypes::Uint32, :'kdfopts'],
            [DataTypes::Uint32, :'number of public keys'],
            [DataTypes::Uint32, :'first public key length'],
            [DataTypes::String, :'name'],
            [DataTypes::String, :'public key'],
            [DataTypes::String, :'content'],
          ]
        end
      end
    end
  end
end
