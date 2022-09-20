class Helm2 < Formula
  desc 'Kubernetes package manager'
  homepage 'https://helm.sh'
  url 'https://get.helm.sh/helm-v2.17.0-darwin-amd64.tar.gz'
  license 'Apache-2.0'

  sha256 '104dcda352985306d04d5d23aaf5252d00a85c083f3667fd013991d82f57ae83'

  conflicts_with 'helm',
    because: 'both install a `helm` binary'

  def install
    bin.install 'bin/helm'
    bin.install 'bin/tiller'
  end

  test do
    system 'true'
  end
end
