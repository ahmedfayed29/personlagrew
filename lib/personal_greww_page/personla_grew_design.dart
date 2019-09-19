import 'package:flutter/material.dart';

class PersonalGrew extends StatefulWidget {
  @override
  _PersonalGrewState createState() => _PersonalGrewState();
}

class _PersonalGrewState extends State<PersonalGrew> {
  Widget iconPaddingWidth() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .04,
    );
  }

  Widget iconPaddingHeight() {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .04,
    );
  }

  Widget list() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .25,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          new Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width * .01,
              ),
              new CircleAvatar(
                child: new Icon(
                  Icons.done,
                  color: Colors.white,
                ),
                backgroundColor: Colors.green,
              ),
              Expanded(
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    SizedBox(
                      height: MediaQuery.of(context).size.height * .01,
                    ),
                    new Text(
                      'قاسم أمين',
                      style: TextStyle(color: Colors.grey.shade500, fontSize: 18),
                    ),
                    new Row(
                      textDirection: TextDirection.rtl,
                      children: <Widget>[
                        new Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        new Text(
                          'تحرير المرأة',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    new Text(
                      'شهد عالمنا الخامس حوادث انقراض كارثيه اطلق عليها العالماء اسم "الخمس الكبار". اختفاء الديناصورات , وقع منذ اربعة وستين مليون عام - علي سبيل المثال- يعتبر حدث... ',
                      maxLines: 2,
                      overflow: TextOverflow.visible,
                      textDirection: TextDirection.rtl,
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .01,
              ),
              iconPaddingWidth(),
              new Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15)
                ),
                width: MediaQuery.of(context).size.width * .30,
                height: MediaQuery.of(context).size.height * .20,
              ),
              iconPaddingWidth(),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * .01,
          ),
          Divider(
height: MediaQuery.of(context).size.height*.01,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: new Text(
          'النمو الشخصي',
          style: TextStyle(
              color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.green,
        centerTitle: true,
        actions: <Widget>[
          new Icon(Icons.arrow_forward_ios),
        ],
      ),
      body: Column(
        children: <Widget>[
          new Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .4,
            child: new Column(
              children: <Widget>[
                new Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .4,
                  color: Colors.grey.shade600,
                  child: new Column(
                    children: <Widget>[
                      iconPaddingHeight(),
                      new Row(
                        children: <Widget>[
                          iconPaddingWidth(),
                          new CircleAvatar(
                            child: new Icon(
                              Icons.done,
                              color: Colors.white,
                            ),
                            backgroundColor: Colors.green,
                          )
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * .12,
                      ),
                      new Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          iconPaddingWidth(),
                          new Text(
                            'ايلازابيث كولبريت',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                      new Row(
                        textDirection: TextDirection.rtl,
                        children: <Widget>[
                          iconPaddingWidth(),
                          new Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          iconPaddingWidth(),
                          new Text(
                            'الانقراض السادس',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * .01,
                            right: MediaQuery.of(context).size.width * .01),
                        child: new Text(
                          'شهد عالمنا الخامس حوادث انقراض كارثيه اطلق عليها العالماء اسم "الخمس الكبار". اختفاء الديناصورات , وقع منذ اربعة وستين مليون عام - علي سبيل المثال- يعتبر حدث... ',
                          maxLines: 2,
                          overflow: TextOverflow.visible,
                          textDirection: TextDirection.rtl,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          new Container(
            height: MediaQuery.of(context).size.height * .481,
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return list();
                }),
          )
        ],
      ),
    );
  }
}
