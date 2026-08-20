.class public Lcom/android/server/blob/BlobMetadata;
.super Ljava/lang/Object;
.source "BlobMetadata.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/blob/BlobMetadata$Accessor;,
        Lcom/android/server/blob/BlobMetadata$Leasee;,
        Lcom/android/server/blob/BlobMetadata$Committer;
    }
.end annotation


# instance fields
.field public mBlobFile:Ljava/io/File;

.field public final mBlobHandle:Landroid/app/blob/BlobHandle;

.field public final mBlobId:J

.field public final mCommitters:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMetadataLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/blob/BlobMetadata$Committer;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mLeasees:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMetadataLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/blob/BlobMetadata$Leasee;",
            ">;"
        }
    .end annotation
.end field

.field public final mMetadataLock:Ljava/lang/Object;

.field public final mRevocableFds:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mRevocableFds"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/blob/BlobMetadata$Accessor;",
            "Landroid/util/ArraySet<",
            "Landroid/os/RevocableFileDescriptor;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$1kPlsEMCe_zPKmHIoBHpAwetktA(ILjava/lang/String;Lcom/android/server/blob/BlobMetadata$Leasee;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/blob/BlobMetadata;->lambda$removeLeasee$2(ILjava/lang/String;Lcom/android/server/blob/BlobMetadata$Leasee;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8cf_1soPnFxLimWg8LgBQ2GhQzE(ILcom/android/server/blob/BlobMetadata$Leasee;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/blob/BlobMetadata;->lambda$removeDataForUser$6(ILcom/android/server/blob/BlobMetadata$Leasee;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$DCp8ttpWydxNWSjh8kldMgodraU(Lcom/android/server/blob/BlobMetadata;Lcom/android/server/blob/BlobMetadata$Accessor;Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/blob/BlobMetadata;->lambda$createRevocableFd$8(Lcom/android/server/blob/BlobMetadata$Accessor;Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Gj0TgDJ8vdARVdhdnB7wZYpR5eg(ILjava/lang/String;Lcom/android/server/blob/BlobMetadata$Committer;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/blob/BlobMetadata;->lambda$removeCommitter$0(ILjava/lang/String;Lcom/android/server/blob/BlobMetadata$Committer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KrpvkmDm06d88OXLr5VRH5aR8Fw(Lcom/android/server/blob/BlobMetadata$Leasee;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/blob/BlobMetadata;->lambda$removeExpiredLeases$4(Lcom/android/server/blob/BlobMetadata$Leasee;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$Q56ii5cwa0y_Vux5SdG5jscJceE(Landroid/util/SparseArray;Lcom/android/server/blob/BlobMetadata$Committer;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/blob/BlobMetadata;->lambda$removeCommittersFromUnknownPkgs$1(Landroid/util/SparseArray;Lcom/android/server/blob/BlobMetadata$Committer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ceYnxM7Pw2_I8GUdNelXcRo9Qzw(Landroid/util/SparseArray;Lcom/android/server/blob/BlobMetadata$Leasee;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/blob/BlobMetadata;->lambda$removeLeaseesFromUnknownPkgs$3(Landroid/util/SparseArray;Lcom/android/server/blob/BlobMetadata$Leasee;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$wTbOHIVJa-V19V5-x5vMJ8XZOHs(ILcom/android/server/blob/BlobMetadata$Committer;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/blob/BlobMetadata;->lambda$removeDataForUser$5(ILcom/android/server/blob/BlobMetadata$Committer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$xg8ZjMaQmjABUx7RAZeoQopGNqs(ILjava/util/Map$Entry;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/blob/BlobMetadata;->lambda$removeDataForUser$7(ILjava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;)V
    .registers 6

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    .line 94
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    .line 97
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 107
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 115
    iput-object p1, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    .line 116
    iput-wide p2, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    .line 117
    iput-object p4, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    return-void
.end method

