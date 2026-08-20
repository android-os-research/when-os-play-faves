.class public Lcom/android/server/pm/KeySetManagerService;
.super Ljava/lang/Object;
.source "KeySetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;
    }
.end annotation


# static fields
.field public static final CURRENT_VERSION:I = 0x1

.field public static final FIRST_VERSION:I = 0x1

.field public static final KEYSET_NOT_FOUND:J = -0x1L

.field public static final PUBLIC_KEY_NOT_FOUND:J = -0x1L

.field public static final TAG:Ljava/lang/String; = "KeySetManagerService"


# instance fields
.field public lastIssuedKeyId:J

.field public lastIssuedKeySetId:J

.field public final mKeySetMapping:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mKeySets:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/pm/KeySetHandle;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;"
        }
    .end annotation
.end field

.field public final mPublicKeys:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/utils/WatchedArrayMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/KeySetManagerService;",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 74
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 76
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 130
    iget-object v0, p1, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 131
    iget-object v0, p1, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 132
    iget-object p1, p1, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->clone()Landroid/util/LongSparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 133
    iput-object p2, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedArrayMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/utils/WatchedArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 74
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    .line 76
    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    .line 122
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    .line 123
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    .line 124
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    .line 125
    iput-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-void
.end method


# virtual methods
.method public addDefinedKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;>;)V"
        }
    .end annotation

    .line 298
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v0

    .line 301
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 302
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_15
    :goto_15
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_47

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 303
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 304
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-eqz v3, :cond_15

    if-eqz v2, :cond_15

    .line 305
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_15

    .line 306
    invoke-virtual {p0, v2}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    move-result-object v2

    .line 307
    invoke-virtual {v2}, Lcom/android/server/pm/KeySetHandle;->getId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 312
    :cond_47
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p2

    const/4 v2, 0x0

    :goto_4c
    if-ge v2, p2, :cond_5e

    .line 314
    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4c

    .line 316
    :cond_5e
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageKeySetData;->removeAllUpgradeKeySets()V

    .line 319
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageKeySetData;->setAliases(Ljava/util/Map;)V

    return-void
.end method

