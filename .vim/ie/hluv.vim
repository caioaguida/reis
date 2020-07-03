let g:HLuwOn=0

function! ToggleHLuw()
	if !g:HLuwOn
		call HLuw()
	else
		call HLuwOff()
	endif
endfunction

function! HLuw()
    echo "Mapeamento de teclado HLuw ligado"
    let g:HLuwOn=1
    imap    ego     𔐀
    imap    ego2    𔐁
    imap    A003    𔐂
    imap    mons2    𔐃
    imap    A005    𔐄
    imap    adorare    𔐅
    imap    edere    𔐆
    imap    bibere    𔐇
    imap    amplecti    𔐈
    imap    caput    𔐉
    imap    caput+sculprum    𔐊
    imap    A011    𔐋
    imap    statua    𔐌
    imap    A013    𔐍
    imap    prae    𔐎
    imap    pari    𔐎
    imap    domina    𔐏
    imap    magnus.domina    𔐐
    imap    rex    𔐑
    imap    magnus.rex    𔐒
    imap    á    𔐓
    imap    a2    𔐓
    imap    A020    𔐔
    imap    heros    𔐕
    imap    loqui    𔐖
    imap    A023    𔐗
    imap    lis    𔐘
    imap    oculus    𔐙
    imap    frons    𔐚
    imap    versus    𔐛
    imap    libare    𔐜
    imap    fortis    𔐝
    imap    tá    𔐞
    imap    ta2    𔐞
    imap    A030    𔐟
    imap    ligare    𔐠
    imap    bracchium    𔐡
    imap    A033    𔐢
    imap    post    𔐣
    imap    na    𔐤
    imap    lituus+na    𔐥
    imap    A037    𔐦
    imap    A038    𔐧
    imap    pugnus    𔐨
    imap    pugnus+x    𔐩
    imap    A040    𔐪
    imap    capere    𔐫
    imap    tà    𔐫
    imap    ta3    𔐫
    " imap    tà    𔐬
    imap    capere2.capere2    𔐭
    imap    ta+x    𔐭
    imap    A043    𔐮
    imap    A044    𔐯
    imap    A045    𔐰
    imap    A045A    𔐱
    imap    A046    𔐲
    imap    A046    𔐳
    imap    A046A    𔐴
    imap    A047    𔐵
    imap    A048    𔐶
    imap    A049    𔐷
    imap    A050    𔐸
    imap    A051    𔐹
    imap    A052    𔐺
    imap    A053    𔐻
    imap    A054    𔐼
    imap    A055    𔐽
    imap    A056    𔐾
    imap    A057    𔐿
    imap    A058    𔑀
    imap    A059    𔑁
    imap    A060    𔑂
    imap    A061    𔑃
    imap    A062    𔑄
    imap    A063    𔑅
    imap    A064    𔑆
    imap    A065    𔑇
    imap    A066    𔑈
    imap    A066A    𔑉
    imap    A066B    𔑊
    imap    A066C   𔑋
    imap    A067    𔑌
    imap    A068    𔑍
    imap    A069    𔑎
    imap    A070    𔑏
    imap    A071    𔑐
    imap    A072    𔑑
    imap    A073    𔑒
    imap    A074    𔑓
    imap    A075    𔑔
    imap    A076    𔑕
    imap    A077    𔑖
    imap    A078    𔑗
    imap    A079    𔑘
    imap    A080    𔑙
    imap    A081    𔑚
    imap    A082    𔑛
    imap    A083    𔑜
    imap    A084    𔑝
    imap    A085    𔑞
    imap    A086    𔑟
    imap    A087    𔑠
    imap    A088    𔑡
    imap    A089    𔑢
    imap    A090    𔑣
    imap    A091    𔑤
    imap    A092    𔑥
    imap    A093    𔑦
    imap    A094    𔑧
    imap    A095    𔑨
    imap    A096    𔑩
    imap    A097    𔑪
    imap    A097    𔑫
    imap    A098    𔑬
    imap    A098    𔑭
    imap    A099    𔑮
    imap    A100    𔑯
    imap    A100    𔑰
    imap    A101    𔑱
    imap    A101    𔑲
    imap    A102    𔑳
    imap    A102    𔑴
    imap    A103    𔑵
    imap    A104    𔑶
    imap    A104    𔑷
    imap    A104    𔑸
    imap    A104    𔑹
    imap    A105    𔑺
    imap    A105    𔑻
    imap    A105    𔑼
    imap    A106    𔑽
    imap    A107    𔑾
    imap    A107    𔑿
    imap    A107    𔒀
    imap    A107    𔒁
    imap    A108    𔒂
    imap    A109    𔒃
    imap    A110    𔒄
    imap    A110    𔒅
    imap    A110    𔒆
    imap    A111    𔒇
    imap    A112    𔒈
    imap    A113    𔒉
    imap    A114    𔒊
    imap    A115    𔒋
    imap    A115    𔒌
    imap    A116    𔒍
    imap    A117    𔒎
    imap    A118    𔒏
    imap    A119    𔒐
    imap    A120    𔒑
    imap    A121    𔒒
    imap    A122    𔒓
    imap    A123    𔒔
    imap    A124    𔒕
    imap    A125    𔒖
    imap    A125    𔒗
    imap    A126    𔒘
    imap    A127    𔒙
    imap    A128    𔒚
    imap    A129    𔒛
    imap    A130    𔒜
    imap    A131    𔒝
    imap    A132    𔒞
    imap    A133    𔒟
    imap    A134    𔒠
    imap    A135    𔒡
    imap    A135    𔒢
    imap    A136    𔒣
    imap    A137    𔒤
    imap    A138    𔒥
    imap    A139    𔒦
    imap    A140    𔒧
    imap    A141    𔒨
    imap    A142    𔒩
    imap    A143    𔒪
    imap    A144    𔒫
    imap    A145    𔒬
    imap    A146    𔒭
    imap    A147    𔒮
    imap    A148    𔒯
    imap    A149    𔒰
    imap    A150    𔒱
    imap    A151    𔒲
    imap    A152    𔒳
    imap    A153    𔒴
    imap    A154    𔒵
    imap    A155    𔒶
    imap    A156    𔒷
    imap    A157    𔒸
    imap    A158    𔒹
    imap    A159    𔒺
    imap    A160    𔒻
    imap    A161    𔒼
    imap    A162    𔒽
    imap    A163    𔒾
    imap    A164    𔒿
    imap    A165    𔓀
    imap    A166    𔓁
    imap    A167    𔓂
    imap    A168    𔓃
    imap    A169    𔓄
    imap    A170    𔓅
    imap    A171    𔓆
    imap    A172    𔓇
    imap    A173    𔓈
    imap    A174    𔓉
    imap    A175    𔓊
    imap    A176    𔓋
    imap    A177    𔓌
    imap    A178    𔓍
    imap    A179    𔓎
    imap    A180    𔓏
    imap    A181    𔓐
    imap    A182    𔓑
    imap    A183    𔓒
    imap    A184    𔓓
    imap    A185    𔓔
    imap    A186    𔓕
    imap    A187    𔓖
    imap    A188    𔓗
    imap    A189    𔓘
    imap    A190    𔓙
    imap    A191    𔓚
    imap    A192    𔓛
    imap    A193    𔓜
    imap    A194    𔓝
    imap    A195    𔓞
    imap    A196    𔓟
    imap    A197    𔓠
    imap    A198    𔓡
    imap    A199    𔓢
    imap    A200    𔓣
    imap    A201    𔓤
    imap    A202    𔓥
    imap    A202    𔓦
    imap    A202    𔓧
    imap    A203    𔓨
    imap    A204    𔓩
    imap    A205    𔓪
    imap    A206    𔓫
    imap    A207    𔓬
    imap    A207    𔓭
    imap    A208    𔓮
    imap    A209    𔓯
    imap    A209    𔓰
    imap    A210    𔓱
    imap    A211    𔓲
    imap    A212    𔓳
    imap    A213    𔓴
    imap    A214    𔓵
    imap    A215    𔓶
    imap    A215    𔓷
    imap    A216    𔓸
    imap    A216    𔓹
    imap    A217    𔓺
    imap    A218    𔓻
    imap    A219    𔓼
    imap    A220    𔓽
    imap    A221    𔓾
    imap    A222    𔓿
    imap    A223    𔔀
    imap    A224    𔔁
    imap    A225    𔔂
    imap    A226    𔔃
    imap    A227    𔔄
    imap    A227    𔔅
    imap    A228    𔔆
    imap    A229    𔔇
    imap    A230    𔔈
    imap    A231    𔔉
    imap    A232    𔔊
    imap    A233    𔔋
    imap    A234    𔔌
    imap    A235    𔔍
    imap    A236    𔔎
    imap    A237    𔔏
    imap    A238    𔔐
    imap    A239    𔔑
    imap    A240    𔔒
    imap    A241    𔔓
    imap    A242    𔔔
    imap    A243    𔔕
    imap    A244    𔔖
    imap    A245    𔔗
    imap    A246    𔔘
    imap    A247    𔔙
    imap    A248    𔔚
    imap    A249    𔔛
    imap    A250    𔔜
    imap    A251    𔔝
    imap    A252    𔔞
    imap    A253    𔔟
    imap    A254    𔔠
    imap    A255    𔔡
    imap    A256    𔔢
    imap    A257    𔔣
    imap    A258    𔔤
    imap    A259    𔔥
    imap    A260    𔔦
    imap    A261    𔔧
    imap    A262    𔔨
    imap    A263    𔔩
    imap    A264    𔔪
    imap    A265    𔔫
    imap    A266    𔔬
    imap    A267    𔔭
    imap    A267    𔔮
    imap    A268    𔔯
    imap    A269    𔔰
    imap    A270    𔔱
    imap    A271    𔔲
    imap    A272    𔔳
    imap    A273    𔔴
    imap    A274    𔔵
    imap    A275    𔔶
    imap    A276    𔔷
    imap    A277    𔔸
    imap    A278    𔔹
    imap    A279    𔔺
    imap    A280    𔔻
    imap    A281    𔔼
    imap    A282    𔔽
    imap    A283    𔔾
    imap    A284    𔔿
    imap    A285    𔕀
    imap    A286    𔕁
    imap    A287    𔕂
    imap    A288    𔕃
    imap    A289    𔕄
    imap    A289    𔕅
    imap    A290    𔕆
    imap    A291    𔕇
    imap    A292    𔕈
    imap    A293    𔕉
    imap    A294    𔕊
    imap    A294    𔕋
    imap    A295    𔕌
    imap    A296    𔕍
    imap    A297    𔕎
    imap    A298    𔕏
    imap    A299    𔕐
    imap    A299    𔕑
    imap    A300    𔕒
    imap    A301    𔕓
    imap    A302    𔕔
    imap    A303    𔕕
    imap    A304    𔕖
    imap    A305    𔕗
    imap    A306    𔕘
    imap    A307    𔕙
    imap    A308    𔕚
    imap    A309    𔕛
    imap    A309    𔕜
    imap    A310    𔕝
    imap    A311    𔕞
    imap    A312    𔕟
    imap    A313    𔕠
    imap    A314    𔕡
    imap    A315    𔕢
    imap    A316    𔕣
    imap    A317    𔕤
    imap    A318    𔕥
    imap    A319    𔕦
    imap    A320    𔕧
    imap    A321    𔕨
    imap    A322    𔕩
    imap    A323    𔕪
    imap    A324    𔕫
    imap    A325    𔕬
    imap    A326    𔕭
    imap    A327    𔕮
    imap    A328    𔕯
    imap    A329    𔕰
    imap    A329    𔕱
    imap    A330    𔕲
    imap    A331    𔕳
    imap    A332    𔕴
    imap    A332    𔕵
    imap    A332    𔕶
    imap    A333    𔕷
    imap    A334    𔕸
    imap    A335    𔕹
    imap    A336    𔕺
    imap    A336    𔕻
    imap    A336    𔕼
    imap    A336    𔕽
    imap    A337    𔕾
    imap    A338    𔕿
    imap    A339    𔖀
    imap    A340    𔖁
    imap    A341    𔖂
    imap    A342    𔖃
    imap    A343    𔖄
    imap    A344    𔖅
    imap    A345    𔖆
    imap    A346    𔖇
    imap    A347    𔖈
    imap    A348    𔖉
    imap    A349    𔖊
    imap    A350    𔖋
    imap    A351    𔖌
    imap    A352    𔖍
    imap    A353    𔖎
    imap    A354    𔖏
    imap    A355    𔖐
    imap    A356    𔖑
    imap    A357    𔖒
    imap    A358    𔖓
    imap    A359    𔖔
    imap    A359    𔖕
    imap    A360    𔖖
    imap    A361    𔖗
    imap    A362    𔖘
    imap    A363    𔖙
    imap    A364    𔖚
    imap    A364    𔖛
    imap    A365    𔖜
    imap    A366    𔖝
    imap    A367    𔖞
    imap    A368    𔖟
    imap    A368    𔖠
    imap    A369    𔖡
    imap    A370    𔖢
    imap    A371    𔖣
    imap    A371    𔖤
    imap    A372    𔖥
    imap    A373    𔖦
    imap    A374    𔖧
    imap    A375    𔖨
    imap    A376    𔖩
    imap    A377    𔖪
    imap    A378    𔖫
    imap    A379    𔖬
    imap    A380    𔖭
    imap    A381    𔖮
    imap    A381    𔖯
    imap    A382    𔖰
    imap    A383    𔖱
    imap    A383    𔖲
    imap    A384    𔖳
    imap    A385    𔖴
    imap    A386    𔖵
    imap    A386    𔖶
    imap    A387    𔖷
    imap    A388    𔖸
    imap    A389    𔖹
    imap    A390    𔖺
    imap    A391    𔖻
    imap    A392    𔖼
    imap    A393    𔖽
    imap    A394    𔖾
    imap    A395    𔖿
    imap    A396    𔗀
    imap    A397    𔗁
    imap    A398    𔗂
    imap    A399    𔗃
    imap    A400    𔗄
    imap    A401    𔗅
    imap    A402    𔗆
    imap    A403    𔗇
    imap    A404    𔗈
    imap    A405    𔗉
    imap    A406    𔗊
    imap    A407    𔗋
    imap    A408    𔗌
    imap    A409    𔗍
    imap    A410    𔗎
    imap    A410    𔗏
    imap    A411    𔗐
    imap    A412    𔗑
    imap    A413    𔗒
    imap    A414    𔗓
    imap    A415    𔗔
    imap    A416    𔗕
    imap    A417    𔗖
    imap    A418    𔗗
    imap    A419    𔗘
    imap    A420    𔗙
    imap    A421    𔗚
    imap    A422    𔗛
    imap    A423    𔗜
    imap    A424    𔗝
    imap    A425    𔗞
    imap    A426    𔗟
    imap    A427    𔗠
    imap    A428    𔗡
    imap    A429    𔗢
    imap    A430    𔗣
    imap    A431    𔗤
    imap    A432    𔗥
    imap    A433    𔗦
    imap    A434    𔗧
    imap    A435    𔗨
    imap    A436    𔗩
    imap    A437    𔗪
    imap    A438    𔗫
    imap    A439    𔗬
    imap    A440    𔗭
    imap    A441    𔗮
    imap    A442    𔗯
    imap    A443    𔗰
    imap    A444    𔗱
    imap    A445    𔗲
    imap    A446    𔗳
    imap    A447    𔗴
    imap    A448    𔗵
    imap    A449    𔗶
    imap    A450    𔗷
    imap    A450A    𔗸
    imap    A451    𔗹
    imap    A452    𔗺
    imap    A453    𔗻
    imap    A454    𔗼
    imap    A455    𔗽
    imap    A456    𔗾
    imap    A457    𔗿
    imap    A457    𔘀
    imap    A458    𔘁
    imap    A459    𔘂
    imap    A460    𔘃
    imap    A461    𔘄
    imap    A462    𔘅
    imap    A463    𔘆
    imap    A464    𔘇
    imap    A465    𔘈
    imap    A466    𔘉
    imap    A467    𔘊
    imap    A468    𔘋
    imap    A469    𔘌
    imap    A470    𔘍
    imap    A471    𔘎
    imap    A472    𔘏
    imap    A473    𔘐
    imap    A474    𔘑
    imap    A475    𔘒
    imap    A476    𔘓
    imap    A477    𔘔
    imap    A478    𔘕
    imap    A479    𔘖
    imap    A480    𔘗
    imap    A481    𔘘
    imap    A482    𔘙
    imap    A483    𔘚
    imap    A484    𔘛
    imap    A485    𔘜
    imap    A486    𔘝
    imap    A487    𔘞
    imap    A488    𔘟
    imap    A489    𔘠
    imap    A490    𔘡
    imap    A491    𔘢
    imap    A492    𔘣
    imap    A493    𔘤
    imap    A494    𔘥
    imap    A495    𔘦
    imap    A496    𔘧
    imap    A497    𔘨
    imap    A501    𔘩
    imap    A502    𔘪
    imap    A503    𔘫
    imap    A504    𔘬
    imap    A505    𔘭
    imap    A506    𔘮
    imap    A507    𔘯
    imap    A508    𔘰
    imap    A509    𔘱
    imap    A510    𔘲
    imap    A511    𔘳
    imap    A512    𔘴
    imap    A513    𔘵
    imap    A514    𔘶
    imap    A515    𔘷
    imap    A516    𔘸
    imap    A517    𔘹
    imap    A518    𔘺
    imap    A519    𔘻
    imap    A520    𔘼
    imap    A521    𔘽
    imap    A522    𔘾
    imap    A523    𔘿
    imap    A524    𔙀
    imap    A525    𔙁
    imap    A526    𔙂
    imap    A527    𔙃
    imap    A528    𔙄
    imap    A529    𔙅
    imap    A530    𔙆
