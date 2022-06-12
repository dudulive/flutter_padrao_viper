import 'package:flutter/material.dart';
import 'package:flutter_padrao_viper/modules/home/entity/rest_response_model.dart';
import 'package:flutter_padrao_viper/modules/home/presenter/place_holder_presenter.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Padrão V.I.P.E.R'),
      ),
      body: Center(
        child: Consumer<PlaceHolderPresenter>(
          builder: (context, model, child) {
            return FutureBuilder<RestResponseModel>(
              future: model.fetchResponse(), // async work
              builder: (BuildContext context, AsyncSnapshot<RestResponseModel> snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting: return Text('Carregando....');
                  default:
                    if (snapshot.hasData)
                      return _IemView(restResponseModel: snapshot.data,);
                    else
                    {
                      return Text('Error: ${snapshot.error}');
                    }
                }
              },
            );

          },
        ),
      ),
    );
  }
}

class _IemView extends StatelessWidget {

  final RestResponseModel restResponseModel;
  const _IemView({
    Key key,
    this.restResponseModel
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('titulo : ${restResponseModel.title}');
  }
}