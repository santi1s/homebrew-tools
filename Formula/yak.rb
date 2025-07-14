class Yak < Formula
  desc "CLI tool for ArgoCD, Rollouts, and Vault secrets management"
  homepage "https://github.com/santi1s/yak"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/santi1s/yak/releases/download/v#{version}/yak-darwin-arm64.tar.gz"
    sha256 "ad09518cdd6d6ac84af76f8646608acfca6e2442c8e20a0952911d44b38b89d1"
  else
    url "https://github.com/santi1s/yak/releases/download/v#{version}/yak-darwin-amd64.tar.gz"
    sha256 "055a7cbc8460fd0556d3e671a373e03e7d793f463bb246a8defac12ab6335dc2"
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
