cask "redshift-hub" do
  version "1.20.1"
  sha256 "06bb935b6de68485c977f7ec01bf28d43136969c6764be7045d35e5cc10a51b2"

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
