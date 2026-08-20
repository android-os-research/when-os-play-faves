.class Landroid/content/ContentProvider$Transport;
.super Landroid/content/ContentProviderNative;
.source "ContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/ContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Transport"
.end annotation


# instance fields
.field volatile greylist-max-o mAppOpsManager:Landroid/app/AppOpsManager;

.field volatile blacklist mInterface:Landroid/content/ContentInterface;

.field volatile greylist-max-o mReadOp:I

.field volatile greylist-max-o mWriteOp:I

.field final synthetic blacklist this$0:Landroid/content/ContentProvider;


# direct methods
.method constructor blacklist <init>(Landroid/content/ContentProvider;)V
    .registers 3
    .param p1, "this$0"    # Landroid/content/ContentProvider;

    .line 230
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-direct {p0}, Landroid/content/ContentProviderNative;-><init>()V

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 232
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 233
    iput v0, p0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 234
    iput-object p1, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    return-void
.end method

.method private blacklist enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 696
    const-string v0, "App op not allowed"

    if-eqz p3, :cond_1a

    const/16 v1, 0x77

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1a

    .line 697
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_14

    goto :goto_20

    .line 699
    :cond_14
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    :cond_1a
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-nez v1, :cond_21

    .line 707
    :goto_20
    return-void

    .line 704
    :cond_21
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 712
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentProvider;->semEnforceReadPermission(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    move-result v0

    .line 713
    .local v0, "result":I
    if-eqz v0, :cond_9

    .line 714
    return v0

    .line 718
    :cond_9
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v1

    iget v1, v1, Landroid/content/ContentProvider$Transport;->mReadOp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_40

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v1

    iget v1, v1, Landroid/content/ContentProvider$Transport;->mReadOp:I

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/content/ContentProvider;->-$$Nest$fgetmReadPermission(Landroid/content/ContentProvider;)Ljava/lang/String;

    move-result-object v2

    .line 719
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_40

    .line 720
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v2

    iget v2, v2, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 721
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 720
    invoke-static {v1, v2, p1, v3}, Landroid/content/PermissionChecker;->checkOpForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 724
    :cond_40
    const/4 v1, 0x0

    return v1
.end method

.method private blacklist enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I
    .registers 7
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 730
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentProvider;->semEnforceWritePermission(Landroid/net/Uri;Landroid/content/AttributionSource;)I

    move-result v0

    .line 731
    .local v0, "result":I
    if-eqz v0, :cond_9

    .line 732
    return v0

    .line 736
    :cond_9
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v1

    iget v1, v1, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_40

    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v1

    iget v1, v1, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/content/ContentProvider;->-$$Nest$fgetmWritePermission(Landroid/content/ContentProvider;)Ljava/lang/String;

    move-result-object v2

    .line 737
    invoke-static {v2}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v2

    if-eq v1, v2, :cond_40

    .line 738
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v1}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2}, Landroid/content/ContentProvider;->-$$Nest$fgetmTransport(Landroid/content/ContentProvider;)Landroid/content/ContentProvider$Transport;

    move-result-object v2

    iget v2, v2, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 739
    invoke-static {v2}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 738
    invoke-static {v1, v2, p1, v3}, Landroid/content/PermissionChecker;->checkOpForDataDelivery(Landroid/content/Context;Ljava/lang/String;Landroid/content/AttributionSource;Ljava/lang/String;)I

    move-result v1

    return v1

    .line 742
    :cond_40
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public blacklist applyBatch(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .registers 14
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/AttributionSource;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 383
    .local p3, "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mvalidateIncomingAuthority(Landroid/content/ContentProvider;Ljava/lang/String;)V

    .line 384
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 385
    .local v0, "numOperations":I
    new-array v1, v0, [I

    .line 386
    .local v1, "userIds":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v0, :cond_6a

    .line 387
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    .line 388
    .local v3, "operation":Landroid/content/ContentProviderOperation;
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v4

    .line 389
    .local v4, "uri":Landroid/net/Uri;
    invoke-static {v4}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v5

    aput v5, v1, v2

    .line 390
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v5, v4}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 391
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v4}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    .line 393
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3d

    .line 394
    new-instance v5, Landroid/content/ContentProviderOperation;

    invoke-direct {v5, v3, v4}, Landroid/content/ContentProviderOperation;-><init>(Landroid/content/ContentProviderOperation;Landroid/net/Uri;)V

    move-object v3, v5

    .line 395
    invoke-virtual {p3, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 397
    :cond_3d
    move-object v5, p1

    .line 399
    .local v5, "accessAttributionSource":Landroid/content/AttributionSource;
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isReadOperation()Z

    move-result v6

    const/4 v7, 0x0

    const-string v8, "App op not allowed"

    if-eqz v6, :cond_54

    .line 400
    invoke-direct {p0, v5, v4}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v6

    if-nez v6, :cond_4e

    goto :goto_54

    .line 402
    :cond_4e
    new-instance v6, Landroid/content/OperationApplicationException;

    invoke-direct {v6, v8, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 405
    :cond_54
    :goto_54
    invoke-virtual {v3}, Landroid/content/ContentProviderOperation;->isWriteOperation()Z

    move-result v6

    if-eqz v6, :cond_67

    .line 406
    invoke-direct {p0, v5, v4}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v6

    if-nez v6, :cond_61

    goto :goto_67

    .line 408
    :cond_61
    new-instance v6, Landroid/content/OperationApplicationException;

    invoke-direct {v6, v8, v7}, Landroid/content/OperationApplicationException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 386
    .end local v3    # "operation":Landroid/content/ContentProviderOperation;
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v5    # "accessAttributionSource":Landroid/content/AttributionSource;
    :cond_67
    :goto_67
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 412
    .end local v2    # "i":I
    :cond_6a
    const-wide/32 v2, 0x100000

    const-string v4, "applyBatch: "

    invoke-static {v2, v3, v4, p2}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 413
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v4

    .line 416
    .local v4, "original":Landroid/content/AttributionSource;
    :try_start_78
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v5, p2, p3}, Landroid/content/ContentInterface;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v5

    .line 418
    .local v5, "results":[Landroid/content/ContentProviderResult;
    if-eqz v5, :cond_97

    .line 419
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_81
    array-length v7, v5

    if-ge v6, v7, :cond_97

    .line 420
    aget v7, v1, v6

    const/4 v8, -0x2

    if-eq v7, v8, :cond_94

    .line 422
    new-instance v7, Landroid/content/ContentProviderResult;

    aget-object v8, v5, v6

    aget v9, v1, v6

    invoke-direct {v7, v8, v9}, Landroid/content/ContentProviderResult;-><init>(Landroid/content/ContentProviderResult;I)V

    aput-object v7, v5, v6
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_94} :catch_a3
    .catchall {:try_start_78 .. :try_end_94} :catchall_a1

    .line 419
    :cond_94
    add-int/lit8 v6, v6, 0x1

    goto :goto_81

    .line 426
    .end local v6    # "i":I
    :cond_97
    nop

    .line 430
    iget-object v6, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v6, v4}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 431
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 426
    return-object v5

    .line 430
    .end local v5    # "results":[Landroid/content/ContentProviderResult;
    :catchall_a1
    move-exception v5

    goto :goto_a9

    .line 427
    :catch_a3
    move-exception v5

    .line 428
    .local v5, "e":Landroid/os/RemoteException;
    :try_start_a4
    invoke-virtual {v5}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v6

    .end local v0    # "numOperations":I
    .end local v1    # "userIds":[I
    .end local v4    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    throw v6
    :try_end_a9
    .catchall {:try_start_a4 .. :try_end_a9} :catchall_a1

    .line 430
    .end local v5    # "e":Landroid/os/RemoteException;
    .restart local v0    # "numOperations":I
    .restart local v1    # "userIds":[I
    .restart local v4    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "authority":Ljava/lang/String;
    .restart local p3    # "operations":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    :goto_a9
    iget-object v6, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v6, v4}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 431
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 432
    throw v5
