class Psysh < Formula
  desc 'A runtime developer console, interactive debugger and REPL for PHP'
  homepage 'https://psysh.org'
  url 'https://github.com/bobthecow/psysh/releases/download/v0.11.8/psysh-v0.11.8.tar.gz'
  license 'Apache-2.0'

  sha256 '54ad5edea40668de8a73fe5d51a1b0ac702a93dca2242c1b5b6f71ea2ea71d0e'

  depends_on 'php'

  def install
    bin.install 'psysh'
  end

  test do
    system 'true'
  end
end
