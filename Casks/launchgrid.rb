cask "launchgrid" do
  version "1.0.0"
  sha256 "e80c1d42dcd2847c69f7945664928cc638b2f461aded0c42299f035d81d986df"

  url "https://github.com/sglavoie/LaunchGrid/releases/download/v#{version}/LaunchGrid.zip"
  name "LaunchGrid"
  desc "Full-screen app grid with folders and type-to-search"
  homepage "https://launchgrid.sglavoie.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "LaunchGrid.app"

  uninstall quit: "com.sglavoie.launchgrid"

  zap trash: [
    "~/Library/Application Support/LaunchGrid",
    "~/Library/Preferences/com.sglavoie.launchgrid.plist",
  ]
end
