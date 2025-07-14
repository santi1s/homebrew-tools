class YakGui < Formula
  desc "Desktop GUI for yak CLI tool"
  homepage "https://github.com/santi1s/yak"
  version "1.0.1"

  url "https://github.com/santi1s/yak/releases/download/v#{version}/yak-gui-darwin-universal.tar.gz"
  sha256 "4842fcd2f6f265ccf7e63eff09621834a70c2744f9dcce1cbcf4f952dab8b2bf"

  def install
    # Debug: show what files are available
    system "pwd"
    system "ls", "-la"
    system "find", ".", "-name", "*.app"

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