.end method

.method public blacklist bulkInsert(Landroid/content/AttributionSource;Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # [Landroid/content/ContentValues;

    .line 360
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 361
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 362
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 364
    const/4 v0, 0x0

    return v0

    .line 366
    :cond_14
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string v3, "bulkInsert: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 370
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_26
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p2, p3}, Landroid/content/ContentInterface;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v3
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_37
    .catchall {:try_start_26 .. :try_end_2c} :catchall_35

    .line 374
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 375
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 370
    return v3

    .line 374
    :catchall_35
    move-exception v3

    goto :goto_3d

    .line 371
    :catch_37
    move-exception v3

    .line 372
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_38
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "initialValues":[Landroid/content/ContentValues;
    throw v4
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 374
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "initialValues":[Landroid/content/ContentValues;
    :goto_3d
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 375
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 376
    throw v3
.end method

.method public blacklist call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "method"    # Ljava/lang/String;
    .param p4, "arg"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;

    .line 524
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mvalidateIncomingAuthority(Landroid/content/ContentProvider;Ljava/lang/String;)V

    .line 525
    const/4 v0, 0x1

    invoke-static {p5, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 526
    const-wide/32 v0, 0x100000

    const-string v2, "call: "

    invoke-static {v0, v1, v2, p2}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 527
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v2

    .line 530
    .local v2, "original":Landroid/content/AttributionSource;
    :try_start_17
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p2, p3, p4, p5}, Landroid/content/ContentInterface;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_1d} :catch_28
    .catchall {:try_start_17 .. :try_end_1d} :catchall_26

    .line 534
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v2}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 535
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 530
    return-object v3

    .line 534
    :catchall_26
    move-exception v3

    goto :goto_2e

    .line 531
    :catch_28
    move-exception v3

    .line 532
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_29
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v2    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "authority":Ljava/lang/String;
    .end local p3    # "method":Ljava/lang/String;
    .end local p4    # "arg":Ljava/lang/String;
    .end local p5    # "extras":Landroid/os/Bundle;
    throw v4
    :try_end_2e
    .catchall {:try_start_29 .. :try_end_2e} :catchall_26

    .line 534
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v2    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "authority":Ljava/lang/String;
    .restart local p3    # "method":Ljava/lang/String;
    .restart local p4    # "arg":Ljava/lang/String;
    .restart local p5    # "extras":Landroid/os/Bundle;
    :goto_2e
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v2}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 535
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 536
    throw v3
