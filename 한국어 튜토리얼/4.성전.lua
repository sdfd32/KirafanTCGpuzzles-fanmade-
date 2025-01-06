--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
--Partially rewritten by edo9300
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,5)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--클레어
c=Debug.AddCard(10050113,0,0,LOCATION_EMZONE,1,POS_FACEUP_ATTACK)
tc=Debug.AddCard(10050113,1,1,LOCATION_EMZONE,1,POS_FACEUP_ATTACK)

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
local e9=Effect.CreateEffect(tc)
e9:SetType(EFFECT_TYPE_SINGLE)
e9:SetCode(EFFECT_CANNOT_TRIGGER)
tc:RegisterEffect(e9)

--enemy
Debug.AddCard(10051631,1,1,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(10051631,1,1,LOCATION_MZONE,0,POS_FACEUP)

Debug.AddCard(10051631,1,1,LOCATION_MZONE,4,POS_FACEUP_ATTACK)
Debug.AddCard(10051631,1,1,LOCATION_MZONE,4,POS_FACEUP)

Debug.AddCard(10051631,1,1,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(10051631,1,1,LOCATION_MZONE,2,POS_FACEUP)

Debug.AddCard(10051631,1,1,LOCATION_EXTRA,0,POS_FACEUP)

Debug.AddCard(10052431,0,0,LOCATION_EXTRA,0,POS_FACEUP)
Debug.AddCard(10051331,0,0,LOCATION_EXTRA,0,POS_FACEUP)
Debug.AddCard(10051621,0,0,LOCATION_EXTRA,0,POS_FACEUP)
Debug.AddCard(10052121,0,0,LOCATION_EXTRA,0,POS_FACEUP)
Debug.AddCard(10051311,0,0,LOCATION_EXTRA,0,POS_FACEUP)

sharo1=Debug.AddCard(10052531,1,1,LOCATION_DECK,0,POS_FACEDOWN)
hemo=Debug.AddCard(10052521,1,1,LOCATION_DECK,0,POS_FACEDOWN)
sharo2=Debug.AddCard(10052531,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,1,1,LOCATION_DECK,0,POS_FACEDOWN)

miyako=Debug.AddCard(10051531,0,0,LOCATION_DECK,0,POS_FACEDOWN)
hiro=Debug.AddCard(10054523,0,0,LOCATION_DECK,0,POS_FACEDOWN)
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
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(10054621,0,0,LOCATION_DECK,0,POS_FACEDOWN)

Debug.AddCard(10054621,0,0,LOCATION_GRAVE,0,POS_FACEUP)

Debug.AddCard(10052421,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.AddCard(10052421,0,0,LOCATION_MZONE,0,POS_FACEUP)
Debug.AddCard(10052421,0,0,LOCATION_MZONE,0,POS_FACEUP)
Debug.AddCard(10052421,0,0,LOCATION_MZONE,0,POS_FACEUP)

tamaki=Debug.AddCard(10052331,0,0,LOCATION_MZONE,4,POS_FACEUP_ATTACK)
Debug.AddCard(10052331,0,0,LOCATION_MZONE,4,POS_FACEUP)
Debug.AddCard(10052331,0,0,LOCATION_MZONE,4,POS_FACEUP)
Debug.AddCard(10052331,0,0,LOCATION_MZONE,4,POS_FACEUP)

Debug.AddCard(10052321,0,0,LOCATION_MZONE,2,POS_FACEUP_ATTACK)
Debug.AddCard(10052321,0,0,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10052321,0,0,LOCATION_MZONE,2,POS_FACEUP)
Debug.AddCard(10052321,0,0,LOCATION_MZONE,2,POS_FACEUP)

yuno=Debug.AddCard(10054521,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(10051521,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(10051511,0,0,LOCATION_HAND,0,POS_FACEDOWN)

Debug.ReloadFieldEnd()

local e1=Effect.GlobalEffect()
	e1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e1:SetCode(EVENT_PHASE+PHASE_STANDBY)
	e1:SetCountLimit(1)
	e1:SetCondition(function(e,tp,eg,ep,ev,re,r,rp)
return Duel.GetTurnCount()==1 end)
	e1:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
Duel.SkipPhase(tp,PHASE_DRAW,RESET_PHASE+PHASE_END,0)
Duel.SkipPhase(tp,PHASE_STANDBY,RESET_PHASE+PHASE_END,0)
Duel.SkipPhase(tp,PHASE_MAIN1,RESET_PHASE+PHASE_END,0)
Debug.ShowHint[[★클레어
자! 이제 게임에서 승리하는 법이에요
상대 크리에메이트를 계속 성전으로 보내다보면
상대의 성전 레벨이 10 이상이 되는 순간이 올거에요!]]
Debug.ShowHint[[★클레어
상대의 성전 레벨이 10 이상인 상태에서
자신 배틀 페이즈를 종료하면 진실의 손의 시간이 시작돼요!]]
Debug.ShowHint[[★클레어
자! 이제 배틀 페이즈에 들어갈테니 통상 공격만으로
상대의 성전 레벨을 10 이상으로 만들고
배틀 페이즈를 종료하세요!]]
local g2=Duel.GetMatchingGroup(Kirafan6.NoEmFzonefilter,tp,LOCATION_MZONE,0,nil)
local tc2=g2:GetFirst()
	for tc2 in aux.Next(g2) do
local e2=Effect.CreateEffect(tc2)
e2:SetType(EFFECT_TYPE_SINGLE)
e2:SetCode(EFFECT_CANNOT_TRIGGER)
e2:SetProperty(EFFECT_FLAG_IGNORE_IMMUNE+EFFECT_FLAG_CANNOT_DISABLE)
e2:SetReset(RESET_EVENT+RESETS_STANDARD+EVENT_PHASE+PHASE_END)
tc2:RegisterEffect(e2)
local e3=Effect.CreateEffect(tc2)
e3:SetType(EFFECT_TYPE_SINGLE)
e3:SetCode(EFFECT_MUST_ATTACK)
e3:SetProperty(EFFECT_FLAG_IGNORE_IMMUNE+EFFECT_FLAG_CANNOT_DISABLE)
e3:SetReset(RESET_EVENT+RESETS_STANDARD+EVENT_PHASE+PHASE_END)
tc2:RegisterEffect(e3)
end
end)
Duel.RegisterEffect(e1,0)

local e2=Effect.GlobalEffect()
	e2:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e2:SetCode(EVENT_PHASE+PHASE_DRAW)
	e2:SetCountLimit(1)
	e2:SetCondition(function(e,tp,eg,ep,ev,re,r,rp)
return Duel.GetTurnCount()==2 end)
	e2:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)	
Debug.ShowHint[[★쿠죠 카렌
아옷치!]]
Debug.ShowHint[[★클레어
자 이제 진실의 손의 시간이 왔어요!
이번 턴만 잘 넘기면 승리할 수 있어요!]]
Duel.SendtoHand(sharo1,nil,REASON_EFFECT)
Duel.SendtoHand(sharo2,nil,REASON_EFFECT)
Duel.SendtoHand(hemo,nil,REASON_EFFECT)
Duel.SpecialSummon(hemo,0,1-tp,1-tp,false,false,POS_FACEUP_ATTACK)
Debug.ShowHint[[★미도리 헤모
이노 선배♡ 어디 계신가요?]]
Duel.SpecialSummon(sharo1,0,1-tp,1-tp,false,false,POS_FACEUP_ATTACK)
Duel.SpecialSummon(sharo2,0,1-tp,1-tp,false,false,POS_FACEUP_ATTACK)
Debug.ShowHint[[★키리마 샤로
괴도 라팡 등장!]]
Debug.ShowHint[[★클레어
아앗! 이건 좀 어렵겠는데요?]]
Duel.SkipPhase(1-tp,PHASE_MAIN1,RESET_PHASE+PHASE_END,0)
end)
Duel.RegisterEffect(e2,0)

local e3=Effect.GlobalEffect()
	e3:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e3:SetCode(EVENT_PHASE+PHASE_BATTLE_START)
	e3:SetCountLimit(1)
	e3:SetCondition(function(e,tp,eg,ep,ev,re,r,rp)
return Duel.GetTurnCount()~=1 and tamaki:IsLocation(LOCATION_MZONE) end)
	e3:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
local e3=Effect.CreateEffect(c)
e3:SetType(EFFECT_TYPE_SINGLE)
e3:SetCode(EFFECT_UPDATE_DEFENSE)
e3:SetProperty(EFFECT_FLAG_CANNOT_DISABLE)
e3:SetReset(RESET_EVENT+RESETS_STANDARD)
e3:SetValue(2)
c:RegisterEffect(e3)
local e4=Effect.CreateEffect(tc)
e4:SetType(EFFECT_TYPE_SINGLE)
e4:SetCode(EFFECT_UPDATE_DEFENSE)
e4:SetProperty(EFFECT_FLAG_CANNOT_DISABLE)
e4:SetReset(RESET_EVENT+RESETS_STANDARD)
e4:SetValue(2)
tc:RegisterEffect(e4)

local e5=Effect.CreateEffect(hemo)
e5:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_TRIGGER_F)
e5:SetCode(EVENT_PHASE+PHASE_BATTLE_START)
e5:SetCountLimit(1,1111,EFFECT_COUNT_CODE_DUEL)
e5:SetRange(LOCATION_MZONE)
e5:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	local c=e:GetHandler()
	Duel.ChangePosition(e:GetHandler(),POS_FACEUP_DEFENSE)
	local enemy=Duel.GetMatchingGroup(Kirafan6.NoEmFzonefilter,tp,0,LOCATION_MZONE,nil)
	local dam=1
	Duel.Damage(1-tp,dam,REASON_EFFECT)
	local ag=enemy:GetFirst()
	for ag in aux.Next(enemy) do
	local g=ag:GetOverlayGroup()
	if #g<=dam then Duel.Remove(g,POS_FACEUP,REASON_EFFECT)
	else
	ag:AddCounter(0xb02,1)
	tc=ag:GetOverlayGroup():RandomSelect(1-tp,dam)
	Duel.Remove(tc,POS_FACEUP,REASON_EFFECT)
	end end
Debug.ShowHint[[★클레어
아! 헤모 씨의 불행 효과를 맞았어요!
이러면 유노 씨의 회복으로 버틸 수가 없겠어요]]
end)
hemo:RegisterEffect(e5)

