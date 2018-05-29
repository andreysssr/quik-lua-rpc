local protoc = require("lua-protobuf.protoc")

return function (context_path)
  
  local proto_path = context_path .. "/qlua/rpc"
  
  local p = protoc.new()
  p.include_imports = true

  p.paths[#p.paths+1] = proto_path
  p.paths[#p.paths+1] = context_path
  p.paths[#p.paths+1] = proto_path .. "/bit"
  p.paths[#p.paths+1] = proto_path .. "/datasource"
  
  p:loadfile("RPC.proto")
  --p:loadfile("qlua_structures.proto")
  p:loadfile("qlua_types.proto")
  p:loadfile("isConnected.proto")
  p:loadfile("getScriptPath.proto")
  p:loadfile("getInfoParam.proto")
  p:loadfile("message.proto")
  p:loadfile("sleep.proto")
  p:loadfile("getWorkingFolder.proto")
  p:loadfile("PrintDbgStr.proto")
  p:loadfile("getItem.proto")
  p:loadfile("getOrderByNumber.proto")
  p:loadfile("getNumberOf.proto")
  p:loadfile("SearchItems.proto")
  p:loadfile("getClassesList.proto")
  p:loadfile("getClassInfo.proto")
  p:loadfile("getClassSecurities.proto")
  p:loadfile("getMoney.proto")
  p:loadfile("getMoneyEx.proto")
  p:loadfile("getDepo.proto")
  p:loadfile("getDepoEx.proto")
  p:loadfile("getFuturesLimit.proto")
  p:loadfile("getFuturesHolding.proto")
  p:loadfile("getSecurityInfo.proto")
  p:loadfile("getTradeDate.proto")
  p:loadfile("getQuoteLevel2.proto")
  p:loadfile("getLinesCount.proto")
  p:loadfile("getNumCandles.proto")
  p:loadfile("getCandlesByIndex.proto")
  p:loadfile("CreateDataSource.proto")
  p:loadfile("SetUpdateCallback.proto")
  p:loadfile("O.proto")
  p:loadfile("H.proto")
  p:loadfile("L.proto")
  p:loadfile("C.proto")
  p:loadfile("V.proto")
  p:loadfile("T.proto")
  p:loadfile("Size.proto")
  p:loadfile("Close.proto")
  p:loadfile("SetEmptyCallback.proto")
  p:loadfile("sendTransaction.proto")
  p:loadfile("CalcBuySell.proto")
  p:loadfile("getParamEx.proto")
  p:loadfile("getParamEx2.proto")
  p:loadfile("getPortfolioInfo.proto")
  p:loadfile("getPortfolioInfoEx.proto")
  p:loadfile("getBuySellInfo.proto")
  p:loadfile("getBuySellInfoEx.proto")
  p:loadfile("AddColumn.proto")
  p:loadfile("AllocTable.proto")
  p:loadfile("Clear.proto")
  p:loadfile("CreateWindow.proto")
  p:loadfile("DeleteRow.proto")
  p:loadfile("DestroyTable.proto")
  p:loadfile("InsertRow.proto")
  p:loadfile("IsWindowClosed.proto")
  p:loadfile("GetCell.proto")
  p:loadfile("GetTableSize.proto")
  p:loadfile("GetWindowCaption.proto")
  p:loadfile("GetWindowRect.proto")
  p:loadfile("SetCell.proto")
  p:loadfile("SetWindowCaption.proto")
  p:loadfile("SetWindowPos.proto")
  p:loadfile("SetTableNotificationCallback.proto")
  p:loadfile("RGB.proto")
  p:loadfile("SetColor.proto")
  p:loadfile("Highlight.proto")
  p:loadfile("SetSelectedRow.proto")
  p:loadfile("AddLabel.proto")
  p:loadfile("DelLabel.proto")
  p:loadfile("DelAllLabels.proto")
  p:loadfile("GetLabelParams.proto")
  p:loadfile("SetLabelParams.proto")
  p:loadfile("Subscribe_Level_II_Quotes.proto")
  p:loadfile("Unsubscribe_Level_II_Quotes.proto")
  p:loadfile("IsSubscribed_Level_II_Quotes.proto")
  p:loadfile("ParamRequest.proto")
  p:loadfile("CancelParamRequest.proto")
  p:loadfile("tohex.proto")
  p:loadfile("bnot.proto")
  p:loadfile("band.proto")
  p:loadfile("bor.proto")
  p:loadfile("bxor.proto")
end

--[[
module.RPC = require(path .. "RPC_pb")
module.message = require(path .. "message_pb")
module.isConnected = require(path .. "isConnected_pb")
module.getScriptPath = require(path .. "getScriptPath_pb")
module.getInfoParam = require(path .. "getInfoParam_pb")
module.sleep = require(path .. "sleep_pb")
module.getWorkingFolder = require(path .. "getWorkingFolder_pb")
module.PrintDbgStr = require(path .. "PrintDbgStr_pb")
module.getItem = require(path .. "getItem_pb")
module.getOrderByNumber = require(path .. "getOrderByNumber_pb")
module.getNumberOf = require(path .. "getNumberOf_pb")
module.SearchItems = require(path .. "SearchItems_pb")
module.getClassesList = require(path .. "getClassesList_pb")
module.getClassInfo = require(path .. "getClassInfo_pb")
module.getClassSecurities = require(path .. "getClassSecurities_pb")
module.getMoney = require(path .. "getMoney_pb")
module.getMoneyEx = require(path .. "getMoneyEx_pb")
module.getDepo = require(path .. "getDepo_pb")
module.getDepoEx = require(path .. "getDepoEx_pb")
module.getFuturesLimit = require(path .. "getFuturesLimit_pb")
module.getFuturesHolding = require(path .. "getFuturesHolding_pb")
module.getSecurityInfo = require(path .. "getSecurityInfo_pb")
module.getTradeDate = require(path .. "getTradeDate_pb")
module.getQuoteLevel2 = require(path .. "getQuoteLevel2_pb")
module.getLinesCount = require(path .. "getLinesCount_pb")
module.getNumCandles = require(path .. "getNumCandles_pb")
module.getCandlesByIndex = require(path .. "getCandlesByIndex_pb")
module.datasource = {}
module.datasource.CreateDataSource = require(path .. "datasource.CreateDataSource_pb")
module.datasource.SetUpdateCallback = require(path .. "datasource.SetUpdateCallback_pb")
module.datasource.O = require(path .. "datasource.O_pb")
module.datasource.H = require(path .. "datasource.H_pb")
module.datasource.L = require(path .. "datasource.L_pb")
module.datasource.C = require(path .. "datasource.C_pb")
module.datasource.V = require(path .. "datasource.V_pb")
module.datasource.T = require(path .. "datasource.T_pb")
module.datasource.Size = require(path .. "datasource.Size_pb")
module.datasource.Close = require(path .. "datasource.Close_pb")
module.datasource.SetEmptyCallback = require(path .. "datasource.SetEmptyCallback_pb")
module.sendTransaction = require(path .. "sendTransaction_pb")
module.CalcBuySell = require(path .. "CalcBuySell_pb")
module.getParamEx = require(path .. "getParamEx_pb")
module.getParamEx2 = require(path .. "getParamEx2_pb")
module.getPortfolioInfo = require(path .. "getPortfolioInfo_pb")
module.getPortfolioInfoEx = require(path .. "getPortfolioInfoEx_pb")
module.getBuySellInfo = require(path .. "getBuySellInfo_pb")
module.getBuySellInfoEx = require(path .. "getBuySellInfoEx_pb")
module.AddColumn = require(path .. "AddColumn_pb")
module.AllocTable = require(path .. "AllocTable_pb")
module.Clear = require(path .. "Clear_pb")
module.CreateWindow = require(path .. "CreateWindow_pb")
module.DeleteRow = require(path .. "DeleteRow_pb")
module.DestroyTable = require(path .. "DestroyTable_pb")
module.InsertRow = require(path .. "InsertRow_pb")
module.IsWindowClosed = require(path .. "IsWindowClosed_pb")
module.GetCell = require(path .. "GetCell_pb")
module.SetCell = require(path .. "SetCell_pb")
module.SetWindowCaption = require(path .. "SetWindowCaption_pb")
module.SetWindowPos = require(path .. "SetWindowPos_pb")
module.SetTableNotificationCallback = require(path .. "SetTableNotificationCallback_pb")
module.GetTableSize = require(path .. "GetTableSize_pb")
module.GetWindowCaption = require(path .. "GetWindowCaption_pb")
module.GetWindowRect = require(path .. "GetWindowRect_pb")
module.RGB = require(path .. "RGB_pb")
module.SetColor = require(path .. "SetColor_pb")
module.Highlight = require(path .. "Highlight_pb")
module.SetSelectedRow = require(path .. "SetSelectedRow_pb")
module.AddLabel = require(path .. "AddLabel_pb")
module.DelLabel = require(path .. "DelLabel_pb")
module.DelAllLabels = require(path .. "DelAllLabels_pb")
module.GetLabelParams = require(path .. "GetLabelParams_pb")
module.SetLabelParams = require(path .. "SetLabelParams_pb")
module.Subscribe_Level_II_Quotes = require(path .. "Subscribe_Level_II_Quotes_pb")
module.Unsubscribe_Level_II_Quotes = require(path .. "Unsubscribe_Level_II_Quotes_pb")
module.IsSubscribed_Level_II_Quotes = require(path .. "IsSubscribed_Level_II_Quotes_pb")
module.ParamRequest = require(path .. "ParamRequest_pb")
module.CancelParamRequest = require(path .. "CancelParamRequest_pb")
module.bit = {}
module.bit.tohex = require(path .. "bit.tohex_pb")
module.bit.bnot = require(path .. "bit.bnot_pb")
module.bit.band = require(path .. "bit.band_pb")
module.bit.bor = require(path .. "bit.bor_pb")
module.bit.bxor = require(path .. "bit.bxor_pb")
]]