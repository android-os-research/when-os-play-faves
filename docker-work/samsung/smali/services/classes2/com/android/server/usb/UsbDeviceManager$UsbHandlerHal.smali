.class public final Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;
.super Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UsbHandlerHal"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;,
        Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;
    }
.end annotation


# static fields
.field public static final ENUMERATION_TIME_OUT_MS:I = 0x7d0

.field public static final GADGET_HAL_FQ_NAME:Ljava/lang/String; = "android.hardware.usb.gadget@1.0::IUsbGadget"

.field public static final SET_FUNCTIONS_LEEWAY_MS:I = 0x1f4

.field public static final SET_FUNCTIONS_TIMEOUT_MS:I = 0xbb8

.field public static final USB_GADGET_HAL_DEATH_COOKIE:I = 0x7d0


# instance fields
.field public mCurrentRequest:I

.field public mCurrentUsbFunctionsRequested:Z

.field public mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mGadgetProxyLock"
        }
    .end annotation
.end field

.field public final mGadgetProxyLock:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCurrentRequest(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)I
    .registers 1

    iget p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGadgetProxyLock(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmGadgetProxy(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;Landroid/hardware/usb/gadget/V1_0/IUsbGadget;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .registers 8

    .line 2307
    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    .line 2263
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    const/4 p2, 0x0

    .line 2273
    iput p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    .line 2309
    :try_start_d
    new-instance p3, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;

    invoke-direct {p3, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$ServiceNotification;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    .line 2311
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object p4

    const-string p5, "android.hardware.usb.gadget@1.0::IUsbGadget"

    const-string v0, ""

    .line 2312
    invoke-interface {p4, p5, v0, p3}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z

    move-result p3

    if-nez p3, :cond_2a

    .line 2314
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to register usb gadget service start notification"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2318
    :cond_2a
    monitor-enter p1
    :try_end_2b
    .catch Ljava/util/NoSuchElementException; {:try_start_d .. :try_end_2b} :catch_84
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_2b} :catch_79
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_2b} :catch_6e

    const/4 p3, 0x1

    .line 2319
    :try_start_2c
    invoke-static {p3}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService(Z)Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 2320
    new-instance p5, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;

    invoke-direct {p5, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    const-wide/16 v0, 0x7d0

    invoke-interface {p4, p5, v0, v1}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    const-wide/16 p4, 0x0

    .line 2322
    iput-wide p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 2323
    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    const/4 p3, -0x1

    .line 2324
    iput p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    const/16 p3, 0xa

    .line 2325
    iput p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    .line 2326
    iget-object p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    new-instance p4, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;

    invoke-direct {p4, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    invoke-interface {p3, p4}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getCurrentUsbFunctions(Landroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;)V

    .line 2327
    monitor-exit p1
    :try_end_54
    .catchall {:try_start_2c .. :try_end_54} :catchall_6b

    .line 2328
    :try_start_54
    new-instance p1, Ljava/io/File;

    const-string p3, "/sys/class/android_usb/android0/state"

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p3, 0x0

    invoke-static {p1, p2, p3}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2329
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    .line 2330
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbGadgetHalVersion()V
    :try_end_6a
    .catch Ljava/util/NoSuchElementException; {:try_start_54 .. :try_end_6a} :catch_84
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_6a} :catch_79
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_6a} :catch_6e

    goto :goto_8e

    :catchall_6b
    move-exception p0

    .line 2327
    :try_start_6c
    monitor-exit p1
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    :try_start_6d
    throw p0
    :try_end_6e
    .catch Ljava/util/NoSuchElementException; {:try_start_6d .. :try_end_6e} :catch_84
    .catch Landroid/os/RemoteException; {:try_start_6d .. :try_end_6e} :catch_79
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_6e} :catch_6e

    :catch_6e
    move-exception p0

    .line 2336
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Error initializing UsbHandler"

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8e

    :catch_79
    move-exception p0

    .line 2334
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Usb Gadget hal not responding"

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8e

    :catch_84
    move-exception p0

    .line 2332
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Usb gadget hal not found"

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8e
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 2368
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_15e

    .line 2479
    :pswitch_7
    invoke-super {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_15d

    .line 2456
    :pswitch_c
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2457
    :try_start_f
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez v0, :cond_1f

    .line 2458
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mGadgetProxy is null"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2459
    monitor-exit p1

    goto/16 :goto_15d

    .line 2463
    :cond_1f
    invoke-static {v0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object v0

    if-nez v0, :cond_3b

    .line 2465
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 2467
    invoke-static {v0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object v0

    if-nez v0, :cond_34

    const/16 v0, 0xa

    .line 2469
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    .line 2470
    monitor-exit p1

    goto/16 :goto_15d

    :cond_34
    const/16 v0, 0xb

    .line 2472
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    .line 2473
    monitor-exit p1

    goto/16 :goto_15d

    :cond_3b
    const/16 v0, 0xc

    .line 2475
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    .line 2476
    monitor-exit p1

    goto/16 :goto_15d

    :catchall_42
    move-exception p0

    monitor-exit p1
    :try_end_44
    .catchall {:try_start_f .. :try_end_44} :catchall_42

    throw p0

    .line 2437
    :pswitch_45
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter p1

    .line 2438
    :try_start_48
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez v0, :cond_58

    .line 2439
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "mGadgetProxy is null"

    invoke-static {p0, v0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2440
    monitor-exit p1
    :try_end_56
    .catchall {:try_start_48 .. :try_end_56} :catchall_74

    goto/16 :goto_15d

    .line 2446
    :cond_58
    :try_start_58
    invoke-static {v0}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_2/IUsbGadget;

    move-result-object v0

    if-eqz v0, :cond_71

    .line 2448
    new-instance v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    invoke-interface {v0, v1}, Landroid/hardware/usb/gadget/V1_2/IUsbGadget;->getUsbSpeed(Landroid/hardware/usb/gadget/V1_2/IUsbGadgetCallback;)V
    :try_end_66
    .catch Landroid/os/RemoteException; {:try_start_58 .. :try_end_66} :catch_67
    .catchall {:try_start_58 .. :try_end_66} :catchall_74

    goto :goto_71

    :catch_67
    move-exception p0

    .line 2451
    :try_start_68
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "get UsbSpeed failed"

    invoke-static {v0, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2453
    :cond_71
    :goto_71
    monitor-exit p1

    goto/16 :goto_15d

    :catchall_74
    move-exception p0

    monitor-exit p1
    :try_end_76
    .catchall {:try_start_68 .. :try_end_76} :catchall_74

    throw p0

    .line 2420
    :pswitch_77
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2421
    :try_start_7a
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez p0, :cond_8b

    .line 2422
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "reset Usb Gadget mGadgetProxy is null"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2423
    monitor-exit v0
    :try_end_89
    .catchall {:try_start_7a .. :try_end_89} :catchall_a1

    goto/16 :goto_15d

    .line 2429
    :cond_8b
    :try_start_8b
    invoke-static {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->castFrom(Landroid/os/IHwInterface;)Landroid/hardware/usb/gadget/V1_1/IUsbGadget;

    move-result-object p0

    .line 2430
    invoke-interface {p0}, Landroid/hardware/usb/gadget/V1_1/IUsbGadget;->reset()I
    :try_end_92
    .catch Landroid/os/RemoteException; {:try_start_8b .. :try_end_92} :catch_93
    .catchall {:try_start_8b .. :try_end_92} :catchall_a1

    goto :goto_9e

    :catch_93
    move-exception p0

    .line 2432
    :try_start_94
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "reset Usb Gadget failed"

    invoke-static {p1, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2434
    :goto_9e
    monitor-exit v0

    goto/16 :goto_15d

    :catchall_a1
    move-exception p0

    monitor-exit v0
    :try_end_a3
    .catchall {:try_start_94 .. :try_end_a3} :catchall_a1

    throw p0

    .line 2403
    :pswitch_a4
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_a9

    goto :goto_aa

    :cond_a9
    move v2, v1

    .line 2404
    :goto_aa
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2406
    :try_start_ad
    invoke-static {}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->getService()Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    .line 2407
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetDeathRecipient;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;)V

    const-wide/16 v4, 0x7d0

    invoke-interface {p1, v3, v4, v5}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 2409
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    if-nez p1, :cond_e0

    if-nez v2, :cond_e0

    .line 2410
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V
    :try_end_c8
    .catch Ljava/util/NoSuchElementException; {:try_start_ad .. :try_end_c8} :catch_d6
    .catch Landroid/os/RemoteException; {:try_start_ad .. :try_end_c8} :catch_cb
    .catchall {:try_start_ad .. :try_end_c8} :catchall_c9

    goto :goto_e0

    :catchall_c9
    move-exception p0

    goto :goto_e3

    :catch_cb
    move-exception p0

    .line 2415
    :try_start_cc
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Usb Gadget hal not responding"

    invoke-static {p1, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_e0

    :catch_d6
    move-exception p0

    .line 2413
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Usb gadget hal not found"

    invoke-static {p1, v1, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2417
    :cond_e0
    :goto_e0
    monitor-exit v0

    goto/16 :goto_15d

    :goto_e3
    monitor-exit v0
    :try_end_e4
    .catchall {:try_start_cc .. :try_end_e4} :catchall_c9

    throw p0

    .line 2397
    :pswitch_e5
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v2, :cond_15d

    .line 2399
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    goto :goto_15d

    .line 2380
    :pswitch_ef
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "processing MSG_GET_CURRENT_USB_FUNCTIONS"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2381
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    .line 2383
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    if-eqz v0, :cond_141

    .line 2384
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "updating mCurrentFunctions"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2386
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x2

    and-long/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    .line 2387
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mCurrentFunctions:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "applied:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2389
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_13f

    move v1, v2

    :cond_13f
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 2391
    :cond_141
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot()V

    goto :goto_15d

    .line 2373
    :pswitch_145
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Set functions timed out! no reply from usb hal"

    invoke-static {v0, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2374
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq p1, v2, :cond_15d

    .line 2376
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    goto :goto_15d

    :pswitch_158
    const-wide/16 v2, 0x0

    .line 2370
    invoke-virtual {p0, v2, v3, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setEnabledFunctions(JZ)V

    :cond_15d
    :goto_15d
    return-void

    :pswitch_data_15e
    .packed-switch 0xe
        :pswitch_158
        :pswitch_145
        :pswitch_ef
        :pswitch_e5
        :pswitch_a4
        :pswitch_77
        :pswitch_7
        :pswitch_7
        :pswitch_45
        :pswitch_c
    .end packed-switch
.end method

.method public setEnabledFunctions(JZ)V
    .registers 9

    .line 2581
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnabledFunctions functions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", forceRestart="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2584
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    const-wide/16 v1, 0x0

    const/16 v3, 0xc

    if-ge v0, v3, :cond_3a

    const-wide/16 v3, 0x400

    and-long/2addr v3, p1

    cmp-long v0, v3, v1

    if-eqz v0, :cond_3a

    .line 2586
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Could not set unsupported function for the GadgetHal"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2590
    :cond_3a
    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    cmp-long v0, v3, p1

    if-nez v0, :cond_46

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    if-eqz v0, :cond_46

    if-eqz p3, :cond_83

    .line 2593
    :cond_46
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Setting USB config to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/sysfwutil/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2594
    iput-wide p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const/4 p3, 0x0

    .line 2595
    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    .line 2597
    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentUsbFunctionsRequested:Z

    cmp-long v0, p1, v1

    const/4 v1, 0x1

    if-nez v0, :cond_6f

    move p3, v1

    .line 2600
    :cond_6f
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide p1

    .line 2603
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->setUsbConfig(JZ)V

    .line 2605
    iget-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz p3, :cond_83

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result p3

    if-eqz p3, :cond_83

    .line 2607
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(JZ)V

    :cond_83
    return-void
.end method

.method public final setUsbConfig(JZ)V
    .registers 15

    .line 2533
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUsbConfig("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ") request:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x11

    .line 2537
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v1, 0xf

    .line 2538
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v2, 0xe

    .line 2539
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2541
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxyLock:Ljava/lang/Object;

    monitor-enter v2

    .line 2542
    :try_start_39
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    if-nez v3, :cond_49

    .line 2543
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "setUsbConfig mGadgetProxy is null"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    monitor-exit v2
    :try_end_48
    .catchall {:try_start_39 .. :try_end_48} :catchall_a3

    return-void

    :cond_49
    const-wide/16 v3, 0x1

    and-long/2addr v3, p1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    const/4 v4, 0x0

    if-eqz v3, :cond_5f

    .line 2551
    :try_start_53
    const-class v3, Landroid/debug/AdbManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/debug/AdbManagerInternal;

    .line 2552
    invoke-virtual {v3, v4}, Landroid/debug/AdbManagerInternal;->startAdbdForTransport(B)V

    goto :goto_6a

    .line 2557
    :cond_5f
    const-class v3, Landroid/debug/AdbManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/debug/AdbManagerInternal;

    .line 2558
    invoke-virtual {v3, v4}, Landroid/debug/AdbManagerInternal;->stopAdbdForTransport(B)V

    .line 2560
    :goto_6a
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;

    iget v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mCurrentRequest:I

    move-object v5, v3

    move-object v6, p0

    move-wide v8, p1

    move v10, p3

    invoke-direct/range {v5 .. v10}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal$UsbGadgetCallback;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;IJZ)V

    .line 2562
    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;->mGadgetProxy:Landroid/hardware/usb/gadget/V1_0/IUsbGadget;

    const-wide/16 v9, 0x9c4

    move-wide v6, p1

    move-object v8, v3

    invoke-interface/range {v5 .. v10}, Landroid/hardware/usb/gadget/V1_0/IUsbGadget;->setCurrentUsbFunctions(JLandroid/hardware/usb/gadget/V1_0/IUsbGadgetCallback;J)V

    const-wide/16 p1, 0xbb8

    .line 2564
    invoke-virtual {p0, v1, p3, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(IZJ)V

    .line 2566
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz p1, :cond_8c

    const-wide/16 p1, 0x1388

    .line 2568
    invoke-virtual {p0, v0, p3, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessageDelayed(IZJ)V

    .line 2571
    :cond_8c
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "timeout message queued"

    invoke-static {p0, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_53 .. :try_end_96} :catch_97
    .catchall {:try_start_53 .. :try_end_96} :catchall_a3

    goto :goto_a1

    :catch_97
    move-exception p0

    .line 2573
    :try_start_98
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Remoteexception while calling setCurrentUsbFunctions"

    invoke-static {p1, p2, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2575
    :goto_a1
    monitor-exit v2

    return-void

    :catchall_a3
    move-exception p0

    monitor-exit v2
    :try_end_a5
    .catchall {:try_start_98 .. :try_end_a5} :catchall_a3

    throw p0
.end method
