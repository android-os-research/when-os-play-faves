.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbService$Lifecycle;
    }
.end annotation


# static fields
.field public static final RELEASE_BUILD:Z

.field public static final SMART_SWITCH_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.easyMover"

.field public static final TAG:Ljava/lang/String; = "UsbService"


# instance fields
.field public final mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field public mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public mDexObserver:Landroid/util/sysfwutil/DexObserver;

.field public mHostManager:Lcom/android/server/usb/UsbHostManager;

.field public mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

.field public final mLock:Ljava/lang/Object;

.field public final mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field public mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

.field public mUsbUI:Lcom/android/server/usb/UsbUI;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeviceManager(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monStopUser(Lcom/android/server/usb/UsbService;Landroid/os/UserHandle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbService;->onStopUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSwitchUser(Lcom/android/server/usb/UsbService;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.build.type"

    .line 1346
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/usb/UsbService;->RELEASE_BUILD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 10

    .line 196
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    .line 174
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 198
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UsbHostNotification"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 200
    new-instance v1, Lcom/android/server/usb/UsbUI;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/android/server/usb/UsbUI;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mUsbUI:Lcom/android/server/usb/UsbUI;

    .line 202
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 204
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    .line 205
    new-instance v5, Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v5, p1, p0}, Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbService;)V

    iput-object v5, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 206
    new-instance v6, Lcom/android/server/usb/UsbPermissionManager;

    invoke-direct {v6, p1, p0}, Lcom/android/server/usb/UsbPermissionManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbService;)V

    iput-object v6, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 207
    new-instance v4, Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v4, p1}, Lcom/android/server/usb/UsbAlsaManager;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 209
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "sep_basic"

    const-string/jumbo v3, "sep_lite_new"

    .line 211
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_57

    .line 212
    new-instance v2, Landroid/util/sysfwutil/DexObserver;

    invoke-direct {v2}, Landroid/util/sysfwutil/DexObserver;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mDexObserver:Landroid/util/sysfwutil/DexObserver;

    :cond_57
    const-string v2, "android.hardware.usb.host"

    .line 215
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_66

    .line 216
    new-instance v1, Lcom/android/server/usb/UsbHostManager;

    invoke-direct {v1, p1, v4, v6}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 218
    :cond_66
    new-instance v1, Ljava/io/File;

    const-string v2, "/sys/class/android_usb"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7e

    .line 219
    new-instance v1, Lcom/android/server/usb/UsbDeviceManager;

    iget-object v7, p0, Lcom/android/server/usb/UsbService;->mDexObserver:Landroid/util/sysfwutil/DexObserver;

    move-object v2, v1

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbPermissionManager;Landroid/util/sysfwutil/DexObserver;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 222
    :cond_7e
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-nez v1, :cond_86

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v1, :cond_8d

    .line 223
    :cond_86
    new-instance v1, Lcom/android/server/usb/UsbPortManager;

    invoke-direct {v1, p1}, Lcom/android/server/usb/UsbPortManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 226
    :cond_8d
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v1, :cond_b1

    const-string v1, "UsbService"

    const-string v2, "At UsbService, UsbDeviceManager -> UsbHostRestrictor"

    .line 227
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v2, Lcom/android/server/usb/UsbHostRestrictor;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {v2, p1, v3}, Lcom/android/server/usb/UsbHostRestrictor;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    const-string v2, "At UsbService, UsbDeviceManager -> UsbMonitorImpl"

    .line 229
    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    new-instance v1, Lcom/android/server/usb/UsbMonitorImpl;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/usb/UsbMonitorImpl;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    :cond_b1
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    .line 235
    new-instance v2, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    .line 248
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const/16 p0, 0x3e8

    .line 249
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string p0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 250
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public static removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 1281
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAccessoryPackagesToPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7

    .line 507
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "packageNames"

    .line 508
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 509
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 515
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    .line 516
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->addAccessoryPackagesToDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_28

    .line 518
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_28
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 519
    throw p0
.end method

.method public addDevicePackagesToPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7

    .line 489
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "packageNames"

    .line 490
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 491
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 493
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 497
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    .line 498
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->addDevicePackagesToDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_28

    .line 500
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_28
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 501
    throw p0
.end method

.method public bootCompleted()V
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mUsbUI:Lcom/android/server/usb/UsbUI;

    if-eqz v0, :cond_7

    .line 314
    invoke-virtual {v0}, Lcom/android/server/usb/UsbUI;->bootCompleted()V

    .line 316
    :cond_7
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_e

    .line 317
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->bootCompleted()V

    .line 320
    :cond_e
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_15

    .line 321
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->bootCompleted()V

    .line 324
    :cond_15
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    if-eqz p0, :cond_1c

    .line 325
    invoke-virtual {p0}, Lcom/android/server/usb/UsbHostRestrictor;->bootCompleted()V

    :cond_1c
    return-void
.end method

