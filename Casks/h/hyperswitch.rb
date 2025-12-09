cask "hyperswitch" do
  version "0.3.10-dev"
  sha256 :no_check

  url "https://bahoom.com/hyperswitch/HyperSwitch.zip"
  name "HyperSwitch"
  desc "Keyboard window switcher"
  homepage "https://bahoom.com/hyperswitch/"

  # The homepage doesn't display version information, and the download URL is unversioned.
  # The version can only be determined by downloading and inspecting the app bundle's Info.plist.
  # Since this requires downloading the entire ZIP file for each check, we skip livecheck.
  livecheck do
    skip "Version information is not available on the homepage or in the download URL"
  end

  app "HyperSwitch.app"

  zap trash: [
    "~/Library/Application Support/HyperSwitch",
    "~/Library/Preferences/com.bahoom.HyperSwitch.plist",
  ]
end
