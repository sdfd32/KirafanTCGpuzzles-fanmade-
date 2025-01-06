--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--클레어
c=Debug.AddCard(10050113,0,0,LOCATION_EMZONE,1,POS_FACEUP_ATTACK)
tc=Debug.AddCard(10050113,1,1,LOCATION_EMZONE,1,POS_FACEUP_ATTACK)

karen=Debug.AddCard(10051631,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(10051631,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10051411,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10051622,1,1,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10051521,1,1,LOCATION_MZONE,2,POS_FACEUP)

Debug.AddCard(10054211,0,0,LOCATION_SZONE,1,POS_FACEUP)
Debug.AddCard(10054312,0,0,LOCATION_SZONE,3,POS_FACEUP)

Debug.AddCard(10052431,0,0,LOCATION_GRAVE,0,POS_FACEUP)
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

Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)


Debug.AddCard(10051431,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(10052631,0,0,LOCATION_HAND,0,POS_FACEDOWN)
sae=Debug.AddCard(10051511,0,0,LOCATION_HAND,0,POS_FACEDOWN)
tsumiki=Debug.AddCard(10051321,0,0,LOCATION_HAND,0,POS_FACEDOWN)

local e1=Effect.CreateEffect(c)
e1:SetType(EFFECT_TYPE_SINGLE)
e1:SetCode(EFFECT_UPDATE_DEFENSE)
e1:SetProperty(EFFECT_FLAG_CANNOT_DISABLE)
e1:SetReset(RESET_EVENT+RESETS_STANDARD)
e1:SetValue(4)
c:RegisterEffect(e1)
local e2=Effect.CreateEffect(tc)
e2:SetType(EFFECT_TYPE_SINGLE)
e2:SetCode(EFFECT_UPDATE_DEFENSE)
e2:SetProperty(EFFECT_FLAG_CANNOT_DISABLE)
e2:SetReset(RESET_EVENT+RESETS_STANDARD)
e2:SetValue(4)
tc:RegisterEffect(e2)
local e3=Effect.CreateEffect(karen)
e3:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e3:SetProperty(EFFECT_FLAG_IGNORE_IMMUNE+EFFECT_FLAG_CANNOT_DISABLE)
e3:SetRange(LOCATION_MZONE)
e3:SetCode(EVENT_ADJUST)
e3:SetCondition(Kirafan2.hp0con)
e3:SetOperation(Kirafan2.hp0op)
karen:RegisterEffect(e3)
local e9=Effect.CreateEffect(tc)
e9:SetType(EFFECT_TYPE_SINGLE)
e9:SetCode(EFFECT_CANNOT_TRIGGER)
tc:RegisterEffect(e9)

Debug.ReloadFieldEnd()

Debug.ShowHint[[★클레어
지금 제가 가지고 있는 성채석은 4개밖에 없어서
패에 있는 크리에메이트 분들을 필드에 많이 낼 수가 없겠네요
네? 그걸 어떻게 확인할 수 있냐고요?]]
Debug.ShowHint[[★클레어
제 밑에 있는 노란색 2/4 표시가 보이시나요?
오른쪽 숫자가 제가 현재 사용할 수 있는 성채석 갯수에요]]
Debug.ShowHint[[★클레어
사용할 수 있는 성채석 갯수는 4부터 시작해서
서로의 턴이 시작할 때마다 1개씩 늘어나요!
하지만 서로의 첫 턴에는 늘어나지 않아요]]
Debug.ShowHint[[★클레어
현재 레벨 1 승려 두분이 성채석을 2개 사용하고 있어서
레벨 2 이하의 크리에메이트밖에 추가로 소환할 수 없어요]]
Debug.ShowHint[[★클레어
패에 있는 레벨 3 코코아 씨랑 치노 씨는 소환할 수 없겠네요
그래도 사에 씨랑 츠미키 씨는 레벨이 2 이하라서 소환할 수 있겠어요]]
Debug.ShowHint[[★클레어
원하는 동료분을 소환해주세요!
그리고 제 효과를 발동한다면 패를 클래스 별로 정렬할 수 있어요
(전사-마법사-나이트-승려-알케미스트순)]]

local e1=Effect.GlobalEffect()
	e1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e1:SetCode(EVENT_SPSUMMON_SUCCESS)
	e1:SetCountLimit(1)
	e1:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
if sae:IsLocation(LOCATION_MZONE) then
Debug.ShowHint[[★클레어
배틀 크리에메이트(전사+마법사+나이트)는 배틀 존에
서포트 크리에메이트(승려+알케미스트)는 서포트 존에
소환할 수 있어요]]
Debug.ShowHint[[★클레어
사에 씨를 소환하셨네요
카렌 씨는 달속성이어서 통상 공격과 돗테오키 효과를 사용하면 이기실 수 있을거예요!]]
Debug.ShowHint[[★클레어
사에 씨의 카드에 쓰여있는 1/3표시는
공격력이 1 체력이 3이라는 뜻이예요]]
Debug.ShowHint[[★클레어
소환되면 최대 체력만큼 덱에서 카드를
사에 씨의 아래에 겹쳐서 체력 카드로 사용해요]]
Debug.ShowHint[[★클레어
이제 배틀 페이즈로 들어가도록 하죠
제 옆에 있는 BP 버튼을 눌러주세요]]
else
Debug.ShowHint[[★클레어
배틀 크리에메이트(전사+마법사+나이트)는 배틀 존에
서포트 크리에메이트(승려+알케미스트)는 서포트 존에
소환할 수 있어요]]
Debug.ShowHint[[★클레어
츠미키 씨를 소환하셨네요
통상 공격과 돗테오키 효과를 사용하면 카렌 씨를 이기실 수 있을거예요!]]
Debug.ShowHint[[★클레어
츠미키 씨의 카드에 쓰여있는 2/5표시는
공격력이 2 체력이 5라는 뜻이예요]]
Debug.ShowHint[[★클레어
소환되면 최대 체력만큼 덱에서 카드를
츠미키 씨의 아래에 겹쳐서 체력 카드로 사용해요]]
Debug.ShowHint[[★클레어
이제 배틀 페이즈로 들어가도록 하죠
제 옆에 있는 BP 버튼을 눌러주세요]]
end
end)
Duel.RegisterEffect(e1,0)

