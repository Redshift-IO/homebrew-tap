cask "redshift-hub" do
  version "1.25.4"
  sha256 "8fd758eb12b676bbab18477423be2f41d61a95c5d557296415d96217c842bb43"

  url "https://www.redshifthub.com/releases/RedshiftHub-#{version}.dmg"
  name "Redshift Hub"
  desc "Run a fleet of AI coding agents in parallel across git worktrees"
  homepage "https://www.redshifthub.com/"

  livecheck do
    url "https://www.redshifthub.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Redshift Hub.app"

  zap trash: [
    "~/.redshift-hub",
    "~/Library/Application Support/com.robinellingsen.Redshift-Lite-MacOS",
    "~/Library/Application Support/Redshift Hub",
    "~/Library/Caches/com.robinellingsen.Redshift-Lite-MacOS",
    "~/Library/HTTPStorages/com.robinellingsen.Redshift-Lite-MacOS",
    "~/Library/HTTPStorages/com.robinellingsen.Redshift-Lite-MacOS.binarycookies",
    "~/Library/Preferences/com.robinellingsen.Redshift-Lite-MacOS.plist",
    "~/Library/WebKit/com.robinellingsen.Redshift-Lite-MacOS",
  ]
end
