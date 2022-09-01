@LazySingleton()
class AddOrderItems {
  final IOrderRepository _repository;

  AddOrderItems(this._repository);

  Future<Either<Failure, Unit>> call(List<OrderItem> items) async {
    return await _repository.addToOrders(items);
  }
}
