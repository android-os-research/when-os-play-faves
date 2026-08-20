.class public Lcom/android/server/camera/CameraServiceProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "CameraServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/camera/CameraServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/camera/CameraServiceProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/camera/CameraServiceProxy;)V
    .registers 2

    .line 362
    iput-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 365
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    const/4 v0, -0x1

    .line 368
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_a0

    goto :goto_5c

    :sswitch_10
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    goto :goto_5c

    :cond_19
    const/4 v0, 0x6

    goto :goto_5c

    :sswitch_1b
    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_5c

    :cond_24
    const/4 v0, 0x5

    goto :goto_5c

    :sswitch_26
    const-string v1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2f

    goto :goto_5c

    :cond_2f
    const/4 v0, 0x4

    goto :goto_5c

    :sswitch_31
    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3a

    goto :goto_5c

    :cond_3a
    const/4 v0, 0x3

    goto :goto_5c

    :sswitch_3c
    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_45

    goto :goto_5c

    :cond_45
    const/4 v0, 0x2

    goto :goto_5c

    :sswitch_47
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_50

    goto :goto_5c

    :cond_50
    const/4 v0, 0x1

    goto :goto_5c

    :sswitch_52
    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5b

    goto :goto_5c

    :cond_5b
    const/4 v0, 0x0

    :goto_5c
    packed-switch v0, :pswitch_data_be

    goto :goto_9c

    .line 374
    :pswitch_60
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmLock(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 376
    :try_start_67
    iget-object p1, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmEnabledCameraUsers(Lcom/android/server/camera/CameraServiceProxy;)Ljava/util/Set;

    move-result-object p1

    if-nez p1, :cond_71

    monitor-exit v0

    return-void

    .line 377
    :cond_71
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {p0}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmLastUser(Lcom/android/server/camera/CameraServiceProxy;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$mswitchUserLocked(Lcom/android/server/camera/CameraServiceProxy;I)V

    .line 378
    monitor-exit v0

    goto :goto_9c

    :catchall_7c
    move-exception p0

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_67 .. :try_end_7e} :catchall_7c

    throw p0

    .line 382
    :pswitch_7f
    iget-object v0, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    invoke-static {v0}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$fgetmLock(Lcom/android/server/camera/CameraServiceProxy;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_86
    const-string v1, "device"

    .line 383
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/hardware/usb/UsbDevice;

    if-eqz p2, :cond_9b

    .line 385
    iget-object p0, p0, Lcom/android/server/camera/CameraServiceProxy$1;->this$0:Lcom/android/server/camera/CameraServiceProxy;

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 386
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 385
    invoke-static {p0, p2, p1}, Lcom/android/server/camera/CameraServiceProxy;->-$$Nest$mnotifyUsbDeviceHotplugLocked(Lcom/android/server/camera/CameraServiceProxy;Landroid/hardware/usb/UsbDevice;Z)Z

    .line 388
    :cond_9b
    monitor-exit v0

    :goto_9c
    return-void

    :catchall_9d
    move-exception p0

    monitor-exit v0
    :try_end_9f
    .catchall {:try_start_86 .. :try_end_9f} :catchall_9d

    throw p0

    :sswitch_data_a0
    .sparse-switch
        -0x7e02a835 -> :sswitch_52
        -0x7ad942ef -> :sswitch_47
        -0x5fdc9a67 -> :sswitch_3c
        -0x16fbb1bb -> :sswitch_31
        -0xc02da2e -> :sswitch_26
        0x3eac4465 -> :sswitch_1b
        0x42dd01f1 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_be
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_60
        :pswitch_7f
        :pswitch_60
        :pswitch_60
        :pswitch_60
        :pswitch_60
    .end packed-switch
.end method
