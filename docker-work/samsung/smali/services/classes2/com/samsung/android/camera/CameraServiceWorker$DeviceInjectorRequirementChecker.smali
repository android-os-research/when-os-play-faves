.class public Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;
.super Landroid/content/BroadcastReceiver;
.source "CameraServiceWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/CameraServiceWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DeviceInjectorRequirementChecker"
.end annotation


# static fields
.field public static final INTENT_ACTION_OPEN:Ljava/lang/String; = "intentfilter.samsung.vtcamerasetting.deviceinjector.option"

.field public static final INTENT_KEY_REQUIREMENT_MET:Ljava/lang/String; = "dex_and_camera"

.field public static final PACKAGE_NAME_VT_CAMERA_SETTING:Ljava/lang/String; = "com.samsung.android.vtcamerasettings"


# instance fields
.field public mDevicePresentMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public mDexMode:Z

.field public mExternalCameraPresent:Z

.field public mRequirementMet:Z

.field public final synthetic this$0:Lcom/samsung/android/camera/CameraServiceWorker;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDevicePresentMap(Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;)Landroid/util/ArrayMap;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDevicePresentMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmExternalCameraPresent(Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalCameraPresent:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmExternalCameraPresent(Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalCameraPresent:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$misExternalCameraPresent(Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->isExternalCameraPresent()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misPresentStatus(Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;I)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->isPresentStatus(I)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyDeviceInjectorAvailabilityChanged(Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->notifyDeviceInjectorAvailabilityChanged()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/CameraServiceWorker;)V
    .registers 5

    .line 692
    iput-object p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 686
    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDexMode:Z

    .line 687
    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalCameraPresent:Z

    .line 688
    iput-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mRequirementMet:Z

    .line 690
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDevicePresentMap:Landroid/util/ArrayMap;

    .line 693
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 694
    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 695
    sget-object v1, Landroid/app/UiModeManager;->SEM_ACTION_EXIT_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 696
    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {p1}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/os/Handler;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v0, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 697
    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->registerExternalCameraCallback()V

    return-void
.end method


# virtual methods
.method public final isExternalCameraPresent()Z
    .registers 7

    .line 729
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 732
    :goto_11
    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDevicePresentMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v2, v4, :cond_4d

    .line 736
    :try_start_19
    iget-object v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDevicePresentMap:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v4

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v4, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_31} :catch_32

    goto :goto_33

    :catch_32
    move v4, v1

    :goto_33
    const/4 v5, 0x2

    if-ne v4, v5, :cond_4a

    if-nez v3, :cond_49

    .line 742
    iget-object v3, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDevicePresentMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_47

    goto :goto_49

    :cond_47
    move v3, v1

    goto :goto_4a

    :cond_49
    :goto_49
    const/4 v3, 0x1

    :cond_4a
    :goto_4a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_4d
    return v3
.end method

.method public final isPresentStatus(I)Z
    .registers 3

    const/4 p0, -0x2

    const/4 v0, 0x1

    if-eq p1, p0, :cond_8

    if-eq p1, v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    return v0
.end method

.method public final notifyDeviceInjectorAvailabilityChanged()V
    .registers 6

    .line 762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceInjector requirement = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDexMode:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_16

    iget-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalCameraPresent:Z

    if-eqz v1, :cond_16

    move v1, v2

    goto :goto_17

    :cond_16
    move v1, v3

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " (Dex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDexMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", External = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalCameraPresent:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CameraService_worker"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mRequirementMet:Z

    iget-boolean v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDexMode:Z

    if-eqz v4, :cond_48

    iget-boolean v4, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalCameraPresent:Z

    if-eqz v4, :cond_48

    move v4, v2

    goto :goto_49

    :cond_48
    move v4, v3

    :goto_49
    if-eq v0, v4, :cond_7a

    const-string v0, "DeviceInjector requirement change. notify."

    .line 765
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDexMode:Z

    if-eqz v0, :cond_59

    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mExternalCameraPresent:Z

    if-eqz v0, :cond_59

    goto :goto_5a

    :cond_59
    move v2, v3

    :goto_5a
    iput-boolean v2, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mRequirementMet:Z

    .line 768
    new-instance v0, Landroid/content/Intent;

    const-string v1, "intentfilter.samsung.vtcamerasetting.deviceinjector.option"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.vtcamerasettings"

    .line 769
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 770
    iget-boolean v1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mRequirementMet:Z

    const-string v2, "dex_and_camera"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 771
    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object p0

    sget-object v1, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    :cond_7a
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 702
    monitor-enter p0

    .line 703
    :try_start_1
    sget-object p1, Landroid/app/UiModeManager;->SEM_ACTION_ENTER_DESKTOP_MODE:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDexMode:Z

    const-string p1, "CameraService_worker"

    .line 704
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DeviceInjector, dex mode = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->mDexMode:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-virtual {p0}, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->notifyDeviceInjectorAvailabilityChanged()V

    .line 706
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2a

    throw p1
.end method

.method public final registerExternalCameraCallback()V
    .registers 3

    .line 710
    iget-object v0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {v0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmContext(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    new-instance v1, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker$1;-><init>(Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;)V

    iget-object p0, p0, Lcom/samsung/android/camera/CameraServiceWorker$DeviceInjectorRequirementChecker;->this$0:Lcom/samsung/android/camera/CameraServiceWorker;

    invoke-static {p0}, Lcom/samsung/android/camera/CameraServiceWorker;->-$$Nest$fgetmHandler(Lcom/samsung/android/camera/CameraServiceWorker;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V

    return-void
.end method
