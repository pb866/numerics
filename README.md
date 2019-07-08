Julia package numerics
======================

Module dedicated to numeric operations and additional unicode charactors for
mathematical operators.


Mathematical operators
----------------------

- `≮ = !<`
- `≰ = !≤`
- `≯ = !>`
- `≱ = !≥`


Exported functions
------------------

```julia
    digits2int(dig::Vector{<:Int})::Int
```

Transform an array of integer digits derived from `digits(itg)` back to an integer.


```julia
    order(value::Real, base::Int=10)::Int
```

Return the order of magnitude of `value` as `Int`.
Use optional parameter `base` for non-decimal numbers.