.end method

.method public blacklist canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 583
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 584
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 585
    .local v0, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 586
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_16

    .line 588
    const/4 v1, 0x0

    return-object v1

    .line 590
    :cond_16
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    const-string v4, "canonicalize: "

    invoke-static {v2, v3, v4, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 591
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 594
    .local v1, "original":Landroid/content/AttributionSource;
    :try_start_28
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v4, p2}, Landroid/content/ContentInterface;->canonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_32} :catch_3d
    .catchall {:try_start_28 .. :try_end_32} :catchall_3b

    .line 598
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 599
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 594
    return-object v4

    .line 598
    :catchall_3b
    move-exception v4

    goto :goto_43

    .line 595
    :catch_3d
    move-exception v4

    .line 596
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3e
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v0    # "userId":I
    .end local v1    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v5
    :try_end_43
    .catchall {:try_start_3e .. :try_end_43} :catchall_3b

    .line 598
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userId":I
    .restart local v1    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    :goto_43
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 599
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 600
    throw v4
.end method

.method public blacklist canonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 8
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 606
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 608
    .local v0, "result":Landroid/os/Bundle;
    :try_start_5
    const-string/jumbo v1, "result"

    .line 609
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->canonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 608
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 613
    goto :goto_1b

    .line 610
    :catch_10
    move-exception v1

    .line 611
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 614
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 615
    return-void
.end method

.method public blacklist checkUriPermission(Landroid/content/AttributionSource;Landroid/net/Uri;II)I
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "uid"    # I
    .param p4, "modeFlags"    # I

    .line 677
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 678
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 679
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string v3, "checkUriPermission: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 680
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 683
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_1e
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p2, p3, p4}, Landroid/content/ContentInterface;->checkUriPermission(Landroid/net/Uri;II)I

    move-result v3
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_24} :catch_2f
    .catchall {:try_start_1e .. :try_end_24} :catchall_2d

    .line 687
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 688
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 683
    return v3

    .line 687
    :catchall_2d
    move-exception v3

    goto :goto_35

    .line 684
    :catch_2f
    move-exception v3

    .line 685
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_30
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "uid":I
    .end local p4    # "modeFlags":I
    throw v4
    :try_end_35
    .catchall {:try_start_30 .. :try_end_35} :catchall_2d

    .line 687
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "uid":I
    .restart local p4    # "modeFlags":I
    :goto_35
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 688
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 689
    throw v3
.end method

