## 1. Research: Gap Widget Flutter

- Keywords:
    - Gap package flutter example
    - flutter gap in row
    - Gap package flutter github
    - gap flutter
    - Gap package flutter example github
    - flutter gap widget
    - space evenly in flutter
    - gap flutter
    - flutter gap in column
    - gap in list view
    - gap in slivers
    - gap flutter package
    - flutter space between column
- Video Title: Gap Instead of SizedBox in Rows, Columns, ListViews and Custom Scroll Views Like
  Slivers

## 2. Research: Competitors

**Flutter Videos/Articles**

- 65K: https://youtu.be/MqjCIITfCIA
- 148: https://youtu.be/O-SNu6cDsOQ
- https://medium.com/@lotfi-habbiche/unlocking-seamless-layouts-the-case-for-the-gap-package-in-flutter-9f910ffc0d4b
- https://medium.com/icnh/adding-a-gap-to-flutter-e4277715b6a5

**Android/Swift/React Videos**

- https://stackoverflow.com/questions/35665589/android-even-vertical-spacing-between-widgets
- https://developer.android.com/reference/android/widget/Space
- https://tutorialwing.com/android-space-tutorial-with-example/
- https://reactnative.dev/blog/2023/01/12/version-071#:~:text=With%20React%20Native%20you%20can,all%20items%20in%20a%20Flexbox.
- https://reactnative.dev/docs/flexbox
- https://reactnative.dev/docs/layout-props
- https://thevinaysingh.medium.com/flexbox-gap-in-react-native-d261f0f4fcd6
- https://developermemos.com/posts/spacing-vstack-hstack-swiftui/
- https://developer.apple.com/tutorials/swiftui-concepts/adjusting-the-space-between-views
- https://www.hackingwithswift.com/quick-start/swiftui/how-to-control-spacing-around-individual-views-using-padding
- 270: https://youtu.be/eBcJW_7Xv4Y
- 28K: https://youtu.be/dMP8rw45XiY
- 1.6K: https://youtu.be/S6bufNjIteQ
- 4.5K: https://youtu.be/qQTTYt9wnFY
- 7.7K: https://youtu.be/ANlxGi_Bp0o
- 2.6K: https://youtu.be/rP-CZO_wuxA

**Great Features**

- Flutter widgets for easily adding gaps inside Flex widgets such as Columns and Rows or scrolling
  views. It can easily replace SizedBox widget of flutter.
- It solves the common problem of adding a space (Padding or SizedBox) between widgets in a clean
  and safe manner.
- The gap package in Flutter provides a convenient and flexible way to add spacing between widgets.
  It offers several advantages over using traditional methods, such as manually defining SizedBox or
  Container widgets for spacing.

**Problems from Videos**

- NA

**Problems from Flutter Stackoverflow**

- NA

## 3. Video Structure

**Main Points / Purpose Of Lesson**

1. By watching this video, you will be able to use gap or space between flutter widgets inside flex
   or scroll views dynamically without using SizedBox.
2. Main points:
    - Basic Example of Gap Package
    - Gap in Column
    - Gap in Row
    - Gap in ListView
    - Gap in Slivers
    - MaxGap and Gap.expand
3. The gap package in Flutter is a collection of widgets that simplify the process of adding space
   between widgets. It provides a variety of widgets for adding space in different directions, such
   as horizontally, vertically, and in all directions. The gap package is particularly useful for
   creating layouts with consistent spacing and for aligning widgets in a clean and organized way.

**The Structured Main Content**

1. Add the latest version of Gap Package of flutter in pubspec.yaml file.
2. First, we are creating a `home_page.dart` file and inside it, we are creating five elevated
   buttons to show all example of gap package.
3. First, we have a `column_gap.dart` file. Inside it, we are comparing and the SizedBox, Padding
   and Margin with the Gap widget and we are replacing them all with the Gap Package. The UI is same
   but as like for padding, margin or SizedBox we have not to give height, width, top, bottom, left,
   right properties a value.

    - Gap widget has four properties. `mainAxisExtent`, `key`, `color` and `crossAxisExtent`.
    - `mainAxisExtent` is positional and required.
    - All other are optional.
    - If we want to change the `color` of gap, then we **must** the `crossAxisExtent` value.

    ```dart
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
            const Gap(10, color: Colors.amber, crossAxisExtent: 200),
            // const SizedBox(height:10),
            Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
            // const Gap(10),
            Container(
              padding: const EdgeInsets.only(top: 10),
              // margin: const EdgeInsets.only(top: 10),
              child: Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    ```

4. Inside `row_gap.dart` file, we are wrapping row with `SingleChildScrollView`. We using gap
   widget and also the changing the color of gap widget.
    ```dart
      Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Gap(10, color: Colors.black, crossAxisExtent: 200),
              Container(
                width: 200,
                height: 200,
                color: Colors.blue,
              ),
              const Gap(10, color: Colors.amber, crossAxisExtent: 200),
              Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
              const Gap(10, color: Colors.grey, crossAxisExtent: 200),
              Container(
                width: 200,
                height: 200,
                color: Colors.green,
              ),
              const Gap(10, color: Colors.pink, crossAxisExtent: 200),
            ],
          ),
        ),
      ),
    ```
5. Inside `list_view_gap.dart` file, we are using Gap widget for the `separatorBuilder` of
   ListView.separated.
    ```dart
          ListView.separated(
            itemCount: Colors.primaries.length,
            itemBuilder: (context, index) => Container(
              width: 100,
              height: 100,
              color: Colors.primaries[index],
            ),
            separatorBuilder: (context, index) =>
                const Gap(20, color: Colors.black),
          ),
    ```
6. Inside `slivers_gap.dart` file, we are using `SliverGap` inside the `slivers` property
   of `CustomScrollView`.<br/>
   `SliverGap` has three properties.
    - mainAxisExtent
    - key
    - color
    ```dart
      CustomScrollView(
        slivers: [
          const SliverGap(20),
          SliverToBoxAdapter(
            child: Container(height: 100, color: Colors.blue),
          ),
          const SliverGap(20, color: Colors.black),
          SliverToBoxAdapter(
            child: Container(height: 100, color: Colors.red),
          ),
          const SliverGap(20, color: Colors.yellowAccent),
          SliverToBoxAdapter(
            child: Container(height: 100, color: Colors.green),
          ),
        ],
      ),
    ```
7. Inside `max_gap.dart` file, `Gap`, `Gap.expand`, and `MaxGap` all together.

    - `Gap` widget is a simple way to add space between widgets. It takes a single
      parameter, `size`,
      which specifies the amount of space to add.
    - `MaxGap` allows us to specify a maximum size for the gap. The gap will expand to fill the
      available space up to its maximum size, but it will not exceed that size. This is useful for
      creating gaps that should not overflow their parent containers.
    - `Gap.Expand` widget will expand to fill the available space in its parent container. It will
      continue to expand until it reaches its maximum size, which is determined by the parent
      container's constraints. This is useful for creating gaps that should dynamically adjust their
      size to accommodate different screen sizes and layouts.

       ```dart
         Column(
           children: <Widget>[
             Gap.expand(20, color: Colors.red),
             Gap(80),
             Gap.expand(20, color: Colors.red),
             MaxGap(2000),
             Gap.expand(20, color: Colors.red),
             Row(
               children: <Widget>[
                 Gap(20, color: Colors.green, crossAxisExtent: 20),
                 Gap(50),
                 Gap(20, color: Colors.green, crossAxisExtent: 20),
               ],
             ),
             Gap.expand(200, color: Colors.blue),
           ],
         ),
       ```