.method public static checkCallerCanAccessBlobsAcrossUsers(Ljava/lang/String;I)Z
    .registers 5

    .line 330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string v2, "android.permission.ACCESS_BLOBS_ACROSS_USERS"

    .line 332
    invoke-static {v2, p0, p1}, Landroid/permission/PermissionManager;->checkPackageNamePermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_13

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    .line 335
    :goto_f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 336
    throw p0
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;ILandroid/content/Context;)Lcom/android/server/blob/BlobMetadata;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string/jumbo v0, "id"

    .line 730
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->readLongAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v0

    const/4 v2, 0x6

    if-ge p1, v2, :cond_10

    const-string/jumbo v2, "us"

    .line 732
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    .line 736
    :cond_10
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 737
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 738
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v4

    const/4 v5, 0x0

    move-object v6, v5

    .line 739
    :cond_20
    :goto_20
    invoke-static {p0, v4}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v7

    if-eqz v7, :cond_62

    .line 740
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "bh"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_37

    .line 741
    invoke-static {p0}, Landroid/app/blob/BlobHandle;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/app/blob/BlobHandle;

    move-result-object v6

    goto :goto_20

    .line 742
    :cond_37
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "c"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4d

    .line 743
    invoke-static {p0, p1}, Lcom/android/server/blob/BlobMetadata$Committer;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/blob/BlobMetadata$Committer;

    move-result-object v7

    if-eqz v7, :cond_20

    .line 745
    invoke-virtual {v2, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_20

    .line 747
    :cond_4d
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "l"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_20

    .line 748
    invoke-static {p0, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->createFromXml(Lorg/xmlpull/v1/XmlPullParser;I)Lcom/android/server/blob/BlobMetadata$Leasee;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_20

    :cond_62
    if-nez v6, :cond_6c

    const-string p0, "BlobStore"

    const-string p1, "blobHandle should be available"

    .line 753
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5

    .line 757
    :cond_6c
    new-instance p0, Lcom/android/server/blob/BlobMetadata;

    invoke-direct {p0, p2, v0, v1, v6}, Lcom/android/server/blob/BlobMetadata;-><init>(Landroid/content/Context;JLandroid/app/blob/BlobHandle;)V

    .line 758
    invoke-virtual {p0, v2}, Lcom/android/server/blob/BlobMetadata;->setCommitters(Landroid/util/ArraySet;)V

    .line 759
    invoke-virtual {p0, v3}, Lcom/android/server/blob/BlobMetadata;->setLeasees(Landroid/util/ArraySet;)V

    return-object p0
.end method

.method public static getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/blob/BlobMetadata$Accessor;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Ljava/lang/String;",
            "II)TT;"
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_36

    .line 410
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobMetadata$Accessor;

    const/4 v3, -0x1

    if-eqz p1, :cond_19

    if-eq p2, v3, :cond_19

    .line 412
    invoke-virtual {v2, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;->equals(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_19

    return-object v2

    :cond_19
    if-eqz p1, :cond_2c

    .line 414
    iget-object v4, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    iget v4, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 415
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p3, v4, :cond_2c

    return-object v2

    :cond_2c
    if-eq p2, v3, :cond_33

    .line 417
    iget v3, v2, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v3, p2, :cond_33

    return-object v2

    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_36
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isAnAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/server/blob/BlobMetadata$Accessor;",
            ">(",
            "Landroid/util/ArraySet<",
            "TT;>;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 403
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/blob/BlobMetadata;->getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private synthetic lambda$createRevocableFd$8(Lcom/android/server/blob/BlobMetadata$Accessor;Landroid/os/RevocableFileDescriptor;Ljava/io/IOException;)V
    .registers 5

    .line 553
    iget-object p3, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    monitor-enter p3

    .line 554
    :try_start_3
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 555
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz v0, :cond_1b

    .line 557
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 558
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 559
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_1b
    monitor-exit p3

    return-void

    :catchall_1d
    move-exception p0

    monitor-exit p3
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p0
.end method

.method public static synthetic lambda$removeCommitter$0(ILjava/lang/String;Lcom/android/server/blob/BlobMetadata$Committer;)Z
    .registers 4

    .line 147
    iget v0, p2, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v0, p0, :cond_e

    iget-object p0, p2, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$removeCommittersFromUnknownPkgs$1(Landroid/util/SparseArray;Lcom/android/server/blob/BlobMetadata$Committer;)Z
    .registers 4

    .line 160
    iget v0, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 161
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    const/4 v0, 0x1

    if-nez p0, :cond_10

    return v0

    .line 165
    :cond_10
    iget-object v1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public static synthetic lambda$removeDataForUser$5(ILcom/android/server/blob/BlobMetadata$Committer;)Z
    .registers 2

    .line 235
    iget p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static synthetic lambda$removeDataForUser$6(ILcom/android/server/blob/BlobMetadata$Leasee;)Z
    .registers 2

    .line 236
    iget p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static synthetic lambda$removeDataForUser$7(ILjava/util/Map$Entry;)Z
    .registers 4

    .line 238
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 239
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 240
    iget v0, v0, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    if-eq p0, v0, :cond_16

    return v1

    .line 243
    :cond_16
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    :goto_1a
    if-ge v1, p0, :cond_28

    .line 244
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/RevocableFileDescriptor;

    invoke-virtual {v0}, Landroid/os/RevocableFileDescriptor;->revoke()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 246
    :cond_28
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$removeExpiredLeases$4(Lcom/android/server/blob/BlobMetadata$Leasee;)Z
    .registers 1

    .line 229
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic lambda$removeLeasee$2(ILjava/lang/String;Lcom/android/server/blob/BlobMetadata$Leasee;)Z
    .registers 4

    .line 210
    iget v0, p2, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v0, p0, :cond_e

    iget-object p0, p2, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$removeLeaseesFromUnknownPkgs$3(Landroid/util/SparseArray;Lcom/android/server/blob/BlobMetadata$Leasee;)Z
    .registers 4

    .line 217
    iget v0, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 218
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/SparseArray;

    const/4 v0, 0x1

    if-nez p0, :cond_10

    return v0

    .line 222
    :cond_10
    iget-object v1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method


# virtual methods
.method public addCommittersAndLeasees(Lcom/android/server/blob/BlobMetadata;)V
    .registers 4

    .line 171
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 172
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    return-void
.end method

.method public addOrReplaceCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 132
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 133
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 134
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public addOrReplaceLeasee(Ljava/lang/String;IILjava/lang/CharSequence;J)V
    .registers 18

    move-object v0, p0

    .line 190
    iget-object v1, v0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 193
    :try_start_4
    new-instance v10, Lcom/android/server/blob/BlobMetadata$Leasee;

    iget-object v3, v0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    move-object v2, v10

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/blob/BlobMetadata$Leasee;-><init>(Landroid/content/Context;Ljava/lang/String;IILjava/lang/CharSequence;J)V

    .line 195
    iget-object v2, v0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v2, v10}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, v0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 197
    monitor-exit v1

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_4 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method public final createRevocableFd(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 539
    new-instance v0, Landroid/os/RevocableFileDescriptor;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/os/RevocableFileDescriptor;-><init>(Landroid/content/Context;Ljava/io/FileDescriptor;)V

    .line 542
    iget-object p1, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 543
    :try_start_a
    new-instance v1, Lcom/android/server/blob/BlobMetadata$Accessor;

    invoke-direct {v1, p2, p3}, Lcom/android/server/blob/BlobMetadata$Accessor;-><init>(Ljava/lang/String;I)V

    .line 544
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 545
    invoke-virtual {p2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    if-nez p2, :cond_23

    .line 547
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 548
    iget-object p3, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {p3, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    :cond_23
    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 551
    monitor-exit p1
    :try_end_27
    .catchall {:try_start_a .. :try_end_27} :catchall_34

    .line 552
    new-instance p1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda4;

    invoke-direct {p1, p0, v1, v0}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/blob/BlobMetadata;Lcom/android/server/blob/BlobMetadata$Accessor;Landroid/os/RevocableFileDescriptor;)V

    invoke-virtual {v0, p1}, Landroid/os/RevocableFileDescriptor;->addOnCloseListener(Landroid/os/ParcelFileDescriptor$OnCloseListener;)V

    .line 564
    invoke-virtual {v0}, Landroid/os/RevocableFileDescriptor;->getRevocableFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :catchall_34
    move-exception p0

    .line 551
    :try_start_35
    monitor-exit p1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public destroy()V
    .registers 1

    .line 568
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->revokeAndClearAllFds()V

    .line 569
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;)V
    .registers 9

    .line 652
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "blobHandle:"

    .line 653
    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 654
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 655
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpFull()Z

    move-result p2

    invoke-virtual {v1, p1, p2}, Landroid/app/blob/BlobHandle;->dump(Landroid/util/IndentingPrintWriter;Z)V

    .line 656
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 657
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "size: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v2

    const/16 v4, 0x8

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Committers:"

    .line 659
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 660
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 661
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_4f

    const-string p2, "<empty>"

    .line 662
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_84

    .line 664
    :cond_4f
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    move v2, v1

    :goto_56
    if-ge v2, p2, :cond_84

    .line 665
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 666
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "committer "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Accessor;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 667
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 668
    invoke-virtual {v3, p1}, Lcom/android/server/blob/BlobMetadata$Committer;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 669
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 672
    :cond_84
    :goto_84
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Leasees:"

    .line 674
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 675
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 676
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_9d

    const-string p2, "<empty>"

    .line 677
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d5

    .line 679
    :cond_9d
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    move v2, v1

    :goto_a4
    if-ge v2, p2, :cond_d5

    .line 680
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "leasee "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Accessor;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 682
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 683
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v4, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->dump(Landroid/content/Context;Landroid/util/IndentingPrintWriter;)V

    .line 684
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    add-int/lit8 v2, v2, 0x1

    goto :goto_a4

    .line 687
    :cond_d5
    :goto_d5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    const-string p2, "Open fds:"

    .line 689
    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 690
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 691
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_ee

    const-string p0, "<empty>"

    .line 692
    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_124

    .line 694
    :cond_ee
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    :goto_f4
    if-ge v1, p2, :cond_124

    .line 695
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobMetadata$Accessor;

    .line 696
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 697
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 698
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": #"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_f4

    .line 701
    :cond_124
    :goto_124
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 702
    monitor-exit v0

    return-void

    :catchall_129
    move-exception p0

    monitor-exit v0
    :try_end_12b
    .catchall {:try_start_3 .. :try_end_12b} :catchall_129

    throw p0
.end method

.method public dumpAsStatsEvent(I)Landroid/util/StatsEvent;
    .registers 18

    move-object/from16 v0, p0

    .line 615
    iget-object v1, v0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v1

    .line 616
    :try_start_5
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 618
    iget-object v3, v0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_12
    const-wide v6, 0x10300000002L

    const-wide v8, 0x10500000001L

    const-wide v10, 0x20b00000001L

    if-ge v5, v3, :cond_5b

    .line 619
    iget-object v12, v0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v12, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 620
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v10

    .line 622
    iget v13, v12, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-virtual {v2, v8, v9, v13}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 623
    iget-wide v8, v12, Lcom/android/server/blob/BlobMetadata$Committer;->commitTimeMs:J

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v6, 0x10500000003L

    .line 625
    iget-object v8, v12, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 626
    invoke-virtual {v8}, Lcom/android/server/blob/BlobAccessMode;->getAccessType()I

    move-result v8

    .line 625
    invoke-virtual {v2, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v6, 0x10500000004L

    .line 627
    iget-object v8, v12, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    .line 628
    invoke-virtual {v8}, Lcom/android/server/blob/BlobAccessMode;->getAllowedPackagesCount()I

    move-result v8

    .line 627
    invoke-virtual {v2, v6, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 629
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    .line 631
    :cond_5b
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v13

    .line 633
    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 635
    iget-object v3, v0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    :goto_6a
    if-ge v4, v3, :cond_8d

    .line 636
    iget-object v5, v0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 637
    invoke-virtual {v2, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v14

    .line 638
    iget v12, v5, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-virtual {v2, v8, v9, v12}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 639
    iget-wide v8, v5, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 641
    invoke-virtual {v2, v14, v15}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v4, v4, 0x1

    const-wide v8, 0x10500000001L

    goto :goto_6a

    .line 643
    :cond_8d
    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v14

    .line 646
    iget-wide v7, v0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v9

    iget-object v0, v0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    .line 647
    invoke-virtual {v0}, Landroid/app/blob/BlobHandle;->getExpiryTimeMillis()J

    move-result-wide v11

    move/from16 v6, p1

    .line 646
    invoke-static/range {v6 .. v14}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IJJJ[B[B)Landroid/util/StatsEvent;

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_a5
    move-exception v0

    .line 648
    monitor-exit v1
    :try_end_a7
    .catchall {:try_start_5 .. :try_end_a7} :catchall_a5

    throw v0
.end method

.method public forEachLeasee(Ljava/util/function/Consumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/blob/BlobMetadata$Leasee;",
            ">;)V"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    .line 506
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public getBlobFile()Ljava/io/File;
    .registers 3

    .line 510
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobFile:Ljava/io/File;

    if-nez v0, :cond_c

    .line 511
    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    invoke-static {v0, v1}, Lcom/android/server/blob/BlobStoreConfig;->getBlobFile(J)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobFile:Ljava/io/File;

    .line 513
    :cond_c
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobFile:Ljava/io/File;

    return-object p0
.end method

.method public getBlobHandle()Landroid/app/blob/BlobHandle;
    .registers 1

    .line 125
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    return-object p0
.end method

.method public getBlobId()J
    .registers 3

    .line 121
    iget-wide v0, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    return-wide v0
.end method

.method public getExistingCommitter(Ljava/lang/String;I)Lcom/android/server/blob/BlobMetadata$Committer;
    .registers 8

    .line 177
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    monitor-enter v0

    const/4 v1, 0x0

    .line 178
    :try_start_4
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    :goto_a
    if-ge v1, v2, :cond_25

    .line 179
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 180
    iget v4, v3, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v4, p2, :cond_22

    iget-object v4, v3, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 181
    monitor-exit v0

    return-object v3

    :cond_22
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 184
    :cond_25
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_28
    move-exception p0

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_4 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method public getLeaseInfo(Ljava/lang/String;I)Landroid/app/blob/LeaseInfo;
    .registers 14

    .line 483
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_4d

    .line 485
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 486
    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_4a

    .line 489
    :cond_1c
    iget v5, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-ne v5, p2, :cond_4a

    iget-object v5, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4a

    .line 490
    iget-object p2, v4, Lcom/android/server/blob/BlobMetadata$Leasee;->descriptionResEntryName:Ljava/lang/String;

    if-nez p2, :cond_2e

    :goto_2c
    move v9, v2

    goto :goto_3d

    .line 492
    :cond_2e
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    iget-object v1, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    iget v2, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 494
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 492
    invoke-static {p0, p2, v1, v2}, Lcom/android/server/blob/BlobStoreUtils;->getDescriptionResourceId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    goto :goto_2c

    .line 495
    :goto_3d
    new-instance p0, Landroid/app/blob/LeaseInfo;

    iget-wide v7, v4, Lcom/android/server/blob/BlobMetadata$Leasee;->expiryTimeMillis:J

    iget-object v10, v4, Lcom/android/server/blob/BlobMetadata$Leasee;->description:Ljava/lang/CharSequence;

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v10}, Landroid/app/blob/LeaseInfo;-><init>(Ljava/lang/String;JILjava/lang/CharSequence;)V

    monitor-exit v0

    return-object p0

    :cond_4a
    :goto_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 499
    :cond_4d
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_50
    move-exception p0

    monitor-exit v0
    :try_end_52
    .catchall {:try_start_3 .. :try_end_52} :catchall_50

    throw p0
.end method

.method public getSize()J
    .registers 3

    .line 264
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public hasACommitterInUser(I)Z
    .registers 7

    .line 356
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 357
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_23

    .line 358
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 359
    iget v4, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p1, v4, :cond_20

    .line 360
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 363
    :cond_23
    monitor-exit v0

    return v2

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public hasACommitterOrLeaseeInUser(I)Z
    .registers 3

    .line 352
    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobMetadata;->hasACommitterInUser(I)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Lcom/android/server/blob/BlobMetadata;->hasALeaseeInUser(I)Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public final hasALeaseeInUser(I)Z
    .registers 7

    .line 368
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 369
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_23

    .line 370
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 371
    iget v4, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne p1, v4, :cond_20

    .line 372
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 375
    :cond_23
    monitor-exit v0

    return v2

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public hasLeaseWaitTimeElapsedForAll()Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 605
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_20

    .line 606
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 607
    invoke-virtual {v3}, Lcom/android/server/blob/BlobMetadata$Committer;->getCommitTimeMs()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/android/server/blob/BlobStoreConfig;->hasLeaseWaitTimeElapsed(J)Z

    move-result v3

    if-nez v3, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method public final hasOtherLeasees(Ljava/lang/String;II)Z
    .registers 12

    .line 460
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_49

    .line 462
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 463
    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v5

    if-nez v5, :cond_1c

    goto :goto_46

    :cond_1c
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz p1, :cond_2a

    if-eq p2, v5, :cond_2a

    .line 468
    invoke-virtual {v4, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;->equals(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 469
    monitor-exit v0

    return v6

    :cond_2a
    if-eqz p1, :cond_3e

    .line 470
    iget-object v7, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v7, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3c

    iget v7, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    .line 471
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eq p3, v7, :cond_3e

    .line 472
    :cond_3c
    monitor-exit v0

    return v6

    :cond_3e
    if-eq p2, v5, :cond_46

    .line 473
    iget v4, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    if-eq v4, p2, :cond_46

    .line 474
    monitor-exit v0

    return v6

    :cond_46
    :goto_46
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 477
    :cond_49
    monitor-exit v0

    return v2

    :catchall_4b
    move-exception p0

    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4b

    throw p0
.end method

.method public hasValidLeases()Z
    .registers 6

    .line 253
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 254
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_21

    .line 255
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-virtual {v4}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 256
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :cond_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 259
    :cond_21
    monitor-exit v0

    return v2

    :catchall_23
    move-exception p0

    .line 260
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method public isACommitter(Ljava/lang/String;I)Z
    .registers 5

    .line 380
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 381
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-static {p0, p1, p2, v1}, Lcom/android/server/blob/BlobMetadata;->isAnAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 382
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public isALeasee(Ljava/lang/String;I)Z
    .registers 5

    .line 386
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 387
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    .line 388
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 387
    invoke-static {p0, p1, p2, v1}, Lcom/android/server/blob/BlobMetadata;->getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;

    move-result-object p0

    check-cast p0, Lcom/android/server/blob/BlobMetadata$Leasee;

    if-eqz p0, :cond_19

    .line 389
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result p0

    if-eqz p0, :cond_19

    const/4 p0, 0x1

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    monitor-exit v0

    return p0

    :catchall_1c
    move-exception p0

    .line 390
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public final isALeaseeInUser(Ljava/lang/String;II)Z
    .registers 5

    .line 394
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 395
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/blob/BlobMetadata;->getAccessor(Landroid/util/ArraySet;Ljava/lang/String;II)Lcom/android/server/blob/BlobMetadata$Accessor;

    move-result-object p0

    check-cast p0, Lcom/android/server/blob/BlobMetadata$Leasee;

    if-eqz p0, :cond_15

    .line 396
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result p0

    if-eqz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    monitor-exit v0

    return p0

    :catchall_18
    move-exception p0

    .line 397
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public isAccessAllowedForCaller(Ljava/lang/String;I)Z
    .registers 12

    .line 269
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/blob/BlobHandle;->isExpired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    return v1

    .line 272
    :cond_c
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_f
    iget-object v2, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    move v3, v1

    :goto_16
    const/4 v4, 0x1

    if-ge v3, v2, :cond_32

    .line 275
    iget-object v5, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 276
    invoke-virtual {v5}, Lcom/android/server/blob/BlobMetadata$Leasee;->isStillValid()Z

    move-result v6

    if-eqz v6, :cond_2f

    invoke-virtual {v5, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;->equals(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 277
    monitor-exit v0

    return v4

    :cond_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 281
    :cond_32
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 282
    iget-object v3, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    move v5, v1

    :goto_3d
    if-ge v5, v3, :cond_69

    .line 283
    iget-object v6, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 284
    iget v7, v6, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    if-eq v2, v7, :cond_50

    goto :goto_66

    .line 289
    :cond_50
    invoke-virtual {v6, p1, p2}, Lcom/android/server/blob/BlobMetadata$Accessor;->equals(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 290
    monitor-exit v0

    return v4

    .line 295
    :cond_58
    iget-object v7, v6, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    iget-object v8, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    iget-object v6, v6, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8, p1, v6}, Lcom/android/server/blob/BlobAccessMode;->isAccessAllowedForCaller(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_66

    .line 297
    monitor-exit v0

    return v4

    :cond_66
    :goto_66
    add-int/lit8 v5, v5, 0x1

    goto :goto_3d

    .line 301
    :cond_69
    invoke-static {p1, v2}, Lcom/android/server/blob/BlobMetadata;->checkCallerCanAccessBlobsAcrossUsers(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_71

    .line 304
    monitor-exit v0

    return v1

    .line 306
    :cond_71
    iget-object p2, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    move v3, v1

    :goto_78
    if-ge v3, p2, :cond_a3

    .line 307
    iget-object v5, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/blob/BlobMetadata$Committer;

    .line 308
    iget v6, v5, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    if-ne v2, v6, :cond_8b

    goto :goto_a0

    .line 312
    :cond_8b
    invoke-virtual {p0, p1, v6}, Lcom/android/server/blob/BlobMetadata;->isPackageInstalledOnUser(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_92

    goto :goto_a0

    .line 318
    :cond_92
    iget-object v6, v5, Lcom/android/server/blob/BlobMetadata$Committer;->blobAccessMode:Lcom/android/server/blob/BlobAccessMode;

    iget-object v7, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    iget-object v5, v5, Lcom/android/server/blob/BlobMetadata$Accessor;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7, p1, v5}, Lcom/android/server/blob/BlobAccessMode;->isAccessAllowedForCaller(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 320
    monitor-exit v0

    return v4

    :cond_a0
    :goto_a0
    add-int/lit8 v3, v3, 0x1

    goto :goto_78

    .line 324
    :cond_a3
    monitor-exit v0

    return v1

    :catchall_a5
    move-exception p0

    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_f .. :try_end_a7} :catchall_a5

    throw p0
.end method

.method public final isPackageInstalledOnUser(Ljava/lang/String;I)Z
    .registers 6

    .line 340
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 342
    :try_start_5
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v2, p2}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_e} :catch_18
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    const/4 p0, 0x1

    .line 347
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_13
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 348
    throw p0

    .line 347
    :catch_18
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public openForRead(Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sget v1, Landroid/system/OsConstants;->O_RDONLY:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_f
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_f} :catch_25

    .line 525
    :try_start_f
    invoke-static {}, Lcom/android/server/blob/BlobStoreConfig;->shouldUseRevocableFdForReads()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 526
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/blob/BlobMetadata;->createRevocableFd(Ljava/io/FileDescriptor;Ljava/lang/String;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 528
    :cond_1a
    new-instance p0, Landroid/os/ParcelFileDescriptor;

    invoke-direct {p0, v0}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_1f} :catch_20

    return-object p0

    :catch_20
    move-exception p0

    .line 531
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 532
    throw p0

    :catch_25
    move-exception p0

    .line 522
    invoke-virtual {p0}, Landroid/system/ErrnoException;->rethrowAsIOException()Ljava/io/IOException;

    move-result-object p0

    throw p0
.end method

.method public removeCommitter(Lcom/android/server/blob/BlobMetadata$Committer;)V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 154
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeCommitter(Ljava/lang/String;I)V
    .registers 5

    .line 145
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 146
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 148
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public removeCommittersFromUnknownPkgs(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 159
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda5;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 167
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public removeDataForUser(I)V
    .registers 5

    .line 234
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 236
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    new-instance v2, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda1;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 237
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    new-instance v1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-interface {p0, v1}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    .line 249
    monitor-exit v0

    return-void

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw p0
.end method

.method public removeExpiredLeases()V
    .registers 3

    .line 228
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 230
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public removeLeasee(Ljava/lang/String;I)V
    .registers 5

    .line 208
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 209
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda8;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 211
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public removeLeaseesFromUnknownPkgs(Landroid/util/SparseArray;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    new-instance v1, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcom/android/server/blob/BlobMetadata$$ExternalSyntheticLambda7;-><init>(Landroid/util/SparseArray;)V

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    .line 224
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public final revokeAndClearAllFds()V
    .registers 9

    .line 573
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 574
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_2e

    .line 575
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    .line 576
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    if-nez v4, :cond_18

    goto :goto_2b

    .line 580
    :cond_18
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    move v6, v2

    :goto_1d
    if-ge v6, v5, :cond_2b

    .line 581
    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/RevocableFileDescriptor;

    invoke-virtual {v7}, Landroid/os/RevocableFileDescriptor;->revoke()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_2b
    :goto_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 584
    :cond_2e
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mRevocableFds:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 585
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public setCommitters(Landroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/blob/BlobMetadata$Committer;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 139
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 140
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 141
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public setLeasees(Landroid/util/ArraySet;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/blob/BlobMetadata$Leasee;",
            ">;)V"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 202
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 203
    iget-object p0, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 204
    monitor-exit v0

    return-void

    :catchall_f
    move-exception p0

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public shouldAttributeToLeasee(IZ)Z
    .registers 7

    .line 449
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v1, 0x0

    .line 450
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/blob/BlobMetadata;->isALeaseeInUser(Ljava/lang/String;II)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_d

    return v3

    :cond_d
    if-eqz p2, :cond_17

    .line 453
    invoke-virtual {p0, v1, p1, v0}, Lcom/android/server/blob/BlobMetadata;->hasOtherLeasees(Ljava/lang/String;II)Z

    move-result p0

    if-nez p0, :cond_16

    goto :goto_17

    :cond_16
    return v3

    :cond_17
    :goto_17
    const/4 p0, 0x1

    return p0
.end method

.method public shouldAttributeToLeasee(Ljava/lang/String;IZ)Z
    .registers 7

    const/4 v0, -0x1

    .line 439
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/blob/BlobMetadata;->isALeaseeInUser(Ljava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_9

    return v2

    :cond_9
    if-eqz p3, :cond_13

    .line 442
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/blob/BlobMetadata;->hasOtherLeasees(Ljava/lang/String;II)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_13

    :cond_12
    return v2

    :cond_13
    :goto_13
    const/4 p0, 0x1

    return p0
.end method

.method public shouldAttributeToUser(I)Z
    .registers 7

    .line 425
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    .line 426
    :try_start_3
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_22

    .line 427
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    .line 429
    iget v4, v4, Lcom/android/server/blob/BlobMetadata$Accessor;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-eq p1, v4, :cond_1f

    .line 430
    monitor-exit v0

    return v2

    :cond_1f
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 433
    :cond_22
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method public shouldBeDeleted(Z)Z
    .registers 4

    .line 590
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->getBlobHandle()Landroid/app/blob/BlobHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/blob/BlobHandle;->isExpired()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    :cond_c
    if-eqz p1, :cond_14

    .line 595
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->hasLeaseWaitTimeElapsedForAll()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 596
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/blob/BlobMetadata;->hasValidLeases()Z

    move-result p0

    if-nez p0, :cond_1b

    return v1

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 706
    iget-object v0, p0, Lcom/android/server/blob/BlobMetadata;->mMetadataLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string/jumbo v1, "id"

    .line 707
    iget-wide v2, p0, Lcom/android/server/blob/BlobMetadata;->mBlobId:J

    invoke-static {p1, v1, v2, v3}, Lcom/android/internal/util/XmlUtils;->writeLongAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;J)V

    const-string v1, "bh"

    const/4 v2, 0x0

    .line 709
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 710
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mBlobHandle:Landroid/app/blob/BlobHandle;

    invoke-virtual {v1, p1}, Landroid/app/blob/BlobHandle;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v1, "bh"

    .line 711
    invoke-interface {p1, v2, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 713
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v3, 0x0

    move v4, v3

    :goto_23
    if-ge v4, v1, :cond_3d

    const-string v5, "c"

    .line 714
    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 715
    iget-object v5, p0, Lcom/android/server/blob/BlobMetadata;->mCommitters:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/blob/BlobMetadata$Committer;

    invoke-virtual {v5, p1}, Lcom/android/server/blob/BlobMetadata$Committer;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string v5, "c"

    .line 716
    invoke-interface {p1, v2, v5}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 719
    :cond_3d
    iget-object v1, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    :goto_43
    if-ge v3, v1, :cond_5f

    const-string/jumbo v4, "l"

    .line 720
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 721
    iget-object v4, p0, Lcom/android/server/blob/BlobMetadata;->mLeasees:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobMetadata$Leasee;

    invoke-virtual {v4, p1}, Lcom/android/server/blob/BlobMetadata$Leasee;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    const-string/jumbo v4, "l"

    .line 722
    invoke-interface {p1, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_43

    .line 724
    :cond_5f
    monitor-exit v0

    return-void

    :catchall_61
    move-exception p0

    monitor-exit v0
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_61

    throw p0
.end method
