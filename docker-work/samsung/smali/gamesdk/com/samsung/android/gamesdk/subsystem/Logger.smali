.class public Lcom/samsung/android/gamesdk/subsystem/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gamesdk/subsystem/Logger$Singleton;
    }
.end annotation


# static fields
.field private static final QUEUE_SIZE_LIMIT:I = 0x14


# instance fields
.field private mCurrentPkgName:Ljava/lang/String;

.field private final mLogQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/Logger;->mCurrentPkgName:Ljava/lang/String;

    .line 18
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/Logger;->mLogQueue:Ljava/util/Queue;

    .line 19
    return-void
.end method

.method public static getInstance()Lcom/samsung/android/gamesdk/subsystem/Logger;
    .registers 1

    .line 104
    # getter for: Lcom/samsung/android/gamesdk/subsystem/Logger$Singleton;->instance:Lcom/samsung/android/gamesdk/subsystem/Logger;
    invoke-static {}, Lcom/samsung/android/gamesdk/subsystem/Logger$Singleton;->access$000()Lcom/samsung/android/gamesdk/subsystem/Logger;

    move-result-object v0

    return-object v0
.end method

.method static replaceForbiddenString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .line 108
    if-nez p0, :cond_4

    .line 109
    const/4 v0, 0x0

    return-object v0

    .line 113
    :cond_4
    const-string v0, "com.att.iqi"

    const-string v1, "PKG_01"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public LOGD(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 38
    sget-boolean v0, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    if-eqz v0, :cond_12

    .line 39
    invoke-static {p2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->replaceForbiddenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {p2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->replaceForbiddenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/gamesdk/subsystem/Logger;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_12
    return-void
.end method

.method public LOGE(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 62
    invoke-static {p2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->replaceForbiddenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-static {p2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->replaceForbiddenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/gamesdk/subsystem/Logger;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public LOGI(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "bForce"    # Z
    .param p3, "msg"    # Ljava/lang/String;

    .line 46
    if-nez p2, :cond_6

    sget-boolean v0, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    if-eqz v0, :cond_14

    .line 47
    :cond_6
    invoke-static {p3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->replaceForbiddenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-static {p3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->replaceForbiddenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/gamesdk/subsystem/Logger;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_14
    return-void
.end method

.method public LOGV(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 31
    sget-boolean v0, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    if-eqz v0, :cond_b

    .line 32
    invoke-static {p2}, Lcom/samsung/android/gamesdk/subsystem/Logger;->replaceForbiddenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    :cond_b
    return-void
.end method

.method public LOGW(Ljava/lang/String;ZLjava/lang/String;)V
    .registers 5
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "bForce"    # Z
    .param p3, "msg"    # Ljava/lang/String;

    .line 54
    if-nez p2, :cond_6

    sget-boolean v0, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    if-eqz v0, :cond_14

    .line 55
    :cond_6
    invoke-static {p3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->replaceForbiddenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-static {p3}, Lcom/samsung/android/gamesdk/subsystem/Logger;->replaceForbiddenString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/gamesdk/subsystem/Logger;->addLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_14
    return-void
.end method

.method protected addLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "TAG"    # Ljava/lang/String;
    .param p2, "msg"    # Ljava/lang/String;

    .line 68
    :try_start_0
    sget-boolean v0, Lcom/samsung/android/gamesdk/Const;->DEBUG:Z

    if-eqz v0, :cond_55

    .line 69
    new-instance v0, Ljava/sql/Timestamp;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Timestamp;-><init>(J)V

    .line 70
    .local v0, "timestamp":Ljava/sql/Timestamp;
    monitor-enter p0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_56

    .line 71
    :try_start_e
    iget-object v1, p0, Lcom/samsung/android/gamesdk/subsystem/Logger;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_1d

    .line 72
    iget-object v1, p0, Lcom/samsung/android/gamesdk/subsystem/Logger;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 74
    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/gamesdk/subsystem/Logger;->mCurrentPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .local v1, "log":Ljava/lang/String;
    iget-object v2, p0, Lcom/samsung/android/gamesdk/subsystem/Logger;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v2, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 76
    nop

    .end local v1    # "log":Ljava/lang/String;
    monitor-exit p0

    goto :goto_55

    :catchall_52
    move-exception v1

    monitor-exit p0
    :try_end_54
    .catchall {:try_start_e .. :try_end_54} :catchall_52

    .end local p0    # "this":Lcom/samsung/android/gamesdk/subsystem/Logger;
    .end local p1    # "TAG":Ljava/lang/String;
    .end local p2    # "msg":Ljava/lang/String;
    :try_start_54
    throw v1
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_55} :catch_56

    .line 80
    .end local v0    # "timestamp":Ljava/sql/Timestamp;
    .restart local p0    # "this":Lcom/samsung/android/gamesdk/subsystem/Logger;
    .restart local p1    # "TAG":Ljava/lang/String;
    .restart local p2    # "msg":Ljava/lang/String;
    :cond_55
    :goto_55
    goto :goto_73

    .line 78
    :catch_56
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "GameSDK@Logger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AddLog(): msg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_73
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 85
    const-string v0, "----------------------------"

    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/gamesdk/subsystem/Logger;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->size()I

    move-result v1

    if-lez v1, :cond_2b

    .line 86
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 87
    const-string v1, "GameSDKLogger :"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/samsung/android/gamesdk/subsystem/Logger;->mLogQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 90
    .local v2, "log":Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    .end local v2    # "log":Ljava/lang/String;
    goto :goto_18

    .line 92
    :cond_28
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2b} :catch_2c

    .line 96
    :cond_2b
    goto :goto_30

    .line 94
    :catch_2c
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_30
    return-void
.end method

.method public releaseCurrentPkgName()V
    .registers 2

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gamesdk/subsystem/Logger;->mCurrentPkgName:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setCurrentPkgName(Ljava/lang/String;)V
    .registers 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 22
    iput-object p1, p0, Lcom/samsung/android/gamesdk/subsystem/Logger;->mCurrentPkgName:Ljava/lang/String;

    .line 23
    return-void
.end method
