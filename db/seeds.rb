User.create!(
  name: 'yuki',
  email: 'yukifu027@gmail.com',
  password: 'Tf873046'
)

User.create!(
  name: 'test',
  email: 'test75@gmail.com',
  password: 'NYN0rsnD'
)

Place.create!(
  name: '奇跡の一本松',
  image: File.open('./public/places/DSC01042-e1462549976908.jpg'),
  content: '高田松原７万本のうち唯一生き残った復興のシンボル。 震災後枯死しましたが、陸前高田市が寄付金により現状の形で再整備しました。',
  webpage: 'https://www.city.rikuzentakata.iwate.jp/kategorie/fukkou/ipponmatu/ipponmatu.html',
  user_id: "1"
)

Place.create!(
  name: '原爆ドーム',
  image: File.open('./public/places/japan-689056_1280.jpg'),
  content: '昭和20年(1945年)8月6日午前8時15分。人類史上最初の原子爆弾が炸裂したのは、広島県産業奨励館から南東約160メートル、高度約 600メートルのところです。爆風の圧力は1平方メートルあたり35トン、風速は440メートルという凄まじいもので、建物は爆風と熱線を浴びて大破し、 天井から火を吹いて全焼。爆風がほとんど垂直に働いたため、本館の中心部は奇跡的に倒壊を免れたものの、館内にいた人はすべて即死しています。戦後、旧産業奨励館の残骸は、頂上の円蓋、鉄骨の形から、いつしか市民から原爆ドームと呼ばれるようになりました。',
  webpage: 'https://www.hiroshima-kankou.com/world-heritage/world-heritage/dome',
  user_id: "1"
)

Place.create!(
  name: 'モスタル旧市街の古い橋の地区',
  image: File.open('./public/places/mostar-1331058_1280.jpg'),
  content: 'ユーゴスラビアから独立したボスニア・ヘルツェゴビナで、1992年から1995年まで続いた民族（宗教）間の紛争は、歴史・文化遺産を容赦なく破壊しました。首都サラエボの南西約70kmにある古都モスタルの象徴であったオスマン朝時代の古い橋も、砲弾によって崩れ落ちてしまいました。現在は創建当時の姿に再建され川面に影を落とす橋が、民族や宗教の違いで争うことの愚かさを訴えかけます。',
  webpage: 'https://www.hankyu-travel.com/heritage/central_eur/mostar.php',
  user_id: "1"
)

Place.create!(
  name: 'アウシュビッツ強制収容所',
  image: File.open('./public/places/auschwitz-3485116_1280.jpg'),
  content: 'アウシュヴィッツ＝ビルケナウ強制収容所は、ナチス・ドイツが第二次世界大戦中に国家を挙げて推進した人種差別による絶滅政策（ホロコースト）および強制労働により、最大級の犠牲者を出した強制収容所である。',
  webpage: 'none',
  user_id: "1"
)

Place.create!(
  name: '震災遺構　仙台市立荒浜小学校',
  image: File.open('./public/places/clouds-871718_1280.jpg'),
  content: '東日本大震災時、児童や教職員、地域住民が避難し、2階まで津波が押し寄せた荒浜小学校を震災遺構として公開。校舎内では地震発生から避難、津波襲来、救助に至るまでの経過を写真や映像で展示し、津波の威力や脅威を伝えている。屋上からは今もなお進む復旧・復興工事の様子を見ることができる。',
  webpage: 'https://www.city.sendai.jp/kankyo/shisetsu/ruin_arahama_elementaryschool.html',
  user_id: "1"
)

