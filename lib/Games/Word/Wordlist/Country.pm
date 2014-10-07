package Games::Word::Wordlist::Country;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use parent qw(Games::Word::Wordlist);

our $COUNTRIES; # PRECOMPUTE

sub new {
    bless Games::Word::Wordlist->new ($COUNTRIES), shift;
}

1;

# ABSTRACT: English names of countries of the world

=head1 SYNOPSIS

  use Games::Word::Wordlist::Country;
  my $wl = Games::Word::Wordlist::Country->new;
  my $word = $wl->random_word;
  print "We have a word." if $wl->is_word ($word);


=head1 DESCRIPTION

This module provides a list of English names of countries of the world. You can
use this module in some word games, e.g. L<Games::Hangman>.

To produce the list, the latest L<Locale::Codes> during build time is used. The
shortest names for each country is taken, then converted to lowercase. Thus,
some words will contain whitespace (e.g. "sri lanka") or parentheses (e.g.
"virgin islands (uk)"). If you only want single words, you can use
L<Games::Word::Wordlist::CountrySingleWord>.



