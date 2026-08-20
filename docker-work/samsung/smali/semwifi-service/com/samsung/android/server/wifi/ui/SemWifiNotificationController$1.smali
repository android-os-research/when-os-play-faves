.class Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "SemWifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V
    .registers 2

    .line 201
    iput-object p1, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 204
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string p2, "com.samsung.android.server.wifi.ui.PICK_WIFI_NETWORK"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_34

    const-string p2, "com.samsung.android.server.wifi.ui.USER_DISMISSED_NOTIFICATION"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2e

    .line 213
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "unhandled intent "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SemWifiNotificationController"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_39

    .line 207
    :cond_2e
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$mhandleUserDismissedAction(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V

    goto :goto_39

    .line 210
    :cond_34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController$1;->this$0:Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;->-$$Nest$mhandleSeeAllNetworksAction(Lcom/samsung/android/server/wifi/ui/SemWifiNotificationController;)V

    :goto_39
    return-void
.end method
