cask "launchgrid" do
  version "1.1.1"
  sha256 "5c26ac440c617efe187a6222cd2dd36ccb83a9fe57256a32578f4f8d964a7bce"

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
