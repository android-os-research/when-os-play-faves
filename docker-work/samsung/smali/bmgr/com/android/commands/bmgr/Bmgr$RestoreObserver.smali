.class Lcom/android/commands/bmgr/Bmgr$RestoreObserver;
.super Landroid/app/backup/IRestoreObserver$Stub;
.source "Bmgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/bmgr/Bmgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RestoreObserver"
.end annotation


# instance fields
.field done:Z

.field sets:[Landroid/app/backup/RestoreSet;

.field final synthetic this$0:Lcom/android/commands/bmgr/Bmgr;


# direct methods
.method constructor <init>(Lcom/android/commands/bmgr/Bmgr;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/commands/bmgr/Bmgr;

    .line 739
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->this$0:Lcom/android/commands/bmgr/Bmgr;

    invoke-direct {p0}, Landroid/app/backup/IRestoreObserver$Stub;-><init>()V

    .line 741
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    return-void
.end method


# virtual methods
.method public onUpdate(ILjava/lang/String;)V
    .registers 6
    .param p1, "nowBeingRestored"    # I
    .param p2, "currentPackage"    # Ljava/lang/String;

    .line 756
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpdate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 757
    return-void
.end method

.method public restoreFinished(I)V
    .registers 5
    .param p1, "error"    # I

    .line 760
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreFinished: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 761
    monitor-enter p0

    .line 762
    const/4 v0, 0x1

    :try_start_1a
    iput-boolean v0, p0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->done:Z

    .line 763
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 764
    monitor-exit p0

    .line 765
    return-void

    .line 764
    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_21

    throw v0
.end method

.method public restoreSetsAvailable([Landroid/app/backup/RestoreSet;)V
    .registers 3
    .param p1, "result"    # [Landroid/app/backup/RestoreSet;

    .line 744
    monitor-enter p0

    .line 745
    :try_start_1
    iput-object p1, p0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->sets:[Landroid/app/backup/RestoreSet;

    .line 746
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->done:Z

    .line 747
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 748
    monitor-exit p0

    .line 749
    return-void

    .line 748
    :catchall_b
    move-exception v0

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_b

    throw v0
.end method

.method public restoreStarting(I)V
    .registers 5
    .param p1, "numPackages"    # I

    .line 752
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreStarting: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " packages"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 753
    return-void
.end method

.method public waitForCompletion()V
    .registers 2

    .line 775
    monitor-enter p0

    .line 776
    :goto_1
    :try_start_1
    iget-boolean v0, p0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->done:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_10

    if-nez v0, :cond_b

    .line 778
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_8} :catch_9
    .catchall {:try_start_5 .. :try_end_8} :catchall_10

    .line 780
    :goto_8
    goto :goto_1

    .line 779
    :catch_9
    move-exception v0

    goto :goto_8

    .line 782
    :cond_b
    const/4 v0, 0x0

    :try_start_c
    iput-boolean v0, p0, Lcom/android/commands/bmgr/Bmgr$RestoreObserver;->done:Z

    .line 783
    monitor-exit p0

    .line 784
    return-void

    .line 783
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_10

    throw v0
.end method
