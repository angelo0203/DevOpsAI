$postURL = "http://localhost:8000/predict"

$PostBody = Get-Content -Path "prediction_data.json"
$postHeaders = @{'Content-Type'='application/json'}
$postMethod = "POST"

#[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

Invoke-RestMethod -Uri $postURL -Method $postMethod -Headers $postHeaders -Body $postBody
