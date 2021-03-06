local c = require("jamais.colors")
local utils = require("jamais.utils")
local cfg = require("jamais.config").styles
local jamais = {}

-- Settings editor

jamais.base = {
    Normal = {fg = c.fg, bg = c.wb},
    SignColumn = {fg = c.blue, bg = c.none},
    EndOfBuffer = {fg = c.ui_grey},
    NormalFloat = {fg = c.fg, bg = c.grey},
    FloatBorder = {fg = c.blue, bg = c.grey},
    ColorColumn = {fg = c.none, bg = c.grey},
    Conceal = {fg = c.blue},
    Whitespace = {fg = c.grey},
    Cursor = {fg = c.blue, bg = c.none, style = "reverse"},
    CursorIM = {fg = c.blue, bg = c.none, style = "reverse"},
    Directory = {fg = c.yellow, bg = c.none, style = cfg.bold},
    DiffAdd = {fg = c.blue, bg = c.none, style = "reverse"},
    DiffChange = {fg = c.green, bg = c.none, style = "reverse"},
    DiffDelete = {fg = c.red, bg = c.none, style = "reverse"},
    DiffText = {fg = c.red, bg = c.none, style = "reverse"},
    ErrorMsg = {fg = c.red},
    Folded = {fg = c.fg, bg = c.bg2},
    FoldColumn = {fg = c.fg, bg = c.none},
    IncSearch = {fg = c.fg},
    LineNr = {fg = c.grey},
    CursorLineNr = {fg = c.light_grey},
    MatchParen = {fg = c.accent, style = "underline,bold,italic"},
    ModeMsg = {fg = c.blue, style = cfg.bold},
    MoreMsg = {fg = c.blue, style = cfg.bold},
    NonText = {fg = c.green},
    Pmenu = {fg = c.fg, bg = c.bg2},
    PmenuSel = {fg = c.orange, style = "bold"},
    PmenuSbar = {fg = c.orange},
    PmenuThumb = {fg = c.orange},
    Question = {fg = c.red, style = cfg.bold},
    QuickFixLine = {fg = c.blue, bg = c.ui_grey, style = "bold,italic"},
    Search = {bg = c.grey},
    SpecialKey = {fg = c.blue},
    SpellBad = {fg = c.red, bg = c.none, style = "italic,undercurl"},
    SpellCap = {fg = c.blue, bg = c.none, style = "italic,undercurl"},
    SpellLocal = {fg = c.blue, bg = c.none, style = "italic,undercurl"},
    SpellRare = {fg = c.blue, bg = c.none, style = "italic,undercurl"},
    StatusLine = {fg = c.blue, bg = c.bg2},
    StatusLineNC = {fg = c.gray},
    StatusLineTerm = {fg = c.fg, bg = c.bg2},
    StatusLineTermNC = {fg = c.fg, bg = c.bg2},
    --TabLineFill = {fg = "#000000", bg = c.red},
    TablineSel = {bg = c.accent, style = "italic"},
    --Tabline = {fg = c.fg, bg = c.wb},
    Title = {fg = c.green, bg = c.none, style = cfg.bold},
    Visual = {fg = c.none, bg = c.grey},
    VisualNOS = {fg = c.none, bg = c.grey},
    WarningMsg = {fg = c.red, style = cfg.bold},
    WildMenu = {fg = c.bg2, bg = c.blue, style = "bold"},
    CursorLine = {bg = c.grey},
    ToolbarLine = {fg = c.bg2, bg = c.bg},
    ToolbarButton = {fg = c.fg, bg = c.none, style = "bold"},
    NormalMode = {fg = c.blue, bg = c.none, style = "reverse"},
    InsertMode = {fg = c.green, bg = c.none, style = "reverse"},
    ReplaceMode = {fg = c.red, bg = c.none, style = "reverse"},
    VisualMode = {fg = c.blue, bg = c.none, style = "reverse"},
    VertSplit = {fg = c.bg2},
    CommandMode = {fg = c.grey, bg = c.none, style = "reverse"},
    Warnings = {fg = c.orange},
    healthError = {fg = c.red},
    healthSuccess = {fg = c.green},
    healthWarning = {fg = c.orange}
}

