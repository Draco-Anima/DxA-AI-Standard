$ErrorActionPreference = 'Stop'
$failed = $false

function Fail-PublicSafety([string]$Message) {
    Write-Error "PUBLIC-SAFETY: $Message" -ErrorAction Continue
    $script:failed = $true
}

$files = @(git ls-files)

if ($files -contains 'USER.md') {
    Fail-PublicSafety 'root USER.md is private; publish templates/USER.md only.'
}

if ($files | Where-Object { $_ -match '(^|/)\.work(/|$)' }) {
    Fail-PublicSafety '.work/ content must not be published.'
}

$invalidProjects = $files | Where-Object { $_ -like 'projects/*' -and $_ -notlike 'projects/learning/*' }
if ($invalidProjects) {
    Fail-PublicSafety 'projects/ may only contain projects/learning/ in the public repository.'
}

$allowedExact = @('.gitignore','README.md','LICENSE','CHANGELOG.md','CONTRIBUTING.md','SECURITY.md','PUBLICATION.md')
foreach ($path in $files) {
    $allowed = $allowedExact -contains $path -or
        $path -like 'core/*' -or
        $path -like 'templates/*' -or
        $path -like 'projects/learning/*' -or
        $path -like 'scripts/public-safety-check.*' -or
        $path -like '.github/*'
    if (-not $allowed) {
        Fail-PublicSafety "unexpected tracked path: $path"
    }
}

if ($failed) { exit 1 }
Write-Host 'PUBLIC-SAFETY: repository structure is safe for public distribution.'
