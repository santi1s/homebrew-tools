class YakGui < Formula
  desc "Desktop GUI for yak CLI tool"
  homepage "https://github.com/santi1s/yak"
  version "0.1.11-test"

  url "https://github.com/santi1s/yak/releases/download/v#{version}/yak-gui-darwin-universal.tar.gz"
  sha256 "sha256:de81b61e3c3cf26eb685e4a9ad7ede94bb070cbb806269aaceec205902210e8f"


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