local e2=Effect.GlobalEffect()
	e2:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e2:SetCode(EVENT_PHASE+PHASE_BATTLE_START)
	e2:SetCountLimit(1)
	e2:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
if sae:IsLocation(LOCATION_MZONE) or tsumiki:IsLocation(LOCATION_MZONE) then
Debug.ShowHint[[★클레어
자, 그럼 이제 배틀 페이즈에 대해 설명해드릴게요
배틀 페이즈에는 통상 공격과 돗테오키 효과를 사용할 수 있어요]]
Debug.ShowHint[[★클레어
돗테오키 효과를 사용하면 카드를 가로로 놓아
경직 상태를 표시해요]]
Debug.ShowHint[[★클레어
경직 상태가 되면 더이상 돗테오키 효과를 사용할 수 없어요
경직 상태를 해제하면 다시 돗테오키 효과를 사용할 수 있어요]]
Debug.ShowHint[[★클레어
자 이제 공격해보도록 하죠!
통상 공격부터 해볼까요?]]
local e1=Effect.CreateEffect(sae)
e1:SetType(EFFECT_TYPE_SINGLE)
e1:SetCode(EFFECT_CANNOT_TRIGGER)
e1:SetReset(RESET_EVENT+RESETS_STANDARD+RESET_PHASE+PHASE_DAMAGE)
sae:RegisterEffect(e1)
else
Debug.ShowHint[[★클레어
아앗! 혹시 실수하신건가요?
아무것도 소환하지 않으셨어요]]
Duel.SetLP(tp,0)
end
end)
Duel.RegisterEffect(e2,0)

local e3=Effect.GlobalEffect()
	e3:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e3:SetCode(EVENT_ATTACK_ANNOUNCE)
	e3:SetCountLimit(1)
	e3:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
Debug.ShowHint[[★클레어
통상 공격시 돗테오키 게이지가 1개 늘어나요
크리에메이트 1턴에 여러번 통상 공격하더라도 첫 1번만 돗테오키 게이지가 늘어나요]]
Debug.ShowHint[[★클레어
통상 공격이 성공하면 공격한 크리에메이트의 공격력만큼
상대 크리에메이트의 체력 카드를 데미지만큼 랜덤으로 마을로 보내요]]
end)
Duel.RegisterEffect(e3,0)

local e3=Effect.GlobalEffect()
	e3:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e3:SetCode(EVENT_DAMAGE_STEP_END)
	e3:SetCountLimit(1)
	e3:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
Debug.ShowHint[[★클레어
자 이제 돗테오키 존에 카드가 2장
따라서 돗테오키 게이지가 2만큼 찼어요]]
Debug.ShowHint[[★클레어
이제 돗테오키 효과를 사용해 볼까요?
카드 효과에서 [돗테오키 게이지 n]으로 시작하는 효과는
돗테오키 효과라고 해요]]
Debug.ShowHint[[★클레어
돗테오키 존에 가장 먼저 놓인 카드부터 n장을
마을로 보내는 것으로 그 효과를 사용할 수 있어요]]
Debug.ShowHint[[★클레어
자, 이제 돗테오키 효과를 사용해서 카렌 씨를 이겨볼까요?]]
end)
Duel.RegisterEffect(e3,0)

local e4=Effect.CreateEffect(karen)
e4:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_CONTINUOUS)
e4:SetCode(EVENT_LEAVE_FIELD)
e4:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
Debug.ShowHint[[★클레어
이렇게 체력이 0이 되면 성전으로 보내져요
지금 카렌 씨를 더블 클릭하면 성전의 카드를 확인할 수 있답니다
마을이나 돗테오키 존도 똑같이 확인할 수 있어요]]
Debug.ShowHint[[★클레어
그리고 상대 배틀 존에 아무것도 없더라도
통상 공격을 해서 돗테오키 게이지를 올릴 순 있어요]]
Debug.ShowHint[[★클레어
이제 배틀 페이즈를 종료해 보도록 할까요?
제 오른쪽에 있는 EP 버튼을 눌러주세요]]
end)
karen:RegisterEffect(e4)

local e4=Effect.GlobalEffect()
	e4:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e4:SetCode(EVENT_PHASE+PHASE_BATTLE)
	e4:SetCountLimit(1)
	e4:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
if not karen:IsLocation(LOCATION_MZONE) then
Debug.ShowHint[[★클레어
상대쪽에 있는 저를 확인해보시겠나요?
거꾸로 있어서 확인하긴 어렵지만 분홍색 글씨로 R3이라고 써있어요]]
Debug.ShowHint[[★클레어
성전에 있는 크리에메이트의 레벨 합계를 성전 레벨이라고 해요
방금 쓰러트린 카렌 씨의 레벨이 3이이서 성전 레벨이 3이 된거예요!]]
Debug.ShowHint[[★클레어
자, 그럼 다음엔 승려분들을 만나 보도록 해요!]]
Duel.SetLP(1-tp,0)
end
end)
Duel.RegisterEffect(e4,0)



aux.BeginPuzzle()