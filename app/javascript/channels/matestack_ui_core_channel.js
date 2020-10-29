import consumer from "./consumer"

consumer.subscriptions.create("MatestackUiCoreChannel", {
  received(data) {
    MatestackUiCore.matestackEventHub.$emit(data.event, data)
  }
});
