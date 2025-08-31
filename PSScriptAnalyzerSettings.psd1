@{
    Severity     = @('Information','Warning','Error')
    ExcludeRules = @(
        'PSUseSingularNouns',     # on s'autorise des noms de module/script au pluriel
        'PSAvoidGlobalVars'       # toléré en lab, à éviter en prod
    )
    IncludeRules = @(
        'PSUseConsistentWhitespace',
        'PSUseConsistentIndentation',
        'PSUseCorrectCasing',
        'PSAvoidUsingWriteHost',
        'PSAvoidUsingConvertToSecureStringWithPlainText'
    )
}
