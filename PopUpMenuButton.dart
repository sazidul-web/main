
PopupMenuButton<String>(
            icon: Icon(Icons.more_vert),
            onSelected: (String result) {
              print('Selected: $result');
            },
            itemBuilder: (BuildContext context) => [
              PopupMenuItem<String>(
                value: 'Copy',
                child: Text('Copy'),
              ),
              PopupMenuItem<String>(
                value: 'Cut',
                child: Text('Cut'),
              ),
              PopupMenuItem<String>(
                value: 'Sattings',
                child: Text('Sattings'),
              ),
              PopupMenuItem<String>(
                value: 'Log out',
                child: Text('Log out'),
              )
            ],
          ),