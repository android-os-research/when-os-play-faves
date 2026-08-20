.class public final Lcom/android/server/ReactiveService;
.super Lcom/samsung/android/service/reactive/IReactiveService$Stub;
.source "ReactiveService.java"


# static fields
.field public static final CONNECT_AT_DISTRIBUTOR:I = 0x0

.field public static final CONNECT_DATA_DISTRIBUTOR:I = 0x1

.field public static final FLAG_ACTIVATED:I = 0x1

.field public static final FLAG_DEACTIVATED:I = 0x0

.field public static final FLAG_TRIGGERED:I = 0x2

.field public static final FRP_FLAG:I = 0x2

.field public static final FRP_SERIVCE_OPERATION_FAILED:I = -0x7

.field public static final JIG_STATE:Ljava/lang/String; = "SWITCH_NAME"

.field public static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field public static final REACTIVATION_FLAG:I = 0x0

.field public static final REACTIVE_SERVICE_OPERATION_FAILED:I = -0x6

.field public static final REACTIVE_SERVICE_RETURN_FLAG_IS_NOT_EXIST:I = -0x3

.field public static final REACTIVE_SERVICE_RETURN_NATIVE_ERROR:I = -0x1

.field public static final REACTIVE_SERVICE_RETURN_NO_ERROR:I = 0x0

.field public static final REACTIVE_SERVICE_RETURN_PERMISSION_DENIED:I = -0x5

.field public static final REACTIVE_SERVICE_RETURN_STRING_IS_NOT_EXIST:I = -0x4

.field public static final REACTIVE_SERVICE_RETURN_UNSUPPORTED_OPERATION:I = -0x2

.field public static final SECURE_FRP_MODE:Ljava/lang/String; = "FRP1"

.field public static final SERVICE_FLAG:I = 0x1

.field public static final SERVICE_GOOGLE_NWD_SUPPORTED:I = 0x4

.field public static final SERVICE_IS_NOT_SUPPORTED:I = 0x0

.field public static final SERVICE_SAMSUNG_NWD_SUPPORTED:I = 0x2

.field public static final SERVICE_SAMSUNG_SWD_SUPPORTED:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ReactiveService"

.field public static mContext:Landroid/content/Context;

.field public static final mLock:Ljava/lang/Object;

.field public static final mLockUEvent:Ljava/lang/Object;


# instance fields
.field public final mDataBlockFile:Ljava/lang/String;

.field public mErrorCode:I

.field public mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

.field public final mReceiver:Landroid/content/BroadcastReceiver;

.field public mServiceSupport:I

.field public mThreadUart:Ljava/lang/Thread;

.field public mThreadUartGoWait:Z

.field public mThreadUsb:Ljava/lang/Thread;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetmContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 123
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/ReactiveService;->mLockUEvent:Ljava/lang/Object;

    const-string/jumbo v0, "terrier"

    .line 132
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 156
    invoke-direct {p0}, Lcom/samsung/android/service/reactive/IReactiveService$Stub;-><init>()V

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lcom/android/server/ReactiveService;->mThreadUartGoWait:Z

    .line 175
    new-instance v0, Lcom/android/server/ReactiveService$1;

    invoke-direct {v0, p0}, Lcom/android/server/ReactiveService$1;-><init>(Lcom/android/server/ReactiveService;)V

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 157
    sput-object p1, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 158
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    .line 160
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeInit()V

    .line 162
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeGetSystemSolution()I

    move-result p1

    iput p1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    const-string/jumbo p1, "ro.frp.pst"

    .line 164
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ReactiveService;->mDataBlockFile:Ljava/lang/String;

    .line 167
    :try_start_24
    new-instance p0, Landroid/content/IntentFilter;

    invoke-direct {p0}, Landroid/content/IntentFilter;-><init>()V

    const-string p1, "android.intent.action.BOOT_COMPLETED"

    .line 168
    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 169
    sget-object p1, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_33} :catch_34

    goto :goto_38

    :catch_34
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_38
    return-void
.end method

.method public static isSetupWizardCompleted()Z
    .registers 3

    .line 271
    sget-object v0, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x1

    .line 272
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 273
    :goto_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "isSetupWizardCompleted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReactiveService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private native nativeFinishedSetupWizard()Z
.end method

.method private native nativeGetFlag(I)I
.end method

