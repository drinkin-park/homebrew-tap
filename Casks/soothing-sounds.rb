cask "soothing-sounds" do
  version "1.0.2"
  sha256 "8579b674bd2a221ed01987e4ec8f9a1d4ccbc57ef9743612aac3c1a28245ff1c"

  url "https://github.com/drinkin-park/soothing-sounds/releases/download/v#{version}/Soothing-Sounds.zip"
  name "Soothing Sounds"
  desc "Menu bar control for the system Background Sounds"
  homepage "https://github.com/drinkin-park/soothing-sounds"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Soothing Sounds.app"

  uninstall quit: "io.github.drinkin-park.soothing-sounds"

  zap trash: [
    "~/Library/Accessibility/SoothingSounds",
    "~/Library/Caches/SoothingSounds",
  ]

  caveats <<~EOS
    Soothing Sounds is not notarized by Apple, so macOS blocks the first launch.
    To allow it: open the app once, then go to
      System Settings > Privacy & Security > Open Anyway.
  EOS
end
