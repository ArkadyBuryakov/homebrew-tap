# url and sha256 are filled in by .github/workflows/publish_homebrew.yml on each release,
# which pushes this file to the ArkadyBuryakov/homebrew-tap repo.
class KatanaTui < Formula
  desc "Terminal client for Nonograms Katana user puzzles"
  homepage "https://github.com/ArkadyBuryakov/katana-desktop"
  url "https://github.com/ArkadyBuryakov/katana-desktop/archive/v1.1.0.tar.gz"
  sha256 "925f1d70885cded79dd8a381003b78e0181d3015cacaf274e11a93deabdf76e2"
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
