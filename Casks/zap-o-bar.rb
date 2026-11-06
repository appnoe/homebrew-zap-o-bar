cask "zap-o-bar" do
  version "1.2.0"
  sha256 "4bd1c98f714dcd1a70e7e8b5d8732288dab21c154f6b1908bd0d22a297c4a430"

  url "https://github.com/appnoe/homebrew-zap-o-bar/releases/download/v#{version}/Zap-O-Bar-#{version}.dmg"
  name "Zap-O-Bar"
  desc "Netatmo weather stations and room climate in the menu bar"
  homepage "https://www.appnoe.de/apps.html#zap-o-bar"

  livecheck do
    url "https://raw.githubusercontent.com/appnoe/homebrew-zap-o-bar/main/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

  app "Zap-O-Bar.app"

  uninstall quit: "de.appnoe.zap-o-bar"

  zap trash: [
    "~/Library/Application Scripts/de.appnoe.zap-o-bar",
    "~/Library/Containers/de.appnoe.zap-o-bar",
  ]
end
