.class public Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;
.super Ljava/lang/Object;
.source "ExecScreenTurnedOff.java"

# interfaces
.implements Lcom/android/server/sepunion/friends/action/ActionExecutable;


# static fields
.field public static final LOCK_SCREEN_STATE_FILE_NAME:Ljava/lang/String; = "no_lock_screen"

.field public static final TAG:Ljava/lang/String; = "ExecScreenTurnedOff"


# instance fields
.field public final mStateFile:Ljava/io/File;

.field public final mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;


# direct methods
.method public constructor <init>(Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;)V
    .registers 4

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    .line 20
    new-instance p1, Ljava/io/File;

    const-string v0, "/data/system/friends"

    const-string v1, "no_lock_screen"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;->mStateFile:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .registers 4

    .line 25
    iget-object p2, p0, Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;->mStateFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_14

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "ExecScreenTurnedOff"

    const-string p2, "no LockScreen"

    .line 26
    invoke-static {p1, p2, p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0

    .line 30
    :cond_14
    iget-object p0, p0, Lcom/android/server/sepunion/friends/executable/ExecScreenTurnedOff;->mSvcOp:Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;

    invoke-interface {p0, p3, p1}, Lcom/android/server/sepunion/friends/agentsvc/AgentSvc$SvcOperation;->perform(ILandroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public executeOnSameThread(I)Z
    .registers 2

    const/4 p0, 0x0

    return p0
.end method
