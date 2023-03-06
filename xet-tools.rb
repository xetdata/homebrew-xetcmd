class XetTools < Formula
  desc "XetHub CLI Tools Homebrew Tap."
  homepage "https://github.com/xetdata/xet-tools"
  license :cannot_represent
  version "0.8.1"

  on_macos do
    url "https://github.com/xetdata/xet-tools/releases/download/v0.8.1/xet-v0.8.1-mac-universal.tar.gz"
    sha256 "048145f16deae87e30d326e0ceee49f068fe3e96daaed5b23178bfaed20bcf50"
  end

  on_linux do
    url "https://github.com/xetdata/xet-tools/releases/download/v0.8.1/xet-v0.8.1-linux-x86_64.tar.gz"
    sha256 "aef1c671163eef230d3906f40e252bbab074e94b6dcc88020649a232c9bd4ec3"
  end

  def caveats
    <<~CAVEAT
      Update your repo config to finish installation:

      # Update global repo config
      $ git xet install
      
      More documentation here: https://xethub.com/assets/docs
    CAVEAT
  end

  def install
    bin.install 'git-xet'
  end

end


