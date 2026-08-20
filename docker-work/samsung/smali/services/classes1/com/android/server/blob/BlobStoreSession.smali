.class Lcom/android/server/blob/BlobStoreSession;
.super Landroid/app/blob/IBlobStoreSession$Stub;
.source "BlobStoreSession.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation


# static fields
.field public static final STATE_ABANDONED:I = 0x2

.field public static final STATE_CLOSED:I = 0x0

.field public static final STATE_COMMITTED:I = 0x3

.field public static final STATE_OPENED:I = 0x1

.field public static final STATE_VERIFIED_INVALID:I = 0x5

.field public static final STATE_VERIFIED_VALID:I = 0x4


# instance fields
.field public final mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessionLock"
        }
    .end annotation
.end field

.field public mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessionLock"
        }
    .end annotation
.end field

.field public final mBlobHandle:Landroid/app/blob/BlobHandle;

.field public final mContext:Landroid/content/Context;

.field public final mCreationTimeMs:J

.field public mDataDigest:[B

.field public final mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

.field public final mOwnerPackageName:Ljava/lang/String;

.field public final mOwnerUid:I

.field public final mRevocableFds:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRevocableFds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/RevocableFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field public mSessionFile:Ljava/io/File;

.field public final mSessionId:J

.field public final mSessionLock:Ljava/lang/Object;

.field public mState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessionLock"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$RQ7jEAXanfbmh5XPIfRGkx9Tpjo(Lcom/android/server/blob/BlobStoreSession;Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/blob/BlobStoreSession;->lambda$trackRevocableFdLocked$0(Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;JLcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V
    .registers 11

    .line 128
    invoke-direct {p0}, Landroid/app/blob/IBlobStoreSession$Stub;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 120
    new-instance v0, Lcom/android/server/blob/BlobAccessMode;

    invoke-direct {v0}, Lcom/android/server/blob/BlobAccessMode;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 129
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    .line 130
    iput-object p4, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 131
    iput-wide p2, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 132
    iput p5, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    .line 133
    iput-object p6, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    .line 134
    iput-wide p7, p0, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    .line 135
    iput-object p9, p0, Lcom/android/server/blob/BlobStoreSession;->mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V
    .registers 18

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    .line 140
    invoke-direct/range {v0 .. v9}, Lcom/android/server/blob/BlobStoreSession;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;JLcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V

    return-void
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)Lcom/android/server/blob/BlobStoreSession;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const-string/jumbo v0, "id"

    .line 597
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v3

    const-string/jumbo v0, "p"

    .line 598
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "u"

    .line 599
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v6

    const/4 v0, 0x5

    if-lt p1, v0, :cond_1f

    const-string p1, "crt"

    .line 601
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_23

    .line 602
    :cond_1f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :goto_23
    move-wide v8, v0

    .line 604
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result p1

    const/4 v0, 0x0

    move-object v5, v0

    move-object v11, v5

    .line 607
    :cond_2b
    :goto_2b
    invoke-static {p0, p1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_53

    .line 608
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bh"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_42

    .line 609
    invoke-static {p0}, Landroid/app/blob/BlobHandle;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/blob/BlobHandle;

    move-result-object v5

    goto :goto_2b

    .line 610
    :cond_42
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "am"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 611
    invoke-static {p0}, Lcom/android/server/blob/BlobAccessMode;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/blob/BlobAccessMode;

    move-result-object v11

    goto :goto_2b

    :cond_53
    const-string p0, "BlobStore"

    if-nez v5, :cond_5d

    const-string p1, "blobHandle should be available"

    .line 616
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_5d
    if-nez v11, :cond_65

    const-string p1, "blobAccessMode should be available"

    .line 620
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 624
    :cond_65
    new-instance p0, Lcom/android/server/blob/BlobStoreSession;

    move-object v1, p0

    move-object v2, p2

    move-object v10, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/blob/BlobStoreSession;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;ILjava/lang/String;JLcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;)V

    .line 626
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p1, v11}, Lcom/android/server/blob/BlobAccessMode;->allow(Lcom/android/server/blob/BlobAccessMode;)V

    return-object p0
