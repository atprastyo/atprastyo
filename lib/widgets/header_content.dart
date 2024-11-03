import 'package:flutter/material.dart';
import 'package:my_profile/core/utils/responsive.dart';

class HeaderContent extends StatelessWidget {
  const HeaderContent({super.key, this.blurRadius = 4});

  final double blurRadius;

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    final bool isMobile = Responsive.isMobile(context);
    return DecoratedBox(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(8),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(2, 4),
            blurRadius: 8,
          )
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              flex: isMobile ? 3 : 5,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 8 : 32.0,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    if (isMobile)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(88),
                        child: Image.asset(
                          path('images/profile_circle.png'),
                          height: 100,
                          width: 100,
                        ),
                      )
                    else
                      AnimatedContainer(
                        height: 168,
                        width: 168,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(88),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blue.shade200,
                              offset: const Offset(0, 1),
                              blurRadius: blurRadius,
                            )
                          ],
                        ),
                        duration: const Duration(milliseconds: 800),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(88),
                          child: Image.asset(
                            path('images/profile_circle.png'),
                            height: 160,
                            width: 160,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
            if (!isMobile) const SizedBox(width: 24.0),
            Expanded(
              flex: 8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SelectableText(
                    'Agus Tri Prastyo',
                    style: textTheme.displaySmall?.copyWith(
                      fontSize: isMobile ? 20 : null,
                      fontWeight: FontWeight.w700,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 2.0),
                  SelectableText(
                    'Software Engineer',
                    style: textTheme.headlineSmall?.copyWith(
                      fontSize: isMobile ? 16 : null,
                      fontWeight: FontWeight.w600,
                      color: Colors.blue.shade900,
                    ),
                  ),
                  if (!isMobile) const SizedBox(height: 6.0),
                  if (isMobile)
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.phone,
                              color: Colors.black87,
                              size: 18,
                            ),
                            const SizedBox(width: 4.0),
                            Expanded(
                              child: SelectableText(
                                '+6281939143915',
                                style: textTheme.titleSmall?.copyWith(
                                  height: 1.8,
                                  color: Colors.black,
                                  fontSize: 14.0,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.email_outlined,
                              color: Colors.black87,
                              size: 18,
                            ),
                            const SizedBox(width: 4.0),
                            Expanded(
                              child: SelectableText(
                                'atprastyo.com@gmail.com',
                                style: textTheme.bodyMedium?.copyWith(
                                  height: 1.4,
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    )
                  else
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Icon(Icons.phone, color: Colors.black87),
                        const SizedBox(width: 4.0),
                        SelectableText(
                          '+6281939143915',
                          style: textTheme.titleSmall?.copyWith(
                            height: 1.8,
                            color: Colors.black,
                          ),
                        ),
                        const SizedBox(width: 12.0),
                        const Icon(
                          Icons.email_outlined,
                          color: Colors.black87,
                        ),
                        const SizedBox(width: 4.0),
                        Expanded(
                          child: SelectableText(
                            'atprastyo.com@gmail.com',
                            style: textTheme.bodyMedium?.copyWith(
                              height: 1.4,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  SizedBox(height: isMobile ? 4 : 10.0),
                  SelectableText(
                    'Kedung losari, Tembelang, Jombang, East Java, Indonesia, 61452',
                    style: textTheme.bodyLarge?.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.blue.shade700,
                      fontSize: isMobile ? 12 : null,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
