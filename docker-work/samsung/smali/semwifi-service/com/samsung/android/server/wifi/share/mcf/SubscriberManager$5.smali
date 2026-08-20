.class Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$5;
.super Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;
.source "SubscriberManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;)V
    .registers 2

    .line 442
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$5;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-direct {p0}, Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceDiscovered(Lcom/samsung/android/mcf/McfDevice;I)V
    .registers 5

    const-string p2, "WifiProfileShare.McfSub"

    if-nez p1, :cond_a

    const-string p0, "-ME--- onDeviceDiscovered, mcfDevice is null"

    .line 446
    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 449
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " delivered qos data"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager$5;->this$0:Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;

    invoke-static {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;->-$$Nest$mcallbackToClientForQos(Lcom/samsung/android/server/wifi/share/mcf/SubscriberManager;Lcom/samsung/android/mcf/McfDevice;)V

    return-void
.end method

.method public onDeviceRemoved(Lcom/samsung/android/mcf/McfDevice;I)V
    .registers 3

    const-string p0, "WifiProfileShare.McfSub"

    if-nez p1, :cond_a

    const-string p1, "-ME--- onDeviceRemoved, mcfDevice is null"

    .line 456
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 459
    :cond_a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " onDeviceRemoved"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
