class Notae < Formula
  desc "Browse and preview Markdown collections locally"
  homepage "https://github.com/vderyagin/notae"

  head "https://github.com/vderyagin/notae.git", branch: "master"

  depends_on "bun"

  def install
    system "bun", "ci"
    system "bun", "run", "build.ts"

    bin.install "dist/notæ"
  end

  test do
    assert_match "Usage: notæ", shell_output("#{bin}/notæ --help")
  end
end
