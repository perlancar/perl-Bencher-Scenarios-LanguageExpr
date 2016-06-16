package Bencher::Scenario::LanguageExpr::Evaluate;

# DATE
# VERSION

# put shared datasets here
#use Bencher::ScenarioUtil::LanguageExpr;

our $scenario = {
    summary => 'Benchmark evaluation',
    modules => {
        'Language::Expr' => 0.24,
    },
    participants => [
        {
            module => 'Language::Expr::Compiler::perl',
            code_template => 'state $plc = Language::Expr::Compiler::perl->new; $plc->eval(<expr>)',
        },
    ],
    datasets => [
        {
            args => {expr => '1'},
        },
        {
            args => {expr => '1' . ('*1' x (  2-1)) },
        },
        {
            args => {expr => '1' . ('*1' x (  5-1)) },
        },
        {
            name => '1*1*...*1 (10x)',
            args => {expr => '1' . ('*1' x ( 10-1)) } },
        {
            name => '1*1*...*1 (20x)',
            args => {expr => '1' . ('*1' x ( 20-1)) },
        },
        {
            name => '1*1*...*1 (100x)',
            args => {expr => '1' . ('*1' x (100-1)) },
        },
    ],
};

1;
# ABSTRACT:

=head1 SEE ALSO
