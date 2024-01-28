import 'package:flutter/material.dart';

class AuthPageIndicatorWidget extends StatelessWidget {
  const AuthPageIndicatorWidget({
    required this.currentIndex,
    required this.pageCount,
    super.key,
  });

  final double currentIndex;
  final int pageCount;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 750),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          for (int i = 0; i < pageCount; i++) ...[
            if (0 != i)
              Expanded(
                child: SizedBox(
                  height: 45,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      const SizedBox(
                        height: 0.5,
                        width: double.infinity,
                        child: DecoratedBox(
                          position: DecorationPosition.foreground,
                          decoration: BoxDecoration(color: Colors.grey),
                        ),
                      ),
                      if (currentIndex >= i)
                        const Align(
                          alignment: Alignment.bottomCenter,
                          child: Icon(
                            Icons.done,
                            color: Colors.grey,
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            DecoratedBox(
              decoration: BoxDecoration(
                border:
                    currentIndex > i ? Border.all(color: Colors.green) : null,
                color: currentIndex == i
                    ? Colors.amber
                    : const Color.fromARGB(255, 236, 236, 236),
                shape: BoxShape.circle,
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text(
                  currentIndex > i ? '  ' : '${i + 1}',
                ),
              ),
            )
          ],
        ],
      ),
    );
  }
}
