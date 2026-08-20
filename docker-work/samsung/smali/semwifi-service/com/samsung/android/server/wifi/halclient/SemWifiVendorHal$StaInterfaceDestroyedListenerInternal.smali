.class Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$StaInterfaceDestroyedListenerInternal;
.super Ljava/lang/Object;
.source "SemWifiVendorHal.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StaInterfaceDestroyedListenerInternal"
.end annotation


# instance fields
.field private final mExternalListener:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;

.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;)V
    .registers 3

    .line 344
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$StaInterfaceDestroyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 345
    iput-object p2, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$StaInterfaceDestroyedListenerInternal;->mExternalListener:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;

    return-void
.end method


# virtual methods
.method public onDestroyed(Ljava/lang/String;)V
    .registers 4

    .line 350
    sget-object v0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 351
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$StaInterfaceDestroyedListenerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;

    invoke-static {v1}, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;->-$$Nest$fgetmIWifiStaIfaces(Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_15

    .line 353
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiVendorHal$StaInterfaceDestroyedListenerInternal;->mExternalListener:Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;

    if-eqz p0, :cond_14

    .line 354
    invoke-interface {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemHalDeviceManager$InterfaceDestroyedListener;->onDestroyed(Ljava/lang/String;)V

    :cond_14
    return-void

    :catchall_15
    move-exception p0

    .line 352
    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw p0
.end method
