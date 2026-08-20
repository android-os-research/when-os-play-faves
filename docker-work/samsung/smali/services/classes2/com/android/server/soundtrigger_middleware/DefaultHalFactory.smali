.class public Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;
.super Ljava/lang/Object;
.source "DefaultHalFactory.java"

# interfaces
.implements Lcom/android/server/soundtrigger_middleware/HalFactory;


# static fields
.field public static final TAG:Ljava/lang/String; = "SoundTriggerMiddlewareDefaultHalFactory"

.field public static final USE_DEFAULT_HAL:I = 0x0

.field public static final USE_MOCK_HAL_V2:I = 0x2

.field public static final USE_MOCK_HAL_V3:I = 0x3

.field public static final mCaptureStateNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;


# direct methods
.method public static synthetic $r8$lambda$BaKW0csrCl2VfnMJAWABprVLrvA()V
    .registers 0

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->lambda$create$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$FvdBrmi_SUNanPtS2wSqxuGPAuI(Ljava/lang/String;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->lambda$create$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vEBCobwOvfGAQy_NvwT5NWJFJ64()V
    .registers 0

    invoke-static {}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->lambda$create$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$v_R6BnaUVOKoBATmLce1e86X9wU(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->lambda$create$2(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;

    invoke-direct {v0}, Lcom/android/server/soundtrigger_middleware/ExternalCaptureStateTracker;-><init>()V

    sput-object v0, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->mCaptureStateNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$create$0()V
    .registers 2

    const-string/jumbo v0, "sys.audio.restart.hal"

    const-string v1, "1"

    .line 70
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$create$1()V
    .registers 2

    const-string/jumbo v0, "sys.audio.restart.hal"

    const-string v1, "1"

    .line 80
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic lambda$create$2(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;)V
    .registers 4

    const/4 v0, 0x0

    .line 90
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    const-string/jumbo v2, "reboot"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0, v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->debug(Landroid/os/NativeHandle;Ljava/util/ArrayList;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_15

    goto :goto_1d

    :catch_15
    move-exception p0

    const-string v0, "SoundTriggerMiddlewareDefaultHalFactory"

    const-string v1, "Failed to reboot mock HAL"

    .line 92
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1d
    return-void
.end method

.method public static synthetic lambda$create$3(Ljava/lang/String;)V
    .registers 8

    .line 107
    :try_start_0
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string/jumbo p0, "reboot"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroid/os/IBinder;->shellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception p0

    const-string v0, "SoundTriggerMiddlewareDefaultHalFactory"

    const-string v1, "Failed to reboot mock HAL"

    .line 110
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method


# virtual methods
.method public create()Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;
    .registers 5

    :try_start_0
    const-string p0, "debug.soundtrigger_middleware.use_mock_hal"

    const/4 v0, 0x0

    .line 55
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_7} :catch_bc

    const/4 v1, 0x1

    const-string v2, "SoundTriggerMiddlewareDefaultHalFactory"

    if-nez p0, :cond_52

    .line 61
    :try_start_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 62
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/default"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 64
    invoke-static {p0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "Connecting to default soundtrigger3.ISoundTriggerHw"

    .line 65
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;

    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    new-instance v1, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;-><init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V

    return-object v0

    :cond_3d
    const-string p0, "Connecting to default soundtrigger-V2.x.ISoundTriggerHw"

    .line 75
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-static {v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getService(Z)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object p0

    .line 77
    new-instance v0, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda1;-><init>()V

    sget-object v1, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->mCaptureStateNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    invoke-static {p0, v0, v1}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->create(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object p0

    return-object p0

    :cond_52
    const/4 v3, 0x2

    if-ne p0, v3, :cond_77

    const-string p0, "Connecting to mock soundtrigger-V2.x.ISoundTriggerHw"

    .line 84
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static {v1}, Landroid/os/HwBinder;->setTrebleTestingOverride(Z)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_5d} :catch_bc

    :try_start_5d
    const-string p0, "mock"

    .line 87
    invoke-static {p0, v1}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;->getService(Ljava/lang/String;Z)Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;

    move-result-object p0

    .line 88
    new-instance v1, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda2;-><init>(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;)V

    sget-object v2, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory;->mCaptureStateNotifier:Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;

    invoke-static {p0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw2Compat;->create(Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;Ljava/lang/Runnable;Lcom/android/server/soundtrigger_middleware/ICaptureStateNotifier;)Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal;

    move-result-object p0
    :try_end_6e
    .catchall {:try_start_5d .. :try_end_6e} :catchall_72

    .line 96
    :try_start_6e
    invoke-static {v0}, Landroid/os/HwBinder;->setTrebleTestingOverride(Z)V

    return-object p0

    :catchall_72
    move-exception p0

    invoke-static {v0}, Landroid/os/HwBinder;->setTrebleTestingOverride(Z)V

    .line 97
    throw p0

    :cond_77
    const/4 v0, 0x3

    if-ne p0, v0, :cond_a5

    .line 100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Landroid/hardware/soundtrigger3/ISoundTriggerHw;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/mock"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Connecting to mock soundtrigger3.ISoundTriggerHw"

    .line 103
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    new-instance v0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;

    invoke-static {p0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/android/server/soundtrigger_middleware/DefaultHalFactory$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/soundtrigger_middleware/SoundTriggerHw3Compat;-><init>(Landroid/os/IBinder;Ljava/lang/Runnable;)V

    return-object v0

    .line 114
    :cond_a5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown HAL mock version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_bc
    .catch Landroid/os/RemoteException; {:try_start_6e .. :try_end_bc} :catch_bc

    :catch_bc
    move-exception p0

    .line 117
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
