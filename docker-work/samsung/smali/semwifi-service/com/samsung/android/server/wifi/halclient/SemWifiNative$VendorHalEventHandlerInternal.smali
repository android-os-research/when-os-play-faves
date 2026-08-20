.class Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;
.super Ljava/lang/Object;
.source "SemWifiNative.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/halclient/SemWifiNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VendorHalEventHandlerInternal"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;


# direct methods
.method private constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V
    .registers 2

    .line 277
    iput-object p1, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;-><init>(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)V

    return-void
.end method


# virtual methods
.method public onDeath()V
    .registers 3

    .line 287
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_7
    const-string v0, "SemWifiNative"

    const-string v1, "Vendor HAL died. Cleaning up internal state."

    .line 288
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public onReady()V
    .registers 3

    .line 280
    iget-object p0, p0, Lcom/samsung/android/server/wifi/halclient/SemWifiNative$VendorHalEventHandlerInternal;->this$0:Lcom/samsung/android/server/wifi/halclient/SemWifiNative;

    invoke-static {p0}, Lcom/samsung/android/server/wifi/halclient/SemWifiNative;->-$$Nest$fgetmLock(Lcom/samsung/android/server/wifi/halclient/SemWifiNative;)Ljava/lang/Object;

    move-result-object p0

    monitor-enter p0

    :try_start_7
    const-string v0, "SemWifiNative"

    const-string v1, "Vendor HAL ready."

    .line 281
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v0
.end method