Place.create!(
  name: 'カンチャナブリー',
  image: File.open('./public/places/train-861400_1280.jpg'),
  content: 'クウェー・ヤイ川に架かる全長約322メートルのクウェー川鉄橋は、日本軍が敷設した泰緬鉄道が通る橋。映画「戦場に架ける橋」の舞台になったことでもよく知られています。クウェー川鉄橋や連合軍兵士らが眠る墓地など、周辺に点在する戦争関連施設の見学のほか、鉄橋の途中にある待避場所で通過する列車を見ることもできます。また、カンチャナブリー駅から終点のナムトック駅まで、泰緬鉄道に乗車するのもおすすめのルートです。木造のアルヒル桟道橋付近にあるS字カーブをゆっくりと通過しながら、ゆるやかに流れるクウェー・ノイ川の眺めを楽しむことができます。',
  webpage: 'https://www.thailandtravel.or.jp/areainfo/kanchanaburi/',
  user_id: "1"
)

Place.create!(
  name: '気仙沼市 東日本大震災遺構･伝承館',
  image: File.open('./public/places/clouds-871718_1280.jpg'),
  content: '2011年3月11日発生の東日本大震災による大津波とその後の大規模な火災は、死者1,152人（震災関連死を含む。）、行方不明者214人に上る最大級の悲劇を気仙沼市にもたらしました。

  気仙沼市東日本大震災遺構・伝承館は、将来にわたり震災の記憶と教訓を伝え、警鐘を鳴らし続ける「目に見える証」として活用し、気仙沼市が目指す「津波死ゼロのまちづくり」に寄与することを目的としています。',
  webpage: 'https://www.kesennuma-memorial.jp/',
  user_id: "1"
)

Place.create!(
  name: '知覧特攻平和会館',
  image: File.open('./public/places/知覧特攻平和会館1.jpg'),
  content: 'この知覧特攻平和会館は、第二次世界大戦末期の沖縄戦において特攻という人類史上類のない作戦で、爆装した飛行機もろとも敵艦に体当たり攻撃をした陸軍特別攻撃隊員の遺品や関係資料を展示しています。

  　私たちは、特攻隊員や各地の戦場で戦死された多くの特攻隊員のご遺徳を静かに回顧しながら、再び戦闘機に爆弾を装着し敵の艦船に体当たりをするという命の尊さ・尊厳を無視した戦法は絶対とってはならない、また、このような悲劇を生み出す戦争も起こしてはならないという情念で、貴重な遺品や資料をご遺族の方々のご理解ご協力と、関係者の方々のご尽力によって展示しています。
  
  　特攻隊員達が二度と帰ることのない「必死」の出撃に臨んで念じたことは、再びこの国に平和と繁栄が甦ることであったろうと思います。
  
  　この地が出撃基地であったことから、特攻戦死された隊員の当時の真の姿、遺品、記録を後世に残し、恒久の平和を祈念することが基地住民の責務であろうと信じ、ここに知覧特攻平和会館を建設した次第であります。',
  webpage: 'http://www.chiran-tokkou.jp/',
  user_id: "1"
)

Place.create!(
  name: '大久野島',
  image: File.open('./public/places/rabbit-1174667_1280.jpg'),
  content: '竹原市の忠海港から船で約15分。周囲約4kmのこの小島は、かつて毒ガス工場があったことから「地図から消された島」と呼ばれていました。現在は国立公園に指定され、約900羽もの野生のうさぎが棲息することで知られており、国内外を問わず多くの観光客が癒しを求めて訪れています。',
  webpage: 'https://www.travel.co.jp/guide/article/30184/',
  user_id: "1"
)

Place.create!(
  name: '長崎原爆資料館・長崎市平和会館',
  image: File.open('./public/places/nagasaki-2120810_1280.jpg'),
  content: '当館は、長崎市の原爆被爆50周年記念事業の一つとして、被爆の実相と長崎市民の平和への願いを広く発信するため、1996年（平成8年）4月、それまで被爆資料を展示していた長崎国際文化会館を建て替えて開館しました。

  　ここでは、被爆の惨状を示す多くの資料を大切に保存・展示するとともに、原爆が投下されるに至った経過や核兵器開発の歴史など、ストーリー性のある展示を行っており、館外に向けても、県外での原爆展の開催や資料の貸し出しなどを行っています。また、館を拠点として、平和推進の取り組みや平和学習の支援も行っています。',
  webpage: 'https://nabmuseum.jp/',
  user_id: "1"
)