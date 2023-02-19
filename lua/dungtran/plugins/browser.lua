local status, browser = pcall(require, "web-tools")
if not status then
  return
end

browser.setup()
