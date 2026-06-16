class KarabinerElementsRequirement < Requirement
  fatal true

  satisfy(build_env: false) do
    File.executable?("/Library/Application Support/org.pqrs/Karabiner-Elements/bin/karabiner_cli")
  end

  def message
    "karabinex requires Karabiner-Elements. Please run `brew install --cask karabiner-elements` first."
  end

  def display_s
    "Karabiner-Elements"
  end
end

class NodeRequirement < Requirement
  fatal true

  satisfy(build_env: false) do
    which("node")
  end

  def message
    "karabinex requires Node.js. Please install Node.js or ensure `node` is on your PATH."
  end

  def display_s
    "Node.js"
  end
end

class Karabinex < Formula
  desc "Generate Karabiner-Elements complex modifications"
  homepage "https://github.com/vderyagin/karabinex"
  license "Unlicense"

  head "https://github.com/vderyagin/karabinex.git", branch: "master"

  depends_on "bun" => :build
  depends_on KarabinerElementsRequirement
  depends_on NodeRequirement

  def install
    system "bun", "install", "--frozen-lockfile"
    system "bun", "run", "build-cli"

    bin.install "dist/karabinex"
  end

  def caveats
    <<~EOS
      karabinex uses karabiner_cli when generating, linting, or replacing
      configuration.
    EOS
  end

  test do
    assert_match "karabinex --generate-config", shell_output("#{bin}/karabinex --help")
  end
end
