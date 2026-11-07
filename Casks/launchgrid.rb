cask "launchgrid" do
  version "1.3.0"
  sha256 "a361d29987ab1899cf43832d1132d91004404bb53e3de30b8c58487dc1dfb537"

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
