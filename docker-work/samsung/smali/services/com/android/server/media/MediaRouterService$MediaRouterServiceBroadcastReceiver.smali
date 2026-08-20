.class public final Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MediaRouterService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaRouterService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MediaRouterServiceBroadcastReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRouterService;


# direct methods
.method public constructor <init>(Lcom/android/server/media/MediaRouterService;)V
    .registers 2

    .line 984
    iput-object p1, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 987
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2b

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 988
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 989
    iget-object p2, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    invoke-static {p2}, Lcom/android/server/media/MediaRouterService;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouterService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 990
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/media/MediaRouterService$MediaRouterServiceBroadcastReceiver;->this$0:Lcom/android/server/media/MediaRouterService;

    iput-object p1, p0, Lcom/android/server/media/MediaRouterService;->mActiveBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    if-eqz p1, :cond_23

    const/4 p1, 0x1

    goto :goto_24

    :cond_23
    const/4 p1, 0x0

    .line 991
    :goto_24
    iput-boolean p1, p0, Lcom/android/server/media/MediaRouterService;->mGlobalBluetoothA2dpOn:Z

    .line 992
    monitor-exit p2

    goto :goto_2b

    :catchall_28
    move-exception p0

    monitor-exit p2
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_28

    throw p0

    :cond_2b
    :goto_2b
    return-void
.end method
