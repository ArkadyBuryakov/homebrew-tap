# url and sha256 are filled in by .github/workflows/publish_homebrew.yml on each release,
# which pushes this file to the ArkadyBuryakov/homebrew-tap repo.
class KatanaTui < Formula
  desc "Terminal client for Nonograms Katana user puzzles"
  homepage "https://github.com/ArkadyBuryakov/katana-desktop"
  url "https://github.com/ArkadyBuryakov/katana-desktop/archive/v1.1.1.tar.gz"
  sha256 "c600cf6f11cc5b775fc2cad7916e003cb9141c401bb403e2b2406c878593ddab"
  license "MIT"
  head "https://github.com/ArkadyBuryakov/katana-desktop.git", branch: "main"

  depends_on "rust" => :build

  def install
    # the terminal frontend alone: no webview
    system "cargo", "install", "--no-default-features", "--features", "tui", "--bin", "katana-tui",
           *std_cargo_args
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/katana-tui --version")
  end
end
