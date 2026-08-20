.class public final Lcom/android/server/dreams/DreamController$DreamRecord;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DreamRecord"
.end annotation


# instance fields
.field public mBound:Z

.field public final mCanDoze:Z

.field public mConnected:Z

.field public final mDreamingStartedCallback:Landroid/os/IRemoteCallback;

.field public final mIsPreviewMode:Z

.field public final mName:Landroid/content/ComponentName;

.field public final mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

.field public mSentStartBroadcast:Z

.field public mService:Landroid/service/dreams/IDreamService;

.field public final mToken:Landroid/os/Binder;

.field public final mUserId:I

.field public mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public mWakingGently:Z

.field public final synthetic this$0:Lcom/android/server/dreams/DreamController;


# direct methods
.method public static synthetic $r8$lambda$KlQ-75XRewY__SD5ZBrDMlNoC8Q(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->lambda$binderDied$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$QDlr9rktSSHN2ciFC9GwSJCYlco(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamController$DreamRecord;->lambda$onServiceConnected$1(Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y3DRxTJC650L8E248dHxzKkP3ec(Lcom/android/server/dreams/DreamController$DreamRecord;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->lambda$onServiceDisconnected$2()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/dreams/DreamController;Landroid/os/Binder;Landroid/content/ComponentName;ZZILandroid/os/PowerManager$WakeLock;)V
    .registers 10

    .line 280
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

    .line 339
    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$1;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    iput-object v1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mDreamingStartedCallback:Landroid/os/IRemoteCallback;

    .line 281
    iput-object p2, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mToken:Landroid/os/Binder;

    .line 282
    iput-object p3, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mName:Landroid/content/ComponentName;

    .line 283
    iput-boolean p4, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mIsPreviewMode:Z

    .line 284
    iput-boolean p5, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mCanDoze:Z

    .line 285
    iput p6, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mUserId:I

    .line 286
    iput-object p7, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 289
    invoke-virtual {p7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 290
    invoke-static {p1}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 p1, 0x2710

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$binderDied$0()V
    .registers 3

    const/4 v0, 0x0

    .line 297
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 298
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    if-ne v0, p0, :cond_13

    .line 299
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v0, 0x1

    const-string v1, "binder died"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    :cond_13
    return-void
.end method

.method private synthetic lambda$onServiceConnected$1(Landroid/os/IBinder;)V
    .registers 3

    const/4 v0, 0x1

    .line 308
    iput-boolean v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    .line 309
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    if-ne v0, p0, :cond_19

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    if-nez v0, :cond_19

    .line 310
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {p1}, Landroid/service/dreams/IDreamService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamService;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/dreams/DreamController;->-$$Nest$mattach(Lcom/android/server/dreams/DreamController;Landroid/service/dreams/IDreamService;)V

    goto :goto_1c

    .line 313
    :cond_19
    invoke-virtual {p0}, Lcom/android/server/dreams/DreamController$DreamRecord;->releaseWakeLockIfNeeded()V

    :goto_1c
    return-void
.end method

.method private synthetic lambda$onServiceDisconnected$2()V
    .registers 3

    const/4 v0, 0x0

    .line 322
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mService:Landroid/service/dreams/IDreamService;

    .line 323
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmCurrentDream(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    if-ne v0, p0, :cond_14

    .line 324
    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v0, 0x1

    const-string/jumbo v1, "service disconnected"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    :cond_14
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 296
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 307
    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {p1}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 3

    .line 321
    iget-object p1, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {p1}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/dreams/DreamController$DreamRecord$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/dreams/DreamController$DreamRecord;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public releaseWakeLockIfNeeded()V
    .registers 2

    .line 330
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_15

    .line 331
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 332
    iput-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 333
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->-$$Nest$fgetmHandler(Lcom/android/server/dreams/DreamController;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/dreams/DreamController$DreamRecord;->mReleaseWakeLockIfNeeded:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_15
    return-void
.end method
