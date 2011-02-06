package Parley::ResultSet::Role;
# ABSTRACT: Resultset class for role table
# vim: ts=8 sts=4 et sw=4 sr sta
use strict;
use warnings;

use base 'DBIx::Class::ResultSet';

sub role_list {
    my $resultsource = shift;
    my ($rs);

    $rs = $resultsource->search(
        {
        },
        {
            'order_by' => [ \'idx ASC', \'description ASC' ],
        },
    );

    return $rs;
}

1;
