import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../core/theme/text_theme.dart';

ListTile repositoriesListTile({
  required BuildContext context,
  required String name,
  String? description,
  required String url,
}) {
  return ListTile(
    title: Padding(
      padding: const EdgeInsets.only(top: 4.0),
      child: Container(
        height: 140,
          decoration: const BoxDecoration(
            color: Color(0xFF172026),
            borderRadius: BorderRadius.all(
              Radius.circular(12),
            ),
          ),

        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 40,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            height: 40,
                            width: 40,
                            decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Color(0xFF055AA3)),
                            child: Center(
                              child: SizedBox(
                                  width: 30,
                                  height: 30,
                                  child: SvgPicture.asset('assets/icon/repository.svg')),
                            )),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 12.0),
                            child: Text(
                              name,
                              style: darkTextTheme.headline5,
                            ),
                          ),
                        ),
                        
                      ],
                    ),
                  ),
            ),
          Expanded(
            child: Padding(
                            padding: const EdgeInsets.only(left: 5.0, right: 2),
                            child: Center(
                              child: SizedBox(
                                width: MediaQuery.of(context).size.width,
                                child: Text(
                                  description ?? 'Repositório sem Descrição',
                                  style: darkTextTheme.headline3,
                                  textAlign: TextAlign.start,
                                ),
                              ),
                            ),
                          ),
          ),

            InkWell(
              onTap: () async {
                if (await canLaunch(url)) {
                  await launch(url, forceSafariVC: true, forceWebView: true);
                } else {
                  throw 'Could not launch $url';
                }
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 43,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 20,
                        height: 20,
                        child: Center(
                          child: SvgPicture.asset('assets/icon/awesomegithub.svg'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Acessar código fonte',
                          style: darkTextTheme.headline3,
                        ),
                      ),
                      const Expanded(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
