.class Landroid/app/SharedPreferencesImpl$2;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SharedPreferencesImpl;->enqueueDiskWrite(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/app/SharedPreferencesImpl;

.field final synthetic blacklist val$isFromSyncCommit:Z

.field final synthetic blacklist val$mcr:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

.field final synthetic blacklist val$postWriteRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor blacklist <init>(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;ZLjava/lang/Runnable;)V
    .registers 5
    .param p1, "this$0"    # Landroid/app/SharedPreferencesImpl;

    .line 724
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    iput-object p2, p0, Landroid/app/SharedPreferencesImpl$2;->val$mcr:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    iput-boolean p3, p0, Landroid/app/SharedPreferencesImpl$2;->val$isFromSyncCommit:Z

    iput-object p4, p0, Landroid/app/SharedPreferencesImpl$2;->val$postWriteRunnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 5

    .line 727
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmWritingToDiskLock(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 728
    :try_start_7
    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    iget-object v2, p0, Landroid/app/SharedPreferencesImpl$2;->val$mcr:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    iget-boolean v3, p0, Landroid/app/SharedPreferencesImpl$2;->val$isFromSyncCommit:Z

    invoke-static {v1, v2, v3}, Landroid/app/SharedPreferencesImpl;->-$$Nest$mwriteToFile(Landroid/app/SharedPreferencesImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;Z)V

    .line 729
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_2f

    .line 730
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmLock(Landroid/app/SharedPreferencesImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 731
    :try_start_18
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->this$0:Landroid/app/SharedPreferencesImpl;

    invoke-static {v0}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fgetmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v0, v2}, Landroid/app/SharedPreferencesImpl;->-$$Nest$fputmDiskWritesInFlight(Landroid/app/SharedPreferencesImpl;I)V

    .line 732
    monitor-exit v1
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_2c

    .line 733
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$2;->val$postWriteRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2b

    .line 734
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 736
    :cond_2b
    return-void

    .line 732
    :catchall_2c
    move-exception v0

    :try_start_2d
    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw v0

    .line 729
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw v1
.end method
