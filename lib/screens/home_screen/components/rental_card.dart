import 'package:flutter/material.dart';

class RentalCard extends StatelessWidget {
  final int id, selectedId;
  final Function selectedCard;

  RentalCard({this.id, this.selectedId, this.selectedCard});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      color: id == selectedId ? Colors.deepPurple.shade50 : Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: BorderSide(
          color: id == selectedId
              ? Theme.of(context).primaryColor
              : Colors.transparent,
        ),
      ),
      child: InkWell(
        onTap: selectedCard,
        splashColor: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  id == selectedId
                      ? CircleAvatar(
                          backgroundColor: Theme.of(context).primaryColor,
                          radius: 14.0,
                          child: Icon(
                            Icons.done,
                          ),
                        )
                      : Container(),
                ],
              ),
              Text(
                'Conversion',
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '537',
                style: TextStyle(
                  fontSize: 35.0,
                ),
              ),
              SizedBox(
                height: 8.0,
              ),
              Text(
                '+22% of target',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Icon(
                  Icons.bar_chart,
                  size: 80.0,
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
