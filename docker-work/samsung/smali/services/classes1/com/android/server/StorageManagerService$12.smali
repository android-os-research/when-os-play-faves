.class public Lcom/android/server/StorageManagerService$12;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->setPrimaryStorageUuid(Ljava/lang/String;Landroid/content/pm/IPackageMoveObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;)V
    .registers 2

    .line 3555
    iput-object p1, p0, Lcom/android/server/StorageManagerService$12;->this$0:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 3

    return-void
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 3

    .line 3558
    iget-object p2, p0, Lcom/android/server/StorageManagerService$12;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p2}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 3559
    :try_start_7
    iget-object p0, p0, Lcom/android/server/StorageManagerService$12;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$monMoveStatusLocked(Lcom/android/server/StorageManagerService;I)V

    .line 3560
    monitor-exit p2

    return-void

    :catchall_e
    move-exception p0

    monitor-exit p2
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw p0
.end method
