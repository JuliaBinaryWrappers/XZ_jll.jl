# Autogenerated wrapper script for XZ_jll for aarch64-linux-gnu
export liblzma, liblzma_a, lzmadec, lzmainfo, xz, xzdec

JLLWrappers.@generate_wrapper_header("XZ")
JLLWrappers.@declare_library_product(liblzma, "liblzma.so.5")
JLLWrappers.@declare_file_product(liblzma_a)
JLLWrappers.@declare_executable_product(lzmadec)
JLLWrappers.@declare_executable_product(lzmainfo)
JLLWrappers.@declare_executable_product(xz)
JLLWrappers.@declare_executable_product(xzdec)
function __init__()
    JLLWrappers.@generate_init_header()
    JLLWrappers.@init_library_product(
        liblzma,
        "lib/liblzma.so",
        RTLD_LAZY | RTLD_DEEPBIND,
    )

    JLLWrappers.@init_file_product(
        liblzma_a,
        "lib/liblzma.a",
    )

    JLLWrappers.@init_executable_product(
        lzmadec,
        "bin/lzmadec",
    )

    JLLWrappers.@init_executable_product(
        lzmainfo,
        "bin/lzmainfo",
    )

    JLLWrappers.@init_executable_product(
        xz,
        "bin/xz",
    )

    JLLWrappers.@init_executable_product(
        xzdec,
        "bin/xzdec",
    )

    JLLWrappers.@generate_init_footer()
end  # __init__()
