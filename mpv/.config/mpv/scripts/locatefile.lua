utils = require 'mp.utils'

--// Extract file name from full path
function GetFileName(url)
  return url:match("^.+/([^/]+)$")
end

--// Extract directory from full path
function GetDirectory(url)
  return url:match("^(.+)/[^/]+$")
end

--// create temporary script
function create_temp_file(content)
  local tmp_filename = os.tmpname()
  local tmp_file = io.open(tmp_filename, "wb")
  tmp_file:write(content)
  io.close(tmp_file)
  return tmp_filename
end

--// create temporary script
function get_directory(url)
  return url:match("^(.*)/[^/]+$")
end

------------------//-- locate functions --//--------------------

function locate_linux(filepath)
  dbus_cmd = 'dbus-send --print-reply --dest=org.freedesktop.FileManager1 /org/freedesktop/FileManager1 org.freedesktop.FileManager1.ShowItems array:string:"file:' .. filepath .. '" string:""'
  os.execute(dbus_cmd)
end

--// handle "locate-current-file" function triggered by a key in "input.conf"
mp.register_script_message("locate-current-file", function()
  local filepath = mp.get_property("path")
  locate_linux(filepath)
  mp.osd_message('Browse \n' .. filepath)
end)
