class Gocryptfs < Formula
  desc 'Encrypted overlay filesystem written in Go'
  homepage 'https://nuetzlich.net/gocryptfs'
  head 'https://github.com/rfjakob/gocryptfs.git'
  license 'MIT'

  depends_on 'go' => :build
  depends_on 'pkg-config' => :build
  depends_on 'openssl@1.1'

  def install
    system './build.bash'
    bin.install 'gocryptfs'
  end

  def caveats
    on_macos do
      <<~EOS
        You nee
        The reasons for disabling this formula can be found here:
          https://github.com/Homebrew/homebrew-core/pull/64491

        An external tap may provide a replacement formula. See:
          https://docs.brew.sh/Interesting-Taps-and-Forks
      EOS
    end
  end


  test do
    system 'true'
  end
end
