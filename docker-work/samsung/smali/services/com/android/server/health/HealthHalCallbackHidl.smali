.class public Lcom/android/server/health/HealthHalCallbackHidl;
.super Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;
.source "HealthHalCallbackHidl.java"

# interfaces
.implements Lcom/android/server/health/HealthServiceWrapperHidl$Callback;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mCallback:Lcom/android/server/health/HealthInfoCallback;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 51
    const-class v0, Lcom/android/server/health/HealthHalCallbackHidl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/health/HealthInfoCallback;)V
    .registers 2

    .line 63
    invoke-direct {p0}, Lvendor/samsung/hardware/health/V2_0/ISehHealthInfoCallback$Stub;-><init>()V

    .line 64
    iput-object p1, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/health/HealthInfoCallback;

    return-void
.end method

.method public static traceBegin(Ljava/lang/String;)V
    .registers 3

    const-wide/32 v0, 0x80000

    .line 54
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    return-void
.end method

.method public static traceEnd()V
    .registers 2

    const-wide/32 v0, 0x80000

    .line 58
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method


# virtual methods
.method public healthInfoChanged(Landroid/hardware/health/V2_0/HealthInfo;)V
    .registers 6

    .line 82
    new-instance v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;-><init>()V

    .line 84
    iget-object v1, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    iput-object p1, v1, Landroid/hardware/health/V2_1/HealthInfo;->legacy:Landroid/hardware/health/V2_0/HealthInfo;

    const/4 p1, -0x1

    .line 86
    iput p1, v1, Landroid/hardware/health/V2_1/HealthInfo;->batteryCapacityLevel:I

    const-wide/16 v2, -0x1

    .line 87
    iput-wide v2, v1, Landroid/hardware/health/V2_1/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 93
    iget-object p0, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/health/HealthInfoCallback;

    invoke-static {v0}, Lvendor/samsung/hardware/health/Translate;->h2saTranslate(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)Lvendor/samsung/hardware/health/SehHealthInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/health/HealthInfoCallback;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    return-void
.end method

.method public healthInfoChanged_2_1(Landroid/hardware/health/V2_1/HealthInfo;)V
    .registers 3

    .line 101
    new-instance v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;

    invoke-direct {v0}, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;-><init>()V

    .line 103
    iput-object p1, v0, Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;->legacy:Landroid/hardware/health/V2_1/HealthInfo;

    .line 107
    iget-object p0, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/health/HealthInfoCallback;

    invoke-static {v0}, Lvendor/samsung/hardware/health/Translate;->h2saTranslate(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)Lvendor/samsung/hardware/health/SehHealthInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/health/HealthInfoCallback;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    return-void
.end method

.method public onRegistration(Landroid/hardware/health/V2_0/IHealth;Landroid/hardware/health/V2_0/IHealth;Ljava/lang/String;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    const-string p3, "HealthUnregisterCallback"

    .line 123
    invoke-static {p3}, Lcom/android/server/health/HealthHalCallbackHidl;->traceBegin(Ljava/lang/String;)V

    if-eqz p1, :cond_4f

    .line 126
    :try_start_a
    invoke-interface {p1, p0}, Landroid/hardware/health/V2_0/IHealth;->unregisterCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p1

    if-eqz p1, :cond_4f

    .line 128
    sget-object p3, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "health: cannot unregister previous callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-static {p1}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 128
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_2b} :catch_2e
    .catchall {:try_start_a .. :try_end_2b} :catchall_2c

    goto :goto_4f

    :catchall_2c
    move-exception p0

    goto :goto_4b

    :catch_2e
    move-exception p1

    .line 134
    :try_start_2f
    sget-object p3, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "health: cannot unregister previous callback (transaction error): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 134
    invoke-static {p3, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4a
    .catchall {:try_start_2f .. :try_end_4a} :catchall_2c

    goto :goto_4f

    .line 139
    :goto_4b
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 140
    throw p0

    .line 139
    :cond_4f
    :goto_4f
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    const-string p1, "HealthRegisterCallback"

    .line 142
    invoke-static {p1}, Lcom/android/server/health/HealthHalCallbackHidl;->traceBegin(Ljava/lang/String;)V

    .line 144
    :try_start_57
    invoke-interface {p2, p0}, Landroid/hardware/health/V2_0/IHealth;->registerCallback(Landroid/hardware/health/V2_0/IHealthInfoCallback;)I

    move-result p0

    if-eqz p0, :cond_7c

    .line 146
    sget-object p1, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "health: cannot register callback: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/hardware/health/V2_0/Result;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_78
    .catch Landroid/os/RemoteException; {:try_start_57 .. :try_end_78} :catch_85
    .catchall {:try_start_57 .. :try_end_78} :catchall_83

    .line 155
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    return-void

    .line 151
    :cond_7c
    :try_start_7c
    invoke-interface {p2}, Landroid/hardware/health/V2_0/IHealth;->update()I
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_7f} :catch_85
    .catchall {:try_start_7c .. :try_end_7f} :catchall_83

    .line 155
    :goto_7f
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    goto :goto_a2

    :catchall_83
    move-exception p0

    goto :goto_a3

    :catch_85
    move-exception p0

    .line 153
    :try_start_86
    sget-object p1, Lcom/android/server/health/HealthHalCallbackHidl;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "health: cannot register callback (transaction error): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a1
    .catchall {:try_start_86 .. :try_end_a1} :catchall_83

    goto :goto_7f

    :goto_a2
    return-void

    .line 155
    :goto_a3
    invoke-static {}, Lcom/android/server/health/HealthHalCallbackHidl;->traceEnd()V

    .line 156
    throw p0
.end method

.method public sehHealthInfoChanged_2_1(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)V
    .registers 2

    .line 114
    iget-object p0, p0, Lcom/android/server/health/HealthHalCallbackHidl;->mCallback:Lcom/android/server/health/HealthInfoCallback;

    invoke-static {p1}, Lvendor/samsung/hardware/health/Translate;->h2saTranslate(Lvendor/samsung/hardware/health/V2_0/SehHealthInfo;)Lvendor/samsung/hardware/health/SehHealthInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/health/HealthInfoCallback;->update(Lvendor/samsung/hardware/health/SehHealthInfo;)V

    return-void
.end method
