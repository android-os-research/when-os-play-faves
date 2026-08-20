.class public Lcom/android/server/media/MediaRouterService$2;
.super Landroid/media/IAudioRoutesObserver$Stub;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Landroid/media/IAudioRoutesObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dispatchAudioRoutesChanged(Landroid/media/AudioRoutesInfo;)V
    .registers 8

    .line 197
    iget-object v0, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v0}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_7
    const-string v1, "BT"

    .line 199
    invoke-virtual {p1}, Landroid/media/AudioRoutesInfo;->getSetForcePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    iget-object v1, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-eqz v1, :cond_1f

    .line 200
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v1, v2}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fputmForceBluetoothA2dpOn(Lcom/android/server/media/MediaRouterService;Z)V

    goto :goto_30

    :cond_1f
    const-string v1, "OTHERS"

    .line 201
    invoke-virtual {p1}, Landroid/media/AudioRoutesInfo;->getSetForcePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    .line 202
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v1, v3}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fputmForceBluetoothA2dpOn(Lcom/android/server/media/MediaRouterService;Z)V

    :cond_30
    :goto_30
    const-string v1, "MediaRouterService"

    .line 204
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchAudioRoutesChanged setForcePath = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/media/AudioRoutesInfo;->getSetForcePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mForceBluetoothA2dpOn = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v5}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmForceBluetoothA2dpOn(Lcom/android/server/media/MediaRouterService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iget v1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iget-object v4, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget v5, v4, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    if-eq v1, v5, :cond_8e

    and-int/lit8 v1, v1, 0x13

    if-nez v1, :cond_86

    .line 211
    iget-object v1, p1, Landroid/media/AudioRoutesInfo;->bluetoothName:Ljava/lang/CharSequence;

    if-nez v1, :cond_6e

    iget-object v5, v4, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz v5, :cond_6d

    goto :goto_6e

    :cond_6d
    move v2, v3

    :cond_6e
    :goto_6e
    iput-boolean v2, v4, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    if-eqz v1, :cond_88

    if-eqz v2, :cond_88

    const-string v1, "MediaRouterService"

    const-string v2, "force restoreBluetoothA2dp()"

    .line 214
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRouterService;->restoreBluetoothA2dp()V

    .line 216
    iget-object v1, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {v1, v3}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fputmForceBluetoothA2dpOn(Lcom/android/server/media/MediaRouterService;Z)V

    goto :goto_88

    .line 220
    :cond_86
    iput-boolean v3, v4, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 222
    :cond_88
    :goto_88
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$2;->this$0:Lcom/android/server/media/MediaRouterService;

    iget p1, p1, Landroid/media/AudioRoutesInfo;->mainType:I

    iput p1, p0, Lcom/android/server/media/MediaRouterService;->mAudioRouteMainType:I

    .line 227
    :cond_8e
    monitor-exit v0

    return-void

    :catchall_90
    move-exception p0

    monitor-exit v0
    :try_end_92
    .catchall {:try_start_7 .. :try_end_92} :catchall_90

    throw p0
.end method
