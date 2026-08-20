.class Landroid/net/lowpan/LowpanScanner$1;
.super Landroid/net/lowpan/ILowpanNetScanCallback$Stub;
.source "LowpanScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanScanner;->startNetScan()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/lowpan/LowpanScanner;


# direct methods
.method constructor blacklist <init>(Landroid/net/lowpan/LowpanScanner;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/lowpan/LowpanScanner;

    .line 175
    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanNetScanCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onNetScanBeacon$0(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/net/lowpan/LowpanBeaconInfo;)V
    .registers 2
    .param p0, "callback"    # Landroid/net/lowpan/LowpanScanner$Callback;
    .param p1, "beaconInfo"    # Landroid/net/lowpan/LowpanBeaconInfo;

    .line 189
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanScanner$Callback;->onNetScanBeacon(Landroid/net/lowpan/LowpanBeaconInfo;)V

    return-void
.end method

.method static synthetic blacklist lambda$onNetScanFinished$1(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .registers 1
    .param p0, "callback"    # Landroid/net/lowpan/LowpanScanner$Callback;

    .line 211
    invoke-virtual {p0}, Landroid/net/lowpan/LowpanScanner$Callback;->onScanFinished()V

    return-void
.end method


# virtual methods
.method public blacklist onNetScanBeacon(Landroid/net/lowpan/LowpanBeaconInfo;)V
    .registers 5
    .param p1, "beaconInfo"    # Landroid/net/lowpan/LowpanBeaconInfo;

    .line 180
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    monitor-enter v0

    .line 181
    :try_start_3
    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v1}, Landroid/net/lowpan/LowpanScanner;->-$$Nest$fgetmCallback(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    move-result-object v1

    .line 182
    .local v1, "callback":Landroid/net/lowpan/LowpanScanner$Callback;
    iget-object v2, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v2}, Landroid/net/lowpan/LowpanScanner;->-$$Nest$fgetmHandler(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;

    move-result-object v2

    .line 183
    .local v2, "handler":Landroid/os/Handler;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_22

    .line 185
    if-nez v1, :cond_13

    .line 186
    return-void

    .line 189
    :cond_13
    new-instance v0, Landroid/net/lowpan/LowpanScanner$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, p1}, Landroid/net/lowpan/LowpanScanner$1$$ExternalSyntheticLambda0;-><init>(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/net/lowpan/LowpanBeaconInfo;)V

    .line 191
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v2, :cond_1e

    .line 192
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_21

    .line 194
    :cond_1e
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 196
    :goto_21
    return-void

    .line 183
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v1    # "callback":Landroid/net/lowpan/LowpanScanner$Callback;
    .end local v2    # "handler":Landroid/os/Handler;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method

.method public blacklist onNetScanFinished()V
    .registers 4

    .line 202
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    monitor-enter v0

    .line 203
    :try_start_3
    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v1}, Landroid/net/lowpan/LowpanScanner;->-$$Nest$fgetmCallback(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;

    move-result-object v1

    .line 204
    .local v1, "callback":Landroid/net/lowpan/LowpanScanner$Callback;
    iget-object v2, p0, Landroid/net/lowpan/LowpanScanner$1;->this$0:Landroid/net/lowpan/LowpanScanner;

    invoke-static {v2}, Landroid/net/lowpan/LowpanScanner;->-$$Nest$fgetmHandler(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;

    move-result-object v2

    .line 205
    .local v2, "handler":Landroid/os/Handler;
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_22

    .line 207
    if-nez v1, :cond_13

    .line 208
    return-void

    .line 211
    :cond_13
    new-instance v0, Landroid/net/lowpan/LowpanScanner$1$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1}, Landroid/net/lowpan/LowpanScanner$1$$ExternalSyntheticLambda1;-><init>(Landroid/net/lowpan/LowpanScanner$Callback;)V

    .line 213
    .local v0, "runnable":Ljava/lang/Runnable;
    if-eqz v2, :cond_1e

    .line 214
    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_21

    .line 216
    :cond_1e
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 218
    :goto_21
    return-void

    .line 205
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v1    # "callback":Landroid/net/lowpan/LowpanScanner$Callback;
    .end local v2    # "handler":Landroid/os/Handler;
    :catchall_22
    move-exception v1

    :try_start_23
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v1
.end method
