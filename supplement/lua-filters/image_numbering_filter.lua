
-- Image counter variable
figures = 0

-- a temp variable to check presence of image in a figure
is_fig = 0

-- A filter function which applies to all AST Figure elements
function Figure(el)
	-- dummy prefix label
	local label = ""
	-- A pandoc walkthrough all elements to find an Image object
	pandoc.walk_block(el,{ Image = function(el)
				is_fig = 1
				end})
	-- if there is an Image in the Figure env then update the label
	if is_fig == 1 then
		figures = figures + 1
		label = "Figure " .. tostring(figures) .. ":"
	end
	-- read the existing caption
	local caption = pandoc.utils.stringify(el.caption)
	if not caption then
      		-- Figure has no caption, just add the label
      		caption = label
    	else
      		caption = label .. " " .. caption
    	end
    	-- setting the new caption in the Figure element
    	el.caption.long[1] = caption
    	-- resetting the temp variable
    	is_fig = 0
    	-- return the figure element with modifications
    	return el
end
