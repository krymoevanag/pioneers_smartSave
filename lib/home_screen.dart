import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Sidebar
          NavigationRail(
            selectedIndex: 0,
            labelType: NavigationRailLabelType.all,
            backgroundColor: Colors.grey.shade200,
            destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.home),
                label: Text('Home'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.account_balance_wallet),
                label: Text('Loans'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.payment),
                label: Text('Payments'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.people),
                label: Text('Borrowers'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.list_alt),
                label: Text('Loan Plans'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.category),
                label: Text('Loan Types'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.person),
                label: Text('Users'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.logout),
                label: Text('Logout'),
              ),
            ],
          ),

          // Main content
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Header
                  const Text(
                    "SACCO SHIELD Dashboard",
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),

                  // Summary cards
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _buildSummaryCard("Payments Today", "0.00", Colors.blue),
                      _buildSummaryCard("Borrowers", "2", Colors.green),
                      _buildSummaryCard("Active Loans", "2", Colors.amber),
                      _buildSummaryCard("Total Receivable", "6,289,600.00", Colors.purple),
                    ],
                  ),
                  const SizedBox(height: 30),

                  // Payment list
                  const Text(
                    "Payment List",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 10),

                  DataTable(
                    columns: const [
                      DataColumn(label: Text('#')),
                      DataColumn(label: Text('Loan Ref No')),
                      DataColumn(label: Text('Payee')),
                      DataColumn(label: Text('Amount')),
                      DataColumn(label: Text('Penalty')),
                      DataColumn(label: Text('Action')),
                    ],
                    rows: [
                      _buildPaymentRow("1", "80810623", "Nikhil", "3,600.00", "0.00"),
                      _buildPaymentRow("2", "80810623", "Ajay", "3,600.00", "0.00"),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryCard(String title, String value, Color color) {
    return Card(
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Container(
        width: 150,
        height: 100,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(color: Colors.white)),
            const Spacer(),
            Text(
              value,
              style: const TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  DataRow _buildPaymentRow(String id, String refNo, String payee, String amount, String penalty) {
    return DataRow(
      cells: [
        DataCell(Text(id)),
        DataCell(Text(refNo)),
        DataCell(Text(payee)),
        DataCell(Text(amount)),
        DataCell(Text(penalty)),
        DataCell(
          Row(
            children: [
              IconButton(icon: const Icon(Icons.edit, color: Colors.blue), onPressed: () {}),
              IconButton(icon: const Icon(Icons.delete, color: Colors.red), onPressed: () {}),
            ],
          ),
        ),
      ],
    );
  }
}
