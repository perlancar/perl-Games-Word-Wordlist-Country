package Games::Word::Wordlist::Country;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use parent qw(Games::Word::Wordlist);

use WordList::EN::CountryNames;

sub new {
    bless Games::Word::Wordlist->new ([WordList::EN::CountryNames->new->all_words]), shift;
}

1;

# ABSTRACT: English names of countries of the world
