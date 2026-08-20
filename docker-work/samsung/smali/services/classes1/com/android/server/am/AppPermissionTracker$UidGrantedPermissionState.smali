.class public Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;
.super Ljava/lang/Object;
.source "AppPermissionTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPermissionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UidGrantedPermissionState"
.end annotation


# instance fields
.field public final mAppOp:I

.field public mAppOpAllowed:Z

.field public final mPermission:Ljava/lang/String;

.field public mPermissionGranted:Z

.field public final mUid:I

.field public final synthetic this$0:Lcom/android/server/am/AppPermissionTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppPermissionTracker;ILjava/lang/String;I)V
    .registers 5

    .line 282
    iput-object p1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->this$0:Lcom/android/server/am/AppPermissionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput p2, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    .line 284
    iput-object p3, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    .line 285
    iput p4, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    .line 286
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->updatePermissionState()V

    .line 287
    invoke-virtual {p0}, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->updateAppOps()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_21

    .line 328
    instance-of v1, p1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    if-nez v1, :cond_8

    goto :goto_21

    .line 331
    :cond_8
    check-cast p1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;

    .line 332
    iget v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    iget v2, p1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    if-ne v1, v2, :cond_21

    iget v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    iget v2, p1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    if-ne v1, v2, :cond_21

    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    .line 333
    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_21

    const/4 v0, 0x1

    :cond_21
    :goto_21
    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 338
    iget v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 339
    iget-object p0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    if-nez p0, :cond_17

    const/4 p0, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_1b
    add-int/2addr v0, p0

    return v0
.end method

.method public isGranted()Z
    .registers 2

    .line 323
    iget-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermissionGranted:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UidGrantedPermissionState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    .line 346
    invoke-static {v1}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    iget-object v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "="

    if-nez v1, :cond_4b

    .line 349
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermissionGranted:Z

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_4b
    iget v3, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_80

    if-nez v1, :cond_63

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    :cond_63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToPublicName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 357
    :cond_80
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateAppOps()V
    .registers 10

    .line 300
    iget v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v2, :cond_9

    .line 301
    iput-boolean v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z

    return-void

    .line 304
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->this$0:Lcom/android/server/am/AppPermissionTracker;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    .line 306
    iget-object v3, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->this$0:Lcom/android/server/am/AppPermissionTracker;

    iget-object v3, v3, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getIAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v3

    .line 307
    array-length v4, v0

    move v5, v2

    :goto_24
    if-ge v5, v4, :cond_38

    aget-object v6, v0, v5

    .line 309
    :try_start_28
    iget v7, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOp:I

    iget v8, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    invoke-interface {v3, v7, v8, v6}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v6

    if-nez v6, :cond_35

    .line 311
    iput-boolean v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_34} :catch_35

    return-void

    :catch_35
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    .line 319
    :cond_38
    iput-boolean v2, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mAppOpAllowed:Z

    return-void
.end method

.method public updatePermissionState()V
    .registers 5

    .line 291
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 292
    iput-boolean v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermissionGranted:Z

    return-void

    .line 295
    :cond_c
    iget-object v0, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->this$0:Lcom/android/server/am/AppPermissionTracker;

    iget-object v0, v0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    move-result-object v0

    iget v2, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mUid:I

    iget-object v3, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermission:Ljava/lang/String;

    .line 296
    invoke-interface {v0, v2, v3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;->checkUidPermission(ILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    :goto_20
    iput-boolean v1, p0, Lcom/android/server/am/AppPermissionTracker$UidGrantedPermissionState;->mPermissionGranted:Z

    return-void
.end method
