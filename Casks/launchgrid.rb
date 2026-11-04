cask "launchgrid" do
  version "1.2.0"
  sha256 "2795e15633c9a17203eb108230b2fb87aefa8db0b76ca2fc5063c3eaa3045206"

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
