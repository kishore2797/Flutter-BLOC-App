abstract class ModelBase<T> {
  Map<String, dynamic> toJson(T t);

  T fromJson(Map<String, dynamic> json);
}