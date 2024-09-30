class Psysh < Formula
  desc 'A runtime developer console, interactive debugger and REPL for PHP'
  homepage 'https://psysh.org'
  url 'https://github.com/bobthecow/psysh/releases/download/v0.12.4/psysh-v0.12.4.tar.gz'
  license 'Apache-2.0'

  sha256 '785bddd5650694d9b4d051869a175392f9faac327687ee8a81af0305083072df'

  depends_on 'php'

  def install
    bin.install 'psysh'
  end

  test do
    system 'true'
  end
end
