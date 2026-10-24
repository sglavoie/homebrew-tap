cask "sloppy-paste" do
  version "0.1.0"
  sha256 "6596321a85cbe047b01c2586eac0d35ac9d16efc9a4c3cfe1c403f422883f8ec"

  url "https://github.com/sglavoie/AI-Sloppy-Paste/releases/download/v#{version}/SloppyPaste.zip"
  name "Sloppy Paste"
  desc "Searchable text snippets with tags and placeholder forms"
  homepage "https://github.com/sglavoie/AI-Sloppy-Paste"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "SloppyPaste.app"
  binary "#{appdir}/SloppyPaste.app/Contents/MacOS/sloppyctl"

  uninstall quit: "dev.sglavoie.SloppyPaste"

  zap trash: [
    "~/Library/Application Support/SloppyPaste",
    "~/Library/Preferences/dev.sglavoie.SloppyPaste.plist",
  ]
end
