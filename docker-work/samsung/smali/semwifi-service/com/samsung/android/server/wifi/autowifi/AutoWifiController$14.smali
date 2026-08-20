.class Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$14;
.super Ljava/lang/Object;
.source "AutoWifiController.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/autowifi/Scanner$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;)V
    .registers 2

    .line 1862
    iput-object p1, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$14;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNetworkFound(Ljava/lang/String;)V
    .registers 3

    .line 1865
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$14;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/16 v0, 0x65

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onNetworkNotFound()V
    .registers 2

    .line 1870
    iget-object p0, p0, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController$14;->this$0:Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;

    const/16 v0, 0x66

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/autowifi/AutoWifiController;->sendMessage(I)V

    return-void
.end method
