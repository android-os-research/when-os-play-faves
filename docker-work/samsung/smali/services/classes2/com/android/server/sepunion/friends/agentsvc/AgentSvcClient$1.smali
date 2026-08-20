.class public Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;
.super Ljava/lang/Object;
.source "AgentSvcClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    .line 37
    iget-object v1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-static {v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->-$$Nest$fgetmConnectedAtLeastOnce(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p1, v2

    iget-object v1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-static {v1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->-$$Nest$fgetmBlockingQueue(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingDeque;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, p1, v3

    const-string v1, "AgentSvcClient"

    const-string/jumbo v3, "onServiceConnected binder[%s] %s %d"

    invoke-static {v1, v3, p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    iget-object p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-static {p1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->-$$Nest$fgetmConnectedAtLeastOnce(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)Z

    move-result p1

    if-nez p1, :cond_64

    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v3, "onServiceConnected 111"

    .line 40
    invoke-static {v1, v3, p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-static {p1, v2}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->-$$Nest$fputmConnectedAtLeastOnce(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;Z)V

    .line 43
    :try_start_41
    iget-object p1, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-static {p1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->-$$Nest$fgetmBlockingQueue(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 44
    iget-object p0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-static {p0}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->-$$Nest$fgetmBlockingQueue(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;)Ljava/util/concurrent/BlockingDeque;

    move-result-object p0

    invoke-static {p2}, Lcom/samsung/android/mateservice/IAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mateservice/IAgentService;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V

    const-string p0, "FSvc is connected"

    new-array p1, v0, [Ljava/lang/Object;

    .line 46
    invoke-static {v1, p0, p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_5e
    .catch Ljava/lang/InterruptedException; {:try_start_41 .. :try_end_5e} :catch_5f

    goto :goto_7c

    :catch_5f
    move-exception p0

    .line 49
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->printThrowableStackTrace(Ljava/lang/Throwable;)V

    goto :goto_7c

    :cond_64
    new-array p1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "onServiceConnected 222"

    .line 52
    invoke-static {v1, v2, p1}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 53
    iget-object p0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    invoke-static {p2}, Lcom/samsung/android/mateservice/IAgentService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/mateservice/IAgentService;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->-$$Nest$msetService(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;Landroid/os/IInterface;)Landroid/os/IInterface;

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "FSvc is re-connected"

    .line 55
    invoke-static {v1, p1, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_7c
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 61
    iget-object p0, p0, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient$1;->this$0:Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;->-$$Nest$msetService(Lcom/android/server/sepunion/friends/agentsvc/AgentSvcClient;Landroid/os/IInterface;)Landroid/os/IInterface;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "AgentSvcClient"

    const-string v0, "FSvc is disconnected"

    .line 63
    invoke-static {p1, v0, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method
