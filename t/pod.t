use Test::More;
my @files = (glob("lib/*/*.pm lib/*/*/*.pm"));
my $n = @files;

eval 'use Test::Pod';
if ($@) {
    plan skip_all => "You don't have Test::Pod installed";
} else {
    plan tests => $n;
}

for my $file (@files) {
    pod_file_ok($file, "POD for '$file'");
}
