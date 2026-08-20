.class public Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;
.super Ljava/lang/Thread;
.source "ActivityManagerShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->waitControllerLocked(II)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

.field public final synthetic val$converter:Ljava/io/InputStreamReader;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;Ljava/io/InputStreamReader;)V
    .registers 3

    .line 1500
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1503
    new-instance v0, Ljava/io/BufferedReader;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->val$converter:Ljava/io/InputStreamReader;

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v1, 0x0

    .line 1507
    :goto_8
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    monitor-enter v2

    .line 1508
    :try_start_b
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v4, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGdbThread:Ljava/lang/Thread;

    if-nez v4, :cond_13

    .line 1509
    monitor-exit v2

    return-void

    :cond_13
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1c

    const/4 v4, 0x1

    .line 1512
    iput-boolean v4, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mGotGdbPrint:Z

    .line 1513
    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 1515
    :cond_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_47

    .line 1517
    :try_start_1d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_24

    return-void

    .line 1521
    :cond_24
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GDB: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerShellCommand$MyActivityController;->mPw:Ljava/io/PrintWriter;

    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_43} :catch_46

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :catch_46
    return-void

    :catchall_47
    move-exception p0

    .line 1515
    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p0
.end method
