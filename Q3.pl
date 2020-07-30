#Question 3 : Expense Tracker


use strict;
use warnings;

open(my $exphandle, '<', "expense.txt") or die "Not able to open  expense.txt\n";
my @expense = split(",", $exphandle);

open(my $amthandle, '<', "amt.txt") or die "Not able to open  amt.txt\n";
my @amt = split(",", $amthandle);

sub expenseadd{
my $request = 1;
while($request){
print "Do you want to add an expense 1 for yes/0 for no\n";
$request = <STDIN>;
chomp($request);
if($request == 0){
last;
}
print "Enter the expense description\n";
my $exp = <STDIN>;
chomp($exp);
push(@expense,$exp);
print "Enter the expense amt\n";
my $amt = <STDIN>;
chomp($amt);
push(@amt,$amt);
}
open(FH, '>', "expense.txt") or die $!;
print FH @expense;
close(FH);

open(FH, '>', "amt.txt") or die $!;
print FH @amt;
close(FH);
}

sub analyze{
open(my $exphandle, '<', "expense.txt") or die "Not able to open  expense.txt\n";
@expense = split(",", $exphandle);

open(my $amthandle, '<', "amt.txt") or die "Not able to open  amt.txt\n";
@amt = split(",", $amthandle);
my @idx = sort { amt[$b] <=> amt[$a] };

@expense = @expense[$idx];
@amt = @amt[$idx];

my $length = @expense;
print "Analysis of Expenses in Decreasing order of money spent";

print "Expense Description\t\t\tamt\n";
for(my $i = 0; $i < $length; $i++){
print "@expense[$i]\t\t\t";
print "@amt[$i]\n";
}

print "Hope this analysis helps:)\n";
}

print "Type 1 to add expenses or 2 to analyse expenses\n";
my $option = <STDIN>;
chomp($option);

if($option == 1){
	expenseadd;
}else{
	analyze;
}