import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:e_commerce1/models/model.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import '../models/wishlistModel.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistLoading()) {
    on<WishlistEvent>((event, emit) {

          });
  }
}
