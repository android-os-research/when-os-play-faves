.class public Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;
.super Ljava/lang/Object;
.source "SemFpAodController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SemFpAodController"


# instance fields
.field public mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mH:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mIsDozeMode:Z

.field public mIsHlpmMode:Z

.field public final mPendingRequestBeforeListener:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FHH83-fo8WhLS2vrzX8xiDEBf_8(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->lambda$unregisterController$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$GHPRzYMvgGJ0WR-SfcFkWmws-TQ(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->lambda$hideAodScreen$10()V

    return-void
.end method

.method public static synthetic $r8$lambda$IMY8d6rViXTfMm8kmhyavP5wRD8(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->lambda$turnOnDozeMode$3(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TF2TG62KZt-Sv5Qm9PNAmq6gU8M(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->lambda$turnOnDozeMode$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$W-Bmvs6MOCri93O0BlSlm7X6Cfc(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->lambda$turnOnDozeHlpmMode$7(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Z9YyCtYlvwvCdWtpWeD_f6DqVfw(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->lambda$turnOffDozeMode$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$ebSBwtQ-ks_CxE6CbFiQfgQSZck(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->lambda$turnOffDozeHlpmMode$8()V

    return-void
.end method

.method public static synthetic $r8$lambda$j0pKzTVkSYgT6qy8iE7KuDbP31M(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->lambda$turnOffDozeHlpmMode$9(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$po5TGzRKjzr4mORQaIUen3rnE6s(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->lambda$turnOnDozeHlpmMode$6()V

    return-void
.end method

.method public static synthetic $r8$lambda$vOGBb85Tmlm9lxEK6MFiWnT590A(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->lambda$registerController$0(Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yILCPj07TPc-RabOV3qi_1PRvr8(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Ljava/lang/Runnable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->lambda$turnOffDozeMode$5(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;->get()Lcom/android/server/biometrics/sensors/fingerprint/SemFpMainThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mPendingRequestBeforeListener:Ljava/util/ArrayList;

    return-void
.end method

.method private synthetic lambda$hideAodScreen$10()V
    .registers 3

    .line 131
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    if-eqz p0, :cond_24

    .line 133
    :try_start_4
    invoke-interface {p0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;->hideAodScreen()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_24

    :catch_8
    move-exception p0

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "hideAodScreen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SemFpAodController"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    :goto_24
    return-void
.end method

.method private synthetic lambda$registerController$0(Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;)V
    .registers 3

    .line 35
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    .line 36
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mPendingRequestBeforeListener:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 37
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_8

    .line 39
    :cond_18
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mPendingRequestBeforeListener:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private synthetic lambda$turnOffDozeHlpmMode$8()V
    .registers 4

    .line 111
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsHlpmMode:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    if-eqz v0, :cond_28

    .line 113
    :try_start_8
    invoke-interface {v0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;->turnOffDozeHlpmMode()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_28

    :catch_c
    move-exception v0

    .line 115
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "turnOffDozeHlpmMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFpAodController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_28
    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsHlpmMode:Z

    return-void
.end method

.method private synthetic lambda$turnOffDozeHlpmMode$9(Ljava/lang/Runnable;)V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    if-nez v0, :cond_a

    .line 122
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mPendingRequestBeforeListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 124
    :cond_a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_d
    return-void
.end method

.method private synthetic lambda$turnOffDozeMode$4()V
    .registers 4

    .line 70
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsDozeMode:Z

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    if-eqz v0, :cond_28

    .line 72
    :try_start_8
    invoke-interface {v0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;->turnOffDozeMode()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_28

    :catch_c
    move-exception v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "turnOffDozeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFpAodController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_28
    const/4 v0, 0x0

    .line 78
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsDozeMode:Z

    return-void
.end method

.method private synthetic lambda$turnOffDozeMode$5(Ljava/lang/Runnable;)V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    if-nez v0, :cond_a

    .line 82
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mPendingRequestBeforeListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 84
    :cond_a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_d
    return-void
.end method

.method private synthetic lambda$turnOnDozeHlpmMode$6()V
    .registers 4

    .line 91
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsHlpmMode:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    if-eqz v0, :cond_28

    .line 93
    :try_start_8
    invoke-interface {v0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;->turnOnDozeHlpmMode()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_28

    :catch_c
    move-exception v0

    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "turnOnDozeHlpmMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFpAodController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_28
    const/4 v0, 0x1

    .line 98
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsHlpmMode:Z

    return-void
.end method

.method private synthetic lambda$turnOnDozeHlpmMode$7(Ljava/lang/Runnable;)V
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    if-nez v0, :cond_a

    .line 102
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mPendingRequestBeforeListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 104
    :cond_a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_d
    return-void
.end method

.method private synthetic lambda$turnOnDozeMode$2()V
    .registers 4

    .line 50
    iget-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsDozeMode:Z

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    if-eqz v0, :cond_28

    .line 52
    :try_start_8
    invoke-interface {v0}, Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;->turnOnDozeMode()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_c

    goto :goto_28

    :catch_c
    move-exception v0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "turnOnDozeMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SemFpAodController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_28
    :goto_28
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mIsDozeMode:Z

    return-void
.end method

.method private synthetic lambda$turnOnDozeMode$3(Ljava/lang/Runnable;)V
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    if-nez v0, :cond_a

    .line 61
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mPendingRequestBeforeListener:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 63
    :cond_a
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_d
    return-void
.end method

.method private synthetic lambda$unregisterController$1()V
    .registers 2

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mAodController:Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;

    return-void
.end method


# virtual methods
.method public hideAodScreen()V
    .registers 3

    .line 130
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public registerController(Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;)V
    .registers 4

    .line 34
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Lcom/samsung/android/bio/fingerprint/ISemFingerprintAodController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public turnOffDozeHlpmMode()V
    .registers 4

    .line 110
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;)V

    .line 120
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public turnOffDozeMode()V
    .registers 4

    .line 69
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;)V

    .line 80
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public turnOnDozeHlpmMode()V
    .registers 4

    .line 90
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;)V

    .line 100
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public turnOnDozeMode()V
    .registers 4

    .line 49
    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;)V

    .line 59
    iget-object v1, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public unregisterController()V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 45
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;->mH:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/SemFpAodController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
