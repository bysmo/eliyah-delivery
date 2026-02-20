import 'package:eliyah_express/api/api_client.dart';
import 'package:eliyah_express/features/order/domain/models/ignore_model.dart';
import 'package:eliyah_express/features/order/domain/models/parcel_cancellation_reasons_model.dart';
import 'package:eliyah_express/features/order/domain/models/update_status_body_model.dart';
import 'package:eliyah_express/interface/repository_interface.dart';

abstract class OrderRepositoryInterface implements RepositoryInterface {
  Future<dynamic> getCancelReasons();
  Future<dynamic> getCompletedOrderList(int offset);
  Future<dynamic> getLatestOrders();
  Future<dynamic> updateOrderStatus(UpdateStatusBodyModel updateStatusBody, List<MultipartBody> proofAttachment);
  Future<dynamic> getOrderDetails(int? orderID);
  Future<dynamic> acceptOrder(int? orderID);
  List<IgnoreModel> getIgnoreList();
  void setIgnoreList(List<IgnoreModel> ignoreList);
  Future<ParcelCancellationReasonsModel?> getParcelCancellationReasons({required bool isBeforePickup});
  Future<bool> addParcelReturnDate({required int orderId, required String returnDate});
  Future<bool> submitParcelReturn({required int orderId, required String orderStatus, required int returnOtp});
}