.method public greylist-max-o createCancellationSignal()Landroid/os/ICancellationSignal;
    .registers 2

    .line 578
    invoke-static {}, Landroid/os/CancellationSignal;->createTransport()Landroid/os/ICancellationSignal;

    move-result-object v0

    return-object v0
.end method

.method public blacklist delete(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;)I
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 438
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 439
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 440
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 442
    const/4 v0, 0x0

    return v0

    .line 444
    :cond_14
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string v3, "delete: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 448
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_26
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p2, p3}, Landroid/content/ContentInterface;->delete(Landroid/net/Uri;Landroid/os/Bundle;)I

    move-result v3
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2c} :catch_37
    .catchall {:try_start_26 .. :try_end_2c} :catchall_35

    .line 452
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 453
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 448
    return v3

    .line 452
    :catchall_35
    move-exception v3

    goto :goto_3d

    .line 449
    :catch_37
    move-exception v3

    .line 450
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_38
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "extras":Landroid/os/Bundle;
    throw v4
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 452
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "extras":Landroid/os/Bundle;
    :goto_3d
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 453
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 454
    throw v3
.end method

.method greylist-max-o getContentProvider()Landroid/content/ContentProvider;
    .registers 2

    .line 237
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    return-object v0
.end method

.method public greylist-max-o getProviderName()Ljava/lang/String;
    .registers 2

    .line 242
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "mimeTypeFilter"    # Ljava/lang/String;

    .line 542
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 543
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 544
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string v3, "getStreamTypes: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 546
    :try_start_18
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v0, p1, p2}, Landroid/content/ContentInterface;->getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_24
    .catchall {:try_start_18 .. :try_end_1e} :catchall_22

    .line 550
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 546
    return-object v0

    .line 550
    :catchall_22
    move-exception v0

    goto :goto_2a

    .line 547
    :catch_24
    move-exception v0

    .line 548
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_25
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "mimeTypeFilter":Ljava/lang/String;
    throw v3
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_22

    .line 550
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "mimeTypeFilter":Ljava/lang/String;
    :goto_2a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 551
    throw v0
.end method

.method public greylist-max-o getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;

    .line 304
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p1}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 305
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string v3, "getType: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 308
    :try_start_18
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v0, p1}, Landroid/content/ContentInterface;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1e} :catch_24
    .catchall {:try_start_18 .. :try_end_1e} :catchall_22

    .line 312
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 308
    return-object v0

    .line 312
    :catchall_22
    move-exception v0

    goto :goto_2a

    .line 309
    :catch_24
    move-exception v0

    .line 310
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_25
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "uri":Landroid/net/Uri;
    throw v3
    :try_end_2a
    .catchall {:try_start_25 .. :try_end_2a} :catchall_22

    .line 312
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "uri":Landroid/net/Uri;
    :goto_2a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 313
    throw v0
.end method

