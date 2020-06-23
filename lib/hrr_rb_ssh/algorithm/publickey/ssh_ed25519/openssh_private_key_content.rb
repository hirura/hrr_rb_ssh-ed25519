# coding: utf-8
# vim: et ts=2 sw=2

require 'hrr_rb_ssh/codable'

module HrrRbSsh
  module Algorithm
    class Publickey
      class SshEd25519
        class OpenSSHPrivateKeyContent
          include Codable
          DEFINITION = [
            [DataTypes::Uint64, :'unknown'],
            [DataTypes::String, :'name'],
            [DataTypes::String, :'public key'],
            [DataTypes::String, :'key pair'],
            [DataTypes::String, :'padding'],
          ]
        end
      end
    end
  end
end
