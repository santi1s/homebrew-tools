cask "yak-gui" do
  version "1.0.1"
  sha256 "4842fcd2f6f265ccf7e63eff09621834a70c2744f9dcce1cbcf4f952dab8b2bf"

  url "https://github.com/santi1s/yak/releases/download/v#{version}/yak-gui-darwin-universal.tar.gz"
  name "Yak GUI"
  desc "Desktop GUI for yak CLI tool"
  homepage "https://github.com/santi1s/yak"

  app "yak-gui.app"

  zap trash: [
    "~/Library/Preferences/com.santi1s.yak-gui.plist",
    "~/Library/Application Support/yak-gui",
  ]
end