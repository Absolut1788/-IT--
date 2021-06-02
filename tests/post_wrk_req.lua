counter = 0

wrk.method = "POST"
wrk.headers["Content-Type"] = "application/x-www-form-urlencoded"

request = function()
   path = "/person"
   wrk.body = "last_name=Mashkevich&first_name=Ilya&age=28&login=mik-" .. counter
   counter = counter + 1
   return wrk.format(nil, path)
end
