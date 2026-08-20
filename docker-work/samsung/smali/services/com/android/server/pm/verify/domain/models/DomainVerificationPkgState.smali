.class public Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;
.super Ljava/lang/Object;
.source "DomainVerificationPkgState.java"


# instance fields
.field public final mBackupSignatureHash:Ljava/lang/String;

.field public final mHasAutoVerifyDomains:Z

.field public mId:Ljava/util/UUID;

.field public final mPackageName:Ljava/lang/String;

.field public final mStateMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;Ljava/util/UUID;Z)V
    .registers 11

    .line 87
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getStateMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 88
    invoke-virtual {p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->getUserStates()Landroid/util/SparseArray;

    move-result-object v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    .line 87
    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;Z)V
    .registers 11

    .line 82
    new-instance v4, Landroid/util/ArrayMap;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Landroid/util/ArrayMap;-><init>(I)V

    new-instance v5, Landroid/util/SparseArray;

    invoke-direct {v5, v0}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;-><init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/UUID;ZLandroid/util/ArrayMap;Landroid/util/SparseArray;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            "Z",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 171
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 173
    iput-object p2, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mId:Ljava/util/UUID;

    .line 174
    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v1, p2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 176
    iput-boolean p3, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mHasAutoVerifyDomains:Z

    .line 177
    iput-object p4, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 178
    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v1, p4}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 180
    iput-object p5, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    .line 181
    const-class p1, Landroid/annotation/NonNull;

    invoke-static {p1, v1, p5}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 183
    iput-object p6, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mBackupSignatureHash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4d

    .line 266
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4d

    .line 268
    :cond_12
    check-cast p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;

    .line 270
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    .line 271
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mId:Ljava/util/UUID;

    iget-object v3, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mId:Ljava/util/UUID;

    .line 272
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-boolean v2, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mHasAutoVerifyDomains:Z

    iget-boolean v3, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mHasAutoVerifyDomains:Z

    if-ne v2, v3, :cond_4b

    iget-object v2, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    iget-object v3, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    .line 274
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object v2, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    .line 275
    invoke-virtual {p0, v2}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->userStatesEquals(Landroid/util/SparseArray;)Z

    move-result v2

    if-eqz v2, :cond_4b

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mBackupSignatureHash:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mBackupSignatureHash:Ljava/lang/String;

    .line 276
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4b

    goto :goto_4c

    :cond_4b
    move v0, v1

    :goto_4c
    return v0

    :cond_4d
    :goto_4d
    return v1
.end method

.method public getBackupSignatureHash()Ljava/lang/String;
    .registers 1

    .line 239
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mBackupSignatureHash:Ljava/lang/String;

    return-object p0
.end method

.method public getId()Ljava/util/UUID;
    .registers 1

    .line 195
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mId:Ljava/util/UUID;

    return-object p0
.end method

.method public getOrCreateUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .registers 3

    .line 99
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    if-nez v0, :cond_14

    .line 101
    new-instance v0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    invoke-direct {v0, p1}, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;-><init>(I)V

    .line 102
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_14
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .registers 1

    .line 190
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getStateMap()Landroid/util/ArrayMap;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 219
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getUserState(I)Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;
    .registers 2

    .line 93
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;

    return-object p0
.end method

.method public getUserStates()Landroid/util/SparseArray;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;",
            ">;"
        }
    .end annotation

    .line 224
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    return-object p0
.end method

.method public hashCode()I
    .registers 4

    .line 286
    iget-object v0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 287
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mId:Ljava/util/UUID;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 288
    iget-boolean v2, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mHasAutoVerifyDomains:Z

    invoke-static {v2}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 289
    iget-object v2, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 290
    invoke-virtual {p0}, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->userStatesHashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 291
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mBackupSignatureHash:Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public isHasAutoVerifyDomains()Z
    .registers 1

    .line 207
    iget-boolean p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mHasAutoVerifyDomains:Z

    return p0
.end method

.method public removeAllUsers()V
    .registers 1

    .line 112
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public removeUser(I)V
    .registers 2

    .line 108
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DomainVerificationPkgState { packageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mId:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasAutoVerifyDomains = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mHasAutoVerifyDomains:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", stateMap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mStateMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", userStates = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", backupSignatureHash = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mBackupSignatureHash:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final userStatesEquals(Landroid/util/SparseArray;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/pm/verify/domain/models/DomainVerificationInternalUserState;",
            ">;)Z"
        }
    .end annotation

    .line 121
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contentEquals(Landroid/util/SparseArray;)Z

    move-result p0

    return p0
.end method

.method public final userStatesHashCode()I
    .registers 1

    .line 116
    iget-object p0, p0, Lcom/android/server/pm/verify/domain/models/DomainVerificationPkgState;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->contentHashCode()I

    move-result p0

    return p0
.end method
