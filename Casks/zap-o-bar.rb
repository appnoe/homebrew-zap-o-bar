cask "zap-o-bar" do
  version "1.0.1"
  sha256 "3023b26394c4cf383fa995a1b9d239e4176440f11080bb47494a11081cb000d8"

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