jamais.common = {
    Type = {fg = c.purple},
    StorageClass = {fg = c.yellow},
    Structure = {fg = c.orange},
    Constant = {fg = c.purple},
    Comment = {fg = c.light_grey, bg = c.none, style = "italic"},
    Conditional = {fg = c.orange, bg = c.none, style = "italic"},
    Keyword = {fg = c.purple, bg = c.none, style = "italic"},
    Repeat = {fg = c.purple, bg = c.none, style = "italic"},
    Boolean = {fg = c.blue, bg = c.none, style = cfg.italic_boolean},
    Function = {fg = c.yellow, bg = c.none, style = cfg.italic_function .. cfg.bold},
    Identifier = {fg = c.yellow, bg = c.none, style = cfg.italic_variable},
    String = {fg = c.green, bg = c.none},
    Character = {fg = c.orange},
    Number = {fg = c.purple},
    Float = {fg = c.purple},
    Statement = {fg = c.purple, style = "italic"},
    Label = {fg = c.green},
    Operator = {fg = c.orange},
    Exception = {fg = c.orange, style = "italic"},
    PreProc = {fg = c.yellow},
    Include = {fg = c.orange, style = "italic"},
    Define = {fg = c.green, style = "italic"},
    Macro = {fg = c.orange},
    Typedef = {fg = c.purple, style = "italic"},
    PreCondit = {fg = c.orange},
    Special = {fg = c.purple, bg = c.none, style = "italic"},
    SpecialChar = {fg = c.orange},
    Tag = {fg = c.purple},
    Delimiter = {fg = c.green},
    SpecialComment = {fg = c.light_grey, style = "italic"},
    Debug = {fg = c.green},
    Underlined = {fg = c.blue, bg = c.none, style = "underline"},
    Ignore = {fg = c.accent},
    Error = {fg = c.red, bg = c.none, style = "bold,underline"},
    Todo = {fg = c.green, bg = c.none, style = "bold,italic"}
}

-- plugins

jamais.ale = {
    ALEError = {fg = c.red},
    ALEInfo = {fg = c.blue},
    ALEErrorSign = {fg = c.red},
    ALEWarningSign = {fg = c.orange},
    ALEInfoSign = {fg = c.blue},
    ALEVirtualTextError = {fg = c.red},
    ALEVirtualTextWarning = {fg = c.yellow},
    ALEVirtualTextInfo = {fg = c.blue},
    ALEWarning = {fg = c.orange},
    ALEErrorLine = {bg = c.red},
    ALEWarningLine = {bg = c.orange},
    ALEInfoLine = {bg = c.green},
    ALEVirtualTextStyleError = {fg = c.red},
    ALEVirtualTextStyleWarning = {fg = c.orange}
}

jamais.bufferline = {
    BufferLineIndicatorSelected = {fg = c.accent},
    BufferLineFill = {bg = c.accent}
}

jamais.blankline = {
    IndentBlanklineChar = {fg = c.ui_grey},
    IndentBlanklineSpaceChar = {fg = c.grey},
    IndentBlanklineSpaceCharBlankline = {fg = c.grey}
}

