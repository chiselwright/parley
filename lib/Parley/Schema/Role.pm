package Parley::Schema::Role;
# ABSTRACT: Schema class for role table
# vim: ts=8 sts=4 et sw=4 sr sta
use strict;
use warnings;

use base 'DBIx::Class';
use DateTime::Format::Pg;

use Parley::App::DateTime qw( :interval );

__PACKAGE__->load_components("PK::Auto", "Core");
__PACKAGE__->table("parley.role");
__PACKAGE__->add_columns(
  id            => { },
  idx           => { },
  name          => { },
  description   => { },
);

__PACKAGE__->set_primary_key("id");
__PACKAGE__->resultset_class('Parley::ResultSet::Role');

__PACKAGE__->has_many(
    map_user_role => 'Parley::Schema::UserRole',
    'role_id'
);


1;
