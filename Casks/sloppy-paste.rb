cask "sloppy-paste" do
  version "0.3.0"
  sha256 "1d6762c06b762e8edd88da21aa5fb94d77f662835dbcec62263b47e093fe2f71"

  url "https://github.com/sglavoie/AI-Sloppy-Paste/releases/download/v#{version}/AI-Sloppy-Paste.zip"
  name "AI Sloppy Paste"
  desc "Searchable text snippets with tags and placeholder forms"
  homepage "https://github.com/sglavoie/AI-Sloppy-Paste"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sequoia

  app "AI Sloppy Paste.app"
  binary "#{appdir}/AI Sloppy Paste.app/Contents/MacOS/sloppyctl"

  uninstall quit: "dev.sglavoie.SloppyPaste"

  zap trash: [
    "~/Library/Application Support/SloppyPaste",
    "~/Library/Preferences/dev.sglavoie.SloppyPaste.plist",
  ]
end
