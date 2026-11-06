cask "zap-o-bar" do
  version "1.1.0"
  sha256 "e7f0881e378e53a42cc997455893c4669509191faf8f14edafdd18043642b82f"

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
