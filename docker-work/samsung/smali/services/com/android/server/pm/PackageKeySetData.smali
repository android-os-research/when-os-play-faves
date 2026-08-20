.class public Lcom/android/server/pm/PackageKeySetData;
.super Ljava/lang/Object;
.source "PackageKeySetData.java"


# static fields
.field public static final KEYSET_UNASSIGNED:J = -0x1L


# instance fields
.field public final mKeySetAliases:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mProperSigningKeySet:J

.field public mUpgradeKeySets:[J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    const-wide/16 v0, -0x1

    .line 37
    iput-wide v0, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PackageKeySetData;)V
    .registers 5

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    .line 41
    iget-wide v1, p1, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    iput-wide v1, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    .line 42
    iget-object v1, p1, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->cloneOrNull([J)[J

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    .line 43
    iget-object p0, p1, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    return-void
.end method


# virtual methods
.method public addDefinedKeySet(JLjava/lang/String;)V
    .registers 4

    .line 105
    iget-object p0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addUpgradeKeySet(Ljava/lang/String;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 61
    :cond_3
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-eqz v0, :cond_1a

    .line 63
    iget-object p1, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    return-void

    .line 65
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Upgrade keyset alias "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "does not refer to a defined keyset alias!"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public addUpgradeKeySetById(J)V
    .registers 4

    .line 76
    iget-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    invoke-static {v0, p1, p2}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJ)[J

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    return-void
.end method

.method public getAliases()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 89
    iget-object p0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getProperSigningKeySet()J
    .registers 3

    .line 52
    iget-wide v0, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    return-wide v0
.end method

.method public getUpgradeKeySets()[J
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    return-object p0
.end method

.method public isUsingDefinedKeySets()Z
    .registers 1

    .line 115
    iget-object p0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isUsingUpgradeKeySets()Z
    .registers 1

    .line 121
    iget-object p0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    if-eqz p0, :cond_9

    array-length p0, p0

    if-lez p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method public removeAllDefinedKeySets()V
    .registers 1

    .line 109
    iget-object p0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->erase()V

    return-void
.end method

.method public removeAllUpgradeKeySets()V
    .registers 2

    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/android/server/pm/PackageKeySetData;->mUpgradeKeySets:[J

    return-void
.end method

.method public setAliases(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 98
    invoke-virtual {p0}, Lcom/android/server/pm/PackageKeySetData;->removeAllDefinedKeySets()V

    .line 101
    iget-object p0, p0, Lcom/android/server/pm/PackageKeySetData;->mKeySetAliases:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public setProperSigningKeySet(J)V
    .registers 3

    .line 47
    iput-wide p1, p0, Lcom/android/server/pm/PackageKeySetData;->mProperSigningKeySet:J

    return-void
.end method
