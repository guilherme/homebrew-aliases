# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Aliases < Formula
  desc "Bash aliases on steroids"
  homepage "https://github.com/sebglazebrook/aliases"
  url "https://github.com/sebglazebrook/aliases/raw/master/releases/0.7.7/mac/aliases.tar.gz"
  version "0.7.7"
  sha256 "6f9d7cf41b1439a01f4e2dcf4731d2f3544930b99155f0a5d0f95d3cb44e2e95"

  devel do
    url "https://github.com/sebglazebrook/aliases/raw/master/releases/0.8.0-devel/mac/aliases.tar.gz"
    sha256 "1738da16f6b2ff9472b3bed821334f70e5c1bc523c0fd2cf7e79b9cfd5c4abaa"
  end

  def install
    bin.install "aliases"
  end

  def caveats; <<-EOS.undent
    To activate the alias shims add the following to your profile:

      echo 'eval \"$(aliases init --global)\"' >> ~/.bash_profile

    EOS
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test aliases`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end

end