.method public blacklist getTypeAsync(Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 318
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 320
    .local v0, "result":Landroid/os/Bundle;
    :try_start_5
    const-string/jumbo v1, "result"

    invoke-virtual {p0, p1}, Landroid/content/ContentProvider$Transport;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 324
    goto :goto_1b

    .line 321
    :catch_10
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 325
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1b
    invoke-virtual {p2, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 326
    return-void
.end method

.method public blacklist insert(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;
    .registers 11
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "initialValues"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 331
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 332
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 333
    .local v0, "userId":I
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 334
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_2f

    .line 336
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 339
    .local v1, "original":Landroid/content/AttributionSource;
    :try_start_1c
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v2, p2, p3}, Landroid/content/ContentProvider;->rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_28

    .line 341
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 339
    return-object v2

    .line 341
    :catchall_28
    move-exception v2

    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 342
    throw v2

    .line 344
    .end local v1    # "original":Landroid/content/AttributionSource;
    :cond_2f
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    const-string v4, "insert: "

    invoke-static {v2, v3, v4, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 348
    .restart local v1    # "original":Landroid/content/AttributionSource;
    :try_start_41
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v4, p2, p3, p4}, Landroid/content/ContentInterface;->insert(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_4b} :catch_56
    .catchall {:try_start_41 .. :try_end_4b} :catchall_54

    .line 352
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 353
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 348
    return-object v4

    .line 352
    :catchall_54
    move-exception v4

    goto :goto_5c

    .line 349
    :catch_56
    move-exception v4

    .line 350
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_57
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v0    # "userId":I
    .end local v1    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "initialValues":Landroid/content/ContentValues;
    .end local p4    # "extras":Landroid/os/Bundle;
    throw v5
    :try_end_5c
    .catchall {:try_start_57 .. :try_end_5c} :catchall_54

    .line 352
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userId":I
    .restart local v1    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "initialValues":Landroid/content/ContentValues;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :goto_5c
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 353
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 354
    throw v4
.end method

.method public blacklist openAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 504
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 505
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 506
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string/jumbo v3, "openAssetFile: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 508
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 511
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_22
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 512
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 511
    invoke-interface {v3, p2, p3, v4}, Landroid/content/ContentInterface;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2c} :catch_37
    .catchall {:try_start_22 .. :try_end_2c} :catchall_35

    .line 516
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 517
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 511
    return-object v3

    .line 516
    :catchall_35
    move-exception v3

    goto :goto_3d

    .line 513
    :catch_37
    move-exception v3

    .line 514
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_38
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "mode":Ljava/lang/String;
    .end local p4    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v4
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 516
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "mode":Ljava/lang/String;
    .restart local p4    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_3d
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 517
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 518
    throw v3
.end method

.method public blacklist openFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/ICancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mode"    # Ljava/lang/String;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 483
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 484
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 485
    invoke-direct {p0, p1, p2, p3}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string/jumbo v3, "openFile: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 490
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_22
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 491
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 490
    invoke-interface {v3, p2, p3, v4}, Landroid/content/ContentInterface;->openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_2c} :catch_37
    .catchall {:try_start_22 .. :try_end_2c} :catchall_35

    .line 495
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 496
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 490
    return-object v3

    .line 495
    :catchall_35
    move-exception v3

    goto :goto_3d

    .line 492
    :catch_37
    move-exception v3

    .line 493
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_38
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "mode":Ljava/lang/String;
    .end local p4    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v4
    :try_end_3d
    .catchall {:try_start_38 .. :try_end_3d} :catchall_35

    .line 495
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "mode":Ljava/lang/String;
    .restart local p4    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_3d
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 496
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 497
    throw v3
.end method

