--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--클레어
c=Debug.AddCard(10050113,0,0,LOCATION_EMZONE,1,POS_FACEUP_ATTACK)
tc=Debug.AddCard(10050113,1,1,LOCATION_EMZONE,1,POS_FACEUP_ATTACK)

kohane1=Debug.AddCard(10052131,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(10052222,1,1,LOCATION_MZONE,0,POS_FACEUP)
Debug.AddCard(10052222,1,1,LOCATION_MZONE,0,POS_FACEUP)
Debug.AddCard(10052222,1,1,LOCATION_MZONE,0,POS_FACEUP)

kotetsu=Debug.AddCard(10052222,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(10052131,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10052131,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10052131,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10052131,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10052131,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10052131,1,1,LOCATION_MZONE,2,POS_FACEUP)

kohane2=Debug.AddCard(10052131,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK)
Debug.AddCard(10052222,1,1,LOCATION_MZONE,4,POS_FACEUP)
Debug.AddCard(10052222,1,1,LOCATION_MZONE,4,POS_FACEUP)
Debug.AddCard(10052222,1,1,LOCATION_MZONE,4,POS_FACEUP)

Debug.AddCard(10054311,0,0,LOCATION_GRAVE,0,POS_FACEUP)
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

Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)


kana=Debug.AddCard(10051421,0,0,LOCATION_HAND,0,POS_FACEDOWN)
miku=Debug.AddCard(10054111,0,0,LOCATION_HAND,0,POS_FACEDOWN)
chie=Debug.AddCard(10054522,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(10054421,0,0,LOCATION_HAND,0,POS_FACEDOWN)

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
local e3=Effect.CreateEffect(kohane1)
e3:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e3:SetProperty(EFFECT_FLAG_IGNORE_IMMUNE+EFFECT_FLAG_CANNOT_DISABLE)
e3:SetRange(LOCATION_MZONE)
e3:SetCode(EVENT_ADJUST)
e3:SetCondition(Kirafan2.hp0con)
e3:SetOperation(Kirafan2.hp0op)
kohane1:RegisterEffect(e3)
local e4=Effect.CreateEffect(kohane2)
e4:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e4:SetProperty(EFFECT_FLAG_IGNORE_IMMUNE+EFFECT_FLAG_CANNOT_DISABLE)
e4:SetRange(LOCATION_MZONE)
e4:SetCode(EVENT_ADJUST)
e4:SetCondition(Kirafan2.hp0con)
e4:SetOperation(Kirafan2.hp0op)
kohane2:RegisterEffect(e4)
local e9=Effect.CreateEffect(tc)
e9:SetType(EFFECT_TYPE_SINGLE)
e9:SetCode(EFFECT_CANNOT_TRIGGER)
tc:RegisterEffect(e9)

Debug.ReloadFieldEnd()

Debug.ShowHint[[★클레어
휴~
열심히 노력해서 성채석을 무려 1개나 더 가져왔어요!
다음 번에도 더 열심히 할게요!]]

local e1=Effect.GlobalEffect()
e1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e1:SetCode(EVENT_TURN_END)
e1:SetCountLimit(1)
e1:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
if Duel.GetMatchingGroupCount(nil,tp,0,LOCATION_MZONE,nil)==2 then
Debug.ShowHint[[★클레어
자, 그럼 다음엔
게임에서 승리하는 방법에 대해 알아보도록 해요!]]
Duel.SetLP(1-tp,0)
else
Duel.SetLP(0,0)
end
end)
Duel.RegisterEffect(e1,0)

local e2=Effect.GlobalEffect()
	e2:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e2:SetCode(EVENT_PHASE+PHASE_DRAW)
	e2:SetCountLimit(1)
	e2:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
Debug.ShowHint[[★클레어
지금은 드로우 페이즈예요!
드로우 페이즈는 서로의 첫 턴에는 하지 않으니 설명만 드릴게요!]]
Debug.ShowHint[[★클레어
드로우 페이즈에 턴 플레이어는 3장을 드로우하고 패를 1장
마을로 보내야해요 그리고 메인 캐릭터의 성채석 한도가
서로 1개씩 늘어나서 최대 10까지 늘어나요!]]
Debug.ShowHint[[★클레어
드로우 페이즈가 지나면 스탠바이 페이즈가 돼요!
스탠바이 페이즈에는 돗테오키 게이지가 1개 늘어나요]]
Debug.ShowHint[[★클레어
그리고 패나 배틀 존에서 카드 1장을 돗테오키 존으로 보내
돗테오키 게이지를 1개 추가로 늘릴 수 있어요
서로의 첫 턴엔 할 수 없으니 지금은 넘어갈게요]]
Debug.ShowHint[[★클레어
마지막으로 자신 배틀 존에 크리에메이트가 하나도 없다면
패에서 배틀 크리에메이트를 하나 소환해야만해요
만약 소환하지 못하면 자신의 패배가 되니 주의해주세요!]]
Debug.ShowHint[[★클레어
지금은 마침 패에 카나 씨가 있으니 카나 씨를 소환해볼까요?]]
end)
Duel.RegisterEffect(e2,0)

local e5=Effect.GlobalEffect()
	e5:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e5:SetCode(EVENT_SPSUMMON_SUCCESS)
	e5:SetCountLimit(1)
	e5:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
