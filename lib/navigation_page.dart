
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'router.gr.dart';

class NavigationPage extends StatelessWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.pageView(      
     routes: [      
        const HomeNavigatorRoute(),      
        const FavoriteRoute(),      
        ],     
     builder: (context, child, _) {    
      final tabsRouter = AutoTabsRouter.of(context);    
        return Scaffold(      
            
              body: child,      
              bottomNavigationBar: BottomNavigationBar(          
                    currentIndex: tabsRouter.activeIndex,          
                    onTap: tabsRouter.setActiveIndex ,      
                    items: [          
                       const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        const BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Favorites'),      
                    ],          
                  ),    
                  
                 
      ); },    
  );
  }
}
