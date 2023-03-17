--______________VARIABLES______________--

local porte = script.Parent  -- Initialise la variable de la porte
local clickDetector = porte.ClickDetector -- Initialise la variable du ClickDetector

--______________FONCTIONS______________--

clickDetector.MouseClick:Connect(function() -- Lorsque que le joueur clique sur la porte, on lance la fonction
	if porte.Transparency == 0 and porte.CanCollide == true then -- Si la porte est visible et si le joueur ne peut pas la traverser, alors
		porte.Transparency = 0.8 -- Rend la porte presque invisible
		porte.CanCollide = false -- On peut traverser la porte
	else -- Sinon
		porte.Transparency = 0 -- Rend la porte visible
		porte.CanCollide = true -- On ne peut plus traverser la porte
	end
end)