jamais.coc = {
    CocErrorSign = {fg = c.red},
    CocWarningSign = {fg = c.orange},
    CocInfoSign = {fg = c.green},
    CocHintSign = {fg = c.blue},
    CocErrorFloat = {fg = c.red},
    CocWarningFloat = {fg = c.orange},
    CocInfoFloat = {fg = c.green},
    CocHintFloat = {fg = c.blue},
    CocDiagnosticsError = {fg = c.red},
    CocDiagnosticsWarning = {fg = c.orange},
    CocDiagnosticsInfo = {fg = c.green},
    CocDiagnosticsHint = {fg = c.blue},
    CocSelectedText = {fg = c.red},
    CocCodeLens = {fg = c.grey},
    CocErrorHighlight = {fg = c.red, style = 'underline'},
    CocWarningHighlight = {fg = c.orange, style = 'underline'},
    CocInfoHighlight = {fg = c.green},
    CocHintHighlight = {fg = c.blue},
    CocExplorerBufferFullPath = {fg = c.grey},
    CocExplorerFileFullPath = {fg = c.grey},
    CocExplorerBufferNameVisible = {fg = c.orange},
    CocExplorerFileReadonly = {fg = c.purple},
    CocExplorerFileModified = {fg = c.purple},
    CocExplorerFileHidden = {fg = c.grey},
    CocExplorerHelpLine = {fg = c.purple},
    CocHighlightText = {fg = c.green},
    CocHoverRange = {fg = c.green},
    CocWarningVirtualText = {fg = c.orange},
    CocErrorVirtualText = {fg = c.red},
    CocInfoVirtualText = {fg = c.green},
    CocHintVirtualText = {fg = c.blue},
    --CocErrorLine = {fg = c.red},
    --CocWarningLine = {fg = c.yellow, style = 'underline'},
    CocInfoLine = {fg = c.green},
    --CocHintLine = {fg = c.accent},
    CocFadeOut = {fg = c.blue},
    CocStrikeThrough = {fg = c.grey},
    CocListMode = {fg = c.accent},
    CocListPath = {fg = c.accent},
    CocTreeOpenClose = {fg = c.grey},
    --HighlightedyankRegion = {fg = c.ui_grey},
    CocSymbolFile = {fg = c.fg},
    CocSymbolModule = {fg = c.light_grey},
    CocSymbolNamespace = {fg = c.light_grey},
    CocSymbolPackage = {fg = c.light_grey},
    CocSymbolClass = {fg = c.purple},
    CocSymbolMethod = {fg = c.accent},
    CocSymbolProperty = {fg = c.orange},
    CocSymbolField = {fg = c.orange},
    CocSymbolConstructor = {fg = c.accent},
    CocSymbolEnum = {fg = c.green},
    CocSymbolInterface = {fg = c.green},
    CocSymbolFunction = {fg = c.orange},
    CocSymbolVariable = {fg = c.purple},
    CocSymbolConstant = {fg = c.purple},
    CocSymbolString = {fg = c.green},
    CocSymbolNumber = {fg = c.blue},
    CocSymbolBoolean = {fg = c.purple},
    CocSymbolArray = {fg = c.fg},
    CocSymbolObject = {fg = c.purple},
    CocSymbolKey = {fg = c.orange},
    CocSymbolNull = {fg = c.orange},
    CocSymbolEnumMember = {fg = c.blue},
    CocSymbolStruct = {fg = c.yellow},
    CocSymbolEvent = {fg = c.green},
    CocSymbolOperator = {fg = c.green},
    CocSymbolTypeParameter = {fg = c.green},
    CocSymbolDefault = {fg = c.red},
    CocGitAddedSign = {fg = c.green},
    CocGitChangeRemovedSign = {fg = c.purple},
    CocGitChangedSign = {fg = c.blue},
    CocGitRemovedSign = {fg = c.red},
    CocGitTopRemovedSign = {fg = c.red},
    CocExplorerBufferRoot = {fg = c.orange},
    CocExplorerBufferExpandIcon = {fg = c.blue},
    CocExplorerBufferBufnr = {fg = c.orange},
    CocExplorerBufferModified = {fg = c.yellow},
    CocExplorerBufferReadonly = {fg = c.yellow},
    CocExplorerBufferBufname = {fg = c.grey},
    CocExplorerBufferFullpath = {fg = c.grey},
    CocExplorerFileRoot = {fg = c.orange},
    CocExplorerFileRootName = {fg = c.green},
    CocExplorerFileExpandIcon = {fg = c.blue},
    CocExplorerFileFullpath = {fg = c.grey},
    CocExplorerFileDirectory = {fg = c.green},
    CocExplorerFileGitStaged = {fg = c.purple},
    CocExplorerFileGitUnstaged = {fg = c.yellow},
    CocExplorerFileGitRootStaged = {fg = c.purple},
    CocExplorerFileGitRootUnstaged = {fg = c.yellow},
    CocExplorerGitPathChange = {fg = c.fg},
    CocExplorerGitContentChange = {fg = c.fg},
    CocExplorerGitRenamed = {fg = c.purple},
    CocExplorerGitCopied = {fg = c.fg},
    CocExplorerGitAdded = {fg = c.green},
    CocExplorerGitUntracked = {fg = c.blue},
    CocExplorerGitUnmodified = {fg = c.fg},
    CocExplorerGitUnmerged = {fg = c.orange},
    CocExplorerGitMixed = {fg = c.blue},
    CocExplorerGitModified = {fg = c.yellow},
    CocExplorerGitDeleted = {fg = c.red},
    CocExplorerGitIgnored = {fg = c.grey},
    CocExplorerFileSize = {fg = c.blue},
    CocExplorerTimeAccessed = {fg = c.blue},
    CocExplorerTimeCreated = {fg = c.blue},
    CocExplorerTimeModified = {fg = c.blue},
    CocExplorerIndentLine = {fg = c.light_grey},
    CocExplorerHelpDescription = {fg = c.grey},
    CocExplorerHelpHint = {fg = c.grey},
    CocRustChainingHint = {fg = c.grey}
}