.method public final addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;)",
            "Lcom/android/server/pm/KeySetHandle;"
        }
    .end annotation

    if-eqz p1, :cond_69

    .line 446
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_69

    .line 451
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 452
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_17
    if-ge v3, v1, :cond_2d

    .line 454
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/PublicKey;

    invoke-virtual {p0, v4}, Lcom/android/server/pm/KeySetManagerService;->addPublicKeyLPw(Ljava/security/PublicKey;)J

    move-result-wide v4

    .line 455
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    .line 459
    :cond_2d
    invoke-virtual {p0, v0}, Lcom/android/server/pm/KeySetManagerService;->getIdFromKeyIdsLPr(Ljava/util/Set;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long p1, v3, v5

    if-eqz p1, :cond_55

    :goto_37
    if-ge v2, v1, :cond_49

    .line 464
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/KeySetManagerService;->decrementPublicKeyLPw(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 466
    :cond_49
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/KeySetHandle;

    .line 467
    invoke-virtual {p0}, Lcom/android/server/pm/KeySetHandle;->incrRefCountLPw()V

    return-object p0

    .line 472
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/pm/KeySetManagerService;->getFreeKeySetIDLPw()J

    move-result-wide v1

    .line 475
    new-instance p1, Lcom/android/server/pm/KeySetHandle;

    invoke-direct {p1, v1, v2}, Lcom/android/server/pm/KeySetHandle;-><init>(J)V

    .line 476
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v1, v2, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 477
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v1, v2, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-object p1

    .line 447
    :cond_69
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add an empty set of keys!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final addPublicKeyLPw(Ljava/security/PublicKey;)J
    .registers 6

    const-string v0, "Cannot add null public key!"

    .line 522
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 523
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->getIdForPublicKeyLPr(Ljava/security/PublicKey;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1b

    .line 527
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->incrRefCountLPw()V

    return-wide v0

    .line 532
    :cond_1b
    invoke-virtual {p0}, Lcom/android/server/pm/KeySetManagerService;->getFreePublicKeyIdLPw()J

    move-result-wide v0

    .line 533
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    new-instance v3, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-direct {v3, p0, v0, v1, p1}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JLjava/security/PublicKey;)V

    invoke-virtual {v2, v0, v1, v3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    return-wide v0
.end method

.method public final addRefCountsFromSavedPackagesLPw(Landroid/util/ArrayMap;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 829
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_6
    const-string v3, "KeySetManagerService"

    if-ge v2, v0, :cond_34

    .line 831
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetHandle;

    if-nez v4, :cond_24

    const-string v4, "Encountered non-existent key-set reference when reading settings"

    .line 834
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 837
    :cond_24
    invoke-virtual {p1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/server/pm/KeySetHandle;->setRefCountLPw(I)V

    :goto_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 846
    :cond_34
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 847
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    move v2, v1

    :goto_40
    if-ge v2, v0, :cond_8c

    .line 849
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/KeySetHandle;

    invoke-virtual {v4}, Lcom/android/server/pm/KeySetHandle;->getRefCountLPr()I

    move-result v4

    if-nez v4, :cond_62

    const-string v4, "Encountered key-set w/out package references when reading settings"

    .line 850
    invoke-static {v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 853
    :cond_62
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    .line 854
    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v5

    move v6, v1

    :goto_6f
    if-ge v6, v5, :cond_89

    .line 856
    iget-object v7, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v7}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->incrRefCountLPw()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6f

    :cond_89
    add-int/lit8 v2, v2, 0x1

    goto :goto_40

    .line 859
    :cond_8c
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    :goto_90
    if-ge v1, v0, :cond_a2

    .line 861
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_90

    :cond_a2
    return-void
.end method

.method public addScannedPackageLPw(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 5

    const-string v0, "Attempted to add null pkg to ksms."

    .line 235
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 237
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 238
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "does not have a corresponding entry in mPackages."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 240
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addSigningKeySetToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V

    .line 241
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getKeySetMapping()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 242
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getKeySetMapping()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->addDefinedKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/Map;)V

    .line 243
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUpgradeKeySets()Ljava/util/Set;

    move-result-object v1

    if-eqz v1, :cond_5b

    .line 244
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUpgradeKeySets()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/KeySetManagerService;->addUpgradeKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/Set;)V

    :cond_5b
    return-void
.end method

.method public addSigningKeySetToPackageLPw(Lcom/android/server/pm/PackageSetting;Landroid/util/ArraySet;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;)V"
        }
    .end annotation

    .line 256
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1e

    .line 259
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 260
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return-void

    .line 267
    :cond_1b
    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 272
    :cond_1e
    invoke-virtual {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->addKeySetLPw(Landroid/util/ArraySet;)Lcom/android/server/pm/KeySetHandle;

    move-result-object p0

    .line 273
    invoke-virtual {p0}, Lcom/android/server/pm/KeySetHandle;->getId()J

    move-result-wide v0

    .line 274
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    return-void
.end method

.method public addUpgradeKeySetsToPackageLPw(Lcom/android/server/pm/PackageSetting;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/PackageSetting;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 330
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_18

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 331
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySet(Ljava/lang/String;)V

    goto :goto_4

    :cond_18
    return-void
.end method

.method public assertScannedPackageValid(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/pm/PackageManagerException;
        }
    .end annotation

    const/4 p0, -0x2

    if-eqz p1, :cond_87

    .line 203
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_87

    .line 207
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    move-result-object v0

    if-eqz v0, :cond_7f

    .line 208
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_7f

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7f

    .line 212
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getKeySetMapping()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 214
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    invoke-interface {v0, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5b

    .line 218
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArraySet;

    .line 219
    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_53

    invoke-virtual {v3, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_53

    goto :goto_3a

    .line 220
    :cond_53
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string v0, "Package has null/no public keys for defined key-sets."

    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 215
    :cond_5b
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string v0, "Package has null defined key set."

    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 225
    :cond_63
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getUpgradeKeySets()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_7e

    if-eqz v0, :cond_76

    .line 227
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_76

    goto :goto_7e

    .line 228
    :cond_76
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string v0, "Package has upgrade-key-sets without corresponding definitions."

    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_7e
    :goto_7e
    return-void

    .line 209
    :cond_7f
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string v0, "Package has invalid signing-key-set."

    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 204
    :cond_87
    new-instance p1, Lcom/android/server/pm/PackageManagerException;

    const-string v0, "Passed invalid package to keyset validation."

    invoke-direct {p1, p0, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method public checkUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/parsing/pkg/AndroidPackage;)Z
    .registers 7

    .line 383
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    .line 384
    :goto_a
    array-length v2, p1

    if-ge v1, v2, :cond_28

    .line 385
    aget-wide v2, p1, v1

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/KeySetManagerService;->getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;

    move-result-object v2

    if-eqz v2, :cond_25

    .line 387
    invoke-interface {p2}, Lcom/android/server/pm/pkg/parsing/ParsingPackageRead;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/pm/SigningDetails;->getPublicKeys()Landroid/util/ArraySet;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_28
    return v0
.end method

.method public final clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V
    .registers 4

    .line 607
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p0

    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    .line 608
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageKeySetData;->removeAllDefinedKeySets()V

    .line 609
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/PackageKeySetData;->removeAllUpgradeKeySets()V

    return-void
.end method

.method public final decrementKeySetLPw(J)V
    .registers 8

    .line 487
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/KeySetHandle;

    if-nez v0, :cond_b

    return-void

    .line 492
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/pm/KeySetHandle;->decrRefCountLPw()I

    move-result v0

    if-gtz v0, :cond_3a

    .line 493
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    .line 494
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1e
    if-ge v2, v1, :cond_30

    .line 496
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p0, v3, v4}, Lcom/android/server/pm/KeySetManagerService;->decrementPublicKeyLPw(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    .line 498
    :cond_30
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 499
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    :cond_3a
    return-void
.end method

.method public final decrementPublicKeyLPw(J)V
    .registers 7

    .line 508
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    if-nez v0, :cond_b

    return-void

    .line 513
    :cond_b
    invoke-virtual {v0}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->decrRefCountLPw()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1a

    .line 514
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    :cond_1a
    return-void
.end method

.method public dumpLPr(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/DumpState;)V
    .registers 16

    .line 621
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :cond_c
    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_132

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 622
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz p2, :cond_27

    .line 623
    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_27

    goto :goto_c

    :cond_27
    const/4 v4, 0x1

    if-nez v1, :cond_39

    .line 627
    invoke-virtual {p3}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v1

    if-eqz v1, :cond_33

    .line 628
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_33
    const-string v1, "Key Set Manager:"

    .line 629
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v4

    .line 632
    :cond_39
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    const-string v5, "  ["

    .line 633
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "]"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 637
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v5, v0

    :goto_63
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, ", "

    if-eqz v6, :cond_9d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    if-nez v5, :cond_7a

    const-string v5, "      KeySets Aliases: "

    .line 639
    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v5, v4

    goto :goto_7d

    .line 642
    :cond_7a
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 644
    :goto_7d
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v7, 0x3d

    .line 645
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 646
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_63

    :cond_9d
    const-string v3, ""

    if-eqz v5, :cond_a4

    .line 649
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    :cond_a4
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/PackageKeySetData;->isUsingDefinedKeySets()Z

    move-result v5

    if-eqz v5, :cond_de

    .line 653
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object v5

    .line 654
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move v8, v0

    move v9, v8

    :goto_bc
    if-ge v8, v6, :cond_df

    if-nez v9, :cond_c7

    const-string v9, "      Defined KeySets: "

    .line 657
    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v9, v4

    goto :goto_ca

    .line 660
    :cond_c7
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 662
    :goto_ca
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_bc

    :cond_de
    move v9, v0

    :cond_df
    if-eqz v9, :cond_e4

    .line 666
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 669
    :cond_e4
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v5

    const-string v8, "      Signing KeySets: "

    .line 670
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 671
    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 672
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result v5

    if-eqz v5, :cond_12a

    .line 674
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object v2

    array-length v5, v2

    move v6, v0

    move v8, v6

    :goto_110
    if-ge v6, v5, :cond_12b

    aget-wide v9, v2, v6

    if-nez v8, :cond_11d

    const-string v8, "      Upgrade KeySets: "

    .line 676
    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move v8, v4

    goto :goto_120

    .line 679
    :cond_11d
    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 681
    :goto_120
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_110

    :cond_12a
    move v8, v0

    :cond_12b
    if-eqz v8, :cond_c

    .line 685
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_132
    return-void
.end method

.method public encodePublicKey(Ljava/security/PublicKey;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 615
    new-instance p0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Base64;->encode([BI)[B

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([B)V

    return-object p0
.end method

.method public final getFreeKeySetIDLPw()J
    .registers 5

    .line 571
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    return-wide v0
.end method

.method public final getFreePublicKeyIdLPw()J
    .registers 5

    .line 579
    iget-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    return-wide v0
.end method

.method public final getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J
    .registers 4

    const/4 v0, 0x0

    .line 283
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 284
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetHandle;

    .line 285
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 286
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide p0

    return-wide p0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final getIdForPublicKeyLPr(Ljava/security/PublicKey;)J
    .registers 5

    .line 556
    new-instance v0, Ljava/lang/String;

    invoke-interface {p1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    const/4 p1, 0x0

    .line 557
    :goto_a
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_37

    .line 558
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v1}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v1

    .line 559
    new-instance v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    .line 560
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    .line 561
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide p0

    return-wide p0

    :cond_34
    add-int/lit8 p1, p1, 0x1

    goto :goto_a

    :cond_37
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public final getIdFromKeyIdsLPr(Ljava/util/Set;)J
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)J"
        }
    .end annotation

    const/4 v0, 0x0

    .line 543
    :goto_1
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v1}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 544
    iget-object v1, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArraySet;

    .line 545
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 546
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide p0

    return-wide p0

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getKeySetByAliasAndPackageNameLPr(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .registers 5

    .line 341
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_4d

    .line 342
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v0

    if-nez v0, :cond_11

    goto :goto_4d

    .line 345
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object p1

    .line 346
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_2e

    .line 350
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/KeySetHandle;

    return-object p0

    .line 348
    :cond_2e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown KeySet alias: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", aliases = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4d
    :goto_4d
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPublicKeysFromKeySetLPr(J)Landroid/util/ArraySet;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/ArraySet<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    if-nez p1, :cond_c

    const/4 p0, 0x0

    return-object p0

    .line 406
    :cond_c
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    .line 407
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_16
    if-ge v1, v0, :cond_34

    .line 409
    iget-object v2, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    invoke-virtual {v2}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_34
    return-object p2
.end method

.method public getSigningKeySetByPackageNameLPr(Ljava/lang/String;)Lcom/android/server/pm/KeySetHandle;
    .registers 6

    .line 422
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_30

    .line 424
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v0

    if-eqz v0, :cond_30

    .line 425
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1f

    goto :goto_30

    .line 429
    :cond_1f
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/KeySetHandle;

    return-object p0

    :cond_30
    :goto_30
    const/4 p0, 0x0

    return-object p0
.end method

.method public isIdValidKeySetId(J)Z
    .registers 3

    .line 355
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public packageIsSignedByExactlyLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .registers 7

    .line 174
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_4d

    .line 178
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v0

    if-eqz v0, :cond_45

    .line 179
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_45

    .line 183
    invoke-virtual {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v0

    cmp-long p2, v0, v2

    if-nez p2, :cond_28

    const/4 p0, 0x0

    return p0

    .line 187
    :cond_28
    iget-object p2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 188
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    .line 189
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 181
    :cond_45
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Package has no KeySet data"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 176
    :cond_4d
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Invalid package name"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public packageIsSignedByLPr(Ljava/lang/String;Lcom/android/server/pm/KeySetHandle;)Z
    .registers 7

    .line 148
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_41

    .line 152
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 155
    invoke-virtual {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->getIdByKeySetLPr(Lcom/android/server/pm/KeySetHandle;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p2, v0, v2

    if-nez p2, :cond_1c

    const/4 p0, 0x0

    return p0

    .line 159
    :cond_1c
    iget-object p2, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/util/ArraySet;

    .line 160
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    .line 161
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    .line 153
    :cond_39
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Package has no KeySet data"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 150
    :cond_41
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Invalid package name"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readKeySetListLPw(Landroid/util/TypedXmlPullParser;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 792
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    const-wide/16 v1, 0x0

    .line 795
    :cond_6
    :goto_6
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_64

    const/4 v4, 0x3

    if-ne v3, v4, :cond_16

    .line 796
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_64

    :cond_16
    if-eq v3, v4, :cond_6

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1c

    goto :goto_6

    .line 800
    :cond_1c
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "keyset"

    .line 801
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "identifier"

    const/4 v6, 0x0

    if-eqz v4, :cond_47

    .line 802
    invoke-interface {p1, v6, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v1

    const/4 v3, 0x0

    .line 804
    iget-object v4, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySets:Landroid/util/LongSparseArray;

    new-instance v5, Lcom/android/server/pm/KeySetHandle;

    invoke-direct {v5, v1, v2, v3}, Lcom/android/server/pm/KeySetHandle;-><init>(JI)V

    invoke-virtual {v4, v1, v2, v5}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 805
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v3, v1, v2, v4}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    goto :goto_6

    :cond_47
    const-string/jumbo v4, "key-id"

    .line 806
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 807
    invoke-interface {p1, v6, v5}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    .line 808
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_64
    return-void
.end method

.method public readKeySetsLPw(Landroid/util/TypedXmlPullParser;Landroid/util/ArrayMap;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/TypedXmlPullParser;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 738
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    const-string/jumbo v2, "version"

    .line 739
    invoke-interface {p1, v1, v2}, Landroid/util/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x3

    if-nez v2, :cond_3a

    .line 743
    :cond_10
    :goto_10
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result p2

    if-eq p2, v3, :cond_1f

    if-ne p2, v4, :cond_10

    .line 744
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result p2

    if-le p2, v0, :cond_1f

    goto :goto_10

    .line 749
    :cond_1f
    iget-object p1, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PackageSetting;

    .line 750
    invoke-virtual {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_29

    :cond_39
    return-void

    .line 754
    :cond_3a
    :goto_3a
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v2

    if-eq v2, v3, :cond_8f

    if-ne v2, v4, :cond_48

    .line 755
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_8f

    :cond_48
    if-eq v2, v4, :cond_3a

    const/4 v5, 0x4

    if-ne v2, v5, :cond_4e

    goto :goto_3a

    .line 759
    :cond_4e
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "keys"

    .line 760
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5f

    .line 761
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readKeysLPw(Landroid/util/TypedXmlPullParser;)V

    goto :goto_3a

    :cond_5f
    const-string/jumbo v5, "keysets"

    .line 762
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6c

    .line 763
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readKeySetListLPw(Landroid/util/TypedXmlPullParser;)V

    goto :goto_3a

    :cond_6c
    const-string/jumbo v5, "lastIssuedKeyId"

    .line 764
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v6, "value"

    if-eqz v5, :cond_7f

    .line 765
    invoke-interface {p1, v1, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    goto :goto_3a

    :cond_7f
    const-string/jumbo v5, "lastIssuedKeySetId"

    .line 766
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 767
    invoke-interface {p1, v1, v6}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    goto :goto_3a

    .line 771
    :cond_8f
    invoke-virtual {p0, p2}, Lcom/android/server/pm/KeySetManagerService;->addRefCountsFromSavedPackagesLPw(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public readKeysLPw(Landroid/util/TypedXmlPullParser;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 776
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 778
    :cond_4
    :goto_4
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_14

    .line 779
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_2b

    :cond_14
    if-eq v1, v2, :cond_4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1a

    goto :goto_4

    .line 783
    :cond_1a
    invoke-interface {p1}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "public-key"

    .line 784
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 785
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->readPublicKeyLPw(Landroid/util/TypedXmlPullParser;)V

    goto :goto_4

    :cond_2b
    return-void
.end method

.method public readPublicKeyLPw(Landroid/util/TypedXmlPullParser;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "identifier"

    .line 815
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    const-string/jumbo v1, "value"

    .line 817
    invoke-interface {p1, v0, v1, v0}, Landroid/util/TypedXmlPullParser;->getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object p1

    .line 818
    invoke-static {p1}, Landroid/content/pm/parsing/FrameworkParsingPackageUtils;->parsePublicKey([B)Ljava/security/PublicKey;

    move-result-object v7

    if-eqz v7, :cond_24

    .line 820
    new-instance p1, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p0

    move-wide v4, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;-><init>(Lcom/android/server/pm/KeySetManagerService;JILjava/security/PublicKey;Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle-IA;)V

    .line 821
    iget-object p0, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {p0, v9, v10, p1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_24
    return-void
.end method

.method public removeAppKeySetDataLPw(Ljava/lang/String;)V
    .registers 6

    .line 591
    iget-object v0, p0, Lcom/android/server/pm/KeySetManagerService;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 592
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pkg name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "does not have a corresponding entry in mPackages."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 594
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v1

    .line 595
    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    .line 596
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object p1

    const/4 v1, 0x0

    .line 597
    :goto_36
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_4c

    .line 598
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/pm/KeySetManagerService;->decrementKeySetLPw(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_36

    .line 602
    :cond_4c
    invoke-virtual {p0, v0}, Lcom/android/server/pm/KeySetManagerService;->clearPackageKeySetDataLPw(Lcom/android/server/pm/PackageSetting;)V

    return-void
.end method

.method public shouldCheckUpgradeKeySetLocked(Lcom/android/server/pm/pkg/PackageStateInternal;Lcom/android/server/pm/pkg/SharedUserApi;I)Z
    .registers 7

    const/4 v0, 0x0

    if-eqz p1, :cond_60

    and-int/lit16 p3, p3, 0x200

    if-nez p3, :cond_60

    if-nez p2, :cond_60

    .line 362
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result p2

    if-nez p2, :cond_14

    goto :goto_60

    .line 366
    :cond_14
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object p2

    move p3, v0

    .line 367
    :goto_1d
    array-length v1, p2

    if-ge p3, v1, :cond_5e

    .line 368
    aget-wide v1, p2, p3

    invoke-virtual {p0, v1, v2}, Lcom/android/server/pm/KeySetManagerService;->isIdValidKeySetId(J)Z

    move-result v1

    if-nez v1, :cond_5b

    .line 369
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_3f

    :cond_3d
    const-string p1, "<null>"

    :goto_3f
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " contains upgrade-key-set reference to unknown key-set: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-wide p1, p2, p3

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " reverting to signatures check."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeySetManagerService"

    .line 369
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5b
    add-int/lit8 p3, p3, 0x1

    goto :goto_1d

    :cond_5e
    const/4 p0, 0x1

    return p0

    :cond_60
    :goto_60
    return v0
.end method

.method public writeKeySetManagerServiceLPr(Landroid/util/TypedXmlSerializer;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "keyset-settings"

    .line 692
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "version"

    const/4 v3, 0x1

    .line 693
    invoke-interface {p1, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 694
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->writePublicKeysLPr(Landroid/util/TypedXmlSerializer;)V

    .line 695
    invoke-virtual {p0, p1}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetsLPr(Landroid/util/TypedXmlSerializer;)V

    const-string/jumbo v2, "lastIssuedKeyId"

    .line 696
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 697
    iget-wide v3, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeyId:J

    const-string/jumbo v5, "value"

    invoke-interface {p1, v0, v5, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 698
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v2, "lastIssuedKeySetId"

    .line 699
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 700
    iget-wide v3, p0, Lcom/android/server/pm/KeySetManagerService;->lastIssuedKeySetId:J

    invoke-interface {p1, v0, v5, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 701
    invoke-interface {p1, v0, v2}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 702
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeKeySetsLPr(Landroid/util/TypedXmlSerializer;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "keysets"

    .line 719
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    .line 720
    :goto_8
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_51

    .line 721
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 722
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mKeySetMapping:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArraySet;

    const-string/jumbo v6, "keyset"

    .line 723
    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "identifier"

    .line 724
    invoke-interface {p1, v0, v7, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 725
    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-string/jumbo v8, "key-id"

    .line 726
    invoke-interface {p1, v0, v8}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 727
    invoke-interface {p1, v0, v7, v4, v5}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 728
    invoke-interface {p1, v0, v8}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2e

    .line 730
    :cond_4b
    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 732
    :cond_51
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writePublicKeysLPr(Landroid/util/TypedXmlSerializer;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string/jumbo v1, "keys"

    .line 706
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v2, 0x0

    .line 707
    :goto_8
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3e

    .line 708
    iget-object v3, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 709
    iget-object v5, p0, Lcom/android/server/pm/KeySetManagerService;->mPublicKeys:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;

    const-string/jumbo v6, "public-key"

    .line 710
    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string/jumbo v7, "identifier"

    .line 711
    invoke-interface {p1, v0, v7, v3, v4}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 712
    invoke-virtual {v5}, Lcom/android/server/pm/KeySetManagerService$PublicKeyHandle;->getKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-interface {p1, v0, v4, v3}, Landroid/util/TypedXmlSerializer;->attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    .line 713
    invoke-interface {p1, v0, v6}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 715
    :cond_3e
    invoke-interface {p1, v0, v1}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
