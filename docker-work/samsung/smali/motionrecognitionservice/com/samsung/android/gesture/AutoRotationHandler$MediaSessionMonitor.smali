.class Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;
.super Ljava/lang/Object;
.source "AutoRotationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/gesture/AutoRotationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaSessionMonitor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;,
        Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;,
        Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;
    }
.end annotation


# static fields
.field private static final MSG_FOREGROUND_APP_UPDATED:I = 0x3

.field private static final MSG_START:I = 0x1

.field private static final MSG_STOP:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MediaSessionMonitor"


# instance fields
.field private isRunning:Z

.field private mControllerList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;",
            ">;"
        }
    .end annotation
.end field

.field private mForegroundAppPkg:Ljava/lang/String;

.field private mMediaSessionHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;

.field private mMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;

.field final synthetic this$0:Lcom/samsung/android/gesture/AutoRotationHandler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmControllerList(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mControllerList:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMediaSessionHandler(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mMediaSessionHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleForegroundAppUpdated(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->handleForegroundAppUpdated(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStart(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->handleStart()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStop(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->handleStop()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateMediaSessionState(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)V
    .registers 1

    invoke-direct {p0}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->updateMediaSessionState()V

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/gesture/AutoRotationHandler;Landroid/content/Context;Landroid/os/Looper;)V
    .registers 5
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "looper"    # Landroid/os/Looper;

    .line 723
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 668
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 669
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mControllerList:Ljava/util/Set;

    .line 671
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mForegroundAppPkg:Ljava/lang/String;

    .line 673
    new-instance v0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$1;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;)V

    iput-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 719
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mMediaSessionHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;

    .line 721
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->isRunning:Z

    .line 724
    const-string p1, "media_session"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/session/MediaSessionManager;

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    .line 725
    new-instance p1, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;

    invoke-direct {p1, p0, p3}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;-><init>(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mMediaSessionHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;

    .line 726
    return-void
.end method

.method private handleForegroundAppUpdated(Ljava/lang/String;)V
    .registers 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 765
    iget-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->isRunning:Z

    if-eqz v0, :cond_9

    .line 766
    iput-object p1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mForegroundAppPkg:Ljava/lang/String;

    .line 767
    invoke-direct {p0}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->updateMediaSessionState()V

    .line 769
    :cond_9
    return-void
.end method

.method private handleStart()V
    .registers 5

    .line 733
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mForegroundAppPkg:Ljava/lang/String;

    .line 735
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    iget-object v3, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mMediaSessionHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;

    invoke-virtual {v1, v2, v0, v3}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_c} :catch_11

    .line 739
    nop

    .line 741
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->isRunning:Z

    .line 742
    return-void

    .line 736
    :catch_11
    move-exception v0

    .line 737
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    return-void
.end method

.method private handleStop()V
    .registers 4

    .line 750
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mMediaSessionListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    .line 753
    goto :goto_12

    .line 751
    :catch_8
    move-exception v0

    .line 752
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MediaSessionMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_12
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->isRunning:Z

    .line 756
    return-void
.end method

.method private updateMediaSessionState()V
    .registers 9

    .line 772
    iget-boolean v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->isRunning:Z

    if-nez v0, :cond_5

    return-void

    .line 774
    :cond_5
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mControllerList:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x29

    const-string v2, "MediaSessionMonitor"

    if-nez v0, :cond_20

    .line 775
    const-string v0, "Media session stopped : controllerList empty"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v0}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/AutoRotationHandler;)Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->sendEmptyMessage(I)Z

    .line 777
    return-void

    .line 780
    :cond_20
    const/4 v0, 0x0

    .line 781
    .local v0, "isPlaying":Z
    const/4 v3, 0x0

    .line 782
    .local v3, "playingPkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mControllerList:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_28
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;

    .line 783
    .local v5, "manager":Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;
    invoke-static {v5}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->-$$Nest$fgetmCallback(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;)Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;

    move-result-object v6

    invoke-static {v6}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;->-$$Nest$fgetmLastState(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_49

    .line 784
    const/4 v0, 0x1

    .line 785
    invoke-static {v5}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;->-$$Nest$fgetmCallback(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;)Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;->-$$Nest$fgetmPackageName(Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$Callback;)Ljava/lang/String;

    move-result-object v3

    .line 786
    goto :goto_4a

    .line 788
    .end local v5    # "manager":Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaControllerManager;
    :cond_49
    goto :goto_28

    .line 790
    :cond_4a
    :goto_4a
    if-eqz v0, :cond_67

    iget-object v4, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mForegroundAppPkg:Ljava/lang/String;

    if-eqz v4, :cond_67

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_67

    .line 791
    const-string v1, "Media session started : state=playing, pkg matches"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    iget-object v1, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v1}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/AutoRotationHandler;)Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

    move-result-object v1

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->sendEmptyMessage(I)Z

    .line 793
    return-void

    .line 794
    :cond_67
    if-eqz v0, :cond_78

    .line 795
    const-string v4, "Media session stopped : diffrent pkg"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    iget-object v2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v2}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/AutoRotationHandler;)Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_86

    .line 798
    :cond_78
    const-string v4, "Media session stopped : not playing state"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 799
    iget-object v2, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->this$0:Lcom/samsung/android/gesture/AutoRotationHandler;

    invoke-static {v2}, Lcom/samsung/android/gesture/AutoRotationHandler;->-$$Nest$fgetmHandler(Lcom/samsung/android/gesture/AutoRotationHandler;)Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$ServiceHandler;->sendEmptyMessage(I)Z

    .line 801
    :goto_86
    return-void
.end method


# virtual methods
.method public setForegroundApp(Ljava/lang/String;)V
    .registers 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 759
    if-nez p1, :cond_4

    const-string p1, ""

    .line 761
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mMediaSessionHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 762
    return-void
.end method

.method public start()V
    .registers 3

    .line 729
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mMediaSessionHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;->sendEmptyMessage(I)Z

    .line 730
    return-void
.end method

.method public stop()V
    .registers 3

    .line 745
    iget-object v0, p0, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor;->mMediaSessionHandler:Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/samsung/android/gesture/AutoRotationHandler$MediaSessionMonitor$MediaSessionMonitorHandler;->sendEmptyMessage(I)Z

    .line 746
    return-void
.end method
