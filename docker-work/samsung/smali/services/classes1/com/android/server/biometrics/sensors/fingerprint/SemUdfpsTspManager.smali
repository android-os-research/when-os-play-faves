.class public Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;
.super Ljava/lang/Object;
.source "SemUdfpsTspManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$InstanceHolder;
    }
.end annotation


# static fields
.field public static final CMD_DISABLE:I = 0x0

.field public static final CMD_ENABLE:I = 0x1

.field public static final CMD_FOD_DISABLE:I = 0x6

.field public static final CMD_FOD_ENABLE:I = 0x2

.field public static final CMD_FOD_ENABLE_50:I = 0x3

.field public static final CMD_FOD_RECT:I = 0x7

.field public static final CMD_FOD_STRICT_ENABLE:I = 0x4

.field public static final CMD_FOD_STRICT_ENABLE_50:I = 0x5

.field public static final CMD_LP_MODE:I = 0x8

.field public static final CMD_TEMPERATURE:I = 0x9

.field public static final DB_ALWAYS_ON:Ljava/lang/String; = "fingerprint_always_on"

.field public static final DB_SCREEN_LOCK:Ljava/lang/String; = "fingerprint_screen_lock"

.field public static final TAG:Ljava/lang/String; = "FingerprintService"


# instance fields
.field public final mCommands:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mEnableClient:Landroid/util/SparseBooleanArray;

.field public mFodRect:Landroid/graphics/Rect;

.field public mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

.field public mIsEnable:Z

.field public mIsHalfMode:Z

.field public mIsLpMode:Z

.field public mIsStrictMode:Z

.field public mLastCmd:I


