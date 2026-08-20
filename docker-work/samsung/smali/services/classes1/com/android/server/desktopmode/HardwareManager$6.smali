.class public Lcom/android/server/desktopmode/HardwareManager$6;
.super Landroid/content/BroadcastReceiver;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/HardwareManager;-><init>(Landroid/content/Context;Lcom/android/server/desktopmode/IStateManager;Lcom/android/server/desktopmode/SettingsHelper;Landroid/hardware/input/InputManager;Landroid/hardware/display/DisplayManager;Landroid/os/PowerManagerInternal;Lcom/android/server/wm/WindowManagerService;Lcom/samsung/android/vr/GearVrManagerInternal;Landroid/hardware/display/IDisplayManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/desktopmode/HardwareManager;


# direct methods
.method public constructor <init>(Lcom/android/server/desktopmode/HardwareManager;)V
    .registers 2

    .line 317
    iput-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 320
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.ACL_DISCONNECTED"

    .line 321
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_85

    const-string p1, "com.samsung.bluetooth.device.extra.DISCONNECTION_REASON"

    const/4 v0, 0x0

    .line 325
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 327
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    if-eqz p2, :cond_85

    .line 330
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p2

    if-eqz p2, :cond_85

    .line 332
    invoke-virtual {p2}, Landroid/bluetooth/BluetoothClass;->semGetPeripheralMinorClass()I

    move-result p2

    .line 333
    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz v0, :cond_50

    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "minorClass="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", reason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 333
    invoke-static {v0, v1}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_50
    const/16 v0, 0x13

    if-ne p1, v0, :cond_85

    const/16 p1, 0x580

    if-ne p2, p1, :cond_85

    .line 338
    iget-object p1, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p1}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmLock(Lcom/android/server/desktopmode/HardwareManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 339
    :try_start_5f
    iget-object p2, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fputmIsBtMouseDeepSleep(Lcom/android/server/desktopmode/HardwareManager;Z)V

    .line 340
    sget-boolean p2, Lcom/samsung/android/desktopmode/DesktopModeFeature;->DEBUG:Z

    if-eqz p2, :cond_73

    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "mIsBtMouseDeepSleep=true"

    invoke-static {p2, v0}, Lcom/android/server/desktopmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 341
    :cond_73
    iget-object p2, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p2}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$fgetmIsMouseConnected(Lcom/android/server/desktopmode/HardwareManager;)Z

    move-result p2

    if-nez p2, :cond_80

    .line 342
    iget-object p0, p0, Lcom/android/server/desktopmode/HardwareManager$6;->this$0:Lcom/android/server/desktopmode/HardwareManager;

    invoke-static {p0}, Lcom/android/server/desktopmode/HardwareManager;->-$$Nest$mupdateInputDeviceStatusLocked(Lcom/android/server/desktopmode/HardwareManager;)V

    .line 344
    :cond_80
    monitor-exit p1

    goto :goto_85

    :catchall_82
    move-exception p0

    monitor-exit p1
    :try_end_84
    .catchall {:try_start_5f .. :try_end_84} :catchall_82

    throw p0

    :cond_85
    :goto_85
    return-void
.end method
