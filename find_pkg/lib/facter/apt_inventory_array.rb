Facter.add('apt_pkgs_array') do
    confine operatingsystem: 'Ubuntu'
    setcode do
        dpkgq_output = Facter::Core::Execution.execute('/usr/bin/dpkg-query --show')
        fact_out = []
        dpkgq_output.split("\n").each do | line |
            arr = line.split(/\s+/)
            name = arr[0]
            version = arr[1]
            fact_out << [name, version]
            end
        fact_out
    end
end