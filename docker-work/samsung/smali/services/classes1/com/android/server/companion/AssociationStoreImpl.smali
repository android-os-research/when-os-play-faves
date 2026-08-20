.class public Lcom/android/server/companion/AssociationStoreImpl;
.super Ljava/lang/Object;
.source "AssociationStoreImpl.java"

# interfaces
.implements Lcom/android/server/companion/AssociationStore;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "CompanionDevice_AssociationStore"


# instance fields
.field public final mAddressMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/MacAddress;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mCachedPerUser:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mIdMap:Ljava/util/Map;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mListeners:Ljava/util/Set;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mListeners"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/server/companion/AssociationStore$OnChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$K1mTqKO-f7-N_Vp1-h8MN-6WtHk(Landroid/net/MacAddress;)Ljava/util/Set;
    .registers 1

    invoke-static {p0}, Lcom/android/server/companion/AssociationStoreImpl;->lambda$addAssociation$0(Landroid/net/MacAddress;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$O-QKO-wnxCoMMkKb8gdbiTE86-E(Landroid/net/MacAddress;)Ljava/util/Set;
    .registers 1

    invoke-static {p0}, Lcom/android/server/companion/AssociationStoreImpl;->lambda$setAssociationsLocked$5(Landroid/net/MacAddress;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fk8bTBeppdHO8pMpl0nKFHcxMRI(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->lambda$getAssociationsForPackage$2(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fvDLeRPcT6ZX6aiSlqTgiGI6W6w(ILjava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/companion/AssociationStoreImpl;->lambda$getAssociationsForPackageWithAddress$3(ILjava/lang/String;Landroid/companion/AssociationInfo;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lhH2zu2l1ooMBjfInX0nunjWyhU(Landroid/net/MacAddress;)Ljava/util/Set;
    .registers 1

    invoke-static {p0}, Lcom/android/server/companion/AssociationStoreImpl;->lambda$updateAssociation$1(Landroid/net/MacAddress;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mCachedPerUser:Landroid/util/SparseArray;

    .line 72
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mListeners:Ljava/util/Set;

    return-void
.end method

.method public static synthetic lambda$addAssociation$0(Landroid/net/MacAddress;)Ljava/util/Set;
    .registers 1

    .line 92
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$getAssociationsForPackage$2(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 2

    .line 203
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$getAssociationsForPackageWithAddress$3(ILjava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 3

    .line 211
    invoke-virtual {p2, p0, p1}, Landroid/companion/AssociationInfo;->belongsToPackage(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$setAssociations$4(Ljava/util/StringJoiner;Landroid/companion/AssociationInfo;)V
    .registers 2

    .line 298
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/StringJoiner;->add(Ljava/lang/CharSequence;)Ljava/util/StringJoiner;

    return-void
.end method

.method public static synthetic lambda$setAssociationsLocked$5(Landroid/net/MacAddress;)Ljava/util/Set;
    .registers 1

    .line 316
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$updateAssociation$1(Landroid/net/MacAddress;)Ljava/util/Set;
    .registers 1

    .line 138
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addAssociation(Landroid/companion/AssociationInfo;)V
    .registers 7

    .line 76
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    .line 83
    iget-object v1, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 84
    :try_start_7
    iget-object v2, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string p0, "CompanionDevice_AssociationStore"

    .line 85
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Association with id "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " already exists."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    monitor-exit v1

    return-void

    .line 88
    :cond_30
    iget-object v2, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    if-eqz v2, :cond_53

    .line 92
    iget-object v3, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    new-instance v4, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_53
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/AssociationStoreImpl;->invalidateCacheForUserLocked(I)V

    .line 96
    monitor-exit v1
    :try_end_5b
    .catchall {:try_start_7 .. :try_end_5b} :catchall_60

    const/4 v0, 0x0

    .line 98
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    return-void

    :catchall_60
    move-exception p0

    .line 96
    :try_start_61
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    throw p0
.end method

.method public final broadcastChange(ILandroid/companion/AssociationInfo;)V
    .registers 5

    .line 287
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 288
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/companion/AssociationStore$OnChangeListener;

    .line 289
    invoke-interface {v1, p1, p2}, Lcom/android/server/companion/AssociationStore$OnChangeListener;->onAssociationChanged(ILandroid/companion/AssociationInfo;)V

    goto :goto_9

    .line 291
    :cond_19
    monitor-exit v0

    return-void

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public final clearLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 324
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 325
    iget-object p0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    const-string v0, "Companion Device Associations: "

    .line 275
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 276
    invoke-virtual {p0}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociations()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    const-string p0, "<empty>\n"

    .line 277
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    goto :goto_42

    :cond_15
    const-string v0, "\n"

    .line 279
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 280
    invoke-virtual {p0}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociations()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    const-string v1, "  "

    .line 281
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v1

    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    goto :goto_22

    :cond_42
    :goto_42
    return-void
.end method

.method public getAssociationById(I)Landroid/companion/AssociationInfo;
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/companion/AssociationInfo;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 217
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getAssociations()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ljava/util/List;->copyOf(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_f
    move-exception p0

    .line 189
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 221
    invoke-static {p1}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    move-result-object p1

    .line 223
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_7
    iget-object v1, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    if-nez p1, :cond_17

    .line 225
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    .line 227
    :cond_17
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 228
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 229
    iget-object v3, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 232
    :cond_3c
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_42
    move-exception p0

    .line 233
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_7 .. :try_end_44} :catchall_42

    throw p0
.end method

.method public getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForUser(I)Ljava/util/List;

    move-result-object p0

    .line 201
    new-instance p1, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    .line 202
    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/util/List;

    move-result-object p0

    .line 204
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAssociationsForPackageWithAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;
    .registers 4

    .line 209
    invoke-virtual {p0, p3}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 210
    new-instance p3, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1, p2}, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda3;-><init>(ILjava/lang/String;)V

    invoke-static {p0, p3}, Lcom/android/internal/util/CollectionUtils;->find(Ljava/util/List;Ljava/util/function/Predicate;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/companion/AssociationInfo;

    return-object p0
.end method

.method public getAssociationsForUser(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 194
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForUserLocked(I)Ljava/util/List;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 195
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public final getAssociationsForUserLocked(I)Ljava/util/List;
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_b

    return-object v0

    .line 243
    :cond_b
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 244
    iget-object v1, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    .line 245
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v3

    if-ne v3, p1, :cond_1a

    .line 246
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a

    .line 249
    :cond_30
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 250
    iget-object p0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->set(ILjava/lang/Object;)V

    return-object v0
.end method

.method public final invalidateCacheForUserLocked(I)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 256
    iget-object p0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mCachedPerUser:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    return-void
.end method

.method public registerListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V
    .registers 3

    .line 260
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 261
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public removeAssociation(I)V
    .registers 6

    .line 152
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_3
    iget-object v1, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/companion/AssociationInfo;

    if-nez v1, :cond_13

    .line 157
    monitor-exit v0

    return-void

    .line 165
    :cond_13
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    if-eqz v2, :cond_28

    .line 167
    iget-object v3, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 170
    :cond_28
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->invalidateCacheForUserLocked(I)V

    .line 171
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_35

    const/4 p1, 0x1

    .line 173
    invoke-virtual {p0, p1, v1}, Lcom/android/server/companion/AssociationStoreImpl;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    return-void

    :catchall_35
    move-exception p0

    .line 171
    :try_start_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public setAssociations(Ljava/util/Collection;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->setAssociationsLocked(Ljava/util/Collection;)V

    .line 303
    monitor-exit v0

    return-void

    :catchall_8
    move-exception p0

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw p0
.end method

.method public final setAssociationsLocked(Ljava/util/Collection;)V
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/companion/AssociationInfo;",
            ">;)V"
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Lcom/android/server/companion/AssociationStoreImpl;->clearLocked()V

    .line 310
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_7
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/companion/AssociationInfo;

    .line 311
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    move-result v1

    .line 312
    iget-object v2, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 316
    iget-object v2, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    new-instance v3, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda2;

    invoke-direct {v3}, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_3b
    return-void
.end method

.method public unregisterListener(Lcom/android/server/companion/AssociationStore$OnChangeListener;)V
    .registers 3

    .line 266
    iget-object v0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 267
    :try_start_3
    iget-object p0, p0, Lcom/android/server/companion/AssociationStoreImpl;->mListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 268
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public updateAssociation(Landroid/companion/AssociationInfo;)V
    .registers 8

    .line 102
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result v0

    .line 111
    iget-object v1, p0, Lcom/android/server/companion/AssociationStoreImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 112
    :try_start_7
    iget-object v2, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/companion/AssociationInfo;

    if-nez v2, :cond_17

    .line 115
    monitor-exit v1

    return-void

    .line 119
    :cond_17
    invoke-virtual {v2, p1}, Landroid/companion/AssociationInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 121
    monitor-exit v1

    return-void

    .line 125
    :cond_1f
    iget-object v3, p0, Lcom/android/server/companion/AssociationStoreImpl;->mIdMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getUserId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/companion/AssociationStoreImpl;->invalidateCacheForUserLocked(I)V

    .line 130
    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v3

    .line 131
    invoke-virtual {v2}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    move-result-object v2

    .line 132
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_66

    if-eqz v2, :cond_50

    .line 135
    iget-object v5, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_50
    if-eqz v3, :cond_66

    .line 138
    iget-object v2, p0, Lcom/android/server/companion/AssociationStoreImpl;->mAddressMap:Ljava/util/Map;

    new-instance v5, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda4;

    invoke-direct {v5}, Lcom/android/server/companion/AssociationStoreImpl$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_66
    monitor-exit v1
    :try_end_67
    .catchall {:try_start_7 .. :try_end_67} :catchall_70

    if-eqz v4, :cond_6b

    const/4 v0, 0x2

    goto :goto_6c

    :cond_6b
    const/4 v0, 0x3

    .line 145
    :goto_6c
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->broadcastChange(ILandroid/companion/AssociationInfo;)V

    return-void

    :catchall_70
    move-exception p0

    .line 141
    :try_start_71
    monitor-exit v1
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    throw p0
.end method
