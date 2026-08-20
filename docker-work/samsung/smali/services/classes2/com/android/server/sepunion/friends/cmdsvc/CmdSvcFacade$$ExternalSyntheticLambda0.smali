.class public final synthetic Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;

.field public final synthetic f$1:Ljava/lang/Thread;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;Ljava/lang/Thread;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;

    iput-object p2, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .registers 3

    iget-object v0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;

    iget-object p0, p0, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Thread;

    invoke-static {v0, p0, p1}, Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;->$r8$lambda$mBLxYg2lmNHdkgIiyl3VHFVAsZE(Lcom/android/server/sepunion/friends/cmdsvc/CmdSvcFacade;Ljava/lang/Thread;Landroid/os/Message;)Z

    move-result p0

    return p0
.end method
