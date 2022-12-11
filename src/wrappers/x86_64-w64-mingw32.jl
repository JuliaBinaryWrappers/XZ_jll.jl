# Autogenerated wrapper script for XZ_jll for x86_64-w64-mingw32
export liblzma, liblzma_a, lzmadec, lzmainfo, xz, xzdec

JLLWrappers.@generate_wrapper_header("XZ")
JLLWrappers.@declare_library_product(liblzma, "liblzma-5.dll")
JLLWrappers.@declare_file_product(liblzma_a)
JLLWrappers.@declare_executable_product(lzmadec)
JLLWrappers.@declare_executable_product(lzmainfo)
JLLWrappers.@declare_executable_product(xz)
JLLWrappers.@declare_executable_product(xzdec)
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        liblzma,
        "bin\\liblzma-5.dll",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_file_product(
        liblzma_a,
        "lib\\liblzma.a",
    )

    JLLWrappers.@init_executable_product(
        lzmadec,
        "bin\\lzmadec.exe",
    )

    JLLWrappers.@init_executable_product(
        lzmainfo,
        "bin\\lzmainfo.exe",
    )

    JLLWrappers.@init_executable_product(
        xz,
        "bin\\xz.exe",
    )

    JLLWrappers.@init_executable_product(
        xzdec,
        "bin\\xzdec.exe",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
