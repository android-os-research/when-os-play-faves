.class public final Lcom/android/server/aod/AODManagerService$AODDozeLock;
.super Ljava/lang/Object;
.source "AODManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/aod/AODManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AODDozeLock"
.end annotation


# instance fields
.field public final mLock:Landroid/os/IBinder;

.field public final mOwnerPid:I

.field public final mOwnerUid:I

.field public final mPackageName:Ljava/lang/String;

.field public mTag:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/aod/AODManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/aod/AODManagerService;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 7

    .line 1659
    iput-object p1, p0, Lcom/android/server/aod/AODManagerService$AODDozeLock;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1660
    iput-object p2, p0, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mLock:Landroid/os/IBinder;

    .line 1661
    iput-object p3, p0, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mTag:Ljava/lang/String;

    .line 1662
    iput-object p4, p0, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mPackageName:Ljava/lang/String;

    .line 1663
    iput p5, p0, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mOwnerUid:I

    .line 1664
    iput p6, p0, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mOwnerPid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .line 1669
    invoke-static {}, Lcom/android/server/aod/AODManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AODDozeLock : binderDied"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1670
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeLock;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v0}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmAODDozeLocks(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    monitor-enter v0

    .line 1671
    :try_start_10
    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODDozeLock;->this$0:Lcom/android/server/aod/AODManagerService;

    invoke-static {v1}, Lcom/android/server/aod/AODManagerService;->-$$Nest$fgetmAODDozeLocks(Lcom/android/server/aod/AODManagerService;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1672
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_21

    .line 1673
    iget-object v0, p0, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mLock:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void

    :catchall_21
    move-exception p0

    .line 1672
    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 1678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[AODDozeLock: tag:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") packageName:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") uid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") pid:("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/aod/AODManagerService$AODDozeLock;->mOwnerPid:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
