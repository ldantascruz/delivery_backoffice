import '../../models/payment_type_model.dart';

abstract class PaymentTypeRepository {
  Future<List<PaymentTypeModel>> findAll(bool? enabled);
  Future<void> save(PaymentTypeModel model);
  Future<PaymentTypeModel> getById(int id);
}