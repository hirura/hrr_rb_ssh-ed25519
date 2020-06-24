RSpec.describe HrrRbSsh::Compat::OpenSSH::PublicKey do
  let(:public_key){ described_class.new public_key_line }

  context "when data_line is \"ssh-ed25519\"" do
    let(:algorithm_name){ "ssh-ed25519" }
    let(:public_key_line){
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJ1GLm6U9rRTLrQHiEv1n9EAVdvgRp5bDePxiqzxYUxS hrr_rb_ssh"
    }
    let(:public_key_pem){
      <<-'EOB'
-----BEGIN PUBLIC KEY-----
MCowBQYDK2VwAyEAnUYubpT2tFMutAeIS/Wf0QBV2+BGnlsN4/GKrPFhTFI=
-----END PUBLIC KEY-----
      EOB
    }

    describe ".new" do
      it "does not raises error" do
        expect { public_key }.not_to raise_error
      end
    end

    describe "#algorithm_name" do
      it "returns correct algorithm name" do
        expect(public_key.algorithm_name).to eq algorithm_name
      end
    end

    describe "#to_pem" do
      it "returns correct public key in PEM format" do
        expect(public_key.to_pem).to eq public_key_pem
      end
    end
  end
end