.end method

.method private synthetic lambda$trackRevocableFdLocked$0(Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V
    .registers 3

    .line 502
    iget-object p2, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    monitor-enter p2

    .line 503
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 504
    monitor-exit p2

    return-void

    :catchall_a
    move-exception p0

    monitor-exit p2
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public static stateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_39

    const/4 v0, 0x1

    if-eq p0, v0, :cond_36

    const/4 v0, 0x2

    if-eq p0, v0, :cond_33

    const/4 v0, 0x3

    if-eq p0, v0, :cond_30

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2d

    const/4 v0, 0x5

    if-eq p0, v0, :cond_2a

    .line 532
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BlobStore"

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "<unknown>"

    return-object p0

    :cond_2a
    const-string p0, "<verified_invalid>"

    return-object p0

    :cond_2d
    const-string p0, "<verified_valid>"

    return-object p0

    :cond_30
    const-string p0, "<committed>"

    return-object p0

    :cond_33
    const-string p0, "<abandoned>"

    return-object p0

    :cond_36
    const-string p0, "<opened>"

    return-object p0

    :cond_39
    const-string p0, "<closed>"

    return-object p0
.end method


# virtual methods
.method public abandon()V
    .registers 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 415
    invoke-virtual {p0, v0, v1}, Lcom/android/server/blob/BlobStoreSession;->closeSession(IZ)V

    return-void
.end method

.method public allowPackageAccess(Ljava/lang/String;[B)V
    .registers 6

    .line 328
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    const-string/jumbo v0, "packageName must not be null"

    .line 329
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 330
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 331
    :try_start_c
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_46

    .line 335
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {v1}, Lcom/android/server/blob/BlobAccessMode;->getAllowedPackagesCount()I

    move-result v1

    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->getMaxPermittedPackages()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 340
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobAccessMode;->allowPackageAccess(Ljava/lang/String;[B)V

    .line 341
    monitor-exit v0

    return-void

    .line 336
    :cond_24
    new-instance p1, Landroid/os/ParcelableException;

    new-instance p2, Landroid/os/LimitExceededException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many packages permitted to access the blob: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 338
    invoke-virtual {p0}, Lcom/android/server/blob/BlobAccessMode;->getAllowedPackagesCount()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Landroid/os/LimitExceededException;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, p2}, Landroid/os/ParcelableException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 332
    :cond_46
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allowed to change access type in state: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 333
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_63
    move-exception p0

    .line 341
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_c .. :try_end_65} :catchall_63

    throw p0
.end method

.method public allowPublicAccess()V
    .registers 5

    .line 358
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 359
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 360
    :try_start_6
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 364
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobAccessMode;->allowPublicAccess()V

    .line 365
    monitor-exit v0

    return-void

    .line 361
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to change access type in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 362
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_2f
    move-exception p0

    .line 365
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public allowSameSignatureAccess()V
    .registers 5

    .line 346
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 347
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 348
    :try_start_6
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_12

    .line 352
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobAccessMode;->allowSameSignatureAccess()V

    .line 353
    monitor-exit v0

    return-void

    .line 349
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to change access type in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 350
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_2f
    move-exception p0

    .line 353
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_6 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public final assertCallerIsOwner()V
    .registers 3

    .line 548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 549
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    if-ne v0, v1, :cond_9

    return-void

    .line 550
    :cond_9
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not the session owner"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x0

    .line 410
    invoke-virtual {p0, v0, v0}, Lcom/android/server/blob/BlobStoreSession;->closeSession(IZ)V

    return-void
.end method

.method public final closeSession(IZ)V
    .registers 6

    .line 428
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 429
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 430
    :try_start_6
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2c

    if-nez p1, :cond_f

    .line 434
    monitor-exit v0

    return-void

    .line 436
    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allowed to delete or abandon a session with state: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 437
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 441
    :cond_2c
    iput p1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 442
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->revokeAllFds()V

    if-eqz p2, :cond_38

    .line 445
    iget-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    invoke-virtual {p1, p0}, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;->onStateChanged(Lcom/android/server/blob/BlobStoreSession;)V

    .line 447
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_6 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public commit(Landroid/app/blob/IBlobCommitCallback;)V
    .registers 4

    .line 420
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_3
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;

    const/4 p1, 0x3

    const/4 v1, 0x1

    .line 423
    invoke-virtual {p0, p1, v1}, Lcom/android/server/blob/BlobStoreSession;->closeSession(IZ)V

    .line 424
    monitor-exit v0

    return-void

    :catchall_c
    move-exception p0

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw p0
.end method

.method public computeDigest()V
    .registers 6

    const-wide/32 v0, 0x80000

    .line 452
    :try_start_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computeBlobDigest-i"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-l"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 452
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 454
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    iget-object v3, v3, Landroid/app/blob/BlobHandle;->algorithm:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/FileUtils;->digest(Ljava/io/File;Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mDataDigest:[B
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_37} :catch_3a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_37} :catch_3a
    .catchall {:try_start_3 .. :try_end_37} :catchall_38

    goto :goto_42

    :catchall_38
    move-exception p0

    goto :goto_46

    :catch_3a
    move-exception p0

    :try_start_3b
    const-string v2, "BlobStore"

    const-string v3, "Error computing the digest"

    .line 456
    invoke-static {v2, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3b .. :try_end_42} :catchall_38

    .line 458
    :goto_42
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :goto_46
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 459
    throw p0
.end method

.method public destroy()V
    .registers 1

    .line 483
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->revokeAllFds()V

    .line 484
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .registers 9

    .line 555
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    invoke-static {v2}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ownerUid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ownerPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 559
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creation time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    invoke-static {v2, v3}, Lcom/android/server/blob/BlobStoreUtils;->formatTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 560
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v3

    const/16 v5, 0x8

    invoke-static {v2, v3, v4, v5}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "blobHandle:"

    .line 562
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 563
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 564
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpFull()Z

    move-result p2

    invoke-virtual {v1, p1, p2}, Landroid/app/blob/BlobHandle;->dump(Landroid/util/IndentingPrintWriter;Z)V

    .line 565
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "accessMode:"

    .line 567
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 568
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 569
    iget-object p2, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p2, p1}, Lcom/android/server/blob/BlobAccessMode;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 570
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 572
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Open fds: #"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 573
    monitor-exit v0

    return-void

    :catchall_c7
    move-exception p0

    monitor-exit v0
    :try_end_c9
    .catchall {:try_start_3 .. :try_end_c9} :catchall_c7

    throw p0
