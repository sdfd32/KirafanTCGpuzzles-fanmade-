--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--클레어
c=Debug.AddCard(10050115,0,0,LOCATION_EMZONE,1,POS_FACEUP_ATTACK)
tc=Debug.AddCard(10050116,1,1,LOCATION_EMZONE,1,POS_FACEUP_ATTACK)

Debug.AddCard(10051132,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(10051132,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10051132,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10051132,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10051132,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10051132,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10051132,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10051132,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10051132,1,1,LOCATION_MZONE,2,POS_FACEUP)

Debug.AddCard(10051222,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(10051222,1,1,LOCATION_MZONE,0,POS_FACEUP)
Debug.AddCard(10051222,1,1,LOCATION_MZONE,0,POS_FACEUP)
Debug.AddCard(10051222,1,1,LOCATION_MZONE,0,POS_FACEUP)
Debug.AddCard(10051222,1,1,LOCATION_MZONE,0,POS_FACEUP)
Debug.AddCard(10051222,1,1,LOCATION_MZONE,0,POS_FACEUP)
Debug.AddCard(10051222,1,1,LOCATION_MZONE,0,POS_FACEUP)

Debug.AddCard(10052423,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK)
Debug.AddCard(10052423,1,1,LOCATION_MZONE,4,POS_FACEUP)
Debug.AddCard(10052423,1,1,LOCATION_MZONE,4,POS_FACEUP)
Debug.AddCard(10052423,1,1,LOCATION_MZONE,4,POS_FACEUP)
Debug.AddCard(10052423,1,1,LOCATION_MZONE,4,POS_FACEUP)
Debug.AddCard(10052423,1,1,LOCATION_MZONE,4,POS_FACEUP)

Debug.AddCard(10054622,1,1,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(10055221,1,1,LOCATION_SZONE,3,POS_FACEUP)

Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054211,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(10054221,0,0,LOCATION_REMOVED,0,POS_FACEUP)

yuu=Debug.AddCard(10052432,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(10052432,0,0,LOCATION_MZONE,2,POS_FACEUP)

Debug.AddCard(10055211,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(10051111,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(10053221,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(10051311,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(10055114,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.PreAddCounter(yuu,0xb04,1)

Debug.ReloadFieldEnd()

Debug.ShowHint[[★소노다 유우
하루카~~ 배고파
말차 푸딩 있어?]]
Debug.ShowHint[[★타카야마 하루카
응? 알았어 찾아볼게]]
Debug.ShowHint[[이번 턴 안에 상대 배틀 크리에메이트를 전부 쓰러트리세요]]

local e0=Effect.CreateEffect(tc)
e0:SetType(EFFECT_TYPE_SINGLE)
e0:SetCode(EFFECT_CANNOT_TRIGGER)
tc:RegisterEffect(e0)
local e1=Effect.CreateEffect(c)
e1:SetType(EFFECT_TYPE_SINGLE)
e1:SetCode(EFFECT_UPDATE_DEFENSE)
e1:SetProperty(EFFECT_FLAG_CANNOT_DISABLE)
e1:SetReset(RESET_EVENT+RESETS_STANDARD)
e1:SetValue(8)
c:RegisterEffect(e1)
local e2=Effect.CreateEffect(tc)
e2:SetType(EFFECT_TYPE_SINGLE)
e2:SetCode(EFFECT_UPDATE_DEFENSE)
e2:SetProperty(EFFECT_FLAG_CANNOT_DISABLE)
e2:SetReset(RESET_EVENT+RESETS_STANDARD)
e2:SetValue(8)
tc:RegisterEffect(e2)

local e3=Effect.CreateEffect(c)
e3:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e3:SetProperty(EFFECT_FLAG_IGNORE_IMMUNE+EFFECT_FLAG_CANNOT_DISABLE)
e3:SetRange(LOCATION_MZONE)
e3:SetCode(EVENT_ADJUST)
e3:SetOperation(function (e,tp,eg,ep,ev,re,r,rp)
local g=Duel.GetMatchingGroup(Kirafan6.NoEmFzonefilter,tp,LOCATION_MZONE,LOCATION_MZONE,nil)
local tc=g:GetFirst()
	for tc in aux.Next(g) do
	local e1=Effect.CreateEffect(tc)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetProperty(EFFECT_FLAG_SINGLE_RANGE)
	e1:SetRange(LOCATION_MZONE)
	e1:SetCode(EFFECT_SELF_DESTROY)
	e1:SetCondition(function (e)
	if e:GetHandler():GetCounter(0xb01)>0 then return e:GetHandler():GetDefense()<=1 end
	return e:GetHandler():GetDefense()==0 end)
	tc:RegisterEffect(e1)
	end
end)
c:RegisterEffect(e3)

local e9=Effect.CreateEffect(c)
e9:SetCategory(CATEGORY_DECKDES)
e9:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e9:SetCode(EVENT_PHASE+PHASE_STANDBY)
e9:SetProperty(EFFECT_FLAG_CANNOT_DISABLE)
e9:SetRange(LOCATION_EMZONE)
e9:SetCountLimit(1)
e9:SetCondition(Kirafan.Dottecon)
e9:SetOperation(function (e,tp,eg,ep,ev,re,r,rp)
if Duel.SelectYesNo(tp,aux.Stringid(10050111,0)) then
local g=Duel.SelectMatchingCard(tp,nil,tp,LOCATION_HAND+LOCATION_MZONE,0,0,1,e:GetHandler())
if #g==0 then
else
local tc=g:GetFirst()
if tc:IsLocation(LOCATION_MZONE) then
local tg=tc:GetOverlayGroup()
Duel.Remove(tg,POS_FACEUP,REASON_RULE)
Duel.Remove(tc,POS_FACEUP,REASON_RULE)
Duel.SendtoGrave(tc,REASON_RULE)
else
Duel.SendtoGrave(tc,REASON_RULE) end end end
end)
Duel.RegisterEffect(e9,0)

local e4=Effect.GlobalEffect()
	e4:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e4:SetCode(EVENT_PHASE+PHASE_BATTLE)
	e4:SetCountLimit(1)
	e4:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
if Duel.GetMatchingGroupCount(nil,tp,0,LOCATION_MZONE,nil)==1 then
Debug.ShowHint[[★시노하 마유
저기 캠핑하고 있던 사람들에게서 우유를 받아서
이만큼이나 만들 수 있었어]]
Debug.ShowHint[[★소노다 유우
우와... 버켓 말차 푸딩!!
말차 푸딩 맛있겠다!!]]
Debug.ShowHint[[★타카야마 하루카
유우, 그러면...]]
Debug.ShowHint[[★소노다 유우
이럴 때 갑자기!?!?
일단 푸딩부터 먹고...
냐암......]]
Debug.ShowHint[[★소노다 유우
.............................
푸딩에 뭘 넣은거야!!!!!]]
Duel.SetLP(1-tp,0)
else
Debug.ShowHint[[★소노다 유우
말차 푸딩이 없어서 힘이 안나..]]
Debug.ShowHint[[★센고쿠 카무리
배고플 땐 디저트 카페야
앞으로 3km만 더 달리면 돼]]
Debug.ShowHint[[★소노다 유우
하루카!!!]]
Duel.SetLP(tp,0) end
end)
Duel.RegisterEffect(e4,0)