jamais.dap = {
    DapBreakpoint = {fg = c.red},
    DapStopped = {fg = c.green}
}

jamais.dashboard = {
    DashboardShortCut = {fg = c.red},
    DashboardHeader = {fg = c.purple},
    DashboardCenter = {fg = c.blue},
    DashboardFooter = {fg = c.green, style = "italic"}
}

jamais.easymotion = {
    EasyMotionTarget = {fg = c.red, bg = c.none, style = "bold"},
    EasyMotionTarget2First = {fg = c.red, bg = c.none, style = "bold"},
    EasyMotionTarget2Second = {fg = c.red, bg = c.none, style = "bold"}
}

jamais.gitgutter = {
    GitGutterAdd = {fg = c.green},
    GitGutterChange = {fg = c.blue},
    GitGutterDelete = {fg = c.red},
    GitGutterChangeDelete = {fg = c.purple},
    GitGutterAddLine = {bg = c.green},
    GitGutterChangeLine = {bg = c.blue},
    GitGutterDeleteLine = {bg = c.red},
    GitGutterChangeDeleteLine = {bg = c.purple},
    GitGutterAddLineNr = {bg = c.green},
    GitGutterChangeLineNr = {bg = c.blue},
    GitGutterDeleteLineNr = {bg = c.red},
    GitGutterChangeDeleteLineNr = {bg = c.purple}
}

jamais.gitsigns = {
    GitSignsAdd = {fg = c.green},
    GitSignsChange = {fg = c.blue},
    GitSignsDelete = {fg = c.red},
    GitSignsAddNr = {fg = c.green},
    GitSignsChangeNr = {fg = c.blue},
    GitSignsDeleteNr = {fg = c.red},
    GitSignsAddLn = {fg = c.green},
    GitSignsChangeLn = {fg = c.blue},
    GitSignsDeleteLn = {fg = c.red},
    GitSignsCurrentLineBlame = {fg = c.grey}
}

jamais.html = {
    htmlArg = {fg = c.orange},
    htmlBold = {fg = c.orange, bg = c.none, style = "bold"},
    htmlEndTag = {fg = c.fg},
    htmlstyle = {fg = c.blue, bg = c.none, style = "italic"},
    htmlLink = {fg = c.blue, style = "underline"},
    htmlSpecialChar = {fg = c.orange},
    htmlSpecialTagName = {fg = c.blue, style = cfg.bold},
    htmlTag = {fg = c.fg},
    htmlTagN = {fg = c.blue},
    htmlTagName = {fg = c.blue, style = cfg.bold},
    htmlTitle = {fg = c.fg},
    htmlH1 = {fg = c.blue, style = "bold"},
    htmlH2 = {fg = c.blue, style = "bold"},
    htmlH3 = {fg = c.blue, style = "bold"},
    htmlH4 = {fg = c.blue, style = "bold"},
    htmlH5 = {fg = c.blue, style = "bold"}
}


jamais.lspsaga = {
    DiagnosticError = {fg = c.red},
    DiagnosticWarning = {fg = c.orange},
    DiagnosticInformation = {fg = c.blue},
    DiagnosticHint = {fg = c.blue},
    DiagnosticTruncateLine = {fg = c.fg},
    LspFloatWinNormal = {bg = c.bg2},
    LspFloatWinBorder = {fg = c.purple},
    LspSagaBorderTitle = {fg = c.blue},
    LspSagaHoverBorder = {fg = c.grey},
    LspSagaRenameBorder = {fg = c.green},
    LspSagaDefPreviewBorder = {fg = c.green},
    LspSagaCodeActionBorder = {fg = c.blue},
    LspSagaFinderSelection = {fg = c.green},
    LspSagaCodeActionTitle = {fg = c.grey},
    LspSagaCodeActionContent = {fg = c.purple},
    LspSagaSignatureHelpBorder = {fg = c.purple},
    ReferencesCount = {fg = c.purple},
    DefinitionCount = {fg = c.purple},
    DefinitionIcon = {fg = c.blue},
    ReferencesIcon = {fg = c.blue},
    TargetWord = {fg = c.blue},
    LspErrorVirtual = {fg = c.red},
    LspWarningVirtual = {fg = c.orange},
    LspInformationVirtual = {fg = c.green},
    LspHintVirtual = {fg = c.blue},
    LspErrorHighlight = {fg = c.red},
    LspWarningHighlight = {fg = c.orange},
    LspInformationHighlight = {fg = c.green},
    LspHintHighlight = {fg = c.blue},
    lspReference = {fg = c.fg}
}

