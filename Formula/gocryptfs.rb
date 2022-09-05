class Gocryptfs < Formula
  desc 'Encrypted overlay filesystem written in Go'
  homepage 'https://nuetzlich.net/gocryptfs'
  head 'https://github.com/rfjakob/gocryptfs.git'
  license 'MIT'

  depends_on 'macfuse'

  depends_on 'go' => :build
  depends_on 'pkg-config' => :build
  depends_on 'openssl@1.1'

  def install
    system './build.bash'
    bin.install 'gocryptfs'
  end

  test do
    system 'true'
  end
end