.method private native nativeGetRandom()[B
.end method

.method private native nativeGetString()Ljava/lang/String;
.end method

.method private native nativeGetSystemSolution()I
.end method

.method private native nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z
.end method

.method private native nativeInit()V
.end method

.method private native nativeRemoveString()I
.end method

.method private native nativeSessionAccept([B)[B
.end method

.method private native nativeSessionComplete([B)I
.end method

.method private native nativeSetFlag(IILjava/lang/String;)I
.end method

.method private native nativeSetString(Ljava/lang/String;)I
.end method

.method private native nativeVerify(Ljava/lang/String;I)I
.end method

.method private native nativeisCsUnlockRequest()Z
.end method


# virtual methods
.method public getErrorCode()I
    .registers 1

    .line 648
    iget p0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return p0
.end method

.method public getFlag(I)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, -0x2

    const/4 v2, 0x2

    if-eqz p1, :cond_48

    if-eq p1, v2, :cond_b

    const/4 p1, -0x3

    .line 383
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return p1

    .line 320
    :cond_b
    iget v3, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v3, v3, 0x4

    if-lez v3, :cond_5a

    .line 346
    sget-object v1, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "persistent_data_block"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v1, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v1, :cond_29

    const-string p0, "ReactiveService"

    const-string p1, "Failed to load FRP Manager"

    .line 349
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    return p0

    .line 357
    :cond_29
    :try_start_29
    invoke-virtual {v1}, Landroid/service/persistentdata/PersistentDataBlockManager;->isEnabled()Z

    move-result v1
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_2d} :catch_40

    if-eqz v1, :cond_3e

    .line 368
    sget-object v1, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 369
    :try_start_32
    invoke-static {}, Lcom/android/server/ReactiveService;->isSetupWizardCompleted()Z

    move-result v3

    if-eqz v3, :cond_39

    const/4 v2, 0x1

    .line 373
    :cond_39
    monitor-exit v1

    goto :goto_59

    :catchall_3b
    move-exception p0

    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_32 .. :try_end_3d} :catchall_3b

    throw p0

    :cond_3e
    move v1, v0

    goto :goto_5a

    :catch_40
    move-exception p1

    .line 360
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, -0x6

    .line 361
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return p1

    .line 308
    :cond_48
    iget v3, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v4, v3, 0x1

    if-gtz v4, :cond_51

    and-int/2addr v2, v3

    if-lez v2, :cond_5a

    .line 311
    :cond_51
    sget-object v1, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 312
    :try_start_54
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeGetFlag(I)I

    move-result v2

    .line 313
    monitor-exit v1
    :try_end_59
    .catchall {:try_start_54 .. :try_end_59} :catchall_85

    :goto_59
    move v1, v2

    :cond_5a
    :goto_5a
    if-gez v1, :cond_5f

    .line 388
    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_61

    .line 390
    :cond_5f
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_61
    const-string p0, "ReactiveService"

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFlag() : flag=["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], ret=["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_85
    move-exception p0

    .line 313
    :try_start_86
    monitor-exit v1
    :try_end_87
    .catchall {:try_start_86 .. :try_end_87} :catchall_85

    throw p0
.end method

.method public getRandom()[B
    .registers 5

    .line 661
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, -0x2

    .line 663
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return-object v1

    .line 667
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, -0x5

    .line 669
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return-object v1

    .line 673
    :cond_26
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 674
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeGetRandom()[B

    move-result-object v2

    .line 675
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_35

    if-nez v2, :cond_34

    const/4 v0, -0x4

    .line 679
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return-object v1

    :cond_34
    return-object v2

    :catchall_35
    move-exception p0

    .line 675
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public getServiceSupport()I
    .registers 1

    .line 287
    iget p0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    return p0
.end method

.method public getString()Ljava/lang/String;
    .registers 5

    .line 457
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 v0, -0x2

    .line 459
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return-object v1

    .line 463
    :cond_9
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, -0x5

    .line 465
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return-object v1

    .line 469
    :cond_26
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 470
    :try_start_29
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeGetString()Ljava/lang/String;

    move-result-object v1

    .line 471
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_34

    if-nez v1, :cond_33

    const/4 v0, -0x4

    .line 474
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_33
    return-object v1

    :catchall_34
    move-exception p0

    .line 471
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final hasPermission(ILjava/lang/String;)Z
    .registers 10

    .line 208
    new-instance v0, Landroid/content/pm/Signature;

    const-string v1, "308201c13082012aa00302010202044e5cba90300d06092a864886f70d010105050030243110300e060355040b130773616d73756e673110300e0603550403130773616d73756e673020170d3131303833303130323532305a180f32313131303830363130323532305a30243110300e060355040b130773616d73756e673110300e0603550403130773616d73756e6730819f300d06092a864886f70d010101050003818d0030818902818100d80c410cec5799bb3607d27e0c992c9c35238c42e8726a5ecbb190f6dfb59aee9fa3b1a8812620bafb25b24ce4fc777d4b98da1f7fda95f4a7788a70c635fca893e022a676ae40c906ee83a63d953a310da47d3789af59219621aafb551ebe866f977298c70a9d60e5251270db0d35869cb7c5522b7a82c951189cb5d2b9b19d0203010001300d06092a864886f70d0101050500038181007f6820e6cfd72e67afeba80043da6eccc5ec5b0b994974669d2d7c8876f7e1fa9767dbc930549f875c1604cd8a6ea7d84b66ec500c7bf11526ee4ff77d0720036d61454e9354f5291c0545a43ddf26f9d09e64226239cbd0b98945578d596aa9f9ff7a05c140a2f05fe0260f574bfce94f50273558101f896a9c70be6b05496b"

    invoke-direct {v0, v1}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    .line 212
    sget-object v1, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    const/4 v2, 0x0

    const-string v3, "ReactiveService"

    if-nez v1, :cond_1c

    const-string p0, "ActivityManager is null, something wrong in framework"

    .line 214
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 218
    :cond_1c
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    if-nez v4, :cond_29

    const-string/jumbo p0, "getRunningAppProcesses return null List. Cannot check permision"

    .line 219
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 223
    :cond_29
    invoke-virtual {v1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 224
    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v5, p1, :cond_31

    .line 225
    iget-object p1, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    goto :goto_46

    :cond_44
    const-string p1, ""

    .line 231
    :goto_46
    sget-object v1, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v4, 0x40

    .line 234
    :try_start_4e
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 235
    iget-object v5, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    if-eq v5, v6, :cond_86

    .line 237
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "NOT Allowed : pkg does not match uid("

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bb

    :cond_86
    const-string v5, "android"

    .line 241
    invoke-virtual {v1, v5, p1}, Landroid/content/pm/PackageManager;->checkSignatures(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_94

    .line 242
    invoke-direct {p0, p1, p2}, Lcom/android/server/ReactiveService;->nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    :goto_92
    move v2, p0

    goto :goto_bb

    :cond_94
    const-string v1, "com.osp.app.signin"

    .line 243
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 245
    iget-object v1, v4, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v1

    move v5, v2

    :goto_a0
    if-ge v5, v4, :cond_bb

    aget-object v6, v1, v5

    .line 247
    invoke-virtual {v0, v6}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 249
    invoke-direct {p0, p1, p2}, Lcom/android/server/ReactiveService;->nativeHasPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_ae
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_ae} :catch_b2

    goto :goto_92

    :cond_af
    add-int/lit8 v5, v5, 0x1

    goto :goto_a0

    :catch_b2
    move-exception p0

    .line 258
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "Fail to get packageinfo."

    .line 259
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_bb
    :goto_bb
    const-string p0, "]"

    if-eqz v2, :cond_d7

    .line 263
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Requested package name = ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ee

    .line 265
    :cond_d7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission denied. Package name = ["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ee
    return v2
.end method

.method public removeString()I
    .registers 4

    .line 526
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v0, :cond_8

    const/4 v0, -0x2

    .line 528
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0

    .line 532
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 v0, -0x5

    .line 534
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return v0

    .line 538
    :cond_25
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 539
    :try_start_28
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeRemoveString()I

    move-result v1

    .line 540
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_32

    if-eqz v1, :cond_31

    .line 543
    iput v1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_31
    return v1

    :catchall_32
    move-exception p0

    .line 540
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public sessionAccept([B)[B
    .registers 5

    .line 560
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    const/4 v1, 0x0

    if-nez v0, :cond_9

    const/4 p1, -0x2

    .line 562
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return-object v1

    .line 566
    :cond_9
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 568
    :try_start_c
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeSessionAccept([B)[B

    move-result-object v1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_10} :catch_13
    .catchall {:try_start_c .. :try_end_10} :catchall_11

    goto :goto_1d

    :catchall_11
    move-exception p0

    goto :goto_24

    :catch_13
    move-exception p1

    :try_start_14
    const-string v2, "ReactiveService"

    .line 573
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    :goto_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_14 .. :try_end_1e} :catchall_11

    if-nez v1, :cond_23

    const/4 p1, -0x1

    .line 578
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_23
    return-object v1

    .line 575
    :goto_24
    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_11

    throw p0
.end method

.method public sessionComplete([B)I
    .registers 5

    .line 594
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v0, :cond_8

    const/4 p1, -0x2

    .line 596
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return p1

    .line 602
    :cond_8
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 604
    :try_start_b
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeSessionComplete([B)I

    move-result p1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_f} :catch_12
    .catchall {:try_start_b .. :try_end_f} :catchall_10

    goto :goto_1e

    :catchall_10
    move-exception p0

    goto :goto_50

    :catch_12
    move-exception p1

    const/4 v1, -0x1

    :try_start_14
    const-string v2, "ReactiveService"

    .line 609
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v1

    .line 611
    :goto_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_14 .. :try_end_1f} :catchall_10

    .line 613
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v0, v0, 0x4

    if-lez v0, :cond_4d

    if-nez p1, :cond_4d

    .line 614
    invoke-direct {p0}, Lcom/android/server/ReactiveService;->nativeisCsUnlockRequest()Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 617
    sget-object v0, Lcom/android/server/ReactiveService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    iput-object v0, p0, Lcom/android/server/ReactiveService;->mPdbManager:Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez v0, :cond_45

    const-string p0, "ReactiveService"

    const-string p1, "Failed to load FRP Manager"

    .line 620
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x7

    return p0

    .line 625
    :cond_45
    :try_start_45
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->wipe()V
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_48} :catch_49

    goto :goto_4d

    :catch_49
    move-exception v0

    .line 628
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 632
    :cond_4d
    :goto_4d
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return p1

    .line 611
    :goto_50
    :try_start_50
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_10

    throw p0
.end method

.method public setFlag(IILjava/lang/String;)I
    .registers 7

    if-eqz p1, :cond_6

    const/4 p1, -0x3

    .line 416
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return p1

    :cond_6
    const/4 v0, 0x2

    if-nez p1, :cond_16

    .line 420
    iget v1, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    and-int/lit8 v2, v1, 0x1

    if-gtz v2, :cond_16

    and-int/2addr v1, v0

    if-gtz v1, :cond_16

    const/4 p1, -0x2

    .line 423
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return p1

    .line 427
    :cond_16
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    aget-object v0, v2, v0

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_32

    const/4 p1, -0x5

    .line 429
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return p1

    .line 433
    :cond_32
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 434
    :try_start_35
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/ReactiveService;->nativeSetFlag(IILjava/lang/String;)I

    move-result p3

    .line 435
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_35 .. :try_end_3a} :catchall_6f

    if-gez p3, :cond_3f

    .line 438
    iput p3, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    goto :goto_42

    :cond_3f
    const/4 v0, 0x0

    .line 440
    iput v0, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :goto_42
    const-string p0, "ReactiveService"

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFlag() : flag=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], value=["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "], ret=["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p3

    :catchall_6f
    move-exception p0

    .line 435
    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_6f

    throw p0
.end method

.method public setString(Ljava/lang/String;)I
    .registers 5

    .line 492
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v0, :cond_8

    const/4 p1, -0x2

    .line 494
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return p1

    .line 498
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 p1, -0x5

    .line 500
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return p1

    .line 504
    :cond_25
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_28
    invoke-direct {p0, p1}, Lcom/android/server/ReactiveService;->nativeSetString(Ljava/lang/String;)I

    move-result p1

    .line 506
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_32

    if-eqz p1, :cond_31

    .line 509
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_31
    return p1

    :catchall_32
    move-exception p0

    .line 506
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public verify(Ljava/lang/String;I)I
    .registers 6

    .line 698
    iget v0, p0, Lcom/android/server/ReactiveService;->mServiceSupport:I

    if-nez v0, :cond_8

    const/4 p1, -0x2

    .line 700
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return p1

    .line 704
    :cond_8
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/ReactiveService;->hasPermission(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    const/4 p1, -0x5

    .line 706
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    return p1

    .line 710
    :cond_25
    sget-object v0, Lcom/android/server/ReactiveService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 711
    :try_start_28
    invoke-direct {p0, p1, p2}, Lcom/android/server/ReactiveService;->nativeVerify(Ljava/lang/String;I)I

    move-result p1

    .line 712
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_28 .. :try_end_2d} :catchall_32

    if-eqz p1, :cond_31

    .line 715
    iput p1, p0, Lcom/android/server/ReactiveService;->mErrorCode:I

    :cond_31
    return p1

    :catchall_32
    move-exception p0

    .line 712
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method
