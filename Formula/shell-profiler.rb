class ShellProfiler < Formula
  desc "Workspace profile manager using direnv for environment-specific configurations"
  homepage "https://github.com/neverprepared/phantom-ink"
  version "0.5.3"

  depends_on "direnv"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/neverprepared/phantom-ink/releases/download/shell-profiler/v#{version}/shell-profiler-v#{version}-darwin-arm64.tar.gz"
      sha256 "61c69f91ab33e931a38fa38b003a0eeda7510817b00a3e9217665b4e9d7184da"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neverprepared/phantom-ink/releases/download/shell-profiler/v#{version}/shell-profiler-v#{version}-darwin-amd64.tar.gz"
      sha256 "be72da6677f298435d9e9127aca556fc838c30a10b292bcc6601d071d478c505"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/neverprepared/phantom-ink/releases/download/shell-profiler/v#{version}/shell-profiler-v#{version}-linux-arm64.tar.gz"
      sha256 "6241bd482a8b54f08f1668d7e4107fe7ea0785b9c46247a5d8caf3f5f65b4a11"
    end
    if Hardware::CPU.intel?
      url "https://github.com/neverprepared/phantom-ink/releases/download/shell-profiler/v#{version}/shell-profiler-v#{version}-linux-amd64.tar.gz"
      sha256 "98c7ea8f3fd464f7e11b00d445e59df202d23340ecdeae28b6c8e28aab9c7d86"
    end
  end

  def install
    bin.install "shell-profiler"
  end

  test do
    assert_match "Workspace Profile Manager", shell_output("#{bin}/shell-profiler help")
  end
end
