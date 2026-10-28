
$dllPath = "C:\Program Files\DAX Studio\bin\Microsoft.AnalysisServices.Tabular.dll"
[System.Reflection.Assembly]::LoadFrom($dllPath) | Out-Null
$server = New-Object Microsoft.AnalysisServices.Tabular.Server
try {
    $server.Connect("localhost:61098")
    $db = $server.Databases[0]
    $table = $db.Model.Tables["_Measures"]
    Write-Output ("Connected to live SSAS DB: " + $db.Name)
    
    $jsonText = [System.IO.File]::ReadAllText("C:\Users\Kevin\.gemini\antigravity-ide\scratch\live_measures_payload.json")
    $measuresObj = ConvertFrom-Json $jsonText
    
    $updatedCount = 0
    foreach ($prop in $measuresObj.psobject.Properties) {
        $name = $prop.Name
        $expr = $prop.Value
        
        $m = $table.Measures.Find($name)
        if ($null -eq $m) {
            $m = New-Object Microsoft.AnalysisServices.Tabular.Measure
            $m.Name = $name
            $m.Expression = $expr
            $table.Measures.Add($m)
            $updatedCount++
        } else {
            $m.Expression = $expr
            $updatedCount++
        }
    }
    
    Write-Output "Saving changes to live Power BI model..."
    $db.Model.SaveChanges()
    Write-Output ("Successfully pushed " + $updatedCount + " measures live into Power BI Desktop!")
} catch {
    Write-Output ("Error updating live model: " + $_.Exception.Message)
} finally {
    $server.Disconnect()
}