local e1=Effect.CreateEffect(sharo1)
e1:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_TRIGGER_F)
e1:SetCode(EVENT_PHASE+PHASE_BATTLE_START)
e1:SetCountLimit(1,1112,EFFECT_COUNT_CODE_DUEL)
e1:SetRange(LOCATION_MZONE)
e1:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	local c=e:GetHandler()
	Duel.ChangePosition(e:GetHandler(),POS_FACEUP_DEFENSE)
	local enemy=Duel.GetMatchingGroup(Kirafan6.NoEmFzonefilter,tp,0,LOCATION_MZONE,nil)
	local dam=2
	Duel.Damage(1-tp,dam,REASON_EFFECT)
	local ag=enemy:GetFirst()
	for ag in aux.Next(enemy) do
	local g=ag:GetOverlayGroup()
	if #g<=dam then Duel.Remove(g,POS_FACEUP,REASON_EFFECT)
	else
	tc=ag:GetOverlayGroup():RandomSelect(1-tp,dam)
	Duel.Remove(tc,POS_FACEUP,REASON_EFFECT)
	end end end)
sharo1:RegisterEffect(e1)

local e2=Effect.CreateEffect(sharo2)
e2:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_TRIGGER_F)
e2:SetCode(EVENT_PHASE+PHASE_BATTLE_START)
e2:SetCountLimit(1,1113,EFFECT_COUNT_CODE_DUEL)
e2:SetRange(LOCATION_MZONE)
e2:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
	local c=e:GetHandler()
	Duel.ChangePosition(e:GetHandler(),POS_FACEUP_DEFENSE)
	local enemy=Duel.GetMatchingGroup(Kirafan6.NoEmFzonefilter,tp,0,LOCATION_MZONE,nil)
	local dam=2
	Duel.Damage(1-tp,dam,REASON_EFFECT)
	local ag=enemy:GetFirst()
	for ag in aux.Next(enemy) do
	local g=ag:GetOverlayGroup()
	if #g<=dam then Duel.Remove(g,POS_FACEUP,REASON_EFFECT)
	else
	tc=ag:GetOverlayGroup():RandomSelect(1-tp,dam)
	Duel.Remove(tc,POS_FACEUP,REASON_EFFECT)
	end end
