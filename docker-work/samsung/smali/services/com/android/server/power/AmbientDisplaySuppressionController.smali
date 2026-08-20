.class public Lcom/android/server/power/AmbientDisplaySuppressionController;
.super Ljava/lang/Object;
.source "AmbientDisplaySuppressionController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "AmbientDisplaySuppressionController"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field public final mSuppressionTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object p1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mContext:Landroid/content/Context;

    .line 49
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    invoke-static {p1}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "AmbientDisplaySuppressionController:"

    .line 117
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ambientDisplaySuppressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSuppressionTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;
    .registers 2

    monitor-enter p0

    .line 123
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_12

    const-string/jumbo v0, "statusbar"

    .line 125
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 127
    :cond_12
    iget-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSuppressionTokens(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 85
    iget-object v1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    monitor-enter v1

    .line 86
    :try_start_8
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    .line 87
    iget-object v3, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_e

    .line 88
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 91
    :cond_2c
    monitor-exit v1

    return-object v0

    :catchall_2e
    move-exception p0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_8 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public isSuppressed()Z
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public isSuppressed(Ljava/lang/String;I)Z
    .registers 3

    .line 102
    iget-object p0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public suppress(Ljava/lang/String;IZ)V
    .registers 4

    .line 60
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p3, :cond_13

    .line 63
    iget-object p2, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_18

    .line 65
    :cond_13
    iget-object p2, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-interface {p2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 69
    :goto_18
    :try_start_18
    iget-object p1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    monitor-enter p1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_2b

    .line 70
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    move-result p0

    invoke-interface {p2, p0}, Lcom/android/internal/statusbar/IStatusBarService;->suppressAmbientDisplay(Z)V

    .line 71
    monitor-exit p1

    goto :goto_33

    :catchall_28
    move-exception p0

    monitor-exit p1
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_28

    :try_start_2a
    throw p0
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception p0

    const-string p1, "AmbientDisplaySuppressionController"

    const-string p2, "Failed to suppress ambient display"

    .line 73
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_33
    return-void
.end method
