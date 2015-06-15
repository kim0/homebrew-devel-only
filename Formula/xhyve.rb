class Xhyve < Formula
  desc "The xhyve hypervisor is a port of bhyve to OS X. Requires OS X 10.10 Yosemite and higher, runs entirely in userspace."
  homepage "http://www.pagetable.com/?p=831"
  url "https://github.com/mist64/xhyve.git"

  def install
    system "make"
    bin.install 'build/xhyve'
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test xhyve`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "xhyve", "-h"
  end
end
