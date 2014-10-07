package Games::Word::Wordlist::CountrySingleWord;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use parent qw(Games::Word::Wordlist);

require Games::Word::Wordlist::Country;

our $COUNTRIES = [grep {/\A\w+\z/} @$Games::Word::Wordlist::Country::COUNTRIES];

sub new {
    bless Games::Word::Wordlist->new ($COUNTRIES), shift;
}

1;

# ABSTRACT: English names of countries of the world (single words only)

=head1 SYNOPSIS

=head2 SEE ALSO

See L<Games::Word::Wordlist::Country>.
