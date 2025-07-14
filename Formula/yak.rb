class Yak < Formula
  desc "CLI tool for ArgoCD, Rollouts, and Vault secrets management"
  homepage "https://github.com/santi1s/yak"
  version "1.0.0"

  if Hardware::CPU.arm?
    url "https://github.com/santi1s/yak/releases/download/v#{version}/yak-darwin-arm64.tar.gz"
    sha256 "sha256:e2ab0738dea040472e91b7d64603e51d05ff6f08c402ef8851120dd77c31c442"
  else
    url "https://github.com/santi1s/yak/releases/download/v#{version}/yak-darwin-amd64.tar.gz"
    sha256 "sha256:d74eba52b1cbace0ca84b5d11fd93f57ca829f6f2a61a980173fbb6250e896c7"
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