.end method

.method public getBlobAccessMode()Lcom/android/server/blob/BlobAccessMode;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    monitor-exit v0

    return-object p0

    :catchall_7
    move-exception p0

    .line 194
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public getBlobHandle()Landroid/app/blob/BlobHandle;
    .registers 1

    .line 145
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    return-object p0
.end method

.method public getOwnerPackageName()Ljava/lang/String;
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getOwnerUid()I
    .registers 1

    .line 153
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    return p0
.end method

.method public getSessionFile()Ljava/io/File;
    .registers 3

    .line 510
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionFile:Ljava/io/File;

    if-nez v0, :cond_c

    .line 511
    iget-wide v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-static {v0, v1}, Lcom/android/server/blob/BlobStoreConfig;->prepareBlobFile(J)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionFile:Ljava/io/File;

    .line 513
    :cond_c
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionFile:Ljava/io/File;

    return-object p0
.end method

.method public getSessionId()J
    .registers 3

    .line 149
    iget-wide v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    return-wide v0
.end method

.method public getSize()J
    .registers 3

    .line 322
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()I
    .registers 2

    .line 175
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_3
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    monitor-exit v0

    return p0

    :catchall_7
    move-exception p0

    .line 177
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method public hasAccess(ILjava/lang/String;)Z
    .registers 4

    .line 161
    iget v0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    if-ne v0, p1, :cond_e

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isExpired()Z
    .registers 5

    .line 204
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_10

    .line 206
    iget-wide v0, p0, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    .line 205
    :cond_10
    invoke-static {v0, v1}, Lcom/android/server/blob/BlobStoreConfig;->hasSessionExpired(J)Z

    move-result p0

    return p0