Debug.ShowHint[[★타츠미 콘
여우신님? 여우신님!!]]	
Debug.ShowHint[[★혼다 타마키
아저씨가 부족하당께...]]	
Debug.ShowHint[[★카타세 마요이
마지막으로 이 말은 해야겠습니다
콘.. 특 이쁨...]]
Debug.ShowHint[[★클레어
아앗! 저희의 성전 레벨이 더 높아져 버렸어요!
이러면 다음 턴을 봐야겠어요
제발 좋은 크리에메이트가 나오길 기도하죠!]]	
end)
sharo2:RegisterEffect(e2)
end)
Duel.RegisterEffect(e3,0)


local e9=Effect.CreateEffect(tamaki)
e9:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_CONTINUOUS)
e9:SetCode(EVENT_LEAVE_FIELD)
e9:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
Duel.SkipPhase(1-tp,PHASE_BATTLE,RESET_PHASE+PHASE_END,0)
Duel.SetLP(1-tp,5000)
Duel.SetLP(tp,1000)
Duel.SkipPhase(1-tp,PHASE_MAIN2,RESET_PHASE+PHASE_END,0)
end)
tamaki:RegisterEffect(e9)

local e4=Effect.GlobalEffect()
	e4:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e4:SetCode(EVENT_PREDRAW)
	e4:SetCountLimit(1)
	e4:SetCondition(function(e,tp,eg,ep,ev,re,r,rp)
return Duel.GetTurnCount()==3 end)
	e4:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)
