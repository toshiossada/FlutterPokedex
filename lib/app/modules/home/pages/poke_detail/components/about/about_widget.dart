import 'package:flutter/material.dart';
import 'package:md2_tab_indicator/md2_tab_indicator.dart';

class AboutWidget extends StatefulWidget {
  final Color corPokemon;

  const AboutWidget({Key key, this.corPokemon}) : super(key: key);

  @override
  _AboutWidgetState createState() => _AboutWidgetState();
}

class _AboutWidgetState extends State<AboutWidget>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(40),
          child: TabBar(
            controller: _tabController,
            labelStyle: TextStyle(
              fontWeight: FontWeight.w700,
            ),
            indicatorSize: TabBarIndicatorSize.label,
            labelColor: widget.corPokemon,
            unselectedLabelColor: Color(0xff5f6368),
            indicator: MD2Indicator(
                indicatorHeight: 3,
                indicatorColor: widget.corPokemon,
                indicatorSize: MD2IndicatorSize.normal),
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: 'Sobre',
              ),
              Tab(
                text: 'Evolução',
              ),
              Tab(
                text: 'Status',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
