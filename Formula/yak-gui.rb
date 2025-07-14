class YakGui < Formula
  desc "Desktop GUI for yak CLI tool"
  homepage "https://github.com/santi1s/yak"
  version "1.0.0"

  url "https://github.com/santi1s/yak/releases/download/v#{version}/yak-gui-darwin-universal.tar.gz"
  sha256 "2e377f9fd46c3bcdf1f0195fdab9e0f5cec1f27743b5af5d453e584ad5c0917d"

  def install
    app.install "yak-gui.app"
  end

  def caveats
    <<~EOS
      yak-gui has been installed to /Applications.
      You can launch it from Launchpad or run: open -a yak-gui
    EOS
  end
end