# direct methods
.method public static synthetic $r8$lambda$BHzGuUZI6NHdI1KgAbBLxM2ADy0(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->lambda$sendCommand$0(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misEnableWOF(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;Landroid/content/Context;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->isEnableWOF(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msetLpMode(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setLpMode(Z)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mEnableClient:Landroid/util/SparseBooleanArray;

    .line 41
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mCommands:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;-><init>()V

    return-void
.end method

.method public static declared-synchronized get()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;
    .registers 2

    const-class v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    monitor-enter v0

    .line 50
    :try_start_3
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$InstanceHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-object v1

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private synthetic lambda$sendCommand$0(I)V
    .registers 7

    const-string v0, "FingerprintService"

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_86

    goto :goto_6b

    .line 221
    :pswitch_8
    :try_start_8
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {p0, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setTemperature(I)I

    goto :goto_6b

    .line 218
    :pswitch_e
    iget-object v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    if-eqz p0, :cond_15

    move v1, v2

    :cond_15
    invoke-interface {v3, v1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodLpMode(I)I

    goto :goto_6b

    .line 213
    :pswitch_19
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mFodRect:Landroid/graphics/Rect;

    if-eqz v1, :cond_6b

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6b

    .line 214
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mFodRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {v1, v2, v3, v4, p0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodRect(IIII)I

    goto :goto_6b

    .line 210
    :pswitch_33
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {p0, v1, v1, v1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(III)I

    goto :goto_6b

    .line 207
    :pswitch_39
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {p0, v2, v1, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(III)I

    goto :goto_6b

    .line 204
    :pswitch_3f
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {p0, v2, v2, v2}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(III)I

    goto :goto_6b

    .line 201
    :pswitch_45
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {p0, v2, v1, v1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(III)I

    goto :goto_6b

    .line 198
    :pswitch_4b
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    invoke-interface {p0, v2, v2, v1}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;->setFodEnable(III)I
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_50} :catch_51

    goto :goto_6b

    :catch_51
    move-exception p0

    .line 225
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendCommand fail with e : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_6b
    :goto_6b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setTspMode: ["

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "] done"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_86
    .packed-switch 0x2
        :pswitch_4b
        :pswitch_45
        :pswitch_3f
        :pswitch_39
        :pswitch_33
        :pswitch_19
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public declared-synchronized disable(I)V
    .registers 3

    monitor-enter p0

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mEnableClient:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 112
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsEnable:Z

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mEnableClient:Landroid/util/SparseBooleanArray;

    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result p1

    if-nez p1, :cond_19

    const/4 p1, 0x6

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V

    const/4 p1, 0x0

    .line 114
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsEnable:Z
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 116
    :cond_19
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enable(I)V
    .registers 4

    monitor-enter p0

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mEnableClient:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 103
    iget-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsEnable:Z
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_14

    if-eqz p1, :cond_d

    .line 104
    monitor-exit p0

    return-void

    .line 106
    :cond_d
    :try_start_d
    iput-boolean v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsEnable:Z

    .line 107
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setFodEnable()V
    :try_end_12
    .catchall {:try_start_d .. :try_end_12} :catchall_14

    .line 108
    monitor-exit p0

    return-void

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final isEnableWOF(Landroid/content/Context;)Z
    .registers 4

    const-string p0, "fingerprint_screen_lock"

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 87
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result p0

    if-eq p0, v0, :cond_b

    return v1

    .line 94
    :cond_b
    invoke-static {}, Lcom/android/server/biometrics/Utils;->isFirstApiLevel31orGreater()Z

    move-result p0

    if-eqz p0, :cond_1a

    const-string p0, "fingerprint_always_on"

    .line 95
    invoke-static {p1, p0, v0, v1}, Lcom/android/server/biometrics/Utils;->getIntDb(Landroid/content/Context;Ljava/lang/String;ZI)I

    move-result p0

    if-eq p0, v0, :cond_1a

    return v1

    :cond_1a
    return v0
.end method

.method public onBootActivityManagerReady(Landroid/content/Context;)V
    .registers 7

    const-string v0, "SemInputDeviceManagerService"

    .line 62
    invoke-static {v0}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    .line 63
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v0, :cond_62

    .line 64
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;Landroid/os/Handler;Landroid/content/Context;)V

    .line 71
    :try_start_1d
    invoke-static {}, Lcom/android/server/biometrics/Utils;->isFirstApiLevel31orGreater()Z

    move-result v1

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eqz v1, :cond_32

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "fingerprint_always_on"

    .line 73
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 72
    invoke-virtual {v1, v4, v3, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 76
    :cond_32
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "fingerprint_screen_lock"

    .line 77
    invoke-static {v4}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 76
    invoke-virtual {v1, v4, v3, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_3f} :catch_40

    goto :goto_5b

    :catch_40
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TspCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_5b
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->isEnableWOF(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setLpMode(Z)V

    :cond_62
    return-void
.end method

.method public declared-synchronized onCaptureStarted()V
    .registers 2

    monitor-enter p0

    const/16 v0, 0x9

    .line 147
    :try_start_3
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 148
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized screenOff()V
    .registers 3

    monitor-enter p0

    .line 134
    :try_start_1
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_11

    .line 135
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FEATURE_SUPPORT_AOD:Z

    if-nez v0, :cond_e

    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_FAKE_AOD:Z

    if-eqz v0, :cond_11

    .line 136
    :cond_e
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setHalfMode(Z)V

    .line 139
    :cond_11
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v0, :cond_18

    .line 142
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setHalfMode(Z)V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1a

    .line 144
    :cond_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized screenOn()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 127
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setHalfMode(Z)V

    .line 128
    sget-boolean v1, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_ULTRASONIC:Z

    if-eqz v1, :cond_c

    .line 129
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->enable(I)V
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    .line 131
    :cond_c
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final sendCommand(I)V
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mInputDeviceManager:Lcom/samsung/android/hardware/secinputdev/ISemInputDeviceManager;

    if-nez v0, :cond_d

    const-string p0, "FingerprintService"

    const-string/jumbo p1, "sendCommand fail : InputDeviceManager is null"

    .line 189
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 192
    :cond_d
    iput p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mLastCmd:I

    .line 193
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBioFgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setFodEnable()V
    .registers 2

    .line 173
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsEnable:Z

    if-eqz v0, :cond_1a

    .line 174
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsStrictMode:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsHalfMode:Z

    if-eqz v0, :cond_e

    const/4 v0, 0x5

    goto :goto_17

    :cond_e
    const/4 v0, 0x4

    goto :goto_17

    .line 175
    :cond_10
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsHalfMode:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x3

    goto :goto_17

    :cond_16
    const/4 v0, 0x2

    .line 174
    :goto_17
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V

    :cond_1a
    return-void
.end method

.method public declared-synchronized setFodRect(Landroid/graphics/Rect;)V
    .registers 7

    monitor-enter p0

    .line 159
    :try_start_1
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mFodRect:Landroid/graphics/Rect;

    .line 160
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string/jumbo v1, "set_fod_rect,%d,%d,%d,%d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p1, Landroid/graphics/Rect;->left:I

    .line 161
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v3

    .line 160
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 162
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mCommands:Landroid/util/SparseArray;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 163
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V
    :try_end_3c
    .catchall {:try_start_1 .. :try_end_3c} :catchall_3e

    .line 164
    monitor-exit p0

    return-void

    :catchall_3e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setHalfMode(Z)V
    .registers 3

    monitor-enter p0

    .line 119
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsHalfMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-ne v0, p1, :cond_7

    .line 120
    monitor-exit p0

    return-void

    .line 122
    :cond_7
    :try_start_7
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsHalfMode:Z

    .line 123
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setFodEnable()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    .line 124
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setLpMode(Z)V
    .registers 3

    .line 180
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 183
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    const/16 p1, 0x8

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->sendCommand(I)V

    return-void
.end method

.method public declared-synchronized setStrictMode(Z)V
    .registers 3

    monitor-enter p0

    .line 151
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsStrictMode:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_e

    if-ne v0, p1, :cond_7

    .line 152
    monitor-exit p0

    return-void

    .line 154
    :cond_7
    :try_start_7
    iput-boolean p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsStrictMode:Z

    .line 155
    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->setFodEnable()V
    :try_end_c
    .catchall {:try_start_7 .. :try_end_c} :catchall_e

    .line 156
    monitor-exit p0

    return-void

    :catchall_e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toDumpString()Ljava/lang/String;
    .registers 4

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " TSP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mCommands:Landroid/util/SparseArray;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n TSP : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mLastCmd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsLpMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsStrictMode:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsEnable:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemUdfpsTspManager;->mIsHalfMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
