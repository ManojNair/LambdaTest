function Invoke-LMGreetingFunction
{
	$output = Invoke-LMFunction -FunctionName greetings -Payload "{`"name`":`"World`"}" -Region ap-southeast-2
	$writer = [System.IO.StreamReader]::New($output.Payload)
	$writer.ReadToEnd()

}
