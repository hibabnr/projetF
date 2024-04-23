import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurvedEdgeWidget(
      child: Container(
        color: TColors.primary,

        child: SizedBox(
          height: 310,
          child: Stack(
            children: [
              Positioned(top: -150, right: -250, child: TCirularContainer(backgroundColor:TColors.textWhite.withOpacity(0.1))),
              Positioned(top: 100, right: -300, child: TCirularContainer(backgroundColor:TColors.textWhite.withOpacity(0.1))),
              child,
            ],
          ),
        ),
      ),
    );
  }
}

