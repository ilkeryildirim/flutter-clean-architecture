enum Status { success, error, loading }

class Resource<T> {
  final Status status;
  final T? data;
  final String? message;

  Resource.success(this.data)
      : status = Status.success,
        message = null;

  Resource.error(this.message)
      : status = Status.error,
        data = null;

  Resource.loading()
      : status = Status.loading,
        data = null,
        message = null;

  bool get isSuccess => status == Status.success;

  bool get isError => status == Status.error;
}
