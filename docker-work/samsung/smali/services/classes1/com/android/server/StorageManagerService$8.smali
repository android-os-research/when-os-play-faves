.class public Lcom/android/server/StorageManagerService$8;
.super Landroid/os/IVoldTaskListener$Stub;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StorageManagerService;->benchmark(Ljava/lang/String;Landroid/os/IVoldTaskListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/StorageManagerService;

.field public final synthetic val$listener:Landroid/os/IVoldTaskListener;


# direct methods
.method public constructor <init>(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;)V
    .registers 3

    .line 2938
    iput-object p1, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iput-object p2, p0, Lcom/android/server/StorageManagerService$8;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-direct {p0}, Landroid/os/IVoldTaskListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinished(ILandroid/os/PersistableBundle;)V
    .registers 13

    .line 2946
    iget-object v0, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iget-object v1, p0, Lcom/android/server/StorageManagerService$8;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/StorageManagerService;->-$$Nest$mdispatchOnFinished(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    const-string/jumbo p1, "path"

    .line 2948
    invoke-virtual {p2, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "ident"

    .line 2949
    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "create"

    .line 2950
    invoke-virtual {p2, v1}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string/jumbo v3, "run"

    .line 2951
    invoke-virtual {p2, v3}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "destroy"

    .line 2952
    invoke-virtual {p2, v5}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 2954
    iget-object p2, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p2}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmContext(Lcom/android/server/StorageManagerService;)Landroid/content/Context;

    move-result-object p2

    const-class v7, Landroid/os/DropBoxManager;

    invoke-virtual {p2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/DropBoxManager;

    const-string/jumbo v7, "storage_benchmark"

    .line 2955
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v9, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$mscrubPath(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v7, v0}, Landroid/os/DropBoxManager;->addText(Ljava/lang/String;Ljava/lang/String;)V

    .line 2958
    iget-object p2, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p2}, Lcom/android/server/StorageManagerService;->-$$Nest$fgetmLock(Lcom/android/server/StorageManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 2959
    :try_start_75
    iget-object v0, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v0, p1}, Lcom/android/server/StorageManagerService;->-$$Nest$mfindRecordForPath(Lcom/android/server/StorageManagerService;Ljava/lang/String;)Landroid/os/storage/VolumeRecord;

    move-result-object p1

    if-eqz p1, :cond_88

    .line 2961
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Landroid/os/storage/VolumeRecord;->lastBenchMillis:J

    .line 2962
    iget-object p0, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {p0}, Lcom/android/server/StorageManagerService;->-$$Nest$mwriteSettingsLocked(Lcom/android/server/StorageManagerService;)V

    .line 2964
    :cond_88
    monitor-exit p2

    return-void

    :catchall_8a
    move-exception p0

    monitor-exit p2
    :try_end_8c
    .catchall {:try_start_75 .. :try_end_8c} :catchall_8a

    throw p0
.end method

.method public onStatus(ILandroid/os/PersistableBundle;)V
    .registers 4

    .line 2941
    iget-object v0, p0, Lcom/android/server/StorageManagerService$8;->this$0:Lcom/android/server/StorageManagerService;

    iget-object p0, p0, Lcom/android/server/StorageManagerService$8;->val$listener:Landroid/os/IVoldTaskListener;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/StorageManagerService;->-$$Nest$mdispatchOnStatus(Lcom/android/server/StorageManagerService;Landroid/os/IVoldTaskListener;ILandroid/os/PersistableBundle;)V

    return-void
.end method
