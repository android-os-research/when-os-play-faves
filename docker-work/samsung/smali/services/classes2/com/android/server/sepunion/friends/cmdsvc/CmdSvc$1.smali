.class public Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;
.super Ljava/lang/Object;
.source "CmdSvc.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const/4 p1, 0x1

    new-array v0, p1, [Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    invoke-static {v1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->-$$Nest$fgetmConnectedAtLeastOnce(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "CmdSvc"

    const-string/jumbo v2, "onServiceConnected %s"

    invoke-static {v1, v2, v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 42
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    invoke-static {v0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->-$$Nest$fgetmConnectedAtLeastOnce(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Z

    move-result v0

    if-nez v0, :cond_3d

    .line 43
    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    invoke-static {v0, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->-$$Nest$fputmConnectedAtLeastOnce(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;Z)V

    .line 45
    iget-object p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    invoke-static {p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->-$$Nest$fgetmBlockingQueue(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Ljava/util/concurrent/BlockingDeque;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 47
    :try_start_2e
    iget-object p0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    invoke-static {p0}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->-$$Nest$fgetmBlockingQueue(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;)Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_37
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_37} :catch_38

    goto :goto_47

    :catch_38
    move-exception p0

    .line 49
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_47

    .line 52
    :cond_3d
    iget-object p0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    invoke-static {p0, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->-$$Nest$msetClient(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;Landroid/os/Messenger;)V

    :goto_47
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 58
    iget-object p0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc$1;->this$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;->-$$Nest$msetClient(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvc;Landroid/os/Messenger;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "CmdSvc"

    const-string/jumbo v0, "onServiceDisconnected "

    .line 60
    invoke-static {p1, v0, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
