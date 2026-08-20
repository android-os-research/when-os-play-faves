.class public Lcom/android/server/pm/PackageInstallerService$Callbacks;
.super Landroid/os/Handler;
.source "PackageInstallerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageInstallerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Callbacks"
.end annotation


# static fields
.field public static final MSG_SESSION_ACTIVE_CHANGED:I = 0x3

.field public static final MSG_SESSION_BADGING_CHANGED:I = 0x2

.field public static final MSG_SESSION_CREATED:I = 0x1

.field public static final MSG_SESSION_FINISHED:I = 0x5

.field public static final MSG_SESSION_PROGRESS_CHANGED:I = 0x4


# instance fields
.field public final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/IPackageInstallerCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/pm/PackageInstallerService;


# direct methods
.method public static bridge synthetic -$$Nest$mnotifySessionActiveChanged(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIZ)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionActiveChanged(IIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySessionBadgingChanged(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionBadgingChanged(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySessionCreated(Lcom/android/server/pm/PackageInstallerService$Callbacks;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionCreated(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifySessionProgressChanged(Lcom/android/server/pm/PackageInstallerService$Callbacks;IIF)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->notifySessionProgressChanged(IIF)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageInstallerService;Landroid/os/Looper;)V
    .registers 3

    .line 1719
    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->this$0:Lcom/android/server/pm/PackageInstallerService;

    .line 1720
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1716
    new-instance p1, Landroid/os/RemoteCallbackList;

    invoke-direct {p1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 1733
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 1734
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 1735
    iget-object v2, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 1736
    iget-object v3, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->this$0:Lcom/android/server/pm/PackageInstallerService;

    invoke-static {v3}, Lcom/android/server/pm/PackageInstallerService;->-$$Nest$fgetmPm(Lcom/android/server/pm/PackageInstallerService;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v3

    const/4 v4, 0x0

    :goto_15
    if-ge v4, v2, :cond_3f

    .line 1738
    iget-object v5, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Landroid/content/pm/IPackageInstallerCallback;

    .line 1739
    iget-object v6, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;

    .line 1740
    iget-object v7, v6, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;->userCheck:Ljava/util/function/IntPredicate;

    invoke-interface {v7, v1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v7

    if-eqz v7, :cond_3c

    iget-object v7, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->this$0:Lcom/android/server/pm/PackageInstallerService;

    iget v6, v6, Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;->callingUid:I

    .line 1741
    invoke-static {v7, v3, v6, v0}, Lcom/android/server/pm/PackageInstallerService;->-$$Nest$mshouldFilterSession(Lcom/android/server/pm/PackageInstallerService;Lcom/android/server/pm/Computer;II)Z

    move-result v6

    if-nez v6, :cond_3c

    .line 1743
    :try_start_39
    invoke-virtual {p0, v5, p1}, Lcom/android/server/pm/PackageInstallerService$Callbacks;->invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_3c

    :catch_3c
    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_15

    .line 1748
    :cond_3f
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    return-void
.end method

.method public final invokeCallback(Landroid/content/pm/IPackageInstallerCallback;Landroid/os/Message;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1753
    iget p0, p2, Landroid/os/Message;->arg1:I

    .line 1754
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_38

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2c

    const/4 v1, 0x4

    if-eq v0, v1, :cond_20

    const/4 v1, 0x5

    if-eq v0, v1, :cond_14

    goto :goto_3f

    .line 1768
    :cond_14
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p0, p2}, Landroid/content/pm/IPackageInstallerCallback;->onSessionFinished(IZ)V

    goto :goto_3f

    .line 1765
    :cond_20
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-interface {p1, p0, p2}, Landroid/content/pm/IPackageInstallerCallback;->onSessionProgressChanged(IF)V

    goto :goto_3f

    .line 1762
    :cond_2c
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p0, p2}, Landroid/content/pm/IPackageInstallerCallback;->onSessionActiveChanged(IZ)V

    goto :goto_3f

    .line 1759
    :cond_38
    invoke-interface {p1, p0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionBadgingChanged(I)V

    goto :goto_3f

    .line 1756
    :cond_3c
    invoke-interface {p1, p0}, Landroid/content/pm/IPackageInstallerCallback;->onSessionCreated(I)V

    :goto_3f
    return-void
.end method

.method public final notifySessionActiveChanged(IIZ)V
    .registers 5

    .line 1782
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifySessionBadgingChanged(II)V
    .registers 4

    const/4 v0, 0x2

    .line 1778
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifySessionCreated(II)V
    .registers 4

    const/4 v0, 0x1

    .line 1774
    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifySessionFinished(IIZ)V
    .registers 5

    .line 1790
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final notifySessionProgressChanged(IIF)V
    .registers 5

    .line 1786
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public register(Landroid/content/pm/IPackageInstallerCallback;Lcom/android/server/pm/PackageInstallerService$BroadcastCookie;)V
    .registers 3

    .line 1724
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method public unregister(Landroid/content/pm/IPackageInstallerCallback;)V
    .registers 2

    .line 1728
    iget-object p0, p0, Lcom/android/server/pm/PackageInstallerService$Callbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
