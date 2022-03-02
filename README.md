# Basic Log in Page in Flutter



## About The Project

I have designed a simple log in page in this project. In this project, I've used features of TextField and ElevatedButton.




![app2_a](https://user-images.githubusercontent.com/79968953/156416090-8e92dfce-cc91-48f2-87c3-3d8ca67994db.PNG)

GestureDetector is a widget that detects gestures.

Attempts to recognize gestures that correspond to its non-null callbacks.

```dart
GestureDetector(
                  onTap: () {
                    print("help page");
                  },
                  child: Text(
                    "Any Help?",
                    style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth / 27,
                    ),
                  ),
                ),
```

