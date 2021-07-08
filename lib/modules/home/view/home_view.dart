import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viper_architecture_pattern/modules/home/entity/rest_response_model.dart';
import 'package:viper_architecture_pattern/modules/home/presenter/place_holder_presenter.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Consumer<PlaceHolderPresenter>(
          builder: (context, model, child) {
            return FutureBuilder<RestResponseModel>(
              future: model.fetchResponse(), // async work
              builder: (BuildContext context, AsyncSnapshot<RestResponseModel> snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.waiting: return Text('Loading....');
                  default:
                    if (snapshot.hasData)
                      return _IemView(restResponseModel: snapshot.data!,);
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
    Key? key,
    required this.restResponseModel
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('title : ${restResponseModel.title}');
  }
}
