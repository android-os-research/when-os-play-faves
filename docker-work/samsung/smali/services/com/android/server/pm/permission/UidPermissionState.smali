.class public final Lcom/android/server/pm/permission/UidPermissionState;
.super Ljava/lang/Object;
.source "UidPermissionState.java"


# instance fields
.field public mMissing:Z

.field public mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/permission/PermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/permission/UidPermissionState;)V
    .registers 8

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iget-boolean v0, p1, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    iput-boolean v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    .line 46
    iget-object v0, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v0, :cond_38

    .line 47
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 48
    iget-object v0, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_38

    .line 50
    iget-object v2, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    iget-object v3, p1, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionState;

    .line 52
    iget-object v4, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    new-instance v5, Lcom/android/server/pm/permission/PermissionState;

    invoke-direct {v5, v3}, Lcom/android/server/pm/permission/PermissionState;-><init>(Lcom/android/server/pm/permission/PermissionState;)V

    invoke-virtual {v4, v2, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    :cond_38
    return-void
.end method

.method public static invalidateCache()V
    .registers 0

    .line 352
    invoke-static {}, Landroid/content/pm/PackageManager;->invalidatePackageInfoCache()V

    return-void
.end method


# virtual methods
.method public computeGids([II)[I
    .registers 7

    .line 333
    invoke-static {p1}, Landroid/util/IntArray;->wrap([I)Landroid/util/IntArray;

    move-result-object p1

    .line 334
    iget-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_d

    .line 335
    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0

    .line 337
    :cond_d
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_12
    if-ge v1, v0, :cond_30

    .line 339
    iget-object v2, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionState;

    .line 340
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v3

    if-nez v3, :cond_23

    goto :goto_2d

    .line 343
    :cond_23
    invoke-virtual {v2, p2}, Lcom/android/server/pm/permission/PermissionState;->computeGids(I)[I

    move-result-object v2

    .line 344
    array-length v3, v2

    if-eqz v3, :cond_2d

    .line 345
    invoke-virtual {p1, v2}, Landroid/util/IntArray;->addAll([I)V

    :cond_2d
    :goto_2d
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 348
    :cond_30
    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p0

    return-object p0
.end method

.method public getGrantedPermissions()Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 211
    iget-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_9

    .line 212
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 215
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    iget-object v1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(I)V

    .line 216
    iget-object v1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1b
    if-ge v2, v1, :cond_35

    .line 218
    iget-object v3, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionState;

    .line 220
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result v4

    if-eqz v4, :cond_32

    .line 221
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionState;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_35
    return-object v0
.end method

.method public final getOrCreatePermissionState(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/permission/PermissionState;
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_b

    .line 130
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 132
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/permission/PermissionState;

    if-nez v1, :cond_23

    .line 135
    new-instance v1, Lcom/android/server/pm/permission/PermissionState;

    invoke-direct {v1, p1}, Lcom/android/server/pm/permission/PermissionState;-><init>(Lcom/android/server/pm/permission/Permission;)V

    .line 136
    iget-object p0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_23
    return-object v1
.end method

.method public getPermissionFlags(Ljava/lang/String;)I
    .registers 2

    .line 264
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 268
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result p0

    return p0
.end method

.method public getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;
    .registers 2

    .line 121
    iget-object p0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 124
    :cond_6
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionState;

    return-object p0
.end method

.method public getPermissionStates()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/PermissionState;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_9

    .line 149
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 151
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public grantPermission(Lcom/android/server/pm/permission/Permission;)Z
    .registers 2

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->getOrCreatePermissionState(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionState;->grant()Z

    move-result p0

    return p0
.end method

.method public hasPermissionState(Landroid/util/ArraySet;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 103
    :cond_6
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_20

    .line 105
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    iget-object v4, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/4 p0, 0x1

    return p0

    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_20
    return v1
.end method

.method public hasPermissionState(Ljava/lang/String;)Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 90
    iget-object p0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public isMissing()Z
    .registers 1

    .line 72
    iget-boolean p0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    return p0
.end method

.method public isPermissionGranted(Ljava/lang/String;)Z
    .registers 2

    .line 200
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object p0

    if-eqz p0, :cond_e

    .line 201
    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionState;->isGranted()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isPermissionsReviewRequired()Z
    .registers 5

    .line 312
    iget-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 315
    :cond_6
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v2, v1

    :goto_b
    if-ge v2, v0, :cond_22

    .line 317
    iget-object v3, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/permission/PermissionState;

    .line 318
    invoke-virtual {v3}, Lcom/android/server/pm/permission/PermissionState;->getFlags()I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_1f

    const/4 p0, 0x1

    return p0

    :cond_1f
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_22
    return v1
.end method

.method public putPermissionState(Lcom/android/server/pm/permission/Permission;ZI)V
    .registers 6

    .line 162
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_10

    .line 164
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    goto :goto_13

    .line 166
    :cond_10
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :goto_13
    new-instance v1, Lcom/android/server/pm/permission/PermissionState;

    invoke-direct {v1, p1}, Lcom/android/server/pm/permission/PermissionState;-><init>(Lcom/android/server/pm/permission/Permission;)V

    if-eqz p2, :cond_1d

    .line 170
    invoke-virtual {v1}, Lcom/android/server/pm/permission/PermissionState;->grant()Z

    .line 172
    :cond_1d
    invoke-virtual {v1, p3, p3}, Lcom/android/server/pm/permission/PermissionState;->updateFlags(II)Z

    .line 173
    iget-object p0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removePermissionState(Ljava/lang/String;)Z
    .registers 4

    .line 183
    iget-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 186
    :cond_6
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_d

    const/4 v1, 0x1

    :cond_d
    if-eqz v1, :cond_1a

    .line 187
    iget-object p1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 p1, 0x0

    .line 188
    iput-object p1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    :cond_1a
    return v1
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    .line 63
    invoke-static {}, Lcom/android/server/pm/permission/UidPermissionState;->invalidateCache()V

    return-void
.end method

.method public revokePermission(Lcom/android/server/pm/permission/Permission;)Z
    .registers 4

    .line 245
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object p1

    .line 246
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->getPermissionState(Ljava/lang/String;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 p0, 0x0

    return p0

    .line 250
    :cond_c
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionState;->revoke()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 251
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionState;->isDefault()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 252
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    :cond_1b
    return v1
.end method

.method public setMissing(Z)V
    .registers 2

    .line 80
    iput-boolean p1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mMissing:Z

    return-void
.end method

.method public updatePermissionFlags(Lcom/android/server/pm/permission/Permission;II)Z
    .registers 5

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return p0

    .line 284
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->getOrCreatePermissionState(Lcom/android/server/pm/permission/Permission;)Lcom/android/server/pm/permission/PermissionState;

    move-result-object v0

    .line 285
    invoke-virtual {v0, p2, p3}, Lcom/android/server/pm/permission/PermissionState;->updateFlags(II)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 286
    invoke-virtual {v0}, Lcom/android/server/pm/permission/PermissionState;->isDefault()Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 287
    invoke-virtual {p1}, Lcom/android/server/pm/permission/Permission;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/UidPermissionState;->removePermissionState(Ljava/lang/String;)Z

    :cond_1b
    return p2
.end method

.method public updatePermissionFlagsForAllPermissions(II)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 296
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_9

    return v0

    .line 300
    :cond_9
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_2e

    .line 301
    iget-object v2, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/PermissionState;

    .line 302
    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/permission/PermissionState;->updateFlags(II)Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 303
    invoke-virtual {v2}, Lcom/android/server/pm/permission/PermissionState;->isDefault()Z

    move-result v2

    if-eqz v2, :cond_2a

    .line 304
    iget-object v2, p0, Lcom/android/server/pm/permission/UidPermissionState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_2a
    or-int/2addr v0, v3

    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    :cond_2e
    return v0
.end method