Duel.SkipPhase(tp,PHASE_DRAW,RESET_PHASE+PHASE_END,0)	
Duel.SendtoHand(miyako,nil,REASON_EFFECT)
Duel.SendtoHand(hiro,nil,REASON_EFFECT)
Debug.ShowHint[[★미야코
어 뭐야!
싸움이야? 나도 껴줘!]]
Debug.ShowHint[[★히로
어떻게 된거야?
다들 다치진 않았니?]]
Debug.ShowHint[[★사에
휴~ 늦지 않아서 다행이야]]
Debug.ShowHint[[★클레어
아! 미야코 씨랑 히로 씨에요!
지금 상황을 설명 드릴게요!]]
Debug.ShowHint[[★클레어
지금 저희의 성전 레벨은 18 상대는 12
상대 쪽의 샤로 씨를 두분 쓰러뜨리더라도
성전 레벨이 같은채로 턴을 종료하면 저희가 지게 돼요!]]
Debug.ShowHint[[★클레어
따라서 상대 필드를 전부 정리해야만 해요!]]
if yuno:IsLocation(LOCATION_HAND) then
Debug.ShowHint[[★클레어
하지만 모두의 힘을 사용한다면 이길 수 있을거에요!]]
Debug.ShowHint[[★미야코
그래? 좋아 해보자고!]]
Debug.ShowHint[[★오오미야 시노부
맞아요! 금발만 있다면 뭐든지 가능해요!]]
Debug.ShowHint[[★클레어
자! 이번에도 부탁드릴게요
상대 필드를 전부 정리해주세요!]]
else
Debug.ShowHint[[★클레어
하지만 모두의 힘을 사용한다면...
아! 유노 씨가 없네요...]]
Debug.ShowHint[[★미야코
뭐 어때? 일단 해보자고!]]
Debug.ShowHint[[★오오미야 시노부
맞아요! 금발만 있다면 뭐든지 가능해요!]]
Debug.ShowHint[[★클레어
좋아요! 그럼 해보죠!]]
end
end)
Duel.RegisterEffect(e4,0)

local e5=Effect.GlobalEffect()
	e5:SetType(EFFECT_TYPE_FIELD+EFFECT_TYPE_CONTINUOUS)
	e5:SetCode(EVENT_PHASE+PHASE_STANDBY)
	e5:SetCountLimit(1)
	e5:SetCondition(function(e,tp,eg,ep,ev,re,r,rp)
return Duel.GetTurnCount()==4 end)
	e5:SetOperation(function(e,tp,eg,ep,ev,re,r,rp)	
Debug.ShowHint[[★후다 유미네
아! 여기가 아닌가 보네요
좋은 시간 보내세요~]]
local refill=Duel.GetMatchingGroup(nil,tp,0,LOCATION_HAND,nil)
Duel.SendtoDeck(refill,nil,SEQ_DECKSHUFFLE,REASON_RULE)
Debug.ShowHint[[★클레어
유미네 씨는 승려라서 스탠바이 페이즈에
상대는 배틀 존에 낼 크리에메이트가 없어요
대단해요! 저희가 이겼어요!]]
Debug.ShowHint[[★클레어
수고하셨습니다 여러분]]
Debug.ShowHint[[★오오미야 시노부
금발! 금발!]]
Debug.ShowHint[[★미야코
예에~!]]
Debug.ShowHint[[★클레어
멋진 만남이 있었군요...!
또 기다리고 있을게요!]]
Debug.ShowHint[[★클레어
이제 서버 대전에서 다른 플레이어들과의 게임이 시작될거에요!
막히는 일이 생길 때면 언제든지 다시 이곳으로 와주세요!]]
Debug.ShowHint[[★클레어
즐거운 시간 되시길 바랄게요!]]
Duel.SetLP(1-tp,0)
end)
Duel.RegisterEffect(e5,0)
