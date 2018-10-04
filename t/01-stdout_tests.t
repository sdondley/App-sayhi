use Test::More tests => 3;
use App::Cmd::Tester;
use App::sayhi;

# execute some commands and store the resultant objects
my $normal = test_app('App::sayhi' => []);
my $shout  = test_app('App::sayhi' => [ '--shout' ]);
my $yell   = test_app('App::sayhi' => [ '--yell' ]);

# test the output of the commands
is ($normal->stdout, "Hello, World!\n", 'can give normal greeting');
is ($shout->stdout,  "HELLO, WORLD!\n", 'can shout greeting');
is ($yell->stdout,   "HELLO, WORLD!\n", 'can yell greeting');
