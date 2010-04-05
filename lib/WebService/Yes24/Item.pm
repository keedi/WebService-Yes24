package WebService::Yes24::Item;
use 5.010;
use Moose;
use Moose::Util::TypeConstraints;

# ENCODING: utf-8
# ABSTRACT: Item of Yes24 Web Service Search Result

use namespace::autoclean;

=head1 SYNOPSIS

    use 5.010;
    use WebService::Yes24;
    
    my $yes24 = WebService::Yes24->new;
    $yes24->search( "Learning Perl" );
    for my $item ( @{ $yes24->result } ) {
        say $item->title;
        say $item->cover;
        say $item->author;
        say $item->publisher;
        say $item->date;
        say $item->price;
        say $item->mileage;
        say $item->link;
    }
    
    my $total = $yes24->search( "Perl" );
    my $last_page = ($total / $yes24->page_size) + 1;
    for my $page ( 1 .. $last_page ) {
        for my $result ( @{ $yes24->result($page) } ) {
            say $item->title;
            say $item->cover;
            say $item->author;
            say $item->publisher;
            say $item->date;
            say $item->price;
            say $item->mileage;
            say $item->link;
        }
    }
 
=head1 DESCRIPTION

This module is a search result object of L<WebService::Yes24>.
See the L<WebService::Yes24>.

=cut

use common::sense;

=attr title

This attribute stores the title.

=cut

has 'title' => (
    isa      => 'Str',
    is       => 'ro',
    required => 1,
);

=attr cover

This attribute stores the cover.

=cut

has 'cover' => (
    isa      => 'Str',
    is       => 'ro',
    required => 1,
);

=attr author

This attribute stores the author.

=cut

has 'author' => (
    isa      => 'Str',
    is       => 'ro',
    required => 1,
);

=attr publisher

This attribute stores the publisher.

=cut

has 'publisher' => (
    isa      => 'Str',
    is       => 'ro',
    required => 1,
);

=attr date

This attribute stores the date.

=cut

has 'date' => (
    isa      => 'Str',
    is       => 'ro',
    required => 1,
);

=attr price

This attribute stores the price.

=cut

has 'price' => (
    isa      => 'Str',
    is       => 'ro',
    required => 1,
);

=attr mileage

This attribute stores the mileage.

=cut

has 'mileage' => (
    isa      => 'Str',
    is       => 'ro',
    required => 1,
);

=attr link

This attribute stores the link.

=cut

has 'link' => (
    isa      => 'Str',
    is       => 'ro',
    required => 1,
);

=method new

    my $item = WebService::Yes24::Item->new(
        title     => 'Learning Perl (Hardcover, 5, English)',
        cover     => 'http://image.yes24.com/momo/TopCate75/MidCate08/7479928.jpg',
        author    => 'Tom Phoenix, Randal L. Schwartz, Brian d Foy',
        publisher => 'O\'Reilly',
        date      => '2008-07',
        price     => '41800',
        mileage   => '2090',
        link      => 'http://www.yes24.com/24/goods/2884380?scode=032&srank=1',
    );

This method will create and return L<WebService::Yes24::Item> object.

Usually, you do not need to create your own object.
Instead, use these attributes to get from search result of the
L<WebService::Yes24::Item>.

    my $yes24 = WebService::Yes24->new;
    $yes24->search( "Learning Perl" );
    for my $item ( @{ $yes24->result } ) {
        say $item->title;
        say $item->cover;
        say $item->author;
        say $item->publisher;
        say $item->date;
        say $item->price;
        say $item->mileage;
        say $item->link;
    }

=cut

__PACKAGE__->meta->make_immutable;
no Moose::Util::TypeConstraints;
no Moose;
1;
