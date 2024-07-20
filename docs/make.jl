using MyPackage
using Documenter

DocMeta.setdocmeta!(MyPackage, :DocTestSetup, :(using MyPackage); recursive=true)

makedocs(;
    modules=[MyPackage],
    authors="Solène Delannoy-Pavy <sodelannoypavy@gmail.com>",
    sitename="MyPackage.jl",
    format=Documenter.HTML(;
        canonical="https://solenedelannoy.github.io/MyPackage.jl",
        edit_link="master",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/solenedelannoy/MyPackage.jl",
    devbranch="master",
)
