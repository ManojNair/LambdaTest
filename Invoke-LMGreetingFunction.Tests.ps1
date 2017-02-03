$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Invoke-LMGreetingFunction" {
    It "Prints `"Hello World`"" {
        Invoke-LMGreetingFunction | Should Be "`"Hello World`""
    }
}
