cask "redshift-hub" do
  version "1.26.0"
  sha256 "d5a49f3680d7bd19bd4c095b6c8ac3bb9ce77d5c1532c70b48bcd4108f59c9fb"

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
