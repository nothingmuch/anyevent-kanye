package AnyEvent::Kanye;

use strict;
use warnings;

use AnyEvent ();

BEGIN { our @ISA = "AnyEvent::CondVar" }

our $VERSION = "0.01";

sub condvar {
	my ( $class, @args ) = @_;
	bless( AnyEvent->condvar(@args), $class), 
}

sub send {
	my ( $self, $thing ) = @_;

	$self->SUPER::send(
		"This value is pretty good, and I'm going to let " .
		" you finish, but Beyonce had one of the best "    . 
		(ref($thing) || "value") . " of all times!"
	);
}

__PACKAGE__

__END__

=pod

=head1 NAME

AnyEvent::Kanye - The best kind of interrupt

=head1 SYNOPSIS

	my $cond = AnyEvent::Kanye->cond_var;

	$cond->cb(sub {
		warn = $_[0]->recv;
	});

	# later:
	$cond->send($result);

=head1 DESCRIPTION

This module will help you finish handling a value by notifying you about better
values.

=head1 BUGS

=over 4

=item *

In reality, listening to Kanye is not optional, he is the voice of a
generation.

=back

=head1 SEE ALSO

L<perlvar/%SIG>, L<Async::Interrupt>

=cut
