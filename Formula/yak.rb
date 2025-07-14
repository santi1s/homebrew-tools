class Yak < Formula
  desc "CLI tool for ArgoCD, Rollouts, and Vault secrets management"
  homepage "https://github.com/santi1s/yak"
  version "1.2.0"

  if Hardware::CPU.arm?
    url "https://github.com/santi1s/yak/releases/download/v#{version}/yak-darwin-arm64.tar.gz"
    sha256 :no_check
  else
    url "https://github.com/santi1s/yak/releases/download/v#{version}/yak-darwin-amd64.tar.gz"
    sha256 :no_check
  end

  def install
    if Hardware::CPU.arm?
      bin.install "yak-darwin-arm64" => "yak"
    else
      bin.install "yak-darwin-amd64" => "yak"
    end
  end

  test do
    system "#{bin}/yak", "--version"
  end
end
