require "shellany/sheller"

module Guard
  class Terminal
    class << self
      def clear
        cmd =  Gem.win_platform? ? "cls" : "clear;"
        exit_code, _, stderr = Shellany::Sheller.system(cmd)
        fail Errno::ENOENT, stderr unless exit_code == 0
      end
    end
  end
end
