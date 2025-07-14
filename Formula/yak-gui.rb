class YakGui < Formula
  desc "Desktop GUI for yak CLI tool"
  homepage "https://github.com/santi1s/yak"
  version "1.0.0"

  url "https://github.com/santi1s/yak/releases/download/v#{version}/yak-gui-darwin-universal.tar.gz"
  sha256 "UNIVERSAL_SHA256_TO_BE_UPDATED"

  depends_on "santi1s/tools/yak"

  def install
    # Install the .app bundle
    prefix.install "yak-gui.app"
    
    # Create symlink in Applications for easy access
    system "ln", "-sf", "#{prefix}/yak-gui.app", "/Applications/yak-gui.app"
    
    # Create CLI wrapper for command-line access
    bin.write_exec_script "#{prefix}/yak-gui.app/Contents/MacOS/yak-gui"
  end

  def caveats
    <<~EOS
      yak-gui has been installed to:
        #{prefix}/yak-gui.app

      A symlink has been created in /Applications for easy access.
      You can also run it from the command line with: yak-gui
    EOS
  end

  test do
    # Test that the app bundle exists
    assert_predicate prefix/"yak-gui.app", :exist?
  end
end