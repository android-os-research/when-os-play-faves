.class public Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;
.super Ljava/lang/Object;
.source "CmdSvcFacade.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final WAIT_TIMEOUT:I = 0x7d0


# instance fields
.field public final mBlockingDeque:Ljava/util/concurrent/BlockingDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingDeque<",
            "TT;>;"
        }
    .end annotation
.end field

.field public volatile mCompleted:Z

.field public final mContext:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$mBLxYg2lmNHdkgIiyl3VHFVAsZE(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;Ljava/lang/Thread;Landroid/os/Message;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->lambda$perform$0(Ljava/lang/Thread;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/LinkedBlockingDeque;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    .line 22
    iput-object p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mContext:Landroid/content/Context;

    return-void
.end method

.method private synthetic lambda$perform$0(Ljava/lang/Thread;Landroid/os/Message;)Z
    .registers 3

    .line 59
    invoke-virtual {p0, p2, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->handleMsg(Landroid/os/Message;Ljava/lang/Thread;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final handleMsg(Landroid/os/Message;Ljava/lang/Thread;)Z
    .registers 5

    const/4 v0, 0x1

    .line 27
    :try_start_1
    iget-boolean v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez v1, :cond_12

    if-eqz p1, :cond_12

    .line 28
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_12

    .line 30
    iget-object v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    .line 31
    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_2b

    .line 38
    :cond_12
    iget-boolean p0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez p0, :cond_42

    .line 40
    :try_start_16
    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_42

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p0

    if-nez p0, :cond_42

    .line 41
    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_25
    .catchall {:try_start_16 .. :try_end_25} :catchall_26

    goto :goto_42

    :catchall_26
    move-exception p0

    .line 44
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_42

    :catchall_2b
    move-exception p1

    .line 36
    :try_start_2c
    invoke-static {p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_43

    .line 38
    iget-boolean p0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez p0, :cond_42

    .line 40
    :try_start_33
    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_42

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p0

    if-nez p0, :cond_42

    .line 41
    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_42
    .catchall {:try_start_33 .. :try_end_42} :catchall_26

    :cond_42
    :goto_42
    return v0

    :catchall_43
    move-exception p1

    .line 38
    iget-boolean p0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    if-nez p0, :cond_5c

    .line 40
    :try_start_48
    invoke-virtual {p2}, Ljava/lang/Thread;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_5c

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p0

    if-nez p0, :cond_5c

    .line 41
    invoke-virtual {p2}, Ljava/lang/Thread;->interrupt()V
    :try_end_57
    .catchall {:try_start_48 .. :try_end_57} :catchall_58

    goto :goto_5c

    :catchall_58
    move-exception p0

    .line 44
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    .line 47
    :cond_5c
    :goto_5c
    throw p1
.end method

.method public perform(Ljava/util/function/Predicate;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;",
            ">;)TT;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingDeque;->clear()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    .line 57
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;Ljava/lang/Thread;)V

    invoke-direct {v2, v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    invoke-static {v1, v2}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->createClosableInstance(Landroid/content/Context;Landroid/os/Handler;)Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    move-result-object v0

    if-eqz v0, :cond_44

    if-eqz p1, :cond_44

    .line 60
    :try_start_24
    invoke-interface {p1, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_3a

    if-eqz p1, :cond_44

    .line 62
    :try_start_2a
    iget-object p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mBlockingDeque:Ljava/util/concurrent/BlockingDeque;

    const-wide/16 v1, 0x7d0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v1, v2, v3}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object p1
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_35

    goto :goto_45

    :catchall_35
    move-exception p1

    .line 64
    :try_start_36
    invoke-static {p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_44

    :catchall_3a
    move-exception p0

    .line 58
    :try_start_3b
    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_43
    throw p0

    :cond_44
    :goto_44
    const/4 p1, 0x0

    :goto_45
    if-eqz v0, :cond_4a

    .line 67
    invoke-virtual {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->close()V

    :cond_4a
    const/4 v0, 0x1

    .line 69
    iput-boolean v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->mCompleted:Z

    return-object p1
.end method
