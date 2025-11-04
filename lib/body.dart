import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  final Axis bodyBool;
  final VoidCallback axisHorizontalDirection;
  final VoidCallback axisVerticalDirection;

  const Body({
    super.key,
    required this.bodyBool,
    required this.axisVerticalDirection,
    required this.axisHorizontalDirection,
  });
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // String? img;
  // String? _display;

  List<Map<String, dynamic>> mezmureDawit = [
    {
      "id": 1,
      "ምዕራፍ": "ምዕራፍ 1",
      "text": """
1 ምስጉን : ነው : በክፉዎች : ምክር : ያልሄደ፥ በኃጢአተኞችም : መንገድ : ያልቆመ፥ በዋዘኞችም : ወንበር : ያልተቀመጠ።
2 ነገር ግን በእግዚአብሔር ሕግ ደስ ይለዋል፥ ሕጉንም በቀንና በሌሊት ያስባል።
3 እርሱም በውኃ ፈሳሾች ዳር እንደ ተተከለች፥ ፍሬዋን በየጊዜዋ እንደምትሰጥ፥ ቅጠልዋም እንደማይረግፍ ዛፍ ይሆናል፤ የሚሠራውም ሁሉ ይከናወንለታል።
4 ክፉዎች እንዲህ አይደሉም፥ ነገር ግን ነፋስ ጠርጎ እንደሚወስደው ትቢያ ናቸው።
5 ስለዚህ ክፉዎች በፍርድ፥ ኃጢአተኞችም በጻድቃን ማኅበር አይቆሙም።
6 እግዚአብሔር የጻድቃንን መንገድ ያውቃልና፥ የክፉዎች መንገድ ግን ትጠፋለች።
""",
    },
    {
      "id": 2,
      "ምዕራፍ": "ምዕራፍ 2",
      "text": """
1 አሕዛብ ለምን ያጕረመርማሉ? ወገኖችስ ለምን ከንቱን ይናገራሉ?
2 የምድር ነገሥታት ተነሡ፥ አለቆችም በእግዚአብሔርና በመሢሑ ላይ እንዲህ ሲሉ ተማከሩ።
3 ማሰርያቸውን እንበጥስ፥ ገመዳቸውንም ከእኛ እንጣል።
4 በሰማይ የሚኖር እርሱ ይሥቃል፥ ጌታም ይሣለቅባቸዋል።
5 በዚያን ጊዜ በቍጣው ይናገራቸዋል፥ በመዓቱም ያውካቸዋል።
6 እኔ ግን ንጉሤን ሾምሁ በተቀደሰው ተራራዬ በጽዮን ላይ።
7 ትእዛዙን እናገራለሁ፤ እግዚአብሔር አለኝ። አንተ ልጄ ነህ፥ እኔ ዛሬ ወለድሁህ።
8 ለምነኝ፥ አሕዛብን ለርስትህ የምድርንም ዳርቻ ለግዛትህ እሰጥሃለሁ።
9 በብረት በትር ትጠብቃቸዋለህ፥ እንደ ሸክላ ሠሪ ዕቃዎች ትቀጠቅጣቸዋለህ።
10 አሁንም እናንት ነገሥታት፥ ልብ አድርጉ፤ እናንት የምድር ፈራጆችም፥ ተገሠጹ።
11 ለእግዚአብሔር በፍርሃት ተገዙ፥ በረዓድም ደስ ይበላችሁ።
12 ተግሣጹን ተቀበሉ ጌታ እንዳይቈጣ እናንተም በመንገድ እንዳትጠፉ፥ ቍጣው ፈጥና ትነድዳለችና። በእርሱ የታመኑ ሁሉ የተመሰገኑ ናቸው።
""",
    },
    {
      "id": 3,
      "ምዕራፍ": "ምዕራፍ 3",
      "text": """
1 አቤቱ፥ የሚያስጨንቁኝ ምንኛ በዙ! በኔ ላይ የሚቆሙት ብዙ ናቸው።
2 ብዙ ሰዎች ነፍሴን። አምላክሽ አያድንሽም አልዋት።
3 አንተ ግን አቤቱ፥ መጠጊያዬ ነህ፥ ክብሬንና ራሴንም ከፍ ከፍ የምታደርገው አንተ ነህ።
4 በቃሌ ወደ እግዚአብሔር እጮሃለሁ ከተቀደሰ ተራራውም ይሰማኛል።
5 እኔ ተኛሁ አንቀላፋሁም፤ እግዚአብሔርም ደግፎኛልና ነቃሁ።
6 ከሚከብቡኝ ከአእላፍ ሕዝብ አልፈራም።
7 ተነሥ፥ አቤቱ፤ አምላኬ ሆይ፥ አድነኝ፤ አንተ የጠላቶቼን መንጋጋ መትተሃልና፥ የክፉዎችንም ጥርስ ሰብረሃልና።
8 ማዳን የእግዚአብሔር ነው፥ በረከትህም በሕዝብህ ላይ ነው።


""",
    },
    {
      "id": 4,
      "ምዕራፍ": "ምዕራፍ 4",
      "text": """
1 የጽድቄ አምላክ በጠራሁት ጊዜ መለሰልኝ፥ በጭንቀቴም አሰፋህልኝ፤ ማረኝ፥ ጸሎቴንም ስማ።
2 እናንት የሰው ልጆች፥ እስከ መቼ ድረስ ልባችሁን ታከብዳላችሁ?
3 እግዚአብሔር በጻድቁ እንደ ተገለጠ እወቁ፤ እግዚአብሔር ወደ እርሱ በተጣራሁ ጊዜ ይሰማኛል።
4 ተቈጡ፥ ነገር ግን ኃጢአትን አታድርጉ፤ በመኝታችሁ ሳላችሁ በልባችሁ አስቡ፤ ዝም በሉ።
5 የጽድቅን መሥዋዕት ሠዉ፥ በእግዚአብሔርም ታመኑ።
6 በጎውን ማን ያሳየናል? የሚሉ ብዙ ናቸው። አቤቱ፥ የፊትህ ብርሃን በላያችን ታወቀ።
7 በልቤ ደስታን ጨመርህ፤ ከስንዴ ፍሬና ከወይን ከዘይትም ይልቅ በዛ።
8 በሰላም እተኛለሁ አንቀላፋለሁም፤ አቤቱ፥ አንተ ብቻህን በእምነት አሳድረኸኛልና።


""",
    },

    {
      "id": 5,
      "ምዕራፍ": "ምዕራፍ 5",
      "text": """
1 አቤቱ፥ ቃሌን አድምጥ፥ ጩኸቴንም አስተውል፤
2 የልመናዬን ቃል አድምጥ፥ ንጉሤና አምላኬ ሆይ፥ አቤቱ፥ ወደ አንተ እጸልያለሁና።
3 በማለዳ ድምፄን ትሰማለህ፥ በማለዳ በፊትህ እቆማለሁ፥ እጠብቃለሁም።
4 አንተ በደልን የማትወድድ አምላክ ነህና፤ ክፉ ከአንተ ጋር አያድርም።
5 በከንቱ የሚመኩ በዓይኖችህ ፊት አይኖሩም፤ ክፉ አድራጊዎችን ሁሉ ጠላህ።
6 ሐሰትን የሚናገሩትን ታጠፋቸዋለህ፤ ደም አፍሳሹንና ሸንጋዩን ሰው እግዚአብሔር ይጸየፋል።
7 እኔ ግን በምሕረትህ ብዛት ወደ ቤትህ እገባለሁ፤ አንተን በመፍራት ወደ ቅድስናህ መቅደስ እሰግዳለሁ።
8 አቤቱ፥ ስለ ጠላቶቼ በጽድቅህ ምራኝ፤ መንገዴን በፊትህ አቅና።
9 በአፋቸው እውነት የለምና፥ ልባቸውም ከንቱ ነው፤ ጕሮሮአቸው የተከፈተ መቃብር ነው፤ በምላሳቸው ይሸነግላሉ።
10 አቤቱ፥ ፍረድባቸው፥ በምክራቸውም ይውደቁ፤ ስለ ክፋታቸውም ብዛት አሳድዳቸው፥ እነርሱ ዐምፀውብሃልና።
11 በአንተ የሚታመኑት ሁሉ ግን ደስ ይላቸዋል፤ ለዘላለሙ ደስ ይላቸዋል፥ እነርሱንም ትጠብቃለህ፤ ስምህንም የሚወድዱ ሁሉ በአንተ ይመካሉ።
12 አንተ ጻድቁን ትባርከዋለህና፤ አቤቱ፥ እንደ ጋሻ በሞገስ ከለልኸን።


""",
    },
    {
      "id": 6,
      "ምዕራፍ": "ምዕራፍ 6",
      "text": """



""",
    },
    {
      "id": 7,
      "ምዕራፍ": "ምዕራፍ 7",
      "text": """



""",
    },
    {
      "id": 8,
      "ምዕራፍ": "ምዕራፍ 8",
      "text": """



""",
    },
    {
      "id": 9,
      "ምዕራፍ": "ምዕራፍ 9",
      "text": """



""",
    },
    {
      "id": 10,
      "ምዕራፍ": "ምዕራፍ 10",
      "text": """



""",
    },
    {
      "id": 11,
      "ምዕራፍ": "ምዕራፍ 11",
      "text": """



""",
    },
    {
      "id": 12,
      "ምዕራፍ": "ምዕራፍ 12",
      "text": """



""",
    },
    {
      "id": 13,
      "ምዕራፍ": "ምዕራፍ 13",
      "text": """



""",
    },
    {
      "id": 14,
      "ምዕራፍ": "ምዕራፍ 15",
      "text": """



""",
    },
    {
      "id": 15,
      "ምዕራፍ": "ምዕራፍ 16",
      "text": """



""",
    },
    {
      "id": 17,
      "ምዕራፍ": "ምዕራፍ 17",
      "text": """



""",
    },
    {
      "id": 18,
      "ምዕራፍ": "ምዕራፍ 18",
      "text": """



""",
    },
    {
      "id": 19,
      "ምዕራፍ": "ምዕራፍ 19",
      "text": """



""",
    },
    {
      "id": 20,
      "ምዕራፍ": "ምዕራፍ 20",
      "text": """



""",
    },
  ];
  // Axis direction = Axis.vertical;

  @override
  Widget build(BuildContext context) {
    // void horizontalDirection() {
    //   setState(() {
    //     direction = Axis.horizontal;
    //   });
    // }

    // void verticalDirection() {
    //   direction = Axis.vertical;
    // }
    // Future<void> btn() async {
    //   FilePickerResult? result = await FilePicker.platform.pickFiles(
    //     type: FileType.image,
    //   );

    //   if (result != null && result.files.isNotEmpty) {
    //     PlatformFile file = result.files.first;

    //     setState(() {
    //       img = file.name;
    //       _display = file.path;
    //     });
    //   }
    //   print(img);
    // }
    print('${widget.bodyBool}kkkkkkkkkkkkkkk');
    return PageView.builder(
      scrollDirection: widget.bodyBool,
      itemCount: mezmureDawit.length,
      itemBuilder: (context, index) {
        return Container(
          child: Column(
            spacing: 15,
            children: [
              // Container(
              //   child: GestureDetector(
              //     onTap: widget.axisHorizontalDirection,
              //     child: Text('horizontal'),
              //   ),
              // ),
              Expanded(
                flex: 0,
                child: ListTile(
                  title: ListTile(
                    tileColor: Colors.brown,
                    title: Align(
                      alignment: AlignmentGeometry.center,
                      child: Text(
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),

                        '${mezmureDawit[index]['ምዕራፍ']}',
                      ),
                    ),
                  ),
                ),
              ),

              Expanded(
                child: ListTile(
                  title: Text(
                    style: TextStyle(),
                    '${mezmureDawit[index]['text']}',
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