.method public blacklist openTypedAssetFile(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .registers 11
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "mimeType"    # Ljava/lang/String;
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 558
    const/4 v0, 0x1

    invoke-static {p4, v0}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    .line 559
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 560
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 561
    const-string/jumbo v0, "r"

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider$Transport;->enforceFilePermission(Landroid/content/AttributionSource;Landroid/net/Uri;Ljava/lang/String;)V

    .line 562
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string/jumbo v3, "openTypedAssetFile: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 566
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_29
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 567
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 566
    invoke-interface {v3, p2, p3, p4, v4}, Landroid/content/ContentInterface;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_3e
    .catchall {:try_start_29 .. :try_end_33} :catchall_3c

    .line 571
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 572
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 566
    return-object v3

    .line 571
    :catchall_3c
    move-exception v3

    goto :goto_44

    .line 568
    :catch_3e
    move-exception v3

    .line 569
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_3f
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "mimeType":Ljava/lang/String;
    .end local p4    # "opts":Landroid/os/Bundle;
    .end local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v4
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c

    .line 571
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "mimeType":Ljava/lang/String;
    .restart local p4    # "opts":Landroid/os/Bundle;
    .restart local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_44
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 572
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 573
    throw v3
.end method

.method public blacklist query(Landroid/content/AttributionSource;Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Landroid/database/Cursor;
    .registers 11
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "projection"    # [Ljava/lang/String;
    .param p4, "queryArgs"    # Landroid/os/Bundle;
    .param p5, "cancellationSignal"    # Landroid/os/ICancellationSignal;

    .line 249
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 250
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 251
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_4d

    .line 259
    const/4 v0, 0x0

    if-eqz p3, :cond_1b

    .line 260
    new-instance v1, Landroid/database/MatrixCursor;

    invoke-direct {v1, p3, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v1

    .line 268
    :cond_1b
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 271
    .local v1, "original":Landroid/content/AttributionSource;
    :try_start_21
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 273
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v3

    .line 271
    invoke-interface {v2, p2, p3, p4, v3}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2b} :catch_41
    .catchall {:try_start_21 .. :try_end_2b} :catchall_3f

    .line 277
    .local v2, "cursor":Landroid/database/Cursor;
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v3, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 278
    nop

    .line 279
    if-nez v2, :cond_35

    .line 280
    const/4 v0, 0x0

    return-object v0

    .line 284
    :cond_35
    new-instance v3, Landroid/database/MatrixCursor;

    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    return-object v3

    .line 277
    .end local v2    # "cursor":Landroid/database/Cursor;
    :catchall_3f
    move-exception v0

    goto :goto_47

    .line 274
    :catch_41
    move-exception v0

    .line 275
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_42
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    .end local v1    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "projection":[Ljava/lang/String;
    .end local p4    # "queryArgs":Landroid/os/Bundle;
    .end local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v2
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_3f

    .line 277
    .end local v0    # "e":Landroid/os/RemoteException;
    .restart local v1    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "projection":[Ljava/lang/String;
    .restart local p4    # "queryArgs":Landroid/os/Bundle;
    .restart local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_47
    iget-object v2, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v2, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 278
    throw v0

    .line 286
    .end local v1    # "original":Landroid/content/AttributionSource;
    :cond_4d
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string/jumbo v3, "query: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 290
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_60
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 292
    invoke-static {p5}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 290
    invoke-interface {v3, p2, p3, p4, v4}, Landroid/content/ContentInterface;->query(Landroid/net/Uri;[Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_60 .. :try_end_6a} :catch_75
    .catchall {:try_start_60 .. :try_end_6a} :catchall_73

    .line 296
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 297
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 290
    return-object v3

    .line 296
    :catchall_73
    move-exception v3

    goto :goto_7b

    .line 293
    :catch_75
    move-exception v3

    .line 294
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_76
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "projection":[Ljava/lang/String;
    .end local p4    # "queryArgs":Landroid/os/Bundle;
    .end local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    throw v4
    :try_end_7b
    .catchall {:try_start_76 .. :try_end_7b} :catchall_73

    .line 296
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "projection":[Ljava/lang/String;
    .restart local p4    # "queryArgs":Landroid/os/Bundle;
    .restart local p5    # "cancellationSignal":Landroid/os/ICancellationSignal;
    :goto_7b
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 297
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 298
    throw v3
.end method

.method public blacklist refresh(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/ICancellationSignal;)Z
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "extras"    # Landroid/os/Bundle;
    .param p4, "cancellationSignal"    # Landroid/os/ICancellationSignal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 656
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 657
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 658
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_12

    .line 660
    const/4 v0, 0x0

    return v0

    .line 662
    :cond_12
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string/jumbo v3, "refresh: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 663
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 666
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_25
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    .line 667
    invoke-static {p4}, Landroid/os/CancellationSignal;->fromTransport(Landroid/os/ICancellationSignal;)Landroid/os/CancellationSignal;

    move-result-object v4

    .line 666
    invoke-interface {v3, p2, p3, v4}, Landroid/content/ContentInterface;->refresh(Landroid/net/Uri;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Z

    move-result v3
    :try_end_2f
    .catchall {:try_start_25 .. :try_end_2f} :catchall_38

    .line 669
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 670
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 666
    return v3

    .line 669
    :catchall_38
    move-exception v3

    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 670
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 671
    throw v3
.end method

.method public blacklist uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 9
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;

    .line 619
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 620
    invoke-static {p2}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;)I

    move-result v0

    .line 621
    .local v0, "userId":I
    invoke-static {p2}, Landroid/content/ContentProvider;->getUriWithoutUserId(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 622
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceReadPermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v1

    if-eqz v1, :cond_16

    .line 624
    const/4 v1, 0x0

    return-object v1

    .line 626
    :cond_16
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    const-wide/32 v2, 0x100000

    const-string/jumbo v4, "uncanonicalize: "

    invoke-static {v2, v3, v4, v1}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 627
    iget-object v1, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v1, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v1

    .line 630
    .local v1, "original":Landroid/content/AttributionSource;
    :try_start_29
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v4, p2}, Landroid/content/ContentInterface;->uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v4
    :try_end_33
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_33} :catch_3e
    .catchall {:try_start_29 .. :try_end_33} :catchall_3c

    .line 634
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 635
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 630
    return-object v4

    .line 634
    :catchall_3c
    move-exception v4

    goto :goto_44

    .line 631
    :catch_3e
    move-exception v4

    .line 632
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_3f
    invoke-virtual {v4}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v5

    .end local v0    # "userId":I
    .end local v1    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    throw v5
    :try_end_44
    .catchall {:try_start_3f .. :try_end_44} :catchall_3c

    .line 634
    .end local v4    # "e":Landroid/os/RemoteException;
    .restart local v0    # "userId":I
    .restart local v1    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    :goto_44
    iget-object v5, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v5, v1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 635
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 636
    throw v4
.end method

.method public blacklist uncanonicalizeAsync(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/os/RemoteCallback;)V
    .registers 8
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "callback"    # Landroid/os/RemoteCallback;

    .line 642
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 644
    .local v0, "result":Landroid/os/Bundle;
    :try_start_5
    const-string/jumbo v1, "result"

    .line 645
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->uncanonicalize(Landroid/content/AttributionSource;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 644
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_10

    .line 649
    goto :goto_1b

    .line 646
    :catch_10
    move-exception v1

    .line 647
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Landroid/os/ParcelableException;

    invoke-direct {v2, v1}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    const-string v3, "error"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 650
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1b
    invoke-virtual {p3, v0}, Landroid/os/RemoteCallback;->sendResult(Landroid/os/Bundle;)V

    .line 651
    return-void
.end method

.method public blacklist update(Landroid/content/AttributionSource;Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I
    .registers 10
    .param p1, "attributionSource"    # Landroid/content/AttributionSource;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 460
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-virtual {v0, p2}, Landroid/content/ContentProvider;->validateIncomingUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 461
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p2}, Landroid/content/ContentProvider;->-$$Nest$mmaybeGetUriWithoutUserId(Landroid/content/ContentProvider;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object p2

    .line 462
    invoke-direct {p0, p1, p2}, Landroid/content/ContentProvider$Transport;->enforceWritePermission(Landroid/content/AttributionSource;Landroid/net/Uri;)I

    move-result v0

    if-eqz v0, :cond_14

    .line 464
    const/4 v0, 0x0

    return v0

    .line 466
    :cond_14
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x100000

    const-string/jumbo v3, "update: "

    invoke-static {v1, v2, v3, v0}, Landroid/content/ContentProvider;->-$$Nest$smtraceBegin(JLjava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v0, p1}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    move-result-object v0

    .line 470
    .local v0, "original":Landroid/content/AttributionSource;
    :try_start_27
    iget-object v3, p0, Landroid/content/ContentProvider$Transport;->mInterface:Landroid/content/ContentInterface;

    invoke-interface {v3, p2, p3, p4}, Landroid/content/ContentInterface;->update(Landroid/net/Uri;Landroid/content/ContentValues;Landroid/os/Bundle;)I

    move-result v3
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2d} :catch_38
    .catchall {:try_start_27 .. :try_end_2d} :catchall_36

    .line 474
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 475
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 470
    return v3

    .line 474
    :catchall_36
    move-exception v3

    goto :goto_3e

    .line 471
    :catch_38
    move-exception v3

    .line 472
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_39
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    .end local v0    # "original":Landroid/content/AttributionSource;
    .end local p0    # "this":Landroid/content/ContentProvider$Transport;
    .end local p1    # "attributionSource":Landroid/content/AttributionSource;
    .end local p2    # "uri":Landroid/net/Uri;
    .end local p3    # "values":Landroid/content/ContentValues;
    .end local p4    # "extras":Landroid/os/Bundle;
    throw v4
    :try_end_3e
    .catchall {:try_start_39 .. :try_end_3e} :catchall_36

    .line 474
    .end local v3    # "e":Landroid/os/RemoteException;
    .restart local v0    # "original":Landroid/content/AttributionSource;
    .restart local p0    # "this":Landroid/content/ContentProvider$Transport;
    .restart local p1    # "attributionSource":Landroid/content/AttributionSource;
    .restart local p2    # "uri":Landroid/net/Uri;
    .restart local p3    # "values":Landroid/content/ContentValues;
    .restart local p4    # "extras":Landroid/os/Bundle;
    :goto_3e
    iget-object v4, p0, Landroid/content/ContentProvider$Transport;->this$0:Landroid/content/ContentProvider;

    invoke-static {v4, v0}, Landroid/content/ContentProvider;->-$$Nest$msetCallingAttributionSource(Landroid/content/ContentProvider;Landroid/content/AttributionSource;)Landroid/content/AttributionSource;

    .line 475
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 476
    throw v3
.end method
