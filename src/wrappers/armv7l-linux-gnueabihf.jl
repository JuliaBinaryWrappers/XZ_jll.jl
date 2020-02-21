# Autogenerated wrapper script for XZ_jll for armv7l-linux-gnueabihf
export lzmadec, liblzma, lzmainfo, xz, xzdec

## Global variables
PATH = ""
LIBPATH = ""
LIBPATH_env = "LD_LIBRARY_PATH"

# Relative path to `lzmadec`
const lzmadec_splitpath = ["bin", "lzmadec"]

# This will be filled out by __init__() for all products, as it must be done at runtime
lzmadec_path = ""

# lzmadec-specific global declaration
function lzmadec(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(lzmadec_path)
    end
end


# Relative path to `liblzma`
const liblzma_splitpath = ["lib", "liblzma.so"]

# This will be filled out by __init__() for all products, as it must be done at runtime
liblzma_path = ""

# liblzma-specific global declaration
# This will be filled out by __init__()
liblzma_handle = C_NULL

# This must be `const` so that we can use it with `ccall()`
const liblzma = "liblzma.so.5"


# Relative path to `lzmainfo`
const lzmainfo_splitpath = ["bin", "lzmainfo"]

# This will be filled out by __init__() for all products, as it must be done at runtime
lzmainfo_path = ""

# lzmainfo-specific global declaration
function lzmainfo(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(lzmainfo_path)
    end
end


# Relative path to `xz`
const xz_splitpath = ["bin", "xz"]

# This will be filled out by __init__() for all products, as it must be done at runtime
xz_path = ""

# xz-specific global declaration
function xz(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(xz_path)
    end
end


# Relative path to `xzdec`
const xzdec_splitpath = ["bin", "xzdec"]

# This will be filled out by __init__() for all products, as it must be done at runtime
xzdec_path = ""

# xzdec-specific global declaration
function xzdec(f::Function; adjust_PATH::Bool = true, adjust_LIBPATH::Bool = true)
    global PATH, LIBPATH
    env_mapping = Dict{String,String}()
    if adjust_PATH
        if !isempty(get(ENV, "PATH", ""))
            env_mapping["PATH"] = string(PATH, ':', ENV["PATH"])
        else
            env_mapping["PATH"] = PATH
        end
    end
    if adjust_LIBPATH
        if !isempty(get(ENV, LIBPATH_env, ""))
            env_mapping[LIBPATH_env] = string(LIBPATH, ':', ENV[LIBPATH_env])
        else
            env_mapping[LIBPATH_env] = LIBPATH
        end
    end
    withenv(env_mapping...) do
        f(xzdec_path)
    end
end


"""
Open all libraries
"""
function __init__()
    global artifact_dir = abspath(artifact"XZ")

    # Initialize PATH and LIBPATH environment variable listings
    global PATH_list, LIBPATH_list
    # We first need to add to LIBPATH_list the libraries provided by Julia
    append!(LIBPATH_list, [joinpath(Sys.BINDIR, Base.LIBDIR, "julia"), joinpath(Sys.BINDIR, Base.LIBDIR)])
    global lzmadec_path = normpath(joinpath(artifact_dir, lzmadec_splitpath...))

    push!(PATH_list, dirname(lzmadec_path))
    global liblzma_path = normpath(joinpath(artifact_dir, liblzma_splitpath...))

    # Manually `dlopen()` this right now so that future invocations
    # of `ccall` with its `SONAME` will find this path immediately.
    global liblzma_handle = dlopen(liblzma_path)
    push!(LIBPATH_list, dirname(liblzma_path))

    global lzmainfo_path = normpath(joinpath(artifact_dir, lzmainfo_splitpath...))

    push!(PATH_list, dirname(lzmainfo_path))
    global xz_path = normpath(joinpath(artifact_dir, xz_splitpath...))

    push!(PATH_list, dirname(xz_path))
    global xzdec_path = normpath(joinpath(artifact_dir, xzdec_splitpath...))

    push!(PATH_list, dirname(xzdec_path))
    # Filter out duplicate and empty entries in our PATH and LIBPATH entries
    filter!(!isempty, unique!(PATH_list))
    filter!(!isempty, unique!(LIBPATH_list))
    global PATH = join(PATH_list, ':')
    global LIBPATH = join(LIBPATH_list, ':')

    # Add each element of LIBPATH to our DL_LOAD_PATH (necessary on platforms
    # that don't honor our "already opened" trick)
    #for lp in LIBPATH_list
    #    push!(DL_LOAD_PATH, lp)
    #end
end  # __init__()

