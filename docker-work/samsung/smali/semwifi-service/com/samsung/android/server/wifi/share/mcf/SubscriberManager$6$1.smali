.class Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6$1;
.super Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;
.source "SubscriberManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;)V
    .registers 2

    .line 612
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6$1;->this$1:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;

    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeepDeviceStateCallback(Lcom/samsung/android/mcf/McfDevice;I)V
    .registers 6

    .line 616
    invoke-super {p0, p1, p2}, Lcom/samsung/android/mcf/discovery/KeepDeviceCallback;->onKeepDeviceStateCallback(Lcom/samsung/android/mcf/McfDevice;I)V

    const-string v0, "WifiProfileShare.McfSub"

    if-nez p1, :cond_d

    const-string p0, "-ME--- onKeepDeviceStateCallback, mcf device is null"

    .line 618
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 621
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " onKeepDeviceStateCallback  status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_32

    .line 624
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6$1;->this$1:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$6;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$mremoveKeepDevice(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V

    :cond_32
    return-void
.end method
