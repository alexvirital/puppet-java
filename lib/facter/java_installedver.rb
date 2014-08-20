Facter.add("java_installedver") do
 confine :osfamily => "RedHat"
 setcode do
   java_installedver = Facter::Util::Resolution.exec("/usr/java/java_latest/bin/java -version 2>&1 | head -n 1 | cut -f2 -d'\"'")
           java_installedver
   end
end