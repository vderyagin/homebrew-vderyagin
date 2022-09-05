class SimonthumGitSync < Formula
  desc 'Safe and simple one-script git synchronization'
  homepage 'https://github.com/simonthum/git-sync'
  license 'CC0-1.0'
  head 'https://github.com/simonthum/git-sync.git'
  sha256 'a9927b923e1a9e7a32d040f5e9b3652b7c720eca577158f3c0aad1990803dd5f'

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
