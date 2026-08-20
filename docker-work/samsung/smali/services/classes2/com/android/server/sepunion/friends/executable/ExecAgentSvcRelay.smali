.class public Lcom/android/server/sepunion/friends/executable/ExecAgentSvcRelay;
.super Ljava/lang/Object;
.source "ExecAgentSvcRelay.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# static fields
.field public static final TAG:Ljava/lang/String; = "ExecAgentSvcRelay"


# instance fields
.field public final mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;)V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecAgentSvcRelay;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    return-void
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 6

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    .line 18
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p2, v1

    const-string v0, "ExecAgentSvcRelay"

    const-string/jumbo v1, "relay action 0x%x"

    invoke-static {v0, v1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecAgentSvcRelay;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-interface {p0, p3, p1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;->perform(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public executeOnSameThread(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
