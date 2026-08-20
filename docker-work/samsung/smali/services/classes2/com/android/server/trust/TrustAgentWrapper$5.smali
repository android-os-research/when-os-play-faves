.class public Lcom/android/server/trust/TrustAgentWrapper$5;
.super Ljava/lang/Object;
.source "TrustAgentWrapper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/trust/TrustAgentWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustAgentWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustAgentWrapper;)V
    .registers 2

    .line 422
    iput-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    .line 425
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrustAgent started : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_20
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p2}, Landroid/service/trust/ITrustAgentService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentService;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)V

    .line 428
    iget-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object p2

    iget-object p2, p2, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v0

    invoke-virtual {p2, v0, p1}, Lcom/android/server/trust/TrustArchive;->logAgentConnected(ILandroid/content/ComponentName;)V

    .line 429
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmCallback(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$msetCallback(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentServiceCallback;)V

    .line 430
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {p1}, Lcom/android/server/trust/TrustAgentWrapper;->updateDevicePolicyFeatures()Z

    .line 432
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmPendingSuccessfulUnlock(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 433
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/trust/TrustAgentWrapper;->onUnlockAttempt(Z)V

    .line 434
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmPendingSuccessfulUnlock(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 437
    :cond_66
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/trust/TrustManagerService;->isDeviceLockedInner(I)Z

    move-result p1

    if-eqz p1, :cond_7e

    .line 438
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {p0}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceLocked()V

    goto :goto_83

    .line 440
    :cond_7e
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-virtual {p0}, Lcom/android/server/trust/TrustAgentWrapper;->onDeviceUnlocked()V

    :goto_83
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 446
    invoke-static {}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TrustAgent disconnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrustAgentWrapper"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    :cond_20
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmTrustAgentService(Lcom/android/server/trust/TrustAgentWrapper;Landroid/service/trust/ITrustAgentService;)V

    .line 448
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmManagingTrust(Lcom/android/server/trust/TrustAgentWrapper;Z)V

    .line 449
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0, v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fputmSetTrustAgentFeaturesToken(Lcom/android/server/trust/TrustAgentWrapper;Landroid/os/IBinder;)V

    .line 450
    iget-object v0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmTrustManagerService(Lcom/android/server/trust/TrustAgentWrapper;)Lcom/android/server/trust/TrustManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/trust/TrustManagerService;->mArchive:Lcom/android/server/trust/TrustArchive;

    iget-object v1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {v1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmUserId(Lcom/android/server/trust/TrustAgentWrapper;)I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/trust/TrustArchive;->logAgentDied(ILandroid/content/ComponentName;)V

    .line 451
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmHandler(Lcom/android/server/trust/TrustAgentWrapper;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 452
    iget-object p1, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p1}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$fgetmBound(Lcom/android/server/trust/TrustAgentWrapper;)Z

    move-result p1

    if-eqz p1, :cond_59

    .line 453
    iget-object p0, p0, Lcom/android/server/trust/TrustAgentWrapper$5;->this$0:Lcom/android/server/trust/TrustAgentWrapper;

    invoke-static {p0}, Lcom/android/server/trust/TrustAgentWrapper;->-$$Nest$mscheduleRestart(Lcom/android/server/trust/TrustAgentWrapper;)V

    :cond_59
    return-void
.end method
