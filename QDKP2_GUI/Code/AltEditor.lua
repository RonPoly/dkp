print("AltEditor.lua: File loaded.")
local AltEditor = {}

function AltEditor:OnLoad(frame)
  self.Frame = frame
  self.ListFrame = QDKP2_frame6_List
  self.Lines = {}
  for i=1,10 do
    local fs = self.Frame:CreateFontString("QDKP2_frame6_line"..i,"OVERLAY","GameFontHighlightSmall")
    fs:SetPoint("TOPLEFT", self.ListFrame, "TOPLEFT", 0, -(i-1)*14)
    fs:SetText("")
    self.Lines[i] = fs
  end
  QDKP2GUI_AltEditor = self
end

function AltEditor:Hide()
  self.Frame:Hide()
end

function AltEditor:ShowPlayer(name)
  self.Player = name
  self:Refresh()
  self.Frame:Show()
end

function AltEditor:Refresh()
  if not self.Frame:IsVisible() then return end
  for i=1,#self.Lines do
    self.Lines[i]:SetText("")
  end
  if not self.Player then return end
  local idx = 1
  for alt,main in pairs(QDKP2alts) do
    if main == self.Player then
      self.Lines[idx]:SetText(alt)
      idx = idx + 1
      if idx > #self.Lines then break end
    end
  end
  self.Frame:SetTitle("Alts of "..self.Player)
end

function AltEditor:AddAlt()
  local alt = QDKP2_frame6_Search:GetText()
  if not alt or alt == "" or not self.Player then return end
  QDKP2_MakeAlt(alt, self.Player)
  QDKP2_frame6_Search:SetText("")
  self:Refresh()
end

return AltEditor
