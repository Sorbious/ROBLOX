local module = {}

function module.request(request, value)
  if string.lower(request) == "debugprint" then
    print("DEBUG:", value)
  else
    warn("Request",  request, "not found.")
  end
end

return module