jamais.markdown = {
    markdownH1 = {fg = c.blue, style = "bold"},
    markdownH2 = {fg = c.blue, style = "bold"},
    markdownH3 = {fg = c.blue, style = "bold"},
    markdownH4 = {fg = c.blue, style = "bold"},
    markdownH5 = {fg = c.blue, style = "bold"},
    markdownH6 = {fg = c.blue, style = "bold"},
    markdownHeadingDelimiter = {fg = c.red},
    markdownHeadingRule = {fg = c.grey},
    markdownId = {fg = c.blue},
    markdownIdDeclaration = {fg = c.blue},
    markdownIdDelimiter = {fg = c.blue},
    markdownstyle = {fg = c.blue, bg = c.none, style = "italic"},
    markdownLinkDelimiter = {fg = c.blue},
    markdownLinkText = {fg = c.blue},
    markdownListMarker = {fg = c.red},
    markdownOrderedListMarker = {fg = c.red},
    markdownRule = {fg = c.grey},
    markdownUrl = {fg = c.blue, bg = c.none, style = "underline"},
    markdownBlockquote = {fg = c.grey},
    markdownBold = {fg = c.orange, bg = c.none, style = "bold"},
    markdownCode = {fg = c.purple, bg = c.none},
    markdownCodeBlock = {fg = c.green},
    markdownCodeDelimiter = {fg = c.green}
}

jamais.nerdtree = {
    NERDTreeDir = {fg = c.purple},
    NERDTreeDirSlash = {fg = c.blue},
    NERDTreeOpenable = {fg = c.orange},
    NERDTreeClosable = {fg = c.orange},
    NERDTreeFile = {fg = c.blue},
    NERDTreeExecFile = {fg = c.green},
    NERDTreeUp = {fg = c.grey},
    NERDTreeCWD = {fg = c.green},
    NERDTreeHelp = {fg = c.grey},
    NERDTreeToggleOn = {fg = c.green},
    NERDTreeToggleOff = {fg = c.red}
}

jamais.nvimtree = {
    NvimTreeRootFolder = {fg = c.blue, style = "italic"},
    NvimTreeNormal = {fg = c.fg, bg = c.wb},
    NvimTreeGitDirty = {fg = c.yellow},
    NvimTreeGitNew = {fg = c.green},
--    NvimTreeImageFile = {fg = c.purple},
    NvimTreeExecFile = {fg = c.green},
    NvimTreeSpecialFile = {fg = c.yellow, style = "underline"},
    NvimTreeFolderName = {fg = c.accent},
    NvimTreeEmptyFolderName = {fg = c.accent},
--    NvimTreeFolderIcon = {fg = c.grey},
--    NvimTreeIndentMarker = {fg = c.light_grey},
    LspDiagnosticsError = {fg = c.red},
    LspDiagnosticsWarning = {fg = c.orange},
    LspDiagnosticsInformation = {fg = c.grey},
    LspDiagnosticsHint = {fg = c.blue}
}

jamais.sneak = {
    Sneak = {fg = c.bg2, bg = c.green},
    SneakScope = {bg = c.bg2},
    SneakLabel = {fg = c.fg}
}

jamais.signify = {
    SignifySignAdd = {fg = c.green},
    SignifySignChange = {fg = c.yellow},
    SignifySignDelete = {fg = c.red},
    SignifySignChangeDelete = {fg = c.red},
    SignifyLineAdd = {bg= c.green},
    SignifyLineChange = {bg= c.orange},
    SignifyLineChangeDelete = {bg= c.orange},
    SignifyLineDelete = {bg= c.red}
}