.end method

.method public isFinalized()Z
    .registers 3

    .line 198
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_3
    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v1, 0x3

    if-eq p0, v1, :cond_e

    const/4 v1, 0x2

    if-ne p0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 p0, 0x1

    :goto_f
    monitor-exit v0

    return p0

    :catchall_11
    move-exception p0

    .line 200
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public isPackageAccessAllowed(Ljava/lang/String;[B)Z
    .registers 6

    .line 371
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    const-string/jumbo v0, "packageName must not be null"

    .line 372
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "certificate"

    .line 373
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkByteArrayNotEmpty([BLjava/lang/String;)[B

    .line 375
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 376
    :try_start_11
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1e

    .line 380
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/blob/BlobAccessMode;->isPackageAccessAllowed(Ljava/lang/String;[B)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 377
    :cond_1e
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not allowed to get access type in state: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 378
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_3b
    move-exception p0

    .line 381
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_11 .. :try_end_3d} :catchall_3b

    throw p0
.end method

.method public isPublicAccessAllowed()Z
    .registers 5

    .line 398
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 399
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 400
    :try_start_6
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 404
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobAccessMode;->isPublicAccessAllowed()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 401
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to get access type in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 402
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_30
    move-exception p0

    .line 405
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public isSameSignatureAccessAllowed()Z
    .registers 5

    .line 386
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 387
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 388
    :try_start_6
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 392
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobAccessMode;->isSameSignatureAccessAllowed()Z

    move-result p0

    monitor-exit v0

    return p0

    .line 389
    :cond_13
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to get access type in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 390
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_30
    move-exception p0

    .line 393
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_6 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public open()V
    .registers 5

    .line 165
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->isFinalized()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    .line 170
    iput v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 171
    monitor-exit v0

    return-void

    .line 167
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to open session with state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 168
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_2b
    move-exception p0

    .line 171
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_3 .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public openRead()Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 271
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 272
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 273
    :try_start_6
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6b

    .line 277
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->shouldUseRevocableFdForReads()Z

    move-result v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_88

    if-nez v1, :cond_22

    .line 279
    :try_start_11
    new-instance v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->openReadInternal()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_1c
    .catchall {:try_start_11 .. :try_end_1a} :catchall_88

    :try_start_1a
    monitor-exit v0

    return-object v1

    :catch_1c
    move-exception p0

    .line 281
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 284
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1a .. :try_end_23} :catchall_88

    const/4 v0, 0x0

    .line 288
    :try_start_24
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->openReadInternal()Ljava/io/FileDescriptor;

    move-result-object v0

    .line 289
    new-instance v1, Landroid/os/RevocableFileDescriptor;

    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v0}, Landroid/os/RevocableFileDescriptor;-><init>(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 290
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_32} :catch_62

    .line 291
    :try_start_32
    iget v4, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    if-ne v4, v2, :cond_3f

    .line 296
    invoke-virtual {p0, v1}, Lcom/android/server/blob/BlobStoreSession;->trackRevocableFdLocked(Landroid/os/RevocableFileDescriptor;)V

    .line 297
    invoke-virtual {v1}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    monitor-exit v3

    return-object p0

    .line 292
    :cond_3f
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 293
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not allowed to read in state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 294
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_5f
    move-exception p0

    .line 298
    monitor-exit v3
    :try_end_61
    .catchall {:try_start_32 .. :try_end_61} :catchall_5f

    :try_start_61
    throw p0
    :try_end_62
    .catch Ljava/io/IOException; {:try_start_61 .. :try_end_62} :catch_62

    :catch_62
    move-exception p0

    .line 300
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 301
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 274
    :cond_6b
    :try_start_6b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not allowed to read in state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 275
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_88
    move-exception p0

    .line 284
    monitor-exit v0
    :try_end_8a
    .catchall {:try_start_6b .. :try_end_8a} :catchall_88

    throw p0
.end method

.method public final openReadInternal()Ljava/io/FileDescriptor;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 308
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 312
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    sget v0, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object p0

    return-object p0

    .line 310
    :cond_12
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Couldn\'t get the file for this session"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1a
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_1a} :catch_1a

    :catch_1a
    move-exception p0

    .line 315
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public openWrite(JJ)Landroid/os/ParcelFileDescriptor;
    .registers 8

    const-string/jumbo v0, "offsetBytes must not be negative"

    .line 213
    invoke-static {p1, p2, v0}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(JLjava/lang/String;)J

    .line 215
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->assertCallerIsOwner()V

    .line 216
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 217
    :try_start_c
    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5a

    .line 221
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_77

    const/4 v0, 0x0

    .line 225
    :try_start_13
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/blob/BlobStoreSession;->openWriteInternal(JJ)Ljava/io/FileDescriptor;

    move-result-object v0

    .line 226
    new-instance p1, Landroid/os/RevocableFileDescriptor;

    iget-object p2, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2, v0}, Landroid/os/RevocableFileDescriptor;-><init>(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 227
    iget-object p2, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter p2
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_21} :catch_51

    .line 228
    :try_start_21
    iget p3, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    if-ne p3, v2, :cond_2e

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobStoreSession;->trackRevocableFdLocked(Landroid/os/RevocableFileDescriptor;)V

    .line 234
    invoke-virtual {p1}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    monitor-exit p2

    return-object p0

    .line 229
    :cond_2e
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 230
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Not allowed to write in state: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 231
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_4e
    move-exception p0

    .line 235
    monitor-exit p2
    :try_end_50
    .catchall {:try_start_21 .. :try_end_50} :catchall_4e

    :try_start_50
    throw p0
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_51} :catch_51

    :catch_51
    move-exception p0

    .line 237
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 238
    invoke-static {p0}, Landroid/util/ExceptionUtils;->wrap(Ljava/io/IOException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    .line 218
    :cond_5a
    :try_start_5a
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not allowed to write in state: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    .line 219
    invoke-static {p0}, Lcom/android/server/blob/BlobStoreSession;->stateToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_77
    move-exception p0

    .line 221
    monitor-exit v0
    :try_end_79
    .catchall {:try_start_5a .. :try_end_79} :catchall_77

    throw p0
.end method

.method public final openWriteInternal(JJ)Ljava/io/FileDescriptor;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSessionFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 251
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->O_CREAT:I

    sget v2, Landroid/system/OsConstants;->O_RDWR:I

    or-int/2addr v1, v2

    const/16 v2, 0x180

    invoke-static {v0, v1, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0

    const-wide/16 v1, 0x0

    cmp-long v3, p1, v1

    if-lez v3, :cond_45

    .line 253
    sget v3, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {v0, p1, p2, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_26

    goto :goto_45

    .line 255
    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to seek "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, "; curOffset="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    :goto_45
    cmp-long p1, p3, v1

    if-lez p1, :cond_56

    .line 260
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mContext:Landroid/content/Context;

    const-class p1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v0, p3, p4}, Landroid/os/storage/StorageManager;->allocateBytes(Ljava/io/FileDescriptor;J)V

    :cond_56
    return-object v0

    .line 249
    :cond_57
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Couldn\'t get the file for this session"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5f
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_5f} :catch_5f

    :catch_5f
    move-exception p0

    .line 264
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public final revokeAllFds()V
    .registers 4

    .line 488
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    monitor-enter v0

    .line 489
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1b

    .line 490
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RevocableFileDescriptor;

    invoke-virtual {v2}, Landroid/os/RevocableFileDescriptor;->revoke()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 492
    :cond_1b
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 493
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public sendCommitCallbackResult(I)V
    .registers 5

    .line 181
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;

    invoke-interface {v1, p1}, Landroid/app/blob/IBlobCommitCallback;->onResult(I)V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    goto :goto_13

    :catchall_9
    move-exception p0

    goto :goto_18

    :catch_b
    move-exception p1

    :try_start_c
    const-string v1, "BlobStore"

    const-string v2, "Error sending the callback result"

    .line 185
    invoke-static {v1, v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_13
    const/4 p1, 0x0

    .line 187
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobCommitCallback:Landroid/app/blob/IBlobCommitCallback;

    .line 188
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_c .. :try_end_19} :catchall_9

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 539
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BlobStoreSession {id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",handle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",pkg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final trackRevocableFdLocked(Landroid/os/RevocableFileDescriptor;)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mSessionLock"
        }
    .end annotation

    .line 498
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    monitor-enter v0

    .line 499
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mRevocableFds:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_12

    .line 501
    new-instance v0, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/blob/BlobStoreSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/blob/BlobStoreSession;Landroid/os/RevocableFileDescriptor;)V

    invoke-virtual {p1, v0}, Landroid/os/RevocableFileDescriptor;->addOnCloseListener(Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    return-void

    :catchall_12
    move-exception p0

    .line 500
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw p0
.end method

.method public verifyBlobData()V
    .registers 10

    .line 463
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 464
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mDataDigest:[B

    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    iget-object v2, v2, Landroid/app/blob/BlobHandle;->digest:[B

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v1, 0x4

    .line 465
    iput v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    goto :goto_63

    :cond_15
    const-string v1, "BlobStore"

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Digest of the data ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 469
    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mDataDigest:[B

    if-nez v3, :cond_29

    const-string/jumbo v3, "null"

    goto :goto_2d

    :cond_29
    invoke-static {v3}, Landroid/app/blob/BlobHandle;->safeDigest([B)Ljava/lang/String;

    move-result-object v3

    :goto_2d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") didn\'t match the given BlobHandle.digest ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    iget-object v3, v3, Landroid/app/blob/BlobHandle;->digest:[B

    .line 471
    invoke-static {v3}, Landroid/app/blob/BlobHandle;->safeDigest([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 468
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    .line 472
    iput v1, p0, Lcom/android/server/blob/BlobStoreSession;->mState:I

    const/16 v2, 0x12a

    .line 474
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v3

    iget-wide v4, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    .line 475
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v6

    const/4 v8, 0x3

    .line 474
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJI)V

    const/4 v1, 0x1

    .line 476
    invoke-virtual {p0, v1}, Lcom/android/server/blob/BlobStoreSession;->sendCommitCallbackResult(I)V

    .line 478
    :goto_63
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mListener:Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;

    invoke-virtual {v1, p0}, Lcom/android/server/blob/BlobStoreManagerService$SessionStateChangeListener;->onStateChanged(Lcom/android/server/blob/BlobStoreSession;)V

    .line 479
    monitor-exit v0

    return-void

    :catchall_6a
    move-exception p0

    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_3 .. :try_end_6c} :catchall_6a

    throw p0
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 577
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "id"

    .line 578
    iget-wide v2, p0, Lcom/android/server/blob/BlobStoreSession;->mSessionId:J

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string/jumbo v1, "p"

    .line 579
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerPackageName:Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const-string/jumbo v1, "u"

    .line 580
    iget v2, p0, Lcom/android/server/blob/BlobStoreSession;->mOwnerUid:I

    invoke-static {p1, v1, v2}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    const-string v1, "crt"

    .line 581
    iget-wide v2, p0, Lcom/android/server/blob/BlobStoreSession;->mCreationTimeMs:J

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string v1, "bh"

    const/4 v2, 0x0

    .line 583
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 584
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {v1, p1}, Landroid/app/blob/BlobHandle;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v1, "bh"

    .line 585
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "am"

    .line 587
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 588
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreSession;->mBlobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobAccessMode;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string p0, "am"

    .line 589
    invoke-interface {p1, v2, p0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 590
    monitor-exit v0

    return-void

    :catchall_43
    move-exception p0

    monitor-exit v0
    :try_end_45
    .catchall {:try_start_3 .. :try_end_45} :catchall_43

    throw p0
.end method
