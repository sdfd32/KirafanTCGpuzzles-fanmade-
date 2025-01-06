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



Debug.ReloadFieldEnd()

Debug.ShowHint[[대사창이 화면을 가릴 경우 대사창을 드래그해서 옮겨주세요
★★★사용설명서★★★ 폴더의 룰북을 한번 읽고
스토리를 진행해주시기 바랍니다.]]
Debug.ShowHint[[★클레어
에토와리아에 오신 것을 환영합니다!]]
Debug.ShowHint[[★클레어
만나서 반갑습니다
저는 클레어라고 합니다!
부족하지만 아무쪼록 잘 부탁드립니다!]]
Debug.ShowHint[[★클레어
자, 드디어 앞으로 아득한 모험길이 시작될거에요
기대돼요~! 두근두근 설레여요~!]]
Debug.ShowHint[[★클레어
모험이라고 하면 서로 도와 함께 여행을 하는 것이에요
동료가 꼭 필요하죠!]]
Debug.ShowHint[[★클레어
앞으로 만날 동료분들은 함께 모험만 하는 것이 아니에요
모험하지 않을 땐 저도 살고있는 마을에서 함께 지낼 수 있거든요!]]
Debug.ShowHint[[★클레어
즐겁게 이야기하거나 함께 쇼핑하거나...
이런 일이나 저런 일도...]]
Debug.ShowHint[[★클레어
네?
어떻게하면 동료를 만날 수 있냐고요?]]
Debug.ShowHint[[★클레어
그건 말이죠 바로!
'소환'을 함으로써 그런 멋진 동료들이 와주실거예요!
저도 이 열쇠의 힘을 사용해서 도와드릴게요]]
Debug.ShowHint[[★클레어
열심히 할테니까 잘 부탁드려요!
그럼 바로 함께 동료를...
크리에메이트를 소환해 보도록하죠!]]

local e3=Effect.CreateEffect(c)
e3:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
e3:SetProperty(EFFECT_FLAG_IGNORE_IMMUNE+EFFECT_FLAG_CANNOT_DISABLE)
e3:SetRange(LOCATION_MZONE)
e3:SetCode(EVENT_ADJUST)
e3:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
Duel.SetLP(1-tp,0)
end)
Duel.RegisterEffect(e3,0)

aux.BeginPuzzle()