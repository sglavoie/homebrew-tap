cask "sloppy-paste" do
  version "0.2.0"
  sha256 "7a62d4183dcabe2a0cf3641da0a90700c4c6f4fb79624f129701a98b8aeff1a5"

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
