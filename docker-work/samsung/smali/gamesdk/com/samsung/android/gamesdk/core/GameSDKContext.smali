.class public Lcom/samsung/android/gamesdk/core/GameSDKContext;
.super Ljava/lang/Object;
.source "GameSDKContext.java"


# instance fields
.field private gameSDKListener:Lcom/samsung/android/gamesdk/IGameSDKListener;

.field private gameSDKVersion:Ljava/lang/String;

.field private gameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

.field private packageName:Ljava/lang/String;

.field private pid:I

.field private pidStatus:Z

.field private vrrIsUsed:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->pidStatus:Z

    .line 20
    const/4 v1, -0x1

    iput v1, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->pid:I

    .line 21
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKListener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    .line 22
    iput-object v1, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->packageName:Ljava/lang/String;

    .line 23
    const-string v2, "0.0"

    iput-object v2, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKVersion:Ljava/lang/String;

    .line 24
    iput-object v1, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    .line 25
    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->vrrIsUsed:Z

    .line 26
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ZLjava/lang/String;)V
    .registers 6
    .param p1, "pid"    # I
    .param p2, "version"    # Ljava/lang/String;
    .param p3, "status"    # Z
    .param p4, "packageName"    # Ljava/lang/String;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->pid:I

    .line 31
    iput-object p2, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKVersion:Ljava/lang/String;

    .line 32
    iput-boolean p3, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->pidStatus:Z

    .line 33
    iput-object p4, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->packageName:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKListener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    .line 36
    iput-object v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->vrrIsUsed:Z

    .line 38
    return-void
.end method


# virtual methods
.method getDumpString()Ljava/lang/String;
    .registers 6

    .line 41
    const-string v0, "\n"

    const-string v1, "["

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .local v2, "dumpString":Ljava/lang/StringBuilder;
    :try_start_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] package name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->pidStatus:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", listener: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKListener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->pid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] vrr: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    if-nez v3, :cond_6f

    const-string v3, "null"

    goto :goto_94

    :cond_6f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isUsed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->vrrIsUsed:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", last rr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    invoke-virtual {v4}, Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;->getCurrentSetRefreshRate()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_a3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_a3} :catch_a4

    .line 49
    goto :goto_a8

    .line 47
    :catch_a4
    move-exception v0

    .line 48
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_a8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGameSDKListener()Lcom/samsung/android/gamesdk/IGameSDKListener;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKListener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    return-object v0
.end method

.method public getGameSDKVersion()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getGameSDKVrr()Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;
    .registers 2

    .line 103
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public getPid()I
    .registers 2

    .line 87
    iget v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->pid:I

    return v0
.end method

.method public getVrrIsUsed()Z
    .registers 2

    .line 83
    iget-boolean v0, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->vrrIsUsed:Z

    return v0
.end method

.method public setGameSDKListener(Lcom/samsung/android/gamesdk/IGameSDKListener;)V
    .registers 2
    .param p1, "inGameSDKListener"    # Lcom/samsung/android/gamesdk/IGameSDKListener;

    .line 63
    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKListener:Lcom/samsung/android/gamesdk/IGameSDKListener;

    .line 64
    return-void
.end method

.method public setGameSDKVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "inGameSDKVersion"    # Ljava/lang/String;

    .line 71
    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKVersion:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setGameSDKVrr(Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;)V
    .registers 2
    .param p1, "inGameSDKVrr"    # Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    .line 75
    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->gameSDKVrr:Lcom/samsung/android/gamesdk/vrr/GameSDKVrr;

    .line 76
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "inPackageName"    # Ljava/lang/String;

    .line 67
    iput-object p1, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->packageName:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public setPid(I)V
    .registers 2
    .param p1, "inPid"    # I

    .line 59
    iput p1, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->pid:I

    .line 60
    return-void
.end method

.method public setPidStatus(Z)V
    .registers 2
    .param p1, "inPidStatus"    # Z

    .line 55
    iput-boolean p1, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->pidStatus:Z

    .line 56
    return-void
.end method

.method public setVrrIsUsed(Z)V
    .registers 2
    .param p1, "isUsed"    # Z

    .line 79
    iput-boolean p1, p0, Lcom/samsung/android/gamesdk/core/GameSDKContext;->vrrIsUsed:Z

    .line 80
    return-void
.end method
