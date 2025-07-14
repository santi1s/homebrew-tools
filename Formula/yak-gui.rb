class YakGui < Formula
  desc "Desktop GUI for yak CLI tool"
  homepage "https://github.com/santi1s/yak"
  version "1.0.0"

  url "https://github.com/santi1s/yak/releases/download/v#{version}/yak-gui-darwin-universal.tar.gz"
  sha256 "2e377f9fd46c3bcdf1f0195fdab9e0f5cec1f27743b5af5d453e584ad5c0917d"

  def install
    prefix.install "yak-gui.app"
    bin.write_exec_script prefix/"yak-gui.app/Contents/MacOS/yak-gui"
  end

  def caveats
    <<~EOS
      yak-gui has been installed to:
        #{prefix}/yak-gui.app
      
      You can run it from the command line with: yak-gui
      Or open it directly: open "#{prefix}/yak-gui.app"
    EOS
  end
end
