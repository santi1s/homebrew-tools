cask "yak-gui" do
  version "main"
  sha256 :no_check

  url "https://github.com/santi1s/yak-gui/releases/download/v#{version}/yak-gui-darwin-universal.tar.gz"
  name "Yak GUI"
  desc "Desktop GUI for yak CLI tool"
  homepage "https://github.com/santi1s/yak-gui"

  app "yak-gui.app"

  zap trash: [
    "~/Library/Preferences/com.santi1s.yak-gui.plist",
    "~/Library/Application Support/yak-gui",
  ]
end