Debug.ShowHint[[★클레어
현재 제가 가진 성채석은 5개인데
이미 필드에 카나 씨가 있어서 2개는 사용중이에요]]
Debug.ShowHint[[★클레어
치에 씨랑 치야 씨의 돗테오키 효과에 공격력 증가 효과가 있지만
치에 씨는 돗테오키 게이지가 2개밖에 없어서 사용할 수 없어요]]
Debug.ShowHint[[★클레어
치야 씨의 돗테오키 효과에 적힌 추가 경직 1장은
자신의 배틀 크리에메이트를 1장 경직해야한다는 뜻이예요
카나 씨는 경직 상태가 되어 돗테오키 효과를 사용할 수 없을거예요]]
Debug.ShowHint[[★클레어
일단 할 수 있는걸 하죠!
먼저 미쿠 씨의 공격력 증가 효과를 카나 씨에게 사용하는거예요
목표는 코하네 씨 두분을 쓰러트리는거예요]]
end)
Duel.RegisterEffect(e5,0)

local e3=Effect.GlobalEffect()
	e3:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e3:SetCode(EVENT_PHASE+PHASE_BATTLE_START)
	e3:SetCountLimit(1)
	e3:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
if miku:IsLocation(LOCATION_SZONE) and kana:GetAttack()>2 then
Debug.ShowHint[[★클레어
잘하셨어요 서포트 크리에메이트는 소환할 때
등장 효과나 돗테오키 효과에서 하나를 골라서 사용해야만해요]]
Debug.ShowHint[[★클레어
서포트 크리에메이트는 상대 배틀 페이즈에도 소환할 수 있어요
상대 턴이래도 성채석 제한에 걸리는진 생각해야하죠]]
Debug.ShowHint[[★클레어
코하네 씨의 체력은 둘다 3 이예요!
그리고 카나 씨의 돗테오키 효과는
상대 배틀 존의 크리에메이트 수만큼 데미지를 주는거죠]]
Debug.ShowHint[[★클레어
이번엔 일부러 가르쳐 드리지 않을게요
자 이 상황에서 코하네 씨 2명을 쓰러뜨리고
배틀 페이즈를 종료해주세요!]]
elseif miku:IsLocation(LOCATION_SZONE) and kana:GetAttack()==2 then
Debug.ShowHint[[★클레어
아앗! 혹시 실수하신건가요?
어째서 미쿠 씨의 회복 효과를 사용하신건가요?]]
Debug.ShowHint[[★클레어
카나 씨는 이미 최대 체력이라 일반적인 회복으론
회복을 못 해요...]]
Duel.SetLP(tp,0)
else
Debug.ShowHint[[★클레어
아앗! 혹시 실수하신건가요? 미쿠 씨를 소환하지 않으셨어요!
그래도 서포트 크리에메이트는
자신 배틀 페이즈에도 소환할 수 있어요!]]
Debug.ShowHint[[★클레어
서포트 크리에메이트는 소환할 때
등장 효과나 돗테오키 효과에서 하나를 골라서 사용해야만해요]]
Debug.ShowHint[[★클레어
서포트 크리에메이트는 상대 배틀 페이즈에도 소환할 수 있어요
상대 턴이래도 성채석 제한에 걸리는진 생각해야하죠]]
Debug.ShowHint[[★클레어
코하네 씨의 체력은 둘다 3 이예요!
그리고 카나 씨의 돗테오키 효과는
상대 배틀 존의 크리에메이트 수만큼 데미지를 주는거죠]]
Debug.ShowHint[[★클레어
이번엔 일부러 가르쳐 드리지 않을게요
자 이 상황에서 코하네 씨 2명을 쓰러뜨리고
배틀 페이즈를 종료해주세요!]]
end
end)
Duel.RegisterEffect(e3,0)

local e4=Effect.GlobalEffect()
	e4:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e4:SetCode(EVENT_PHASE+PHASE_BATTLE)
	e4:SetCountLimit(1)
	e4:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
if Duel.GetMatchingGroupCount(nil,tp,0,LOCATION_MZONE,nil)==2 then
Debug.ShowHint[[★클레어
와 정말 놀랐어요!
이런 식으로 문제를 해결하는 것
역시 이 게임에서 중요하답니다]]
if chie:IsLocation(LOCATION_SZONE) and Duel.GetMatchingGroupCount(nil,tp,0,LOCATION_GRAVE,nil)==0 then
Debug.ShowHint[[★클레어
치에 씨를 쓰셨을 줄은 몰랐네요
이런 방법도 있었군요]] end
Debug.ShowHint[[★클레어
미쿠 씨의 공격력 증가 효과는 배틀 페이즈 종료시에
드로우를 1장 보는 보너스 효과가 있어요!
최소한 손해는 보지 않는 효과라는 소리죠]]
Debug.ShowHint[[★클레어
이런 효과는 사용하기만 하면 이득이지만
성채석 제한은 물론 서포트 존은 2개밖에 없다는 걸 생각해주세요]]
Debug.ShowHint[[★클레어
마지막으로 이번 턴에 사용한 서포트 크리에메이트는
엔드 페이즈에 전부 마을로 보내져요]]
elseif kotetsu:IsLocation(LOCATION_EXTRA) then
Debug.ShowHint[[★클레어
이건 확실히 고의신거 같네요]]
else
Debug.ShowHint[[★클레어
힌트를 드릴게요!
꼭 통상 공격 먼저 하실 필요없어요
통상 공격은 경직 상태에서도 할 수 있답니다!]]
Debug.ShowHint[[★클레어
다음 번엔 열심히 해봐요!]]
end
end)
Duel.RegisterEffect(e4,0)


