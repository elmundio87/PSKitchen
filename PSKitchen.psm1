import-module 'powershell-yaml'

function Invoke-Kitchen(){
    if ( -not (Test-Path ".kitchen.yml")) {
        throw "No .kitchen.yml found in the current directory"
        exit 1
    }

    $kitchen_yaml = ConvertFrom-Yaml (Get-Content .kitchen.yml | Out-String)
    
    create $kitchen_yaml
    converge $kitchen_yaml
    verify $kitchen_yaml
}

function create($kitchen_yaml){
    Write-Output "Entering stage: Create"
    Write-Output "Using driver $($kitchen_yaml.driver.name)"
    . ./$PSScriptRoot
}

function converge($kitchen_yaml){
    Write-Output "Entering stage: Converge"
    Write-Output "Using provisioner $($kitchen_yaml.driver.name)"
}

function verify($kitchen_yaml){
    Write-Output "Entering stage: Verify"
    Write-Output "Using verifier $($kitchen_yaml.verifier.name)"
}

function destroy(){
    
}

function login(){
    
}

function test( $kitchen_yaml ){
    create $kitchen_yaml
    converge $kitchen_yaml
    verify $kitchen_yaml
    destroy
}

Export-ModuleMember -function *-*