.method public clearDefaults(Ljava/lang/String;I)V
    .registers 6

    .line 693
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 695
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 699
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 701
    :try_start_16
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_1f
    .catchall {:try_start_16 .. :try_end_1f} :catchall_23

    .line 703
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_23
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 704
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 29
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, "  dumpsys usb add-port \"matrix\" dual"

    const-string v5, "?"

    const-string v6, "  dumpsys usb reset"

    .line 1016
    iget-object v7, v0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v8, "UsbService"

    invoke-static {v7, v8, v2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v7

    if-nez v7, :cond_19

    return-void

    .line 1018
    :cond_19
    new-instance v7, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v15, "  "

    invoke-direct {v7, v2, v15}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1019
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v17

    .line 1021
    :try_start_24
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 1022
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    const-string v8, "--proto"

    .line 1025
    invoke-virtual {v2, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v3, :cond_4dd

    .line 1029
    array-length v8, v3

    if-eqz v8, :cond_4dd

    const/4 v8, 0x0

    aget-object v9, v3, v8

    const-string v10, "-a"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4dd

    if-eqz v2, :cond_46

    goto/16 :goto_4dd

    :cond_46
    const-string/jumbo v1, "set-port-roles"

    .line 1071
    aget-object v2, v3, v8

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_4f
    .catchall {:try_start_24 .. :try_end_4f} :catchall_570

    const-string v2, "device"

    const-string v11, "Invalid power role: "

    const-string/jumbo v12, "sink"

    const-string/jumbo v13, "source"

    const v8, -0x356f97e5    # -4731917.5f

    const/4 v9, 0x4

    const/16 v16, -0x1

    move-object/from16 v19, v11

    const-string v14, ""

    const/4 v11, 0x2

    const/4 v10, 0x1

    if-eqz v1, :cond_139

    :try_start_67
    array-length v1, v3

    if-ne v1, v9, :cond_139

    .line 1072
    aget-object v9, v3, v10

    .line 1074
    aget-object v1, v3, v11

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    if-eq v4, v8, :cond_91

    const v5, -0x1a426a07

    if-eq v4, v5, :cond_87

    const v5, 0x35de93

    if-eq v4, v5, :cond_7f

    goto :goto_99

    :cond_7f
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    move v1, v10

    goto :goto_9b

    :cond_87
    const-string v4, "no-power"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    move v1, v11

    goto :goto_9b

    :cond_91
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_99

    const/4 v1, 0x0

    goto :goto_9b

    :cond_99
    :goto_99
    move/from16 v1, v16

    :goto_9b
    if-eqz v1, :cond_bf

    if-eq v1, v10, :cond_bd

    if-eq v1, v11, :cond_bb

    .line 1085
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v3, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_b7
    .catchall {:try_start_67 .. :try_end_b7} :catchall_570

    .line 1276
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_bb
    const/4 v1, 0x0

    goto :goto_c0

    :cond_bd
    move v1, v11

    goto :goto_c0

    :cond_bf
    move v1, v10

    :goto_c0
    const/4 v4, 0x3

    .line 1089
    :try_start_c1
    aget-object v5, v3, v4

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v6, -0x4f94e1aa

    if-eq v4, v6, :cond_eb

    const v6, 0x30f5a8

    if-eq v4, v6, :cond_e1

    const v2, 0x7b007436

    if-eq v4, v2, :cond_d7

    goto :goto_f3

    :cond_d7
    const-string v2, "no-data"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    move v2, v11

    goto :goto_f5

    :cond_e1
    const-string v2, "host"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    const/4 v2, 0x0

    goto :goto_f5

    :cond_eb
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f3

    move v2, v10

    goto :goto_f5

    :cond_f3
    :goto_f3
    move/from16 v2, v16

    :goto_f5
    if-eqz v2, :cond_118

    if-eq v2, v10, :cond_119

    if-eq v2, v11, :cond_116

    .line 1100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid data role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_112
    .catchall {:try_start_c1 .. :try_end_112} :catchall_570

    .line 1276
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_116
    const/4 v11, 0x0

    goto :goto_119

    :cond_118
    move v11, v10

    .line 1103
    :cond_119
    :goto_119
    :try_start_119
    iget-object v8, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v8, :cond_56c

    const/4 v13, 0x0

    const-wide/16 v2, 0x0

    move v10, v1

    move-object v12, v7

    .line 1104
    invoke-virtual/range {v8 .. v13}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/Runnable;)V

    .line 1110
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1111
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v4, v7, v15}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_56c

    :cond_139
    move-object/from16 v1, v19

    const-wide/16 v8, 0x0

    const-string v8, "add-port"

    const/4 v9, 0x0

    .line 1114
    aget-object v11, v3, v9

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_146
    .catchall {:try_start_119 .. :try_end_146} :catchall_570

    const-string/jumbo v9, "ufp"

    const-string v11, "dfp"

    if-eqz v8, :cond_1ce

    :try_start_14d
    array-length v8, v3

    move-object/from16 v22, v6

    const/4 v6, 0x3

    if-ne v8, v6, :cond_1d0

    .line 1115
    aget-object v1, v3, v10

    const/4 v2, 0x2

    .line 1117
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_576

    goto :goto_184

    :sswitch_160
    const-string v2, "none"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_184

    const/4 v2, 0x3

    goto :goto_186

    :sswitch_16a
    const-string v2, "dual"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_184

    const/4 v2, 0x2

    goto :goto_186

    :sswitch_174
    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_184

    const/4 v2, 0x0

    goto :goto_186

    :sswitch_17c
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_184

    move v2, v10

    goto :goto_186

    :cond_184
    :goto_184
    move/from16 v2, v16

    :goto_186
    if-eqz v2, :cond_1b0

    if-eq v2, v10, :cond_1ae

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1ac

    const/4 v5, 0x3

    if-eq v2, v5, :cond_1aa

    .line 1131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v3, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1a6
    .catchall {:try_start_14d .. :try_end_1a6} :catchall_570

    .line 1276
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_1aa
    const/4 v8, 0x0

    goto :goto_1b1

    :cond_1ac
    const/4 v8, 0x3

    goto :goto_1b1

    :cond_1ae
    const/4 v8, 0x2

    goto :goto_1b1

    :cond_1b0
    move v8, v10

    .line 1134
    :goto_1b1
    :try_start_1b1
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_56c

    .line 1135
    invoke-virtual {v2, v1, v8, v7}, Lcom/android/server/usb/UsbPortManager;->addSimulatedPort(Ljava/lang/String;ILcom/android/internal/util/IndentingPrintWriter;)V

    .line 1136
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1137
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v7, v15}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v14, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_56c

    :cond_1ce
    move-object/from16 v22, v6

    :cond_1d0
    const-wide/16 v20, 0x0

    const-string v6, "connect-port"

    const/4 v8, 0x0

    .line 1140
    aget-object v10, v3, v8

    invoke-virtual {v6, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_313

    array-length v6, v3

    const/4 v8, 0x5

    if-ne v6, v8, :cond_313

    const/4 v6, 0x1

    .line 1141
    aget-object v4, v3, v6

    const/4 v6, 0x2

    .line 1143
    aget-object v8, v3, v6

    invoke-virtual {v8, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_1f4

    .line 1144
    aget-object v8, v3, v6

    invoke-static {v8}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_1f6

    :cond_1f4
    aget-object v8, v3, v6

    :goto_1f6
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v10, 0x1842e

    if-eq v6, v10, :cond_20d

    const v10, 0x1c3ff

    if-eq v6, v10, :cond_205

    goto :goto_215

    :cond_205
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_215

    const/4 v6, 0x0

    goto :goto_217

    :cond_20d
    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_215

    const/4 v6, 0x1

    goto :goto_217

    :cond_215
    :goto_215
    move/from16 v6, v16

    :goto_217
    if-eqz v6, :cond_23a

    const/4 v8, 0x1

    if-eq v6, v8, :cond_237

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_233
    .catchall {:try_start_1b1 .. :try_end_233} :catchall_570

    .line 1276
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_237
    const/4 v6, 0x3

    const/4 v10, 0x2

    goto :goto_23c

    :cond_23a
    const/4 v6, 0x3

    const/4 v10, 0x1

    .line 1156
    :goto_23c
    :try_start_23c
    aget-object v8, v3, v6

    invoke-virtual {v8, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_24b

    .line 1157
    aget-object v8, v3, v6

    invoke-static {v8}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_24d

    :cond_24b
    aget-object v8, v3, v6

    :goto_24d
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v9, -0x356f97e5    # -4731917.5f

    if-eq v6, v9, :cond_264

    const v9, 0x35de93

    if-eq v6, v9, :cond_25c

    goto :goto_26c

    :cond_25c
    invoke-virtual {v8, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26c

    const/4 v6, 0x1

    goto :goto_26e

    :cond_264
    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_26c

    const/4 v6, 0x0

    goto :goto_26e

    :cond_26c
    :goto_26c
    move/from16 v6, v16

    :goto_26e
    if-eqz v6, :cond_28f

    const/4 v8, 0x1

    if-eq v6, v8, :cond_28c

    .line 1165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_288
    .catchall {:try_start_23c .. :try_end_288} :catchall_570

    .line 1276
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_28c
    const/4 v1, 0x4

    const/4 v12, 0x2

    goto :goto_291

    :cond_28f
    const/4 v1, 0x4

    const/4 v12, 0x1

    .line 1169
    :goto_291
    :try_start_291
    aget-object v6, v3, v1

    invoke-virtual {v6, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a0

    .line 1170
    aget-object v6, v3, v1

    invoke-static {v6}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2a2

    :cond_2a0
    aget-object v6, v3, v1

    :goto_2a2
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v8, -0x4f94e1aa

    if-eq v1, v8, :cond_2bb

    const v8, 0x30f5a8

    if-eq v1, v8, :cond_2b1

    goto :goto_2c3

    :cond_2b1
    const-string v1, "host"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c3

    const/4 v8, 0x0

    goto :goto_2c5

    :cond_2bb
    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c3

    const/4 v8, 0x1

    goto :goto_2c5

    :cond_2c3
    :goto_2c3
    move/from16 v8, v16

    :goto_2c5
    if-eqz v8, :cond_2e8

    const/4 v1, 0x1

    if-eq v8, v1, :cond_2e5

    .line 1178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid data role: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2e1
    .catchall {:try_start_291 .. :try_end_2e1} :catchall_570

    .line 1276
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2e5
    const/16 v23, 0x2

    goto :goto_2ea

    :cond_2e8
    const/16 v23, 0x1

    .line 1181
    :goto_2ea
    :try_start_2ea
    iget-object v8, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v8, :cond_56c

    move-wide/from16 v1, v20

    move-object v9, v4

    move/from16 v11, v22

    move/from16 v13, v24

    move-object v6, v14

    move/from16 v14, v23

    move-object v3, v15

    move v15, v5

    move-object/from16 v16, v7

    .line 1182
    invoke-virtual/range {v8 .. v16}, Lcom/android/server/usb/UsbPortManager;->connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 1184
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1185
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v4, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v5, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v5, v7, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v4, v6, v1, v2}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_56c

    :cond_313
    move-object v6, v14

    move-object v5, v15

    move-wide/from16 v1, v20

    const-string v8, "disconnect-port"

    const/4 v9, 0x0

    .line 1188
    aget-object v10, v3, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_344

    array-length v8, v3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_344

    const/4 v8, 0x1

    .line 1189
    aget-object v3, v3, v8

    .line 1190
    iget-object v4, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v4, :cond_56c

    .line 1191
    invoke-virtual {v4, v3, v7}, Lcom/android/server/usb/UsbPortManager;->disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1192
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1193
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v3, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v4, v7, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v3, v6, v1, v2}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_56c

    :cond_344
    const-string/jumbo v8, "remove-port"

    const/4 v9, 0x0

    .line 1196
    aget-object v10, v3, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_372

    array-length v8, v3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_372

    const/4 v8, 0x1

    .line 1197
    aget-object v3, v3, v8

    .line 1198
    iget-object v4, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v4, :cond_56c

    .line 1199
    invoke-virtual {v4, v3, v7}, Lcom/android/server/usb/UsbPortManager;->removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1200
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1201
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v3, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v4, v7, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v3, v6, v1, v2}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_56c

    :cond_372
    const-string/jumbo v8, "reset"

    const/4 v9, 0x0

    .line 1204
    aget-object v10, v3, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_39d

    array-length v8, v3

    const/4 v9, 0x1

    if-ne v8, v9, :cond_39d

    .line 1205
    iget-object v3, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_56c

    .line 1206
    invoke-virtual {v3, v7}, Lcom/android/server/usb/UsbPortManager;->resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1207
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1208
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v3, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v4, v7, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v3, v6, v1, v2}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_56c

    :cond_39d
    const-string/jumbo v8, "set-contaminant-status"

    const/4 v9, 0x0

    .line 1211
    aget-object v10, v3, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3da

    array-length v8, v3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_3da

    const/4 v8, 0x1

    .line 1212
    aget-object v4, v3, v8

    const/4 v8, 0x2

    .line 1213
    aget-object v3, v3, v8

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1214
    iget-object v8, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v8, :cond_56c

    .line 1215
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-virtual {v8, v4, v3, v7}, Lcom/android/server/usb/UsbPortManager;->simulateContaminantStatus(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 1216
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1217
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v3, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v4, v7, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v3, v6, v1, v2}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_56c

    :cond_3da
    const-string/jumbo v8, "ports"

    const/4 v9, 0x0

    .line 1220
    aget-object v10, v3, v9

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3fd

    array-length v8, v3

    const/4 v9, 0x1

    if-ne v8, v9, :cond_3fd

    .line 1221
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_56c

    .line 1222
    new-instance v3, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v4, v7, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v3, v6, v1, v2}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_56c

    :cond_3fd
    const-string v1, "dump-descriptors"

    const/4 v2, 0x0

    .line 1225
    aget-object v2, v3, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_40f

    .line 1226
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, v7, v3}, Lcom/android/server/usb/UsbHostManager;->dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_56c

    :cond_40f
    const-string v0, "Dump current USB state or issue command:"

    .line 1228
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  ports"

    .line 1229
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  set-port-roles <id> <source|sink|no-power> <host|device|no-data>"

    .line 1230
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  add-port <id> <ufp|dfp|dual|none>"

    .line 1231
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>"

    .line 1232
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    (add ? suffix if mode, power role, or data role can be changed)"

    .line 1233
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  disconnect-port <id>"

    .line 1234
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  remove-port <id>"

    .line 1235
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  reset"

    .line 1236
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Example USB type C port role switch:"

    .line 1238
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dumpsys usb set-port-roles \"default\" source device"

    .line 1239
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1240
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Example USB type C port simulation with full capabilities:"

    .line 1241
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1242
    invoke-virtual {v7, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dumpsys usb connect-port \"matrix\" ufp? sink? device?"

    .line 1243
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dumpsys usb ports"

    .line 1244
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dumpsys usb disconnect-port \"matrix\""

    .line 1245
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dumpsys usb remove-port \"matrix\""

    .line 1246
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    move-object/from16 v0, v22

    .line 1247
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1248
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v1, "Example USB type C port where only power role can be changed:"

    .line 1249
    invoke-virtual {v7, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1250
    invoke-virtual {v7, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  dumpsys usb connect-port \"matrix\" dfp source? host"

    .line 1251
    invoke-virtual {v7, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1253
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v1, "Example USB OTG port where id pin determines function:"

    .line 1254
    invoke-virtual {v7, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1255
    invoke-virtual {v7, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  dumpsys usb connect-port \"matrix\" dfp source host"

    .line 1256
    invoke-virtual {v7, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1257
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1258
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v1, "Example USB device-only port:"

    .line 1259
    invoke-virtual {v7, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  dumpsys usb add-port \"matrix\" ufp"

    .line 1260
    invoke-virtual {v7, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  dumpsys usb connect-port \"matrix\" ufp sink device"

    .line 1261
    invoke-virtual {v7, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1263
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Example simulate contaminant status:"

    .line 1264
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dumpsys usb add-port \"matrix\" ufp"

    .line 1265
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dumpsys usb set-contaminant-status \"matrix\" true"

    .line 1266
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dumpsys usb set-contaminant-status \"matrix\" false"

    .line 1267
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1268
    invoke-virtual {v7}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v0, "Example USB device descriptors:"

    .line 1269
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dumpsys usb dump-descriptors -dump-short"

    .line 1270
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dumpsys usb dump-descriptors -dump-tree"

    .line 1271
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dumpsys usb dump-descriptors -dump-list"

    .line 1272
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  dumpsys usb dump-descriptors -dump-raw"

    .line 1273
    invoke-virtual {v7, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_56c

    :cond_4dd
    :goto_4dd
    move-object v5, v15

    if-eqz v2, :cond_4eb

    .line 1032
    new-instance v3, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v4, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v4, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_4fa

    :cond_4eb
    const-string v3, "USB MANAGER STATE (dumpsys usb):"

    .line 1034
    invoke-virtual {v7, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    new-instance v3, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v4, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v4, v7, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 1039
    :goto_4fa
    iget-object v4, v0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v4, :cond_508

    const-string v5, "device_manager"

    const-wide v8, 0x10b00000001L

    .line 1040
    invoke-virtual {v4, v3, v5, v8, v9}, Lcom/android/server/usb/UsbDeviceManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1042
    :cond_508
    iget-object v4, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v4, :cond_516

    const-string v5, "host_manager"

    const-wide v8, 0x10b00000002L

    .line 1043
    invoke-virtual {v4, v3, v5, v8, v9}, Lcom/android/server/usb/UsbHostManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1045
    :cond_516
    iget-object v4, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v4, :cond_525

    const-string/jumbo v5, "port_manager"

    const-wide v8, 0x10b00000003L

    .line 1046
    invoke-virtual {v4, v3, v5, v8, v9}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1048
    :cond_525
    iget-object v4, v0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    const-string v5, "alsa_manager"

    const-wide v8, 0x10b00000004L

    invoke-virtual {v4, v3, v5, v8, v9}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    if-nez v2, :cond_54f

    .line 1052
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    if-eqz v2, :cond_53a

    .line 1053
    invoke-virtual {v2, v1, v7}, Lcom/android/server/usb/UsbHostRestrictor;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 1055
    :cond_53a
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    if-eqz v2, :cond_541

    .line 1056
    invoke-virtual {v2, v7}, Lcom/android/server/usb/UsbMonitorImpl;->dump(Ljava/io/PrintWriter;)V

    .line 1058
    :cond_541
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mDexObserver:Landroid/util/sysfwutil/DexObserver;

    if-eqz v2, :cond_548

    .line 1059
    invoke-virtual {v2, v7}, Landroid/util/sysfwutil/DexObserver;->dump(Ljava/io/PrintWriter;)V

    .line 1061
    :cond_548
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mUsbUI:Lcom/android/server/usb/UsbUI;

    if-eqz v2, :cond_54f

    .line 1062
    invoke-virtual {v2, v1, v7}, Lcom/android/server/usb/UsbUI;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;)V

    .line 1066
    :cond_54f
    iget-object v1, v0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    const-string/jumbo v2, "settings_manager"

    const-wide v4, 0x10b00000005L

    invoke-virtual {v1, v3, v2, v4, v5}, Lcom/android/server/usb/UsbSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1068
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    const-string/jumbo v1, "permissions_manager"

    const-wide v4, 0x10b00000006L

    invoke-virtual {v0, v3, v1, v4, v5}, Lcom/android/server/usb/UsbPermissionManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1070
    invoke-virtual {v3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_56c
    .catchall {:try_start_2ea .. :try_end_56c} :catchall_570

    .line 1276
    :cond_56c
    :goto_56c
    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_570
    move-exception v0

    invoke-static/range {v17 .. v18}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1277
    throw v0

    nop

    :sswitch_data_576
    .sparse-switch
        0x1842e -> :sswitch_17c
        0x1c3ff -> :sswitch_174
        0x2f387c -> :sswitch_16a
        0x33af38 -> :sswitch_160
    .end sparse-switch
.end method

.method public enableContaminantDetection(Ljava/lang/String;Z)V
    .registers 6

    const-string/jumbo v0, "portId must not be null"

    .line 916
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 917
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 921
    :try_start_12
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz p0, :cond_19

    .line 922
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_1d

    .line 925
    :cond_19
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 926
    throw p0
.end method

.method public enableLimitPowerTransfer(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 14

    .line 895
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "portId must not be null. opID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 896
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 900
    :try_start_21
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_2e

    int-to-long v5, p3

    const/4 v8, 0x0

    move-object v3, p1

    move v4, p2

    move-object v7, p4

    .line 901
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usb/UsbPortManager;->enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_2d
    .catchall {:try_start_21 .. :try_end_2d} :catchall_3f

    goto :goto_3b

    :cond_2e
    const/4 p0, 0x1

    .line 904
    :try_start_2f
    invoke-interface {p4, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_32} :catch_33
    .catchall {:try_start_2f .. :try_end_32} :catchall_3f

    goto :goto_3b

    :catch_33
    move-exception p0

    :try_start_34
    const-string p1, "UsbService"

    const-string p2, "enableLimitPowerTransfer: Failed to call onOperationComplete"

    .line 906
    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3b
    .catchall {:try_start_34 .. :try_end_3b} :catchall_3f

    .line 910
    :goto_3b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_3f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 911
    throw p0
.end method

.method public enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z
    .registers 13

    .line 948
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableUsbData: portId must not be null. opId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableUsbData: callback must not be null. opId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 952
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 956
    :try_start_34
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_42

    const/4 v7, 0x0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 957
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usb/UsbPortManager;->enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)Z

    move-result p0
    :try_end_41
    .catchall {:try_start_34 .. :try_end_41} :catchall_54

    goto :goto_50

    :cond_42
    const/4 p0, 0x0

    const/4 p1, 0x1

    .line 961
    :try_start_44
    invoke-interface {p4, p1}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_47} :catch_48
    .catchall {:try_start_44 .. :try_end_47} :catchall_54

    goto :goto_50

    :catch_48
    move-exception p1

    :try_start_49
    const-string p2, "UsbService"

    const-string p3, "enableUsbData: Failed to call onOperationComplete"

    .line 963
    invoke-static {p2, p3, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_50
    .catchall {:try_start_49 .. :try_end_50} :catchall_54

    .line 967
    :goto_50
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_54
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 968
    throw p0
.end method

.method public enableUsbDataWhileDocked(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 12

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableUsbDataWhileDocked: portId must not be null. opId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableUsbDataWhileDocked: callback must not be null. opId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 980
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 984
    :try_start_34
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_40

    int-to-long v4, p2

    const/4 v7, 0x0

    move-object v3, p1

    move-object v6, p3

    .line 985
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usb/UsbPortManager;->enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_51

    goto :goto_4d

    :cond_40
    const/4 p0, 0x1

    .line 988
    :try_start_41
    invoke-interface {p3, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_44
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_44} :catch_45
    .catchall {:try_start_41 .. :try_end_44} :catchall_51

    goto :goto_4d

    :catch_45
    move-exception p0

    :try_start_46
    const-string p1, "UsbService"

    const-string p2, "enableUsbData: Failed to call onOperationComplete"

    .line 990
    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4d
    .catchall {:try_start_46 .. :try_end_4d} :catchall_51

    .line 994
    :goto_4d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_51
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 995
    throw p0
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 449
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_MTP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .registers 1

    .line 405
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz p0, :cond_9

    .line 406
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object p0

    return-object p0

    :cond_9
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentFunctions()J
    .registers 4

    .line 735
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 744
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentUsbSpeed()I
    .registers 4

    .line 765
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v1, "DeviceManager must not be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 770
    :try_start_13
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentUsbSpeed()I

    move-result p0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    .line 772
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 773
    throw p0
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .registers 2

    .line 352
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz p0, :cond_7

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostManager;->getDeviceList(Landroid/os/Bundle;)V

    :cond_7
    return-void
.end method

.method public getGadgetHalVersion()I
    .registers 4

    .line 778
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v1, "DeviceManager must not be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 783
    :try_start_13
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->getGadgetHalVersion()I

    move-result p0
    :try_end_19
    .catchall {:try_start_13 .. :try_end_19} :catchall_1d

    .line 785
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 786
    throw p0
.end method

.method public getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;
    .registers 2

    .line 193
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    return-object p0
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .registers 5

    const-string/jumbo v0, "portId must not be null"

    .line 855
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 856
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 858
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 860
    :try_start_12
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz p0, :cond_1a

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_12 .. :try_end_1a} :catchall_1e

    .line 862
    :cond_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :catchall_1e
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    throw p0
.end method

.method public getPorts()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/usb/ParcelableUsbPort;",
            ">;"
        }
    .end annotation

    .line 830
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 834
    :try_start_c
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;
    :try_end_e
    .catchall {:try_start_c .. :try_end_e} :catchall_31

    if-nez p0, :cond_14

    .line 849
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    .line 837
    :cond_14
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object p0

    .line 839
    array-length v2, p0

    .line 840
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1f
    if-ge v4, v2, :cond_2d

    .line 842
    aget-object v5, p0, v4

    invoke-static {v5}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_31

    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .line 849
    :cond_2d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :catchall_31
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 850
    throw p0
.end method

.method public getScreenUnlockedFunctions()J
    .registers 4

    .line 758
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 760
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;
    .registers 2

    .line 186
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object p0

    return-object p0
.end method

.method public getUsbHalVersion()I
    .registers 4

    .line 931
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 935
    :try_start_c
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz p0, :cond_18

    .line 936
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->getUsbHalVersion()I

    move-result p0
    :try_end_14
    .catchall {:try_start_c .. :try_end_14} :catchall_1d

    .line 941
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_18
    const/4 p0, -0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 942
    throw p0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .registers 6

    .line 664
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 667
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 669
    :try_start_10
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbUserPermissionManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1b

    .line 671
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 672
    throw p0
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 6

    .line 651
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 652
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 654
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 656
    :try_start_10
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbUserPermissionManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_1b

    .line 658
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1b
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 659
    throw p0
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .registers 7

    .line 608
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 609
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 610
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 612
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 614
    :try_start_10
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1c

    .line 616
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1c
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 617
    throw p0
.end method

.method public hasDefaults(Ljava/lang/String;I)Z
    .registers 6

    .line 677
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 679
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 683
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 685
    :try_start_16
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->hasDefaults(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_20
    .catchall {:try_start_16 .. :try_end_20} :catchall_24

    .line 687
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_24
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 688
    throw p0
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .registers 8

    .line 594
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 595
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 596
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 598
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 600
    :try_start_10
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_10 .. :try_end_18} :catchall_1c

    .line 602
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_1c
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 603
    throw p0
.end method

.method public final isAllowedPackage()Z
    .registers 6

    .line 1351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1352
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isAllowedPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UsbService"

    invoke-static {v2, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "android"

    invoke-virtual {p0, v3, v1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_33

    move p0, v1

    goto :goto_34

    :cond_33
    const/4 p0, 0x0

    .line 1356
    :goto_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " ret "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    sget-boolean v3, Lcom/android/server/usb/UsbService;->RELEASE_BUILD:Z

    if-eq v3, v1, :cond_61

    .line 1358
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skip signature verification, ret"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p0, v1

    :cond_61
    const/16 v3, 0x3e8

    if-ne v0, v3, :cond_66

    goto :goto_67

    :cond_66
    move v1, p0

    .line 1363
    :goto_67
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isAllowedPackage, ret "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .registers 4

    .line 730
    invoke-virtual {p0}, Lcom/android/server/usb/UsbService;->getCurrentFunctions()J

    move-result-wide v0

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide p0

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_11

    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public isSupportDexRestrict()Z
    .registers 4

    .line 1300
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1301
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    if-eqz p0, :cond_11

    .line 1302
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isSupportDexRestrict()Z

    move-result p0

    return p0

    :cond_11
    const/4 p0, 0x0

    return p0
.end method

.method public isUsbBlocked()Z
    .registers 1

    .line 1293
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    if-eqz p0, :cond_9

    .line 1294
    invoke-static {}, Lcom/android/server/usb/UsbHostRestrictor;->isUsbBlocked()Z

    move-result p0

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public final onStopUser(Landroid/os/UserHandle;)V
    .registers 2

    .line 283
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->remove(Landroid/os/UserHandle;)V

    return-void
.end method

.method public final onSwitchUser(I)V
    .registers 5

    .line 260
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 261
    :try_start_3
    iput p1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    .line 266
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 267
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    .line 268
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_16

    .line 269
    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbHostManager;->setCurrentUserSettings(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    .line 271
    :cond_16
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz p0, :cond_1d

    .line 272
    invoke-virtual {p0, p1, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentUser(ILcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    .line 274
    :cond_1d
    monitor-exit v0

    return-void

    :catchall_1f
    move-exception p0

    monitor-exit v0
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_1f

    throw p0
.end method

.method public onUnlockUser(I)V
    .registers 3

    .line 333
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_7

    .line 334
    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbHostManager;->onUnlockUser(I)V

    .line 337
    :cond_7
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz p0, :cond_e

    .line 338
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->onUnlockUser(I)V

    :cond_e
    return-void
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .registers 10

    .line 422
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_60

    .line 423
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 424
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 425
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 427
    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->clearCallingIdentity()J

    move-result-wide v3

    .line 429
    :try_start_14
    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_5b

    .line 430
    :try_start_17
    iget-object v6, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v7, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v6, v2, v7}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v6

    if-eqz v6, :cond_30

    .line 431
    iget-object v6, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {v6, p1, p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserPermissionManager;II)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    monitor-exit v5
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_58

    .line 439
    invoke-static {v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :cond_30
    :try_start_30
    const-string p0, "UsbService"

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as user is not active."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_30 .. :try_end_54} :catchall_58

    .line 439
    invoke-static {v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->restoreCallingIdentity(J)V

    goto :goto_60

    :catchall_58
    move-exception p0

    .line 437
    :try_start_59
    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_58

    :try_start_5a
    throw p0
    :try_end_5b
    .catchall {:try_start_5a .. :try_end_5b} :catchall_5b

    :catchall_5b
    move-exception p0

    .line 439
    invoke-static {v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->restoreCallingIdentity(J)V

    .line 440
    throw p0

    :cond_60
    :goto_60
    const/4 p0, 0x0

    return-object p0
.end method

.method public openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 14

    .line 369
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_62

    if-eqz p1, :cond_62

    .line 371
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 372
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 373
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 375
    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->clearCallingIdentity()J

    move-result-wide v8

    .line 377
    :try_start_17
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_5d

    .line 378
    :try_start_1a
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v2

    if-eqz v2, :cond_32

    .line 379
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v4

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserPermissionManager;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    move-object v1, p0

    goto :goto_55

    :cond_32
    const-string p0, "UsbService"

    .line 382
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot open "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as user is not active."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :goto_55
    monitor-exit v10
    :try_end_56
    .catchall {:try_start_1a .. :try_end_56} :catchall_5a

    .line 387
    invoke-static {v8, v9}, Landroid/hardware/usb/IUsbManager$Stub;->restoreCallingIdentity(J)V

    goto :goto_62

    :catchall_5a
    move-exception p0

    .line 385
    :try_start_5b
    monitor-exit v10
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    :try_start_5c
    throw p0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception p0

    .line 387
    invoke-static {v8, v9}, Landroid/hardware/usb/IUsbManager$Stub;->restoreCallingIdentity(J)V

    .line 388
    throw p0

    :cond_62
    :goto_62
    return-object v1
.end method

.method public removeAccessoryPackagesFromPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7

    .line 543
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "packageNames"

    .line 544
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 545
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 551
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    .line 552
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeAccessoryPackagesFromDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_28

    .line 554
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_28
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 555
    throw p0
.end method

.method public removeDevicePackagesFromPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 7

    .line 525
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "packageNames"

    .line 526
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 527
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 533
    :try_start_1b
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    .line 534
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeDevicePackagesFromDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_24
    .catchall {:try_start_1b .. :try_end_24} :catchall_28

    .line 536
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_28
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    throw p0
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 12

    .line 637
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 638
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 639
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 641
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 643
    :try_start_10
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1e

    .line 645
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    throw p0
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .registers 12

    .line 622
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 623
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 624
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 626
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 628
    :try_start_10
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_1e

    .line 630
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1e
    move-exception p0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 631
    throw p0
.end method

.method public resetUsbGadget()V
    .registers 4

    .line 791
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v1, "DeviceManager must not be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 796
    :try_start_13
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->resetUsbGadget()V
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_1c

    .line 798
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 799
    throw p0
.end method

.method public resetUsbPort(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V
    .registers 7

    .line 805
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetUsbPort: portId must not be null. opId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 807
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetUsbPort: callback must not be null. opId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 809
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 814
    :try_start_36
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz p0, :cond_3e

    .line 815
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/usb/UsbPortManager;->resetUsbPort(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_3d
    .catchall {:try_start_36 .. :try_end_3d} :catchall_50

    goto :goto_4c

    :cond_3e
    const/4 p0, 0x1

    .line 818
    :try_start_3f
    invoke-interface {p3, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_42
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_42} :catch_43
    .catchall {:try_start_3f .. :try_end_42} :catchall_50

    goto :goto_4c

    :catch_43
    move-exception p0

    :try_start_44
    const-string p1, "UsbService"

    const-string/jumbo p2, "resetUsbPort: Failed to call onOperationComplete"

    .line 820
    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4c
    .catchall {:try_start_44 .. :try_end_4c} :catchall_50

    .line 824
    :goto_4c
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_50
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 825
    throw p0
.end method

.method public restrictUsbHostInterface(ZLjava/lang/String;)I
    .registers 5

    .line 1309
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2a

    .line 1313
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mHostRestrictor:Lcom/android/server/usb/UsbHostRestrictor;

    if-eqz p0, :cond_28

    .line 1314
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "restrictUsbHostInterface: enable="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UsbService"

    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    invoke-static {p1, p2}, Lcom/android/server/usb/UsbHostRestrictor;->restrictUsbHostInterface(ZLjava/lang/String;)I

    move-result p0

    return p0

    :cond_28
    const/4 p0, -0x1

    return p0

    .line 1310
    :cond_2a
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "no permission to call restrictUsbHostInterface()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public semGetDataRoleStatus()I
    .registers 4

    const-string v0, "UsbService"

    const-string/jumbo v1, "semGetDataRoleStatus++"

    .line 1414
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-nez p0, :cond_14

    const-string/jumbo p0, "semGetDataRoleStatus--, manager is null"

    .line 1416
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1420
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->semGetDataRoleStatus()I

    move-result p0

    .line 1422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetDataRoleStatus ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public semGetPowerRoleStatus()I
    .registers 4

    const-string v0, "UsbService"

    const-string/jumbo v1, "semGetPowerRoleStatus++"

    .line 1398
    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-nez p0, :cond_14

    const-string/jumbo p0, "semGetPowerRoleStatus--, manager is null"

    .line 1400
    invoke-static {v0, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    .line 1404
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->semGetPowerRoleStatus()I

    move-result p0

    .line 1406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semGetPowerRoleStatus ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public semGrantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .registers 3

    .line 1341
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbService;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    return-void
.end method

.method public semSetDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .registers 4

    .line 1336
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbService;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    return-void
.end method

.method public semSetMode(I)V
    .registers 6

    .line 1369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semSetMode++, not imlpemtentd yet mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbService"

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-nez v0, :cond_20

    goto :goto_73

    .line 1374
    :cond_20
    invoke-virtual {p0}, Lcom/android/server/usb/UsbService;->isAllowedPackage()Z

    move-result v0

    if-nez v0, :cond_2d

    const-string/jumbo p0, "semSetMode--, no permissions"

    .line 1375
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1378
    :cond_2d
    new-instance v0, Lcom/android/server/usb/SemUsbBackend;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {v0, v2, v3, p0}, Lcom/android/server/usb/SemUsbBackend;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/UsbDeviceManager;)V

    .line 1379
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "semSetMode: backend "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-virtual {v0}, Lcom/android/server/usb/SemUsbBackend;->updateUsbPort()V

    .line 1385
    invoke-virtual {v0}, Lcom/android/server/usb/SemUsbBackend;->getCurrentMode()I

    move-result p0

    .line 1386
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "semSetMode: currentUsbMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    invoke-virtual {v0, p1}, Lcom/android/server/usb/SemUsbBackend;->setMode(I)V

    const-string/jumbo p0, "semSetMode--"

    .line 1388
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_73
    :goto_73
    const-string/jumbo p0, "semSetMode--, managers are null"

    .line 1371
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .registers 7

    .line 471
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 477
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 479
    :try_start_13
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_20

    .line 482
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 483
    throw p0
.end method

.method public setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;ILandroid/os/UserHandle;Z)V
    .registers 8

    .line 578
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 581
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 585
    :try_start_12
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;IZ)V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    .line 588
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 589
    throw p0
.end method

.method public setCurrentFunction(Ljava/lang/String;Z)V
    .registers 3

    .line 725
    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbService;->setCurrentFunctions(J)V

    return-void
.end method

.method public setCurrentFunctions(J)V
    .registers 6

    .line 709
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 718
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 719
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->rmSetNextUsbModeToDefault()V

    .line 720
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(J)V

    return-void
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .registers 7

    .line 455
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 460
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 462
    :try_start_13
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_20

    .line 465
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_20
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 466
    throw p0
.end method

.method public setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;ILandroid/os/UserHandle;Z)V
    .registers 8

    .line 561
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 568
    :try_start_12
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;IZ)V
    :try_end_1b
    .catchall {:try_start_12 .. :try_end_1b} :catchall_1f

    .line 571
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 572
    throw p0
.end method

.method public setPortRoles(Ljava/lang/String;II)V
    .registers 12

    const-string/jumbo v0, "portId must not be null"

    .line 868
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 869
    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 870
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 874
    :try_start_15
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_25

    const/4 v6, 0x0

    .line 877
    new-instance v7, Lcom/android/server/usb/UsbService$2;

    invoke-direct {v7, p0}, Lcom/android/server/usb/UsbService$2;-><init>(Lcom/android/server/usb/UsbService;)V

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/Runnable;)V
    :try_end_25
    .catchall {:try_start_15 .. :try_end_25} :catchall_29

    .line 888
    :cond_25
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_29
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 889
    throw p0
.end method

.method public setScreenUnlockedFunctions(J)V
    .registers 6

    .line 749
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 751
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 753
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setScreenUnlockedFunctions(J)V

    return-void
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .registers 5

    .line 1000
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1002
    :try_start_b
    iget v1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-ne v1, v2, :cond_1c

    .line 1003
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz p0, :cond_1a

    .line 1004
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    .line 1010
    :cond_1a
    monitor-exit v0

    return-void

    .line 1007
    :cond_1c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only the current user can register a usb connection handler"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_24
    move-exception p0

    .line 1010
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_b .. :try_end_26} :catchall_24

    throw p0
.end method

.method public setUsbHiddenMenuState(Z)V
    .registers 5

    .line 1323
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1324
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v1, "UsbService"

    if-eqz v0, :cond_29

    .line 1325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbHiddenMenuState: enable="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->setUsbHiddenMenuState(Z)V

    return-void

    :cond_29
    const-string p0, "UsbService mDeviceManager is NULL"

    .line 1328
    invoke-static {v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public systemReady()V
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mUsbUI:Lcom/android/server/usb/UsbUI;

    if-eqz v0, :cond_7

    .line 289
    invoke-virtual {v0}, Lcom/android/server/usb/UsbUI;->systemReady()V

    .line 292
    :cond_7
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaManager;->systemReady()V

    .line 294
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_13

    .line 295
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->systemReady()V

    .line 297
    :cond_13
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_1a

    .line 298
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->systemReady()V

    .line 300
    :cond_1a
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_21

    .line 301
    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->systemReady()V

    .line 304
    :cond_21
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mUsbMonitorImpl:Lcom/android/server/usb/UsbMonitorImpl;

    if-eqz p0, :cond_28

    .line 305
    invoke-virtual {p0}, Lcom/android/server/usb/UsbMonitorImpl;->systemReady()V

    :cond_28
    return-void
.end method
