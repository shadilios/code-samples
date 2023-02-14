class UiHelper{

    //A function that returns a Widget from any async function, so that I don't have to change all the functions that use it into async & also am able to return Widgets directly to my UI
    static Widget returnWidgetFromAsyncFunction(Future<Widget> asyncFunction) {
        return FutureBuilder(
          future: asyncFunction,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return snapshot.data!;
            } else {
              return const CircularProgressIndicator();
            }
          },
        );
      }

    // Now this function is returning a Widget instead of Future<Widget>
    static Widget _returnWidget(String url) {
    return returnWidgetFromAsyncFunction(_someAsyncFunction(url));
    
  }


}
