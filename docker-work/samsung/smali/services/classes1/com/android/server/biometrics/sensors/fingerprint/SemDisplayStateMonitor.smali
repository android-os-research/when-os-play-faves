.class public Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;
.super Ljava/lang/Object;
.source "SemDisplayStateMonitor.java"

# interfaces
.implements Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "SemDisplayStateMonitor"


# instance fields
.field public mCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;

.field public final mContext:Landroid/content/Context;

.field public mDisplayState:I

.field public final mHandler:Landroid/os/Handler;

.field public final mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$OJ43ZIZo8yzuiZek-YubuzkfKhk(Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->lambda$onFinish$1(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$WAjYeymuJpLeHLhzWK5zdKvVi3M(Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->lambda$onStart$0(III)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 20
    sget-boolean v0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez v0, :cond_f

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    sput-boolean v0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 69
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;

    invoke-direct {v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;-><init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mLock:Ljava/lang/Object;

    .line 74
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mHandler:Landroid/os/Handler;

    .line 76
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;

    return-void
.end method

.method private synthetic lambda$onFinish$1(III)V
    .registers 8

    .line 143
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_49

    .line 144
    :try_start_6
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mDisplayState:I

    if-eq v1, p2, :cond_49

    const/4 v1, 0x2

    if-ne p2, v1, :cond_e

    goto :goto_49

    .line 150
    :cond_e
    sget-boolean v1, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->DEBUG:Z

    if-eqz v1, :cond_31

    const-string v1, "SemDisplayStateMonitor"

    .line 151
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onFinish : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_31
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mDisplayState:I
    :try_end_33
    .catchall {:try_start_6 .. :try_end_33} :catchall_4b

    .line 156
    :try_start_33
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;

    if-eqz v1, :cond_47

    .line 157
    invoke-interface {v1, p2, p3, p1}, Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;->onFinish(III)V
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3a} :catch_3b
    .catchall {:try_start_33 .. :try_end_3a} :catchall_4b

    goto :goto_47

    :catch_3b
    move-exception p1

    :try_start_3c
    const-string p2, "SemDisplayStateMonitor"

    const-string/jumbo p3, "onFinish: "

    .line 160
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 161
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;

    .line 163
    :cond_47
    :goto_47
    monitor-exit v0

    return-void

    .line 147
    :cond_49
    :goto_49
    monitor-exit v0

    return-void

    :catchall_4b
    move-exception p0

    .line 163
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3c .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method private synthetic lambda$onStart$0(III)V
    .registers 9

    .line 113
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4d

    .line 114
    :try_start_6
    iget v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mDisplayState:I

    if-eq v2, p2, :cond_4d

    const/4 v2, 0x2

    if-eq p2, v2, :cond_10

    if-eq p2, v1, :cond_10

    goto :goto_4d

    .line 120
    :cond_10
    sget-boolean v1, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->DEBUG:Z

    if-eqz v1, :cond_33

    const-string v1, "SemDisplayStateMonitor"

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onStart : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33
    if-ne p2, v2, :cond_37

    .line 125
    iput p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mDisplayState:I
    :try_end_37
    .catchall {:try_start_6 .. :try_end_37} :catchall_4f

    .line 129
    :cond_37
    :try_start_37
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;

    if-eqz v1, :cond_4b

    .line 130
    invoke-interface {v1, p2, p3, p1}, Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;->onStart(III)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_3e} :catch_3f
    .catchall {:try_start_37 .. :try_end_3e} :catchall_4f

    goto :goto_4b

    :catch_3f
    move-exception p1

    :try_start_40
    const-string p2, "SemDisplayStateMonitor"

    const-string/jumbo p3, "onStart: "

    .line 133
    invoke-static {p2, p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    .line 134
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;

    .line 136
    :cond_4b
    :goto_4b
    monitor-exit v0

    return-void

    .line 117
    :cond_4d
    :goto_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    .line 136
    monitor-exit v0
    :try_end_51
    .catchall {:try_start_40 .. :try_end_51} :catchall_4f

    throw p0
.end method


# virtual methods
.method public onFinish(III)V
    .registers 6

    .line 142
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStart(III)V
    .registers 6

    .line 112
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;III)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerCallback(Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;)I
    .registers 6

    .line 94
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "SemDisplayStateMonitor"

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerCallback : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mDisplayState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mDisplayState:I

    .line 97
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;

    .line 98
    monitor-exit v0

    return v1

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public start()V
    .registers 4

    const-string v0, "SemDisplayStateMonitor"

    const-string/jumbo v1, "start"

    .line 80
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 82
    :try_start_b
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;->getDisplayState(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mDisplayState:I

    .line 83
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_b .. :try_end_16} :catchall_1c

    .line 84
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;->registerDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    return-void

    :catchall_1c
    move-exception p0

    .line 83
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public stop()V
    .registers 3

    const-string v0, "SemDisplayStateMonitor"

    const-string/jumbo v1, "stop"

    .line 88
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mInjector:Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;

    invoke-virtual {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor$Injector;->unregisterDisplayStateListener(Landroid/hardware/display/DisplayManagerInternal$DisplayStateListener;)V

    return-void
.end method

.method public unregisterCallback()V
    .registers 3

    const-string v0, "SemDisplayStateMonitor"

    const-string/jumbo v1, "unregisterCallback"

    .line 104
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 106
    :try_start_c
    iput-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemDisplayStateMonitor;->mCallback:Lcom/samsung/android/biometrics/ISemBiometricSysUiDisplayStateCallback;

    .line 107
    monitor-exit v0

    return-void

    :catchall_10
    move-exception p0

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw p0
.end method
