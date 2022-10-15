import 'package:cbmes_v1/provider/global.provider.dart';
import 'package:cbmes_v1/ui/pages/manufacture/stageArea/add/widget/form/geometries.form.dart';
import 'package:cbmes_v1/ui/pages/manufacture/stageArea/add/widget/form/recipes.form.dart';
import 'package:cbmes_v1/ui/pages/manufacture/stageArea/add/widget/form/products.form.dart';
import 'package:cbmes_v1/ui/pages/manufacture/stageArea/add/widget/form/raw-materials.form.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DocumentPaperAdd extends StatefulWidget {
  @override
  _DocumentPaperAddState createState() => _DocumentPaperAddState();
}

class _DocumentPaperAddState extends State<DocumentPaperAdd> {
  @override
  Widget build(BuildContext context) {
    GlobalProvider g = Provider.of<GlobalProvider>(context);

    if (g.stageArea == 'raw-materials') {
      return RawMaterialsForm();
    }
    if (g.stageArea == 'recipes') {
      return RecipesForm();
    }
    if (g.stageArea == 'geometries') {
      return GeometriesForm();
    }
    if (g.stageArea == 'products') {
      return ProductsForm();
    } else {
      return Center(child: Text("Nenhum item encontrado."));
    }
  }
}
