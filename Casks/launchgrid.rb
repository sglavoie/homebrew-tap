cask "launchgrid" do
  version "1.5.0"
  sha256 "5d605ea1c9f5fa2e0975dafaa9b730e397cec1342d9c8604a2cb996f9d519d28"

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
