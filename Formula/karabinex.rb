class Karabinex < Formula
  desc "Generate Karabiner-Elements complex modifications"
  homepage "https://github.com/vderyagin/karabinex"
  license "Unlicense"

  head "https://github.com/vderyagin/karabinex.git", branch: "master"

  depends_on "bun" => :build
  depends_on cask: "karabiner-elements"
  depends_on "node"

  def install
    system "bun", "install", "--frozen-lockfile"
    system "bun", "run", "build-cli"

    bin.install "dist/karabinex"
  end

  test do
    assert_match "karabinex --generate-config", shell_output("#{bin}/karabinex --help")
  end
end
