--______________VARIABLES______________--

local porte = script.Parent  -- Initialise la variable de la porte
local clickDetector = porte.clickDetector -- Initialise la variable du ClickDetector

--______________FONCTIONS______________--

local function activation() -- Initialisation de la fonction locale "activation"
    if porte.Transparency == 0 and porte.CanCollide == true then -- Si la porte est visible et si le joueur ne peut pas la traverser, alors
        porte.Transparency = 1 and porte.CanCollide = false -- Rend la porte invisible et l'on peut la traverser
    else -- Sinon
        porte.Transparency = 0 and porte.CanCollide = true -- Rendre la porte visible et la rendre intraversable
    end
end

clickDetector.MouseButton1Click:Connect(activation) -- Si le joueur est sur PC, déclencher la fonction au clique gauche
clickDetector.TouchTap:Connect(activation) -- Si le joueur est sur Mobile, déclencher la fonction à l'appui