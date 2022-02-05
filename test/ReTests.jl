module MyPackageTests
    using ReTest

    @testset_macro @include # do code replacement at "filtering" time

    include("tests.jl")
end
