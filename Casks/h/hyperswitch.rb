cask "hyperswitch" do
  version "0.3.10-dev"
  sha256 :no_check

  url "https://bahoom.com/hyperswitch/HyperSwitch.zip"
  name "HyperSwitch"
  desc "Keyboard window switcher"
  homepage "https://bahoom.com/hyperswitch/"

  livecheck do
    url "https://bahoom.com/hyperswitch/appcast.xml"
    strategy :sparkle, &:short_version
  end

  app "HyperSwitch.app"

  zap trash: [
    "~/Library/Caches/com.bahoom.HyperSwitch",
    "~/Library/HTTPStorages/com.bahoom.HyperSwitch",
    "~/Library/Preferences/com.bahoom.HyperSwitch.plist",
  ]
end
