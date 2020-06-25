# NetBeans textmate files
This repository is a collection of textmate files to add them easily to NetBeans, to add basic syntax highlighting for
a lot of languages. Over 50 languages are supported.

Those files where copied from differnet places, most of the time from the repos, that created similiar plugins for VS Code.

## How to use:
1. Move the folder "supported languages" whereever you want.
2. Open the `textmate-description.json` file.
3. Change the paths to the correct folders/files.
4. Open the `client.properties` file which is located here:
    
    Windows

        `%userprofile%\AppData\Roaming\NetBeans\YourNetBeansVersion\config\Preferences\org\netbeans\modules\lsp`

    Linux

        TBD

## Collected languages:
* ANTLR(4) Files (.g & .g4) - [https://github.com/mike-lischke/vscode-antlr4/blob/master/syntaxes/antlr.json](https://github.com/mike-lischke/vscode-antlr4/blob/master/syntaxes/antlr.json)
* Batch Files (.bat & .cmd) - [https://github.com/microsoft/vscode/blob/master/extensions/bat/syntaxes/batchfile.tmLanguage.json](https://github.com/microsoft/vscode/blob/master/extensions/bat/syntaxes/batchfile.tmLanguage.json)
* Brainfuck Files (.b & .bf) - [https://github.com/attilabuti/brainfuck-syntax/blob/master/syntaxes/brainfuck.tmLanguage.json](https://github.com/attilabuti/brainfuck-syntax/blob/master/syntaxes/brainfuck.tmLanguage.json)
* Bosque Files (.bsq) - [https://github.com/microsoft/BosqueLanguage/blob/master/bosque-language-tools/syntaxes/bosque.tmLanguage.json](https://github.com/microsoft/BosqueLanguage/blob/master/bosque-language-tools/syntaxes/bosque.tmLanguage.json)
* C# Files (.cs, .csx & .cake) - [https://github.com/microsoft/vscode/blob/master/extensions/csharp/syntaxes/csharp.tmLanguage.json](https://github.com/microsoft/vscode/blob/master/extensions/csharp/syntaxes/csharp.tmLanguage.json)
* COBOL Files (.cbl, .ccp, .cob, .cpy, .dds, .pco, .scbl, .ss & .wks) - [https://github.com/spgennard/vscode_cobol/blob/master/syntaxes/COBOL.tmLanguage.json](https://github.com/spgennard/vscode_cobol/blob/master/syntaxes/COBOL.tmLanguage.json)
* CodeQL Files (.ql & .qll) - [https://github.com/github/vscode-codeql/blob/master/extensions/ql-vscode/syntaxes/ql.tmLanguage.yml](https://github.com/github/vscode-codeql/blob/master/extensions/ql-vscode/syntaxes/ql.tmLanguage.yml)
* Cucumber Files (.feature & .testcase) - [https://github.com/alexkrechik/VSCucumberAutoComplete/blob/master/gclient/syntaxes/feature.tmLanguage](https://github.com/alexkrechik/VSCucumberAutoComplete/blob/master/gclient/syntaxes/feature.tmLanguage)
* Elixir Files (.ex & .exs) - [https://github.com/fr1zle/vscode-elixir/blob/master/syntaxes/elixir.json](https://github.com/fr1zle/vscode-elixir/blob/master/syntaxes/elixir.json)
* Elm Files (.elm) - [https://github.com/elm-tooling/elm-language-client-vscode/blob/master/syntaxes/elm-syntax.json](https://github.com/elm-tooling/elm-language-client-vscode/blob/master/syntaxes/elm-syntax.json)
* Epic Database Files (.db) - [https://github.com/NSenaud/vscode-epics/blob/master/syntaxes/db.tmLanguage.json](https://github.com/NSenaud/vscode-epics/blob/master/syntaxes/db.tmLanguage.json)
* Epic Database Definition Files (.dbd) - [https://github.com/NSenaud/vscode-epics/blob/master/syntaxes/dbd.tmLanguage.json](https://github.com/NSenaud/vscode-epics/blob/master/syntaxes/dbd.tmLanguage.json)
* Epic Streamdevice Protoype Files (.proto) - [https://github.com/NSenaud/vscode-epics/blob/master/syntaxes/proto.tmLanguage.json](https://github.com/NSenaud/vscode-epics/blob/master/syntaxes/proto.tmLanguage.json)
* Epic Substitutions Files (.sub, .subs, .substitutions) - [https://github.com/NSenaud/vscode-epics/blob/master/syntaxes/sub.tmLanguage.json](https://github.com/NSenaud/vscode-epics/blob/master/syntaxes/sub.tmLanguage.json)
* Erlang Files (.erl & .hrl) - [https://github.com/pgourlain/vscode_erlang/blob/master/syntaxes/erlang.tmLanguage](https://github.com/pgourlain/vscode_erlang/blob/master/syntaxes/erlang.tmLanguage)
* F# Files (.fs, .fsi, .fsx & .fsscript) - [https://github.com/microsoft/vscode/blob/master/extensions/fsharp/syntaxes/fsharp.tmLanguage.json](https://github.com/microsoft/vscode/blob/master/extensions/fsharp/syntaxes/fsharp.tmLanguage.json)
* Forth Files (.frt, .fth, .4th & .forth) - [https://github.com/hirnidrin/vscode-lang-forth/blob/master/syntaxes/forth.tmLanguage.json](https://github.com/hirnidrin/vscode-lang-forth/blob/master/syntaxes/forth.tmLanguage.json)
* Fortran Files (.f03, .f08, .f90 & .f95) - [https://github.com/krvajal/vscode-fortran-support/blob/master/syntaxes/fortran_free-form.tmLanguage.json](https://github.com/krvajal/vscode-fortran-support/blob/master/syntaxes/fortran_free-form.tmLanguage.json)
* Freemarker Files (.ftl) - [https://github.com/freemarker/FreeMarker.tmbundle/blob/master/Syntaxes/FreeMarker.tmLanguage](https://github.com/freemarker/FreeMarker.tmbundle/blob/master/Syntaxes/FreeMarker.tmLanguage)
* Fuchsia Files (.fidl) - [https://fuchsia.googlesource.com/vscode-language-fidl/+/refs/heads/master/syntaxes/fidl.tmLanguage.json](https://fuchsia.googlesource.com/vscode-language-fidl/+/refs/heads/master/syntaxes/fidl.tmLanguage.json)
* Galen Files (.gspec) - [https://github.com/simonhdickson/galen-vscode-extension/blob/master/syntaxes/galen.tmLanguage](https://github.com/simonhdickson/galen-vscode-extension/blob/master/syntaxes/galen.tmLanguage) 
* Go Files (.go) - [https://github.com/microsoft/vscode/blob/master/extensions/go/syntaxes/go.tmLanguage.json](https://github.com/microsoft/vscode/blob/master/extensions/go/syntaxes/go.tmLanguage.json)
* Handlebar Files (.handlebars, .hbs & .hjs) - [https://github.com/Microsoft/vscode/blob/master/extensions/handlebars/syntaxes/Handlebars.tmLanguage.json](https://github.com/Microsoft/vscode/blob/master/extensions/handlebars/syntaxes/Handlebars.tmLanguage.json)
* Haskell Files (.hs & .hsig) - [https://raw.githubusercontent.com/JustusAdam/language-haskell/master/syntaxes/haskell.YAML-tmLanguage](https://raw.githubusercontent.com/JustusAdam/language-haskell/master/syntaxes/haskell.YAML-tmLanguage)
* Haxe Files (.hx & .dump) - [https://github.com/vshaxe/haxe-TmLanguage/blob/6e7f85bd0ee7f453ffaeefa291aeff3c41667b5a/haxe.tmLanguage](https://github.com/vshaxe/haxe-TmLanguage/blob/6e7f85bd0ee7f453ffaeefa291aeff3c41667b5a/haxe.tmLanguage)
* HLSL Files (.cginc, .comput, .fx, .fxh, .hlsl, .hlsli, .psh, & .vsh) - [https://github.com/Microsoft/vscode/blob/master/extensions/hlsl/syntaxes/hlsl.tmLanguage.json](https://github.com/Microsoft/vscode/blob/master/extensions/hlsl/syntaxes/hlsl.tmLanguage.json)
* Http RestClient Files (.http) - [https://github.com/Huachao/vscode-restclient/blob/master/syntaxes/http.tmLanguage.json](https://github.com/Huachao/vscode-restclient/blob/master/syntaxes/http.tmLanguage.json)
* LISP Files (.asd, .asdf, .cl, .lisp, .lsp & .ros) - [https://github.com/ailisp/commonlisp-vscode/tree/master/syntaxes](https://github.com/ailisp/commonlisp-vscode/tree/master/syntaxes)
* LOG Files (.log) - [https://github.com/Microsoft/vscode/blob/master/extensions/log/syntaxes/log.tmLanguage.json](https://github.com/Microsoft/vscode/blob/master/extensions/log/syntaxes/log.tmLanguage.json)
* Lua Files (.lua) - [https://github.com/microsoft/vscode/blob/master/extensions/lua/syntaxes/lua.tmLanguage.json](https://github.com/microsoft/vscode/blob/master/extensions/lua/syntaxes/lua.tmLanguage.json)
* Markdown Files (.md) - [https://github.com/microsoft/vscode/blob/master/extensions/markdown-basics/syntaxes/markdown.tmLanguage.json](https://github.com/microsoft/vscode/blob/master/extensions/markdown-basics/syntaxes/markdown.tmLanguage.json)
* Nim Files (.nim, .nims & .nim.cfg) - [https://github.com/pragmagic/vscode-nim/blob/master/syntaxes/nim.json](https://github.com/pragmagic/vscode-nim/blob/master/syntaxes/nim.json)
* OpenSCAD Files (.scad) - [https://github.com/tbuser/openscad.tmbundle/blob/master/Syntaxes/OpenSCAD.tmLanguage](https://github.com/tbuser/openscad.tmbundle/blob/master/Syntaxes/OpenSCAD.tmLanguage)
* Perl Files (.pl, .pm, .pod, .psgi & .t) - [https://raw.githubusercontent.com/microsoft/vscode/master/extensions/perl/syntaxes/perl.tmLanguage.json](https://raw.githubusercontent.com/microsoft/vscode/master/extensions/perl/syntaxes/perl.tmLanguage.json)
* Perl6 Files (.nqp, .p6, .pl6 & .pm6) - [https://raw.githubusercontent.com/microsoft/vscode/master/extensions/perl/syntaxes/perl6.tmLanguage.json](https://raw.githubusercontent.com/microsoft/vscode/master/extensions/perl/syntaxes/perl6.tmLanguage.json)
* Powershell Files (.ps1, .psd1, .psm1, .psrc & .pssc) - [https://github.com/microsoft/vscode/blob/master/extensions/powershell/syntaxes/powershell.tmLanguage.json](https://github.com/microsoft/vscode/blob/master/extensions/powershell/syntaxes/powershell.tmLanguage.json)
* Python Files (.gyp, .gypi, .ipy, .py, .pyi, .pyw & .rpy) - [https://github.com/microsoft/vscode/blob/master/extensions/python/syntaxes/MagicPython.tmLanguage.json](https://github.com/microsoft/vscode/blob/master/extensions/python/syntaxes/MagicPython.tmLanguage.json)
* Q# Files (.qs) - [https://github.com/microsoft/qsharp-compiler/blob/master/src/VSCodeExtension/syntaxes/qsharp.tmLanguage.json.v.template](https://github.com/microsoft/qsharp-compiler/blob/master/src/VSCodeExtension/syntaxes/qsharp.tmLanguage.json.v.template)
* Razor Files (.cshtml) - [https://github.com/microsoft/vscode/blob/master/extensions/razor/syntaxes/cshtml.tmLanguage.json](https://github.com/microsoft/vscode/blob/master/extensions/razor/syntaxes/cshtml.tmLanguage.json)
* Rust Files (.rs) - [https://github.com/microsoft/vscode/blob/master/extensions/rust/syntaxes/rust.tmLanguage.json](https://github.com/microsoft/vscode/blob/master/extensions/rust/syntaxes/rust.tmLanguage.json)
