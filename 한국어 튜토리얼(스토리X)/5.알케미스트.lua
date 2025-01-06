--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--클레어
c=Debug.AddCard(10050113,0,0,LOCATION_EMZONE,1,POS_FACEUP_ATTACK)
tc=Debug.AddCard(10050112,1,1,LOCATION_EMZONE,1,POS_FACEUP_ATTACK)

yun=Debug.AddCard(10053321,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(10053321,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10053321,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10053321,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10053321,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10053321,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10053321,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10053321,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10053321,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10053321,1,1,LOCATION_MZONE,2,POS_FACEUP)

Debug.AddCard(10055212,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10055513,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10055213,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10055622,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10055212,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10055513,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10055213,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10055622,1,1,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(10052221,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10052221,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10052221,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10052221,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10052221,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10052221,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10052221,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10052221,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10052221,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10052221,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(10051322,0,0,LOCATION_MZONE,4,POS_FACEUP_ATTACK)
Debug.AddCard(10051322,0,0,LOCATION_MZONE,4,POS_FACEUP)

Debug.AddCard(10051622,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(10051622,0,0,LOCATION_MZONE,0,POS_FACEUP)

alice=Debug.AddCard(10055112,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(10054111,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(10054524,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()

local e0=Effect.CreateEffect(tc)
e0:SetType(EFFECT_TYPE_SINGLE)
e0:SetCode(EFFECT_CANNOT_TRIGGER)
tc:RegisterEffect(e0)
local e1=Effect.CreateEffect(c)
e1:SetType(EFFECT_TYPE_SINGLE)
e1:SetCode(EFFECT_UPDATE_DEFENSE)
e1:SetProperty(EFFECT_FLAG_CANNOT_DISABLE)
e1:SetReset(RESET_EVENT+RESETS_STANDARD)
e1:SetValue(5)
c:RegisterEffect(e1)
local e2=Effect.CreateEffect(tc)
e2:SetType(EFFECT_TYPE_SINGLE)
e2:SetCode(EFFECT_UPDATE_DEFENSE)
e2:SetProperty(EFFECT_FLAG_CANNOT_DISABLE)
e2:SetReset(RESET_EVENT+RESETS_STANDARD)
e2:SetValue(5)
tc:RegisterEffect(e2)

local e3=Effect.CreateEffect(yun)
e3:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e3:SetProperty(EFFECT_FLAG_IGNORE_IMMUNE+EFFECT_FLAG_CANNOT_DISABLE)
e3:SetRange(LOCATION_MZONE)
e3:SetCode(EVENT_ADJUST)
e3:SetCondition(Kirafan2.hp0con)
e3:SetOperation(Kirafan2.hp0op)
yun:RegisterEffect(e3)

local e4=Effect.CreateEffect(c)
e4:SetCategory(CATEGORY_DECKDES)
e4:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e4:SetCode(EVENT_PHASE+PHASE_STANDBY)
e4:SetProperty(EFFECT_FLAG_CANNOT_DISABLE)
e4:SetRange(LOCATION_EMZONE)
e4:SetCountLimit(1)
e4:SetCondition(Kirafan.Dottecon)
e4:SetOperation(function (e,tp,eg,ep,ev,re,r,rp)
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
Duel.RegisterEffect(e4,0)

Debug.ShowHint[[★클레어
안녕하세요! 오랜만이네요
키라라 판타지아 카드게임은 즐거우신가요?]]
Debug.ShowHint[[★클레어
이번에 새로운 클래스인 알케미스트가 추가되었어요!
알케미스트는 어떤 방식으로든 돗테오키 존으로 보내지면
효과가 자동으로 사용된답니다!]]
Debug.ShowHint[[★클레어
카드를 돗테오키 존으로 보내는 방법은
크리에메이트의 효과를 제외하고 2가지 방법이 있답니다]]
Debug.ShowHint[[★클레어
1. 자신 배틀 크리에메이트의 통상공격 후
확정은 아니지만 돗테오키 게이지를 1 얻을 때
알케미스트가 돗테오키 존으로 보내질 수도 있어요]]
Debug.ShowHint[[★클레어
2. 자신 스탠바이 페이즈에 패/배틀 존의 카드 1장을
돗테오키 존으로 보낼 때 패에 있는 알케미스트를 확정적으로 돗테오키 존으로 보낼 수 있어요]]
Debug.ShowHint[[★클레어
마침 저희 패에 앨리스 씨가 있고 지금은 스탠바이 페이즈에요
원래 첫 턴에는 스탠바이 페이즈에 카드를 돗테오키 존으로 보낼 수 없지만 이번엔 넘어가도록해요]]
Debug.ShowHint[[★클레어
자, 그럼 윤 씨를 쓰러트려주세요!!]]

local e1=Effect.GlobalEffect()
e1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e1:SetCode(EVENT_TURN_END)
e1:SetCountLimit(1)
e1:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
Debug.ShowHint[[★클레어
알케미스트가 돗테오키 존으로 보내졌을 때
효과는 상대 턴에도 물론 사용 가능하답니다]]
if Duel.GetMatchingGroupCount(nil,tp,0,LOCATION_GRAVE,nil)>0 then
Debug.ShowHint[[★클레어
그래서 방금 윤 씨가 체력을 2 얻을 수 있었던거죠
그 때문에 데미지가 부족했던 것으로 보이네요]]
end
if alice:IsLocation(LOCATION_HAND) then
Debug.ShowHint[[★클레어
저희가 가진 성채석은 5개뿐이라
스탠바이 페이즈에 앨리스 씨를 돗테오키 존으로 보내야만
충분한 딜량에 도달할 수 있어요]]
end
Duel.SetLP(tp,0)
end)
Duel.RegisterEffect(e1,0)

local e2=Effect.GlobalEffect()
	e2:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e2:SetCode(EVENT_PHASE+PHASE_BATTLE)
	e2:SetCountLimit(1)
	e2:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
if Duel.GetMatchingGroupCount(nil,tp,0,LOCATION_MZONE,nil)==1 then
Debug.ShowHint[[★클레어
알케미스트가 돗테오키 존으로 보내졌을 때
효과는 상대 턴에도 물론 사용 가능하답니다
그래서 방금 윤 씨가 체력을 2 얻을 수 있었던거죠]]
Debug.ShowHint[[★클레어
그럼 다음 퍼즐도 힘내죠!]]
Duel.SetLP(1-tp,0)
else end
end)
Duel.RegisterEffect(e2,0)
