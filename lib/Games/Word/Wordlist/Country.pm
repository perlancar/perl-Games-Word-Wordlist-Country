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

This module provides English names of countries of the world. You can use this
in some word games, e.g. L<Games::Word::Hangman>.

The list is produced using the latest L<Locale::Codes> during build time, using
the shortest name for each country, then converted to lowercase. Some words will
contain whitespace (e.g. "Sri Lanka") or parentheses (e.g. "Virgin Islands
(UK)"). If you only want single words, you can use
L<Games::Word::Wordlist::CountrySingleWord>.



