import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  DateTime _selectedDate = DateTime.now(); // Initialize with the current date

  void _selectDate(DateTime date) {
    setState(() {
      _selectedDate = date;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calendar'),
      ),
      body: Column(
        children: [
          TableCalendar(
            selectedDate: _selectedDate,
            onDaySelected: _selectDate,
          ),
          SizedBox(height: 20),
          Text(
            'Selected Date: ${_selectedDate.year}-${_selectedDate.month.toString().padLeft(2, '0')}-${_selectedDate.day.toString().padLeft(2, '0')}',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

class TableCalendar extends StatelessWidget {
  final DateTime selectedDate;
  final Function(DateTime) onDaySelected;

  TableCalendar({required this.selectedDate, required this.onDaySelected});

  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      children: _buildCalendarRows(context),
    );
  }

  List<TableRow> _buildCalendarRows(BuildContext context) {
    List<TableRow> rows = [];
    DateTime currentDate = DateTime(selectedDate.year, selectedDate.month, 1);

    // Add header row
    rows.add(
      TableRow(
        children: [
          _buildHeaderCell(context, 'Sun'),
          _buildHeaderCell(context, 'Mon'),
          _buildHeaderCell(context, 'Tue'),
          _buildHeaderCell(context, 'Wed'),
          _buildHeaderCell(context, 'Thu'),
          _buildHeaderCell(context, 'Fri'),
          _buildHeaderCell(context, 'Sat'),
        ],
      ),
    );

    // Add days row
    while (currentDate.month == selectedDate.month) {
      List<Widget> cells = [];
      for (int i = 0; i < 7; i++) {
        if (currentDate.weekday == i + 1 ||
            (currentDate.weekday == 7 && i == 0)) {
          cells.add(
            _buildDayCell(context, currentDate),
          );
          currentDate = currentDate.add(Duration(days: 1));
        } else {
          cells.add(Container());
        }
      }
      rows.add(TableRow(children: cells));
    }

    return rows;
  }

  Widget _buildHeaderCell(BuildContext context, String label) {
    return Container(
      padding: EdgeInsets.all(8),
      color: Theme.of(context).primaryColor,
      child: Text(
        label,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  Widget _buildDayCell(BuildContext context, DateTime date) {
    bool isSelected = date.day == selectedDate.day;
    return InkWell(
      onTap: () => onDaySelected(date),
      child: Container(
        padding: EdgeInsets.all(8),
        color: isSelected ? Theme.of(context).colorScheme.secondary : null,
        child: Text(
          date.day.toString(),
          style: TextStyle(
            fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            color: isSelected ? Colors.white : null,
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: CalendarPage(),
  ));
}
