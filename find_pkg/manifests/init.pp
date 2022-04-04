# A random package I know is installed.
$check_if_installed = 'python3'

# Returns a list in a list, so we flatten it.
# Returns blank if not found.
$pkg_fact_hash = flatten($facts['apt_pkgs_hash'].filter | $pkg | {
  $check_if_installed == $pkg['name']
})
notice("Hash Result: ${pkg_fact_hash}")

# Some people like arrays better than hashes.
$pkg_fact_array = flatten($facts['apt_pkgs_array'].filter | $pkg | {
  $check_if_installed == $pkg[0]
})
notice("Array result: ${pkg_fact_array}")

# Now you can do something like:

if $pkg_fact_array {
  notice( "hello, it's me. Proceed with package resource" )
  # package { 'package': }
} else {
  notice ( "I am not what you're looking for." )
}