jamais.startify = {
    StartifyNumber = {fg = c.purple},
    StartifySelect = {fg = c.green},
    StartifyBracket = {fg = c.grey},
    StartifySpecial = {fg = c.blue},
    StartifyVar = {fg = c.blue},
    StartifyPath = {fg = c.blue},
    StartifyFile = {fg = c.green},
    StartifySlash = {fg = c.purple},
    StartifyHeader = {fg = c.purple},
    StartifySection = {fg = c.red},
    StartifyFooter = {fg = c.green}
}

jamais.syntastic = {
    syntasticerror = {fg = c.red},
    syntasticwarning = {fg = c.yellow},
    syntasticerrorsign = {fg = c.red},
    syntasticwarningsign = {fg = c.yellow},
    syntasticerrorline = {fg = c.red},
    syntasticwarningline = {fg = c.orange}
}

jamais.telescope = {
    TelescopePromptBorder = {fg = c.green},
    TelescopeResultsBorder = {fg = c.blue},
    TelescopePreviewBorder = {fg = c.purple}
}

jamais.treesitter = {
    TSComment = {fg = c.light_grey, bg = c.none, style = "italic"},
    TSConditional = {fg = c.purple, style = "italic"},
    TSKeyword = {fg = c.purple, style = "italic"},
    TSAnnotation = {fg = c.purple},
    TSRepeat = {fg = c.orange, style = "italic"},
    TSAttribute = {fg = c.purple},
    TSKeywordFunction = {fg = c.purple, style = "italic"},
    TSCharacter = {fg = c.orange},
    TSBoolean = {fg = c.purple, bg = c.none, style = "italic"},
    TSFunction = {fg = c.yellow, style = "italic,bold"},
    TSMethod = {fg = c.cyan, style = cfg.italic_function},
    TSKeywordReturn = {fg = c.orange, style = "italic"},
    TSConstructor = {fg = c.accent, style = "bold"},
    TSFuncBuiltin = {fg = c.blue, style = cfg.italic_function},
    TSConstant = {fg = c.purple},
    TSVariable = {fg = c.fg, style = "italic"},
    TSVariableBuiltin = {fg = c.blue},
    TSConstBuiltin = {fg = c.blue, style = "italic"},
    TSConstMacro = {fg = c.blue, style = "italic"},
    TSException = {fg = c.red},
    TSField = {fg = c.yellow},
    TSFloat = {fg = c.purple},
    TSFuncMacro = {fg = c.green, style = "bold"},
    TSInclude = {fg = c.orange},
    TSKeywordOperator = {fg = c.orange},
    TSOperator = {fg = c.orange},
    TSLabel = {fg = c.orange},
    TSNamespace = {fg = c.yellow, style = "italic"},
    TSNone = {fg = c.fg},
    TSNumber = {fg = c.purple},
    TSParameter = {fg = c.blue},
    TSParameterReference = {fg = c.blue},
    TSProperty = {fg = c.purple},
    TSPunctBracket = {fg = c.fg},
    TSPunctDelimiter = {fg = c.accent},
    TSPunctSpecial = {fg = c.blue},
    TSString = {fg = c.green},
    TSStringEscape = {fg = c.blue},
    TSStringRegex = {fg = c.green},
    TSStructure = {fg = c.blue, style = "italic"},
    TSSymbol = {fg = c.accent},
    TSTag = {fg = c.orange},
    TSTagDelimiter = {fg = c.green},
    TSText = {fg = c.fg},
    TSStrike = {fg = c.grey},
    TSMath = {fg = c.blue},
    TSType = {fg = c.yellow},
    TSTypeBuiltin = {fg = c.yellow, style = "italic"},
    TSURI = {fg = c.purple},
    TSStringSpecial = {fg = c.purple}
}

jamais.which = {
    WhichKey = {fg = c.purple, style = "bold"},
    WhichKeyGroup = {fg = c.light_grey, style = "italic"},
    WhichKeyDesc = {fg = c.blue, style = "bold"},
    WhichKeySeperator = {fg = c.green},
    WhichKeyFloating = {bg = c.bg2},
    WhichKeyFloat = {bg = c.bg2}
}

return jamais
