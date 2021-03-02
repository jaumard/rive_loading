# example

```dart

RiveLoading(
    name: 'loading.riv',
    loopAnimation: 'Loading',
    endAnimation: 'Complete',
    isLoading: _isLoading,//boolean based loading
    onFinished: () {
      print('Finished');
    },
),
```

```dart

RiveLoading(
    name: 'loading.riv',
    loopAnimation: 'Loading',
    endAnimation: 'Complete',
    until: () => Future.delayed(Duration(seconds: 5)),//Future based loading
    onFinished: () {
      print('Finished');
    },
),
```