<h1>The script lists down the usage of AWS resources, such as:</h1><br>
1) S3 Buckets<br>
2) EC2 Instances<br>
3) Lambda Functions<br>
4) IAM Users<br>
<br>
<h1>Shell Scripting Command Used:</h1><br>
1) set -x: Put the script in debug mode, showing the executed commands for better understanding or readability.<br>
2) set -e: Exit/Terminate the script whenever there is an error found.<br>
3) set -o: Catch the pipe(|) failure.<br>
4) jq: Use jq as a JSON parser to extract specific information, like AWS instance IDs, from JSON output.<br>
   

