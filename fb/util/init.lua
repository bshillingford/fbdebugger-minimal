-- Stubs for now. TODO: implement mutex with pthreads + FFI, or torch threads
return {
  get_mutex = function(mutex_name)
    return {}
  end,
  call_locked = function(mutex, func, ...)
    return func(...)
  end,
  longest_common_prefix = function(strings)
    -- copied from original source,
    -- https://github.com/facebook/fblualib/blob/9ba9fb1ba8134439b1aeff9a6cae0349394290f5/fblualib/util/fb/util/init.lua#L282
    if #strings == 0 then
      return ''
    end
    local prefix = strings[1]
    for i = 2, #strings do
      local s = strings[i]
      local len = 0
      for j = 1, math.min(#s, #prefix) do
        if s:sub(j, j) == prefix:sub(j, j) then
          len = len + 1
        else
          break
        end
      end
      prefix = prefix:sub(1, len)
      if len == 0 then
        break
      end
    end
    return prefix
  end
}
