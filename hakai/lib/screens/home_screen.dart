import 'package:flutter/material.dart';
import '../widgets/token_card.dart';

class HomeScreen extends StatelessWidget {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        automaticallyImplyLeading: false, // Tắt nút back mặc định
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 280,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20)
                            )
                          ),
                          child: Column(
                            children: [
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.orange[100],
                                  child: Icon(Icons.account_balance_wallet, color: Colors.orange),
                                ),
                                title: Text('Ví 1'),
                                subtitle: Text('0x123...abc'),
                                onTap: () {
                                  // Cập nhật thông tin ví hiển thị
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.orange[100],
                                  child: Icon(Icons.account_balance_wallet, color: Colors.orange),
                                ),
                                title: Text('Ví 2'), 
                                subtitle: Text('0x456...def'),
                                onTap: () {
                                  // Cập nhật thông tin ví hiển thị
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                leading: CircleAvatar(
                                  backgroundColor: Colors.green[100],
                                  child: Icon(Icons.add, color: Colors.green),
                                ),
                                title: Text('Create a new wallet'),
                                onTap: () {
                                  // Xử lý tạo ví mới
                                  Navigator.pop(context);
                                },
                              ),
                              Divider(),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  IconButton(
                                    icon: Icon(Icons.edit, color: Colors.blue),
                                    onPressed: () {
                                      // Xử lý sửa ví
                                    },
                                  ),
                                  IconButton(
                                    icon: Icon(Icons.delete, color: Colors.red),
                                    onPressed: () {
                                      // Xử lý xóa ví
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }
                    );
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.orange[100],
                    child: Text('MW', style: TextStyle(color: Colors.orange)),
                  ),
                ),
                SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ví của tôi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '0x123...abc',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
                Spacer(),
                IconButton(
                  icon: Icon(Icons.qr_code_scanner),
                  onPressed: () {},
                ),
                PopupMenuButton(
                  icon: Icon(Icons.settings),
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      child: Row(
                        children: [
                          Icon(Icons.logout, color: Colors.red),
                          SizedBox(width: 8),
                          Text('Log Out'),
                        ],
                      ),
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed('/');
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            color: Colors.white,
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Text(
                  '\$1,573.00',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '+\$127.50',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                    SizedBox(width: 8),
                    Text(
                      '(+1.02%)',
                      style: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 138, 252, 142),
                      backgroundColor: const Color.fromARGB(255, 215, 215, 215),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: const Color.fromARGB(255, 255, 209, 141),
                          child: Icon(Icons.arrow_downward, color: Colors.orange),
                        ),
                        SizedBox(height: 8),
                        Text('Receive'),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.orange[100],
                          child: Icon(Icons.arrow_upward, color: Colors.orange),
                        ),
                        SizedBox(height: 8),
                        Text('Send'),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.orange[100],
                          child: Icon(Icons.swap_horiz, color: Colors.orange),
                        ),
                        SizedBox(height: 8),
                        Text('Swap'),
                      ],
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.orange[100],
                          child: Icon(Icons.shopping_cart, color: Colors.orange),
                        ),
                        SizedBox(height: 8),
                        Text('Buy'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 12),
          Expanded(
            child: Container(
              color: Colors.white,
              child: ListView(
                padding: EdgeInsets.all(16.0),
                children: [
                  TokenCard(tokenName: 'Solana', balance: '5.4', price: '23.00'),
                  TokenCard(tokenName: 'Ethereum', balance: '0.8', price: '1,550.00'),
                  TokenCard(tokenName: 'USDT', balance: '127.5', price: '1.00'),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey),
            label: 'Trang chủ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view, color: Colors.grey),
            label: 'Bộ sưu tập',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.swap_horiz, color: Colors.grey),
            label: 'Swap',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history, color: Colors.grey),
            label: 'Lịch sử',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.network_check, color: Colors.grey),
            label: 'Mạng lưới',
          ),
        ],
        onTap: (index) {
          if (index == 1) {
            Navigator.pushReplacementNamed(context, '/collection');
          }
        },
      ),
    );
  }
}
