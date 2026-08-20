.class public final Lcom/android/server/pm/UserTypeDetails$Builder;
.super Ljava/lang/Object;
.source "UserTypeDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UserTypeDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field public mBadgeColors:[I

.field public mBadgeLabels:[I

.field public mBadgeNoBackground:I

.field public mBadgePlain:I

.field public mBaseType:I

.field public mDarkThemeBadgeColors:[I

.field public mDefaultCrossProfileIntentFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/DefaultCrossProfileIntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field public mDefaultRestrictions:Landroid/os/Bundle;

.field public mDefaultSecureSettings:Landroid/os/Bundle;

.field public mDefaultSystemSettings:Landroid/os/Bundle;

.field public mDefaultUserInfoPropertyFlags:I

.field public mEnabled:I

.field public mIconBadge:I

.field public mIsCredentialSharableWithParent:Z

.field public mIsMediaSharedWithParent:Z

.field public mLabel:I

.field public mMaxAllowed:I

.field public mMaxAllowedPerParent:I

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 405
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    .line 406
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    const/4 v0, 0x0

    .line 407
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    const/4 v1, 0x0

    .line 408
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    .line 409
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSystemSettings:Landroid/os/Bundle;

    .line 410
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    .line 411
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    const/4 v2, 0x1

    .line 413
    iput v2, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    .line 414
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabel:I

    .line 415
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    .line 416
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 417
    iput-object v1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    .line 418
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    .line 419
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    .line 420
    iput v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    .line 421
    iput-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIsMediaSharedWithParent:Z

    .line 422
    iput-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIsCredentialSharableWithParent:Z

    return-void
.end method


# virtual methods
.method public createUserTypeDetails()Lcom/android/server/pm/UserTypeDetails;
    .registers 28

    move-object/from16 v0, p0

    .line 536
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    move v1, v2

    goto :goto_b

    :cond_a
    move v1, v3

    :goto_b
    const-string v4, "Cannot create a UserTypeDetails with no name."

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserTypeDetails$Builder;->hasValidBaseType()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "UserTypeDetails "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has invalid baseType: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserTypeDetails$Builder;->hasValidPropertyFlags()Z

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has invalid flags: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    .line 542
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 540
    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 543
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserTypeDetails$Builder;->hasBadge()Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 544
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    if-eqz v1, :cond_69

    array-length v1, v1

    if-eqz v1, :cond_69

    move v1, v2

    goto :goto_6a

    :cond_69
    move v1, v3

    :goto_6a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " has badge but no badgeLabels."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 546
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    if-eqz v1, :cond_8c

    array-length v1, v1

    if-eqz v1, :cond_8c

    move v1, v2

    goto :goto_8d

    :cond_8c
    move v1, v3

    :goto_8d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " has badge but no badgeColors."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 549
    :cond_a6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/pm/UserTypeDetails$Builder;->isProfile()Z

    move-result v1

    if-nez v1, :cond_c5

    .line 550
    iget-object v1, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v1, :cond_b9

    .line 551
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b7

    goto :goto_b9

    :cond_b7
    move v1, v3

    goto :goto_ba

    :cond_b9
    :goto_b9
    move v1, v2

    :goto_ba
    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    aput-object v5, v4, v3

    const-string v5, "UserTypeDetails %s has a non empty defaultCrossProfileIntentFilters"

    .line 550
    invoke-static {v1, v5, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 555
    :cond_c5
    new-instance v1, Lcom/android/server/pm/UserTypeDetails;

    iget-object v7, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    if-eqz v4, :cond_cf

    move v8, v2

    goto :goto_d0

    :cond_cf
    move v8, v3

    :goto_d0
    iget v9, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    iget v10, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    iget v11, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    iget v12, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabel:I

    iget v13, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    iget v14, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    iget v15, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    iget v2, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    iget-object v3, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    iget-object v4, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    .line 568
    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    if-nez v5, :cond_eb

    move-object/from16 v19, v4

    goto :goto_ed

    :cond_eb
    move-object/from16 v19, v5

    :goto_ed
    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    move-object/from16 v20, v5

    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSystemSettings:Landroid/os/Bundle;

    move-object/from16 v21, v5

    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    move-object/from16 v22, v5

    iget-object v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    move-object/from16 v23, v5

    iget-boolean v5, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIsMediaSharedWithParent:Z

    move/from16 v24, v5

    iget-boolean v0, v0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIsCredentialSharableWithParent:Z

    move/from16 v25, v0

    const/16 v26, 0x0

    move-object v6, v1

    move/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v4

    invoke-direct/range {v6 .. v26}, Lcom/android/server/pm/UserTypeDetails;-><init>(Ljava/lang/String;ZIIIIIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ZZLcom/android/server/pm/UserTypeDetails-IA;)V

    return-object v1
.end method

.method public getBaseType()I
    .registers 1

    .line 532
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    return p0
.end method

.method public final hasBadge()Z
    .registers 1

    .line 578
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final hasValidBaseType()Z
    .registers 2

    .line 587
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    const/16 v0, 0x400

    if-eq p0, v0, :cond_15

    const/16 v0, 0x1000

    if-eq p0, v0, :cond_15

    const/16 v0, 0x800

    if-eq p0, v0, :cond_15

    const/16 v0, 0xc00

    if-ne p0, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x0

    goto :goto_16

    :cond_15
    :goto_15
    const/4 p0, 0x1

    :goto_16
    return p0
.end method

.method public final hasValidPropertyFlags()Z
    .registers 1

    .line 603
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    and-int/lit16 p0, p0, 0x1c93

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final isProfile()Z
    .registers 1

    .line 582
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public varargs setBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 460
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeColors:[I

    return-object p0
.end method

.method public varargs setBadgeLabels([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 455
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeLabels:[I

    return-object p0
.end method

.method public setBadgeNoBackground(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 483
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgeNoBackground:I

    return-object p0
.end method

.method public setBadgePlain(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 478
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBadgePlain:I

    return-object p0
.end method

.method public setBaseType(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 445
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mBaseType:I

    return-object p0
.end method

.method public varargs setDarkThemeBadgeColors([I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 468
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDarkThemeBadgeColors:[I

    return-object p0
.end method

.method public setDefaultCrossProfileIntentFilters(Ljava/util/List;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/pm/DefaultCrossProfileIntentFilter;",
            ">;)",
            "Lcom/android/server/pm/UserTypeDetails$Builder;"
        }
    .end annotation

    .line 509
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    return-object p0
.end method

.method public setDefaultRestrictions(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 493
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultRestrictions:Landroid/os/Bundle;

    return-object p0
.end method

.method public setDefaultSecureSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 503
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSecureSettings:Landroid/os/Bundle;

    return-object p0
.end method

.method public setDefaultSystemSettings(Landroid/os/Bundle;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 498
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultSystemSettings:Landroid/os/Bundle;

    return-object p0
.end method

.method public setDefaultUserInfoPropertyFlags(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 450
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mDefaultUserInfoPropertyFlags:I

    return-object p0
.end method

.method public setEnabled(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 430
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mEnabled:I

    return-object p0
.end method

.method public setIconBadge(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 473
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIconBadge:I

    return-object p0
.end method

.method public setIsCredentialSharableWithParent(Z)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 527
    iput-boolean p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIsCredentialSharableWithParent:Z

    return-object p0
.end method

.method public setIsMediaSharedWithParent(Z)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 518
    iput-boolean p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mIsMediaSharedWithParent:Z

    return-object p0
.end method

.method public setLabel(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 488
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mLabel:I

    return-object p0
.end method

.method public setMaxAllowed(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 435
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowed:I

    return-object p0
.end method

.method public setMaxAllowedPerParent(I)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 440
    iput p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mMaxAllowedPerParent:I

    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/android/server/pm/UserTypeDetails$Builder;
    .registers 2

    .line 425
    iput-object p1, p0, Lcom/android/server/pm/UserTypeDetails$Builder;->mName:Ljava/lang/String;

    return-object p0
.end method
