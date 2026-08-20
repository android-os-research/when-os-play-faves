.class public Lcom/android/server/am/ActivityManagerServiceExt$2;
.super Ljava/lang/Object;
.source "ActivityManagerServiceExt.java"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerServiceExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ActivityManagerServiceExt;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityManagerServiceExt;)V
    .registers 2

    .line 1460
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .registers 2

    return-void
.end method

.method public onUnformattedPackageFeatureFileChanged(Ljava/lang/String;Ljava/util/function/Function;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/function/Function<",
            "Ljava/lang/String;",
            "Ljava/io/FileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 1469
    invoke-interface {p2, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/FileDescriptor;

    if-nez p1, :cond_9

    return-void

    .line 1471
    :cond_9
    iget-object p2, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    iget-object p2, p2, Lcom/android/server/am/ActivityManagerServiceExt;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter p2

    :try_start_e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1472
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerServiceExt;->-$$Nest$fgetmParser(Lcom/android/server/am/ActivityManagerServiceExt;)Lcom/samsung/android/core/pm/BroadcastReceiverListParser;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;

    if-nez v0, :cond_20

    monitor-exit p2
    :try_end_1c
    .catchall {:try_start_e .. :try_end_1c} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1474
    :cond_20
    :try_start_20
    invoke-static {p1}, Lcom/samsung/android/core/pm/BroadcastReceiverListParserWithScpm;->updateParserIfNeeded(Ljava/io/FileDescriptor;)Lcom/samsung/android/core/pm/BroadcastReceiverListParser;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 1476
    iget-object p0, p0, Lcom/android/server/am/ActivityManagerServiceExt$2;->this$0:Lcom/android/server/am/ActivityManagerServiceExt;

    invoke-static {p0, p1}, Lcom/android/server/am/ActivityManagerServiceExt;->-$$Nest$fputmParser(Lcom/android/server/am/ActivityManagerServiceExt;Lcom/samsung/android/core/pm/BroadcastReceiverListParser;)V

    .line 1478
    :cond_2b
    monitor-exit p2
    :try_end_2c
    .catchall {:try_start_20 .. :try_end_2c} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_30
    move-exception p0

    :try_start_31
    monitor-exit p2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method
