class SimonthumGitSync < Formula
  desc 'Safe and simple one-script git synchronization'
  homepage 'https://github.com/simonthum/git-sync'
  license 'CC0-1.0'
  head 'https://github.com/simonthum/git-sync.git'
  sha256 'e2b1b3dc720d9508e446b0908721f3b99112f4412ca0c72594b7c8cfba61bede'

  bottle :unneeded

  depends_on 'git'

  conflicts_with 'git-extras',
    because: 'both install a `git-sync` binary'

  conflicts_with 'git-sync',
    because: 'both install a `git-sync` binary'

  def install
    bin.install 'git-sync'
  end

  test do
    system 'true'
  end
end
