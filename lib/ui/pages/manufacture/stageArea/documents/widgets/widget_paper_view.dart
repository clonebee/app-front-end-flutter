import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/ui/pages/manufacture/stageArea/documents/widgets/view/geometries.view.dart';
import 'package:cbmes_v1/ui/pages/manufacture/stageArea/documents/widgets/view/recipes.view.dart';
import 'package:cbmes_v1/ui/pages/manufacture/stageArea/documents/widgets/view/products.view.dart';
import 'package:cbmes_v1/ui/pages/manufacture/stageArea/documents/widgets/view/raw-materials.view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DocumentPaperView extends StatefulWidget {
  @override
  _DocumentPaperViewState createState() => _DocumentPaperViewState();
}

class _DocumentPaperViewState extends State<DocumentPaperView> {
  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);

    if (g.stageArea == 'raw-materials') {
      return RawMaterialsView();
    }
    if (g.stageArea == 'recipes') {
      return RecipesView();
    }
    if (g.stageArea == 'geometries') {
      return GeometriesView();
    }
    if (g.stageArea == 'products') {
      return ProductsView();
    } else {
      return Center(child: Text("Nenhum item encontrado."));
    }
  }
}
