.class public Lcom/android/server/health/HealthRegCallbackAidl;
.super Ljava/lang/Object;
.source "HealthRegCallbackAidl.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
    visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "HealthRegCallbackAidl"


# instance fields
.field public final mHalInfoCallback:Lvendor/samsung/hardware/health/ISehHealthInfoCallback;

.field public final mServiceInfoCallback:Lcom/android/server/health/HealthInfoCallback;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmServiceInfoCallback(Lcom/android/server/health/HealthRegCallbackAidl;)Lcom/android/server/health/HealthInfoCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mServiceInfoCallback:Lcom/android/server/health/HealthInfoCallback;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/health/HealthInfoCallback;)V
    .registers 4

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback;-><init>(Lcom/android/server/health/HealthRegCallbackAidl;Lcom/android/server/health/HealthRegCallbackAidl$HalInfoCallback-IA;)V

    iput-object v0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mHalInfoCallback:Lvendor/samsung/hardware/health/ISehHealthInfoCallback;

    .line 63
    iput-object p1, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mServiceInfoCallback:Lcom/android/server/health/HealthInfoCallback;

    return-void
.end method

.method public static registerCallback(Lvendor/samsung/hardware/health/ISehHealth;Lvendor/samsung/hardware/health/ISehHealthInfoCallback;)V
    .registers 4

    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerCallback: newService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HealthRegCallbackAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :try_start_17
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/health/ISehHealth;->registerCallback(Lvendor/samsung/hardware/health/ISehHealthInfoCallback;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1a} :catch_26

    .line 132
    :try_start_1a
    invoke-interface {p0}, Lvendor/samsung/hardware/health/ISehHealth;->update()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_25

    :catch_1e
    move-exception p0

    const-string/jumbo p1, "health: cannot update after registering health info callback"

    .line 134
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_25
    return-void

    :catch_26
    move-exception p0

    const-string/jumbo p1, "health: cannot register callback, framework may cease to receive updates on health / battery info!"

    .line 122
    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static unregisterCallback(Lvendor/samsung/hardware/health/ISehHealth;Lvendor/samsung/hardware/health/ISehHealthInfoCallback;)V
    .registers 4

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterCallback: oldService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HealthRegCallbackAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p0, :cond_1a

    return-void

    .line 104
    :cond_1a
    :try_start_1a
    invoke-interface {p0, p1}, Lvendor/samsung/hardware/health/ISehHealth;->unregisterCallback(Lvendor/samsung/hardware/health/ISehHealthInfoCallback;)V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1d} :catch_1e

    goto :goto_38

    :catch_1e
    move-exception p0

    .line 107
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "health: cannot unregister previous callback (transaction error): "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 107
    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return-void
.end method


# virtual methods
.method public onRegistration(Lvendor/samsung/hardware/health/ISehHealth;Lvendor/samsung/hardware/health/ISehHealth;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PACKAGE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onRegistration: oldService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " newService: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HealthRegCallbackAidl"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mServiceInfoCallback:Lcom/android/server/health/HealthInfoCallback;

    if-nez v0, :cond_24

    return-void

    :cond_24
    const-wide/32 v0, 0x80000

    const-string v2, "HealthUnregisterCallbackAidl"

    .line 82
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 84
    :try_start_2c
    iget-object v2, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mHalInfoCallback:Lvendor/samsung/hardware/health/ISehHealthInfoCallback;

    invoke-static {p1, v2}, Lcom/android/server/health/HealthRegCallbackAidl;->unregisterCallback(Lvendor/samsung/hardware/health/ISehHealth;Lvendor/samsung/hardware/health/ISehHealthInfoCallback;)V
    :try_end_31
    .catchall {:try_start_2c .. :try_end_31} :catchall_47

    .line 86
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    const-string p1, "HealthRegisterCallbackAidl"

    .line 89
    invoke-static {v0, v1, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 91
    :try_start_39
    iget-object p0, p0, Lcom/android/server/health/HealthRegCallbackAidl;->mHalInfoCallback:Lvendor/samsung/hardware/health/ISehHealthInfoCallback;

    invoke-static {p2, p0}, Lcom/android/server/health/HealthRegCallbackAidl;->registerCallback(Lvendor/samsung/hardware/health/ISehHealth;Lvendor/samsung/hardware/health/ISehHealthInfoCallback;)V
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_42

    .line 93
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_42
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 94
    throw p0

    :catchall_47
    move-exception p0

    .line 86
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 87
    throw p0
.end method
