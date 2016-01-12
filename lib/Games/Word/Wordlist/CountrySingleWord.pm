package Games::Word::Wordlist::CountrySingleWord;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use parent qw(Games::Word::Wordlist);
use WordList::EN::CountryNames::SingleWord;

sub new {
    bless Games::Word::Wordlist->new ([WordList::EN::CountryNames::SingleWord->new->all_words]), shift;
}

1;

# ABSTRACT: English names of countries of the world (single words only)

=head1 SYNOPSIS

=head2 SEE ALSO

See L<Games::Word::Wordlist::Country>.