endfunction

function! HLuwOff()
    let g:HLuwOn=0
    echo "Mapeamento de teclado HLuw desligado"
    iunmap ego
    iunmap ego2
    iunmap A003
    iunmap mons2
    iunmap A005
    iunmap adorare
    iunmap edere
    iunmap bibere
    iunmap amplecti
    iunmap caput
    iunmap caput
    iunmap A011
    iunmap statua
    iunmap A013
    iunmap prae
    iunmap pari
    iunmap domina
    iunmap magnus.domina
    iunmap rex
    iunmap magnus.rex
    iunmap á
    iunmap a2
    iunmap A020
    iunmap heros
    iunmap loqui
    iunmap A023
    iunmap lis
    iunmap oculus
    iunmap frons
    iunmap versus
    iunmap libare
    iunmap fortis
    iunmap tá
    iunmap ta2
    iunmap A030
    iunmap ligare
    iunmap bracchium
    iunmap A033
    iunmap post
    iunmap na
    iunmap lituus+na
    iunmap A037
    iunmap A038
    iunmap pugnus
    iunmap pugnus+x
    iunmap A040
    iunmap capere
    iunmap tà
    iunmap ta3
    " iunmap tà
    iunmap capere2.capere2
    iunmap ta-x?
    iunmap A043
    iunmap A044
    iunmap A045
    iunmap A045
    iunmap A046
    iunmap A046
    iunmap A046
    iunmap A047
    iunmap A048
    iunmap A049
    iunmap A050
    iunmap A051
    iunmap A052
    iunmap A053
    iunmap A054
    iunmap A055
    iunmap A056
    iunmap A057
    iunmap A058
    iunmap A059
    iunmap A060
    iunmap A061
    iunmap A062
    iunmap A063
    iunmap A064
    iunmap A065
    iunmap A066
    iunmap A066
    iunmap A066
    iunmap A066
    iunmap A067
    iunmap A068
    iunmap A069
    iunmap A070
    iunmap A071
    iunmap A072
    iunmap A073
    iunmap A074
    iunmap A075
    iunmap A076
    iunmap A077
    iunmap A078
    iunmap A079
    iunmap A080
    iunmap A081
    iunmap A082
    iunmap A083
    iunmap A084
    iunmap A085
    iunmap A086
    iunmap A087
    iunmap A088
    iunmap A089
    iunmap A090
    iunmap A091
    iunmap A092
    iunmap A093
    iunmap A094
    iunmap A095
    iunmap A096
    iunmap A097
    iunmap A097
    iunmap A098
    iunmap A098
    iunmap A099
    iunmap A100
    iunmap A100
    iunmap A101
    iunmap A101
    iunmap A102
    iunmap A102
    iunmap A103
    iunmap A104
    iunmap A104
    iunmap A104
    iunmap A104
    iunmap A105
    iunmap A105
    iunmap A105
    iunmap A106
    iunmap A107
    iunmap A107
    iunmap A107
    iunmap A107
    iunmap A108
    iunmap A109
    iunmap A110
    iunmap A110
    iunmap A110
    iunmap A111
    iunmap A112
    iunmap A113
    iunmap A114
    iunmap A115
    iunmap A115
    iunmap A116
    iunmap A117
    iunmap A118
    iunmap A119
    iunmap A120
    iunmap A121
    iunmap A122
    iunmap A123
    iunmap A124
    iunmap A125
    iunmap A125
    iunmap A126
    iunmap A127
    iunmap A128
    iunmap A129
    iunmap A130
    iunmap A131
    iunmap A132
    iunmap A133
    iunmap A134
    iunmap A135
    iunmap A135
    iunmap A136
    iunmap A137
    iunmap A138
    iunmap A139
    iunmap A140
    iunmap A141
    iunmap A142
    iunmap A143
    iunmap A144
    iunmap A145
    iunmap A146
    iunmap A147
    iunmap A148
    iunmap A149
    iunmap A150
    iunmap A151
    iunmap A152
    iunmap A153
    iunmap A154
    iunmap A155
    iunmap A156
    iunmap A157
    iunmap A158
    iunmap A159
    iunmap A160
    iunmap A161
    iunmap A162
    iunmap A163
    iunmap A164
    iunmap A165
    iunmap A166
    iunmap A167
    iunmap A168
    iunmap A169
    iunmap A170
    iunmap A171
    iunmap A172
    iunmap A173
    iunmap A174
    iunmap A175
    iunmap A176
    iunmap A177
    iunmap A178
    iunmap A179
    iunmap A180
    iunmap A181
    iunmap A182
    iunmap A183
    iunmap A184
    iunmap A185
    iunmap A186
    iunmap A187
    iunmap A188
    iunmap A189
    iunmap A190
    iunmap A191
    iunmap A192
    iunmap A193
    iunmap A194
    iunmap A195
    iunmap A196
    iunmap A197
    iunmap A198
    iunmap A199
    iunmap A200
    iunmap A201
    iunmap A202
    iunmap A202
    iunmap A202
    iunmap A203
    iunmap A204
    iunmap A205
    iunmap A206
    iunmap A207
    iunmap A207
    iunmap A208
    iunmap A209
    iunmap A209
    iunmap A210
    iunmap A211
    iunmap A212
    iunmap A213
    iunmap A214
    iunmap A215
    iunmap A215
    iunmap A216
    iunmap A216
    iunmap A217
    iunmap A218
    iunmap A219
    iunmap A220
    iunmap A221
    iunmap A222
    iunmap A223
    iunmap A224
    iunmap A225
    iunmap A226
    iunmap A227
    iunmap A227
    iunmap A228
    iunmap A229
    iunmap A230
    iunmap A231
    iunmap A232
    iunmap A233
    iunmap A234
    iunmap A235
    iunmap A236
    iunmap A237
    iunmap A238
    iunmap A239
    iunmap A240
    iunmap A241
    iunmap A242
    iunmap A243
    iunmap A244
    iunmap A245
    iunmap A246
    iunmap A247
    iunmap A248
    iunmap A249
    iunmap A250
    iunmap A251
    iunmap A252
    iunmap A253
    iunmap A254
    iunmap A255
    iunmap A256
    iunmap A257
    iunmap A258
    iunmap A259
    iunmap A260
    iunmap A261
    iunmap A262
    iunmap A263
    iunmap A264
    iunmap A265
    iunmap A266
    iunmap A267
    iunmap A267
    iunmap A268
    iunmap A269
    iunmap A270
    iunmap A271
    iunmap A272
    iunmap A273
    iunmap A274
    iunmap A275
    iunmap A276
    iunmap A277
    iunmap A278
    iunmap A279
    iunmap A280
    iunmap A281
    iunmap A282
    iunmap A283
    iunmap A284
    iunmap A285
    iunmap A286
    iunmap A287
    iunmap A288
    iunmap A289
    iunmap A289
    iunmap A290
    iunmap A291
    iunmap A292
    iunmap A293
    iunmap A294
    iunmap A294
    iunmap A295
    iunmap A296
    iunmap A297
    iunmap A298
    iunmap A299
    iunmap A299
    iunmap A300
    iunmap A301
    iunmap A302
    iunmap A303
    iunmap A304
    iunmap A305
    iunmap A306
    iunmap A307
    iunmap A308
    iunmap A309
    iunmap A309
    iunmap A310
    iunmap A311
    iunmap A312
    iunmap A313
    iunmap A314
    iunmap A315
    iunmap A316
    iunmap A317
    iunmap A318
    iunmap A319
    iunmap A320
    iunmap A321
    iunmap A322
    iunmap A323
    iunmap A324
    iunmap A325
    iunmap A326
    iunmap A327
    iunmap A328
    iunmap A329
    iunmap A329
    iunmap A330
    iunmap A331
    iunmap A332
    iunmap A332
    iunmap A332
    iunmap A333
    iunmap A334
    iunmap A335
    iunmap A336
    iunmap A336
    iunmap A336
    iunmap A336
    iunmap A337
    iunmap A338
    iunmap A339
    iunmap A340
    iunmap A341
    iunmap A342
    iunmap A343
    iunmap A344
    iunmap A345
    iunmap A346
    iunmap A347
    iunmap A348
    iunmap A349
    iunmap A350
    iunmap A351
    iunmap A352
    iunmap A353
    iunmap A354
    iunmap A355
    iunmap A356
    iunmap A357
    iunmap A358
    iunmap A359
    iunmap A359
    iunmap A360
    iunmap A361
    iunmap A362
    iunmap A363
    iunmap A364
    iunmap A364
    iunmap A365
    iunmap A366
    iunmap A367
    iunmap A368
    iunmap A368
    iunmap A369
    iunmap A370
    iunmap A371
    iunmap A371
    iunmap A372
    iunmap A373
    iunmap A374
    iunmap A375
    iunmap A376
    iunmap A377
    iunmap A378
    iunmap A379
    iunmap A380
    iunmap A381
    iunmap A381
    iunmap A382
    iunmap A383
    iunmap A383
    iunmap A384
    iunmap A385
    iunmap A386
    iunmap A386
    iunmap A387
    iunmap A388
    iunmap A389
    iunmap A390
    iunmap A391
    iunmap A392
    iunmap A393
    iunmap A394
    iunmap A395
    iunmap A396
    iunmap A397
    iunmap A398
    iunmap A399
    iunmap A400
    iunmap A401
    iunmap A402
    iunmap A403
    iunmap A404
    iunmap A405
    iunmap A406
    iunmap A407
    iunmap A408
    iunmap A409
    iunmap A410
    iunmap A410
    iunmap A411
    iunmap A412
    iunmap A413
    iunmap A414
    iunmap A415
    iunmap A416
    iunmap A417
    iunmap A418
    iunmap A419
    iunmap A420
    iunmap A421
    iunmap A422
    iunmap A423
    iunmap A424
    iunmap A425
    iunmap A426
    iunmap A427
    iunmap A428
    iunmap A429
    iunmap A430
    iunmap A431
    iunmap A432
    iunmap A433
    iunmap A434
    iunmap A435
    iunmap A436
    iunmap A437
    iunmap A438
    iunmap A439
    iunmap A440
    iunmap A441
    iunmap A442
    iunmap A443
    iunmap A444
    iunmap A445
    iunmap A446
    iunmap A447
    iunmap A448
    iunmap A449
    iunmap A450
    iunmap A450
    iunmap A451
    iunmap A452
    iunmap A453
    iunmap A454
    iunmap A455
    iunmap A456
    iunmap A457
    iunmap A457
    iunmap A458
    iunmap A459
    iunmap A460
    iunmap A461
    iunmap A462
    iunmap A463
    iunmap A464
    iunmap A465
    iunmap A466
    iunmap A467
    iunmap A468
    iunmap A469
    iunmap A470
    iunmap A471
    iunmap A472
    iunmap A473
    iunmap A474
    iunmap A475
    iunmap A476
    iunmap A477
    iunmap A478
    iunmap A479
    iunmap A480
    iunmap A481
    iunmap A482
    iunmap A483
    iunmap A484
    iunmap A485
    iunmap A486
    iunmap A487
    iunmap A488
    iunmap A489
    iunmap A490
    iunmap A491
    iunmap A492
    iunmap A493
    iunmap A494
    iunmap A495
    iunmap A496
    iunmap A497
    iunmap A501
    iunmap A502
    iunmap A503
    iunmap A504
    iunmap A505
    iunmap A506
    iunmap A507
    iunmap A508
    iunmap A509
    iunmap A510
    iunmap A511
    iunmap A512
    iunmap A513
    iunmap A514
    iunmap A515
    iunmap A516
    iunmap A517
    iunmap A518
    iunmap A519
    iunmap A520
    iunmap A521
    iunmap A522
    iunmap A523
    iunmap A524
    iunmap A525
    iunmap A526
    iunmap A527
    iunmap A528
    iunmap A529
    iunmap A530
endfunction
