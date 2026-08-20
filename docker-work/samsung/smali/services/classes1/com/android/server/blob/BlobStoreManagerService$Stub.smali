.class public Lcom/android/server/blob/BlobStoreManagerService$Stub;
.super Landroid/app/blob/IBlobStoreManager$Stub;
.source "BlobStoreManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Stub"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method public static synthetic $r8$lambda$g7F6oKQAKxPNUYytBXvfDdNOuYs(Lcom/android/server/blob/BlobStoreManagerService$Stub;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$Stub;->lambda$waitForIdle$1(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$mGMlMMm49totXfY3PLQf2SSLqF8(Lcom/android/server/blob/BlobStoreManagerService$Stub;Landroid/os/RemoteCallback;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$Stub;->lambda$waitForIdle$0(Landroid/os/RemoteCallback;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .registers 2

    .line 1448
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {p0}, Landroid/app/blob/IBlobStoreManager$Stub;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService$Stub-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$Stub;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    return-void
.end method

.method private synthetic lambda$waitForIdle$0(Landroid/os/RemoteCallback;)V
    .registers 3

    .line 1606
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;

    move-result-object p0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda0;-><init>(Landroid/os/RemoteCallback;)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/Consumer;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1607
    invoke-interface {p1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object p1

    .line 1606
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$waitForIdle$1(Landroid/os/RemoteCallback;)V
    .registers 4

    .line 1605
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$fgetmBackgroundHandler(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/blob/BlobStoreManagerService$Stub;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public abandonSession(JLjava/lang/String;)V
    .registers 7

    long-to-float v0, p1

    .line 1489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sessionId must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    const-string/jumbo v0, "packageName must not be null"

    .line 1491
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1493
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1494
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1496
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mabandonSessionInternal(Lcom/android/server/blob/BlobStoreManagerService;JILjava/lang/String;)V

    return-void
.end method

.method public acquireLease(Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JLjava/lang/String;)V
    .registers 16

    const-string v0, "blobHandle must not be null"

    .line 1525
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1526
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    .line 1528
    invoke-static {p2}, Landroid/content/res/ResourceId;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_13

    if-eqz p3, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Description must be valid; descriptionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1527
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const-string/jumbo v0, "leaseExpiryTimeMillis must not be negative"

    .line 1531
    invoke-static {p4, p5, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    const-string/jumbo v0, "packageName must not be null"

    .line 1533
    invoke-static {p6, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1535
    invoke-static {p3}, Lcom/android/server/blob/BlobStoreConfig;->getTruncatedLeaseDescription(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 1537
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 1538
    iget-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p3, v7, p6}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1540
    iget-object p3, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p3, v7, p6}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_69

    .line 1546
    :try_start_51
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    move-object v2, p1

    move v3, p2

    move-wide v5, p4

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$macquireLeaseInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/CharSequence;JILjava/lang/String;)V
    :try_end_5a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_51 .. :try_end_5a} :catch_62
    .catch Landroid/os/LimitExceededException; {:try_start_51 .. :try_end_5a} :catch_5b

    return-void

    :catch_5b
    move-exception p0

    .line 1551
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_62
    move-exception p0

    .line 1549
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1541
    :cond_69
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Caller not allowed to open blob; callingUid="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", callingPackage="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createSession(Landroid/app/blob/BlobHandle;Ljava/lang/String;)J
    .registers 5

    const-string v0, "blobHandle must not be null"

    .line 1453
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1454
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    const-string/jumbo v0, "packageName must not be null"

    .line 1455
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1457
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1458
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1460
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 1466
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mcreateSessionInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)J

    move-result-wide p0
    :try_end_25
    .catch Landroid/os/LimitExceededException; {:try_start_1f .. :try_end_25} :catch_26

    return-wide p0

    :catch_26
    move-exception p0

    .line 1468
    new-instance p1, Landroid/os/ParcelableException;

    invoke-direct {p1, p0}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 1461
    :cond_2d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller not allowed to create session; callingUid="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", callingPackage="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public deleteBlob(J)V
    .registers 5

    .line 1632
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_e

    .line 1638
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0, p1, p2, v0}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mdeleteBlobInternal(Lcom/android/server/blob/BlobStoreManagerService;JI)V

    return-void

    .line 1634
    :cond_e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system uid is allowed to call deleteBlob()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    .line 1674
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$fgetmContext(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "BlobStore"

    invoke-static {p1, v0, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 1676
    :cond_f
    invoke-static {p3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->parse([Ljava/lang/String;)Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    move-result-object p1

    .line 1678
    new-instance p3, Landroid/util/IndentingPrintWriter;

    const-string v0, "    "

    invoke-direct {p3, p2, v0}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1679
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpHelp()Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string p0, "dumpsys blob_store [options]:"

    .line 1680
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1681
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1682
    invoke-static {p1, p3}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->-$$Nest$mdumpArgsUsage(Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;Landroid/util/IndentingPrintWriter;)V

    .line 1683
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 1687
    :cond_2f
    iget-object p2, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$fgetmBlobsLock(Lcom/android/server/blob/BlobStoreManagerService;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 1688
    :try_start_36
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 1689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCurrentMaxSessionId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$fgetmCurrentMaxSessionId(Lcom/android/server/blob/BlobStoreManagerService;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1690
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1693
    :cond_5a
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpSessions()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 1694
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, p3, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mdumpSessionsLocked(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    .line 1695
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1697
    :cond_68
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpBlobs()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1698
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0, p3, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mdumpBlobsLocked(Lcom/android/server/blob/BlobStoreManagerService;Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V

    .line 1699
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1701
    :cond_76
    monitor-exit p2
    :try_end_77
    .catchall {:try_start_36 .. :try_end_77} :catchall_95

    .line 1703
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpConfig()Z

    move-result p1

    if-eqz p1, :cond_94

    const-string p1, "BlobStore config:"

    .line 1704
    invoke-virtual {p3, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1705
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1706
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$fgetmContext(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p3, p0}, Lcom/android/server/blob/BlobStoreConfig;->dump(Landroid/util/IndentingPrintWriter;Landroid/content/Context;)V

    .line 1707
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1708
    invoke-virtual {p3}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_94
    return-void

    :catchall_95
    move-exception p0

    .line 1701
    :try_start_96
    monitor-exit p2
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    throw p0
.end method

.method public getLeaseInfo(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/app/blob/LeaseInfo;
    .registers 5

    const-string v0, "blobHandle must not be null"

    .line 1655
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1656
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    const-string/jumbo v0, "packageName must not be null"

    .line 1657
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1659
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1660
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1662
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 1667
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mgetLeaseInfoInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/app/blob/LeaseInfo;

    move-result-object p0

    return-object p0

    .line 1663
    :cond_26
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller not allowed to open blob; callingUid="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", callingPackage="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getLeasedBlobs(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobHandle;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "packageName must not be null"

    .line 1644
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1646
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1647
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1649
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mgetLeasedBlobsInternal(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getRemainingLeaseQuotaBytes(Ljava/lang/String;)J
    .registers 4

    .line 1589
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1590
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1592
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mgetRemainingLeaseQuotaBytesInternal(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public handleShellCommand(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)I
    .registers 11

    .line 1716
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerShellCommand;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/blob/BlobStoreManagerShellCommand;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    .line 1717
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    move-object v1, p0

    move-object v5, p4

    .line 1716
    invoke-virtual/range {v0 .. v5}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public openBlob(Landroid/app/blob/BlobHandle;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 5

    const-string v0, "blobHandle must not be null"

    .line 1502
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1503
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    const-string/jumbo v0, "packageName must not be null"

    .line 1504
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1506
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1507
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1509
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 1515
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mopenBlobInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_25} :catch_26

    return-object p0

    :catch_26
    move-exception p0

    .line 1517
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 1510
    :cond_2c
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller not allowed to open blob; callingUid="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", callingPackage="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public openSession(JLjava/lang/String;)Landroid/app/blob/IBlobStoreSession;
    .registers 7

    long-to-float v0, p1

    .line 1476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sessionId must be positive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentPositive(FLjava/lang/String;)F

    const-string/jumbo v0, "packageName must not be null"

    .line 1478
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1480
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1481
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1483
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mopenSessionInternal(Lcom/android/server/blob/BlobStoreManagerService;JILjava/lang/String;)Lcom/android/server/blob/BlobStoreSession;

    move-result-object p0

    return-object p0
.end method

.method public queryBlobsForUser(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/blob/BlobInfo;",
            ">;"
        }
    .end annotation

    .line 1615
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_21

    const/4 v0, -0x2

    if-ne p1, v0, :cond_f

    .line 1621
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p1

    .line 1623
    :cond_f
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    .line 1625
    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->ensureNotSpecialUser(I)V

    .line 1627
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mqueryBlobsForUserInternal(Lcom/android/server/blob/BlobStoreManagerService;I)Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 1616
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system uid is allowed to call queryBlobsForUser()"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseAllLeases(Ljava/lang/String;)V
    .registers 5

    const-string/jumbo v0, "packageName must not be null"

    .line 1574
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1576
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1577
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1579
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 1584
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0, v0, p1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mreleaseAllLeasesInternal(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    return-void

    .line 1580
    :cond_1d
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller not allowed to open blob; callingUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", callingPackage="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public releaseLease(Landroid/app/blob/BlobHandle;Ljava/lang/String;)V
    .registers 5

    const-string v0, "blobHandle must not be null"

    .line 1557
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1558
    invoke-virtual {p1}, Landroid/app/blob/BlobHandle;->assertIsValid()V

    const-string/jumbo v0, "packageName must not be null"

    .line 1559
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1561
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1562
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mverifyCallingPackage(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)V

    .line 1564
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$misAllowedBlobStoreAccess(Lcom/android/server/blob/BlobStoreManagerService;ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 1569
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {p0, p1, v0, p2}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mreleaseLeaseInternal(Lcom/android/server/blob/BlobStoreManagerService;Landroid/app/blob/BlobHandle;ILjava/lang/String;)V

    return-void

    .line 1565
    :cond_25
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller not allowed to open blob; callingUid="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", callingPackage="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public waitForIdle(Landroid/os/RemoteCallback;)V
    .registers 5

    const-string/jumbo v0, "remoteCallback must not be null"

    .line 1597
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1599
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$fgetmContext(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Caller is not allowed to call this; caller="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1600
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.DUMP"

    .line 1599
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$Stub;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-static {v0}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$fgetmHandler(Lcom/android/server/blob/BlobStoreManagerService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$Stub$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/blob/BlobStoreManagerService$Stub;Landroid/os/RemoteCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
