import 'package:equatable/equatable.dart';

// Being able to compare objects in Dart often involves having
// to override the == operator as well as hashCode.
// Not only is it verbose and tedious, but failure to do so can lead
// to inefficient code which does not behave as we expect.
// By default, == returns true if two objects are the same instance.
// Later if we try to compare two instances of Person either in our
// production code or in our tests we will run into a problem.

abstract class Failure extends Equatable {
  // If the subclasses have some properties, they'll get passed to this
  // constructor so that Equatable can perform value comparison
  Failure([List properties = const <dynamic>[]]) : super(properties);
}
