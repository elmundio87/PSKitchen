@{
RootModule = 'PSKitchen.psm1'
ModuleVersion = '0.0.1'
GUID = '1804f94e-69ec-4f43-ae0c-68c237bc22fe'
Author = 'Edmund Dipple'
CompanyName = 'DevOpsGuys'
Copyright = '(c) 2018 DevOpsGuys. All rights reserved.'
Description = 'Provides functionality of Test Kitchen in pure Powershell'
FunctionsToExport = @(
    'Invoke-Kitchen'
)
CmdletsToExport = '*'
VariablesToExport = '*'
AliasesToExport = '*'
RequiredModules = @(
    @{ModuleName = 'powershell-yaml'; ModuleVersion = '0.3.4'; }
)
PrivateData = @{
    PSData = @{
    } # End of PSData hashtable
} # End of PrivateData hashtable
}
