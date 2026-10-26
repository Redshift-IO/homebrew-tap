cask "redshift-hub" do
  version "1.25.1"
  sha256 "aeda3e5235ee09532c988ce7172ed45307008554e8665e50de6ca0fe1e628f48"

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
