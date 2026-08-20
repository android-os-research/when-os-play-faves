.class public Lcom/android/server/wm/AppContinuityController;
.super Lcom/android/server/wm/PackagesChange;
.source "AppContinuityController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppContinuityController$AppContinuityPolicy;
    }
.end annotation


# instance fields
.field public mAllAppContinuityModeEnabled:Z

.field public final mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mFrontScreenOnWhenAppContinuityMode:Z

.field public final mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$6jvSO27CbROBr69j5FOuiT3vMw8(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/AppContinuityController;->lambda$new$0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 6

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 58
    new-instance p1, Lcom/android/server/wm/AppContinuityController$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/server/wm/AppContinuityController$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/AppContinuityController;->mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;

    .line 60
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->MULTI_DISPLAY_DIRECTORY:Ljava/lang/String;

    const/4 v2, 0x1

    const-string v3, "AppContinuityPackageMap"

    invoke-direct {v0, v2, v1, v3, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;)V

    iput-object v0, p0, Lcom/android/server/wm/AppContinuityController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 67
    iput-boolean v2, p0, Lcom/android/server/wm/AppContinuityController;->mFrontScreenOnWhenAppContinuityMode:Z

    new-array p1, v2, [Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 71
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PackagesChange;->setUserChanges([Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    return-void
.end method

.method public static synthetic lambda$new$0(ILjava/lang/String;Ljava/lang/Integer;)Ljava/lang/String;
    .registers 3

    .line 59
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/wm/AppContinuityController;->policyToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static policyToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_13

    const/4 v0, 0x1

    if-eq p0, v0, :cond_10

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    .line 151
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d
    const-string p0, "Not applied"

    return-object p0

    :cond_10
    const-string p0, "Applied"

    return-object p0

    :cond_13
    const-string p0, "Restricted"

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAllAppContinuityModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/AppContinuityController;->mAllAppContinuityModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "mFrontScreenOnWhenAppContinuityMode="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/wm/AppContinuityController;->mFrontScreenOnWhenAppContinuityMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public enableAllAppContinuityMode(Z)V
    .registers 2

    .line 128
    iput-boolean p1, p0, Lcom/android/server/wm/AppContinuityController;->mAllAppContinuityModeEnabled:Z

    return-void
.end method

.method public final getAppContinuityModeInnerLocked(ILjava/lang/String;)I
    .registers 4

    .line 97
    invoke-static {p2, p1}, Lcom/android/server/wm/PackagesChange;->getAdjustedUserIdIfNeeded(Ljava/lang/String;I)I

    move-result p1

    .line 98
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-nez p1, :cond_16

    .line 100
    iget-boolean p0, p0, Lcom/android/server/wm/AppContinuityController;->mAllAppContinuityModeEnabled:Z

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x2

    :goto_15
    return p0

    .line 102
    :cond_16
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getAppContinuityModeLocked(ILjava/lang/String;I)I
    .registers 5

    .line 75
    iget-boolean v0, p0, Lcom/android/server/wm/AppContinuityController;->mAllAppContinuityModeEnabled:Z

    if-nez v0, :cond_19

    invoke-virtual {p0, p2}, Lcom/android/server/wm/PackagesChange;->supportsSizeChanges(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_19

    :cond_b
    const/4 v0, 0x2

    if-eq p3, v0, :cond_14

    const/4 v0, 0x1

    if-ne p3, v0, :cond_12

    goto :goto_14

    :cond_12
    const/4 p0, 0x0

    return p0

    .line 91
    :cond_14
    :goto_14
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppContinuityController;->getAppContinuityModeInnerLocked(ILjava/lang/String;)I

    move-result p0

    return p0

    .line 76
    :cond_19
    :goto_19
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AppContinuityController;->getAppContinuityModeInnerLocked(ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setAllAppContinuityModeLocked(IZ)V
    .registers 8

    .line 110
    invoke-virtual {p0, p2}, Lcom/android/server/wm/AppContinuityController;->enableAllAppContinuityMode(Z)V

    if-eqz p2, :cond_3d

    const/4 p2, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/server/wm/AppContinuityController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    .line 114
    invoke-virtual {v0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getChangeValuesAsUser(I)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 116
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_14

    .line 117
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p2, 0x1

    goto :goto_14

    :cond_36
    if-eqz p2, :cond_3d

    .line 122
    iget-object p0, p0, Lcom/android/server/wm/AppContinuityController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {p0, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->requestToSave(I)V

    :cond_3d
    return-void
.end method

.method public setAppContinuityModeLocked(ILjava/lang/String;Z)V
    .registers 4

    .line 106
    iget-object p0, p0, Lcom/android/server/wm/AppContinuityController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    if-eqz p3, :cond_6

    const/4 p3, 0x1

    goto :goto_7

    :cond_6
    const/4 p3, 0x2

    :goto_7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFrontScreenOnWhenAppContinuityModeLocked(Z)V
    .registers 2

    .line 132
    iput-boolean p1, p0, Lcom/android/server/wm/AppContinuityController;->mFrontScreenOnWhenAppContinuityMode:Z

    return-void
.end method
