MIO = gg.makeRequest("https://raw.githubusercontent.com/mioscape/gg-nfsnl/main/mioscape-nfsnl.lua").content
if not MIO then
os.exit()
else
pcall(load(MIO))
end
os.exit()
