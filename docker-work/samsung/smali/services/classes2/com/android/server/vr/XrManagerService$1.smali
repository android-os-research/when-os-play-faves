.class public Lcom/android/server/vr/XrManagerService$1;
.super Ljava/lang/Object;
.source "XrManagerService.java"

# interfaces
.implements Lcom/android/server/vr/XrDisplayManager$OnXrDisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/vr/XrManagerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/XrManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/XrManagerService;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/android/server/vr/XrManagerService$1;->this$0:Lcom/android/server/vr/XrManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onXrDisplayAdded(I)V
    .registers 5

    .line 241
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService$1;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object v0, v0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_5
    iget-object v1, p0, Lcom/android/server/vr/XrManagerService$1;->this$0:Lcom/android/server/vr/XrManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/vr/XrManagerService;->setVrMode(IZ)V

    .line 243
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService$1;->this$0:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateMetaScreenLocked()V

    .line 244
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public onXrDisplayChanged(I)V
    .registers 2

    .line 257
    iget-object p1, p0, Lcom/android/server/vr/XrManagerService$1;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object p1, p1, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 258
    :try_start_5
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService$1;->this$0:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateMetaScreenLocked()V

    .line 259
    monitor-exit p1

    return-void

    :catchall_c
    move-exception p0

    monitor-exit p1
    :try_end_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public onXrDisplayRemoved(I)V
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/android/server/vr/XrManagerService$1;->this$0:Lcom/android/server/vr/XrManagerService;

    iget-object v0, v0, Lcom/android/server/vr/XrManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_5
    iget-object v1, p0, Lcom/android/server/vr/XrManagerService$1;->this$0:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/vr/XrManagerService;->removeVrMode(I)V

    .line 251
    iget-object p0, p0, Lcom/android/server/vr/XrManagerService$1;->this$0:Lcom/android/server/vr/XrManagerService;

    invoke-virtual {p0}, Lcom/android/server/vr/XrManagerService;->updateMetaScreenLocked()V

    .line 252
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p0
.end method
