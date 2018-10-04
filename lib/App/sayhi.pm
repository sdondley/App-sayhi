package App::sayhi;
our $VERSION = '0.002';
use strict;
use warnings;
use Greetings;
use base qw(App::Cmd::Simple);

sub opt_spec {
  return (
    [ "shout|s",  "shout it" ],
    [ "yell|y",   "same as shout" ],
  );
}

sub validate_args {
  my ($self, $opt, $args) = @_;

  # no args allowed but options!
  $self->usage_error("No args allowed") if @$args;
}

sub execute {
  my ($self, $opt, $args) = @_;

  if ($opt->{shout} || $opt->{yell}) {
    &Greetings::shout_hw;
  } else {
    &Greetings::hw;
  }
}

1;

=head1 NAME

App::sayhi - backend interface to the `sayhi` command

=head1 SYNOPSIS

From the command line:

    sayhi          # Prints "Hello, World!" followed by a newline
    sayhi --shout  # Shouts it


