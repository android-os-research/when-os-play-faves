.class public Lcom/android/server/display/RefreshRateTokenController;
.super Ljava/lang/Object;
.source "RefreshRateTokenController.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "RefreshRateTokenController"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mRefreshRateTokenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/RefreshRateToken;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/RefreshRateTokenController;->mRefreshRateTokenList:Ljava/util/ArrayList;

    .line 40
    iput-object p1, p0, Lcom/android/server/display/RefreshRateTokenController;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public createRefreshRateToken(Lcom/android/server/display/RefreshRateToken;Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;)Lcom/samsung/android/hardware/display/IRefreshRateToken;
    .registers 5

    .line 45
    iget-object v0, p0, Lcom/android/server/display/RefreshRateTokenController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 46
    :try_start_3
    iget-object v1, p0, Lcom/android/server/display/RefreshRateTokenController;->mRefreshRateTokenList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/android/server/display/RefreshRateTokenController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/RefreshRateTokenController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/RefreshRateTokenController;)V

    invoke-virtual {p1, p2, v1}, Lcom/android/server/display/RefreshRateToken;->init(Lcom/android/server/display/RefreshRateToken$RefreshRateTokenInfo;Ljava/util/function/Consumer;)V

    .line 48
    invoke-virtual {p1}, Lcom/android/server/display/RefreshRateToken;->updateVote()V

    .line 49
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_3a

    const-string p0, "RefreshRateTokenController"

    .line 50
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Adding refreshRateToken="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", caller="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x5

    .line 51
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 50
    invoke-static {p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    :cond_3a
    monitor-exit v0

    return-object p1

    :catchall_3c
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5

    .line 73
    iget-object v0, p0, Lcom/android/server/display/RefreshRateTokenController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  RefreshRateTokens:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/RefreshRateTokenController;->mRefreshRateTokenList:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public getRefreshRateTokenList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/display/RefreshRateToken;",
            ">;"
        }
    .end annotation

    .line 69
    iget-object p0, p0, Lcom/android/server/display/RefreshRateTokenController;->mRefreshRateTokenList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public removeRefreshRateToken(Lcom/android/server/display/RefreshRateToken;)V
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/android/server/display/RefreshRateTokenController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_3
    iget-object p0, p0, Lcom/android/server/display/RefreshRateTokenController;->mRefreshRateTokenList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p1}, Lcom/android/server/display/RefreshRateToken;->updateVote()V

    .line 61
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p0, :cond_32

    const-string p0, "RefreshRateTokenController"

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing refreshRateToken="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", caller="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x5

    .line 63
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_32
    monitor-exit v0

    return-void

    :catchall_34
    move-exception p0

    monitor-exit v0
    :try_end_36
    .catchall {:try_start_3 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public updateRefreshRateMaxLimitTokenLocked(Z)V
    .registers 4

    .line 79
    iget-object p0, p0, Lcom/android/server/display/RefreshRateTokenController;->mRefreshRateTokenList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/RefreshRateToken;

    .line 80
    instance-of v1, v0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitToken;

    if-eqz v1, :cond_6

    .line 81
    check-cast v0, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitToken;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$RefreshRateMaxLimitToken;->updateVote(Z)V

    :cond_1b
    return-void
.end method
