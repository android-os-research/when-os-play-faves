.class Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$1;
.super Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification$Stub;
.source "SemHalDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V
    .registers 2

    .line 179
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-direct {p0}, Lcom/samsung/wifi/x/android/hidl/manager/V1_0/IServiceNotification$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onRegistration(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7

    const-string v0, "SemHalDeviceManager"

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ISehWifi registration notification: fqName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", name="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", preexisting="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 186
    :try_start_2d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$1;->this$0:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->-$$Nest$minitISehWifiIfNecessary(Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;)V

    .line 187
    monitor-exit p1

    return-void

    :catchall_34
    move-exception p0

    monitor-exit p1
    :try_end_36
    .catchall {:try_start_2d .. :try_end_36} :catchall_34

    throw p0
.end method
