#Question 1 : Quiz Application

use strict;
use warnings;

open(my $usr, '<', "user.txt") or die "Not able to open user.txt\n";
my @user = split(",", $usr);

open(my $pass, '<', "pwd.txt") or die "Not able to open pwd.txt\n";
my @pwd = split(",", $pass);

open(my $response, '<', "id.txt") or die "Not able to open id.txt\n";
my @id = split(",", $response);

open(my $question, '<', "question.txt") or die "Not able to open question.txt\n";
my @question = split(",", $question);

open(my $options, '<', "option.txt") or die "Not able to open option.txt\n";
my @question = split(",", $options);

open(my $ans, '<', "answer.txt") or die "Not able to open answer.txt\n";
my @answer = split(",", $ans);


sub login{
my($user, $pass, $response) = my $user, my $pass, my $response;
my $length = @user;
for(my $i = 0; $i < $length; $i++){
if($user[i] == user and $pwd[i] == pass and $id[i] == response){
        return "Successful Logon";
    }
    else{
    return "No User Found, Registration required";
    }
}
}

sub registration{
my($user, $pass, $response) = $user, $pass, $response;
push(@user, user);
push(@pwd, pass);
push(@id, response);
}

sub quiz{
my $length = @question;
my $k = 0;
for(my $i = 1; $i <= 10; $i++){
my $a = int rand($length);
print "question[$a]";
print "Enter your option\n";
my $ans = <STDIN>;
chomp($ans);
my $l = 0
for(my $j = $a; $j < $a + 4; $j++){
if(option[$a] == $ans){
$l=1;
$k++;
last;
}
}
if($l == 1){
print "Correct answer\n";
}else{
print "Incorrect answer\n";
}
}
return "Total quiz score = $k";
}

sub submit{
my $req = 1;
while($req){
print "Willing to add a question 1 for yes/0 for no\n";
$req = <STDIN>;
chomp($req);
if($req == 0){
last;
}
print "Enter the question\n";
my $ques = <STDIN>;
chomp($ques);
push(@question,$ques);
for(my $i = 1; $i <= 4; $i++){
print "Enter the $i option\n";
my $opt = <STDIN>;
chomp($opt);
push(@option, $opt);
}
print "Enter the answer as option\n";
my $ans = <STDIN>;
chomp($ans);
push(@answer,$ans);
}
open(FH, '>', "question.txt") or die $!;
print FH @question;
close(FH);

open(FH, '>', "option.txt") or die $!;
print FH @option;
close(FH);
open(FH, '>', "answer.txt") or die $!;
print FH @answer;
close(FH);
}

print "Enter 1 to Create Account or 2 to Login\n";
$option = <STDIN>
chomp($option);

my $temp = "No Such User, Please Register";
while($temp ne "Login Successful")
print "Enter user\n";
$user = <STDIN>;
chomp($user);
print "Enter pwd\n";
$pass= <STDIN>;
chomp($pass);
print "Enter 1 for admin and 2 for paticipant\n"
$response= <STDIN>;
chomp($response);

if($option == 1){
$temp = login $user, $pass, $response
print "$temp";
}else{
$temp = registration $user, $pass, $response
print "$temp";
}
}

if($response == 1){
submit;
print "Question submitted";
}
else{
print quiz;
}