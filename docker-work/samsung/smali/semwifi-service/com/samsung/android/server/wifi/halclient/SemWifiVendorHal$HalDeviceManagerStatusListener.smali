.class public Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;
.super Ljava/lang/Object;
.source "SemWifiVendorHal.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$ManagerStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "HalDeviceManagerStatusListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;


# direct methods
.method public static synthetic $r8$lambda$esFWszcTr9cFM1VypRYLtKUUQCY(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;->lambda$onStatusChanged$0()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)V
    .registers 2

    .line 282
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStatusChanged$0()V
    .registers 5

    .line 286
    iget-object v0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-static {v0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->-$$Nest$fgetmHalDeviceManager(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager;->isReady()Z

    move-result v0

    .line 288
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->mVerboseLog:Lcom/samsung/android/server/wifi/util/SemWifiLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Device Manager onStatusChanged. isReady(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/samsung/android/server/wifi/util/SemWifiLog;->i(Ljava/lang/String;)V

    .line 290
    sget-object v1, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v1

    .line 291
    :try_start_25
    iget-object v2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-static {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->-$$Nest$fgetmDeathEventHandler(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;

    move-result-object v2

    .line 292
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_25 .. :try_end_2c} :catchall_3d

    if-eqz v2, :cond_3c

    if-eqz v0, :cond_34

    .line 295
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;->onReady()V

    goto :goto_3c

    .line 297
    :cond_34
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->-$$Nest$mclearState(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)V

    .line 298
    invoke-interface {v2}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;->onDeath()V

    :cond_3c
    :goto_3c
    return-void

    :catchall_3d
    move-exception p0

    .line 292
    :try_start_3e
    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p0
.end method


# virtual methods
.method public onStatusChanged(Z)V
    .registers 3

    .line 285
    iget-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->-$$Nest$fgetmHalEventHandler(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$HalDeviceManagerStatusListener;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
