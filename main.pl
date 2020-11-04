#!/usr/bin/perl
use strict;
use warnings;

my $js_file_name = '/home/max/Projects/JsonInCsv/json/data.json';

sub json_in_arr {
	my $name = shift;
	my @arr_line;

	open my $fh,'<', $name or die $!;
	
	while ( my $line = <$fh> ) {
    	chomp($line);
    	if ($line =~ /\[/) { next; }
    	if ($line =~ /\]/) { next; }
    	push(@arr_line, $line);	
	}
	return @arr_line;
}

json_in_arr($js_file_name);

__END__