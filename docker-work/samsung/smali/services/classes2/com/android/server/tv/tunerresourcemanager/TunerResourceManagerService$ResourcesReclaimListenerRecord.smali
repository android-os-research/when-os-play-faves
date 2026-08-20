.class public Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;
.super Ljava/lang/Object;
.source "TunerResourceManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ResourcesReclaimListenerRecord"
.end annotation


# instance fields
.field public final mClientId:I

.field public final mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

.field public final synthetic this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;I)V
    .registers 4

    .line 1526
    iput-object p1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1527
    iput-object p2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    .line 1528
    iput p3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 9

    .line 1534
    :try_start_0
    iget-object v0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-static {v0}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$fgetmLock(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_7
    .catchall {:try_start_0 .. :try_end_7} :catchall_28

    .line 1535
    :try_start_7
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    invoke-virtual {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->checkClientExists(I)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1536
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    invoke-static {v1, v2}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mremoveClientProfile(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;I)V

    .line 1538
    :cond_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_25

    .line 1541
    iget-object v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v3, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mreleaseLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJZZ)Z

    return-void

    :catchall_25
    move-exception v1

    .line 1538
    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    :try_start_27
    throw v1
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception v0

    .line 1541
    iget-object v1, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->this$0:Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    iget v2, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    const-wide/16 v3, 0x1f4

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-static/range {v1 .. v6}, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;->-$$Nest$mreleaseLockInternal(Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;IJZZ)Z

    .line 1542
    throw v0
.end method

.method public getId()I
    .registers 1

    .line 1546
    iget p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mClientId:I

    return p0
.end method

.method public getListener()Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;
    .registers 1

    .line 1550
    iget-object p0, p0, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService$ResourcesReclaimListenerRecord;->mListener:Landroid/media/tv/tunerresourcemanager/IResourcesReclaimListener;

    return-object p0
.end method
