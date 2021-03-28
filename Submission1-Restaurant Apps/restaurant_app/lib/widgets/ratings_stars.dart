part of 'widgets.dart';

class RatingStars extends StatelessWidget {
  final double rate;

  RatingStars(this.rate);
  @override
  Widget build(BuildContext context) {
    int totalStars = rate.round();
    return Row(
        children: List<Widget>.generate(
                5,
                (index) => Icon(
                    (index <= totalStars)
                        ? MdiIcons.star
                        : MdiIcons.starOutline,
                    size: 16,
                    color: Color(0xfff39c12))) +
            [
              SizedBox(
                width: 5,
              ),
              Text(
                rate.toString(),
                style: contentStyle.copyWith(fontSize: 12),
              )
            ]);
  }
}
