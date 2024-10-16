
import 'package:flutter/material.dart';

import 'edit_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Stack(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Colors.orange,
                        width: 4.0, 
                      ),
                    ),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage('https://scontent.fktm1-1.fna.fbcdn.net/v/t39.30808-6/437671875_1633829140717838_4498262281753380743_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=6ee11a&_nc_ohc=9D0EF8ELyyoQ7kNvgGcb3Bs&_nc_zt=23&_nc_ht=scontent.fktm1-1.fna&_nc_gid=ApO25WL3jOo0_fLClFTgJf_&oh=00_AYB2iazGCiLd5Zl52MZ-1_BsRHCEsLLRXCJ4IqJh6aGA4Q&oe=671563B2') 
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 4,
                    child: ClipOval(
                      child: GestureDetector(
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          color: Colors.grey[200],
                          child: const Icon(
                            Icons.camera_alt,
                            color: Colors.black,
                            size: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Arbin Shrestha',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Divider(height: 0.9 , color: Colors.black12),
            const SizedBox(height: 10),
            const _ProfileRow(label: 'Name', value: 'Arbin Shrestha'),
            const _ProfileRow(label: 'DOB', value: '2002/10/26'),
            const _ProfileRow(label: 'Address', value: 'Shankhamul,Kathmandu'),
            const _ProfileRow(label: 'Mobile', value: '+977 9848096245'),
            const _ProfileRow(label: 'Email', value: 'arbinstha71@gmail.com'),
            
            const SizedBox(height: 10),
      
            ListTile(
              title: const Text('Registered Events'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                
              },
            ),
            ListTile(
              title: const Text('About Us'),
              trailing: const Icon(Icons.chevron_right),
              onTap: () {
                
              },
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                
              },
              child: GestureDetector(
                onTap: (){
                  
                },
                child: const Text(
                  'Logout',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ProfileRow extends StatelessWidget {
  final String label;
  final String value;

  const _ProfileRow({
    required this.label,
    required this.value, 
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(label),
      subtitle: Text(value),
      trailing: const Icon(Icons.chevron_right),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditProfileScreen(
              label: label,
              initialValue: value,
              onSave: (updatedValue) async {
                
              },
            ),
          ),
        );
      },
    );
  }
}
