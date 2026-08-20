.class public final Lcom/android/server/pm/UserTypeDetails;
.super Ljava/lang/Object;
.source "UserTypeDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/UserTypeDetails$Builder;
    }
.end annotation


# static fields
.field public static final UNLIMITED_NUMBER_OF_USERS:I = -0x1


# instance fields
.field public final mBadgeColors:[I

.field public final mBadgeLabels:[I

.field public final mBadgeNoBackground:I

.field public final mBadgePlain:I

.field public final mBaseType:I

.field public final mDarkThemeBadgeColors:[I

.field public final mDefaultCrossProfileIntentFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/pm/DefaultCrossProfileIntentFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final mDefaultRestrictions:Landroid/os/Bundle;

.field public final mDefaultSecureSettings:Landroid/os/Bundle;

.field public final mDefaultSystemSettings:Landroid/os/Bundle;

.field public final mDefaultUserInfoPropertyFlags:I

.field public final mEnabled:Z

.field public final mIconBadge:I

.field public final mIsCredentialSharableWithParent:Z

.field public final mIsMediaSharedWithParent:Z

.field public final mLabel:I

.field public final mMaxAllowed:I

.field public final mMaxAllowedPerParent:I

.field public final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIIIIIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ZZ)V
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZIIIIIIII[I[I[I",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Landroid/os/Bundle;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/DefaultCrossProfileIntentFilter;",
            ">;ZZ)V"
        }
    .end annotation

    move-object v0, p0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 178
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    move v1, p2

    .line 179
    iput-boolean v1, v0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    move v1, p3

    .line 180
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    move v1, p7

    .line 181
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    move v1, p4

    .line 182
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    move v1, p5

    .line 183
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    move-object/from16 v1, p14

    .line 184
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    move-object/from16 v1, p15

    .line 185
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSystemSettings:Landroid/os/Bundle;

    move-object/from16 v1, p16

    .line 186
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSecureSettings:Landroid/os/Bundle;

    move-object/from16 v1, p17

    .line 187
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    move v1, p8

    .line 189
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    move v1, p9

    .line 190
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    move v1, p10

    .line 191
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    move v1, p6

    .line 192
    iput v1, v0, Lcom/android/server/pm/UserTypeDetails;->mLabel:I

    move-object v1, p11

    .line 193
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    move-object v1, p12

    .line 194
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    move-object v1, p13

    .line 195
    iput-object v1, v0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    move/from16 v1, p18

    .line 196
    iput-boolean v1, v0, Lcom/android/server/pm/UserTypeDetails;->mIsMediaSharedWithParent:Z

    move/from16 v1, p19

    .line 197
    iput-boolean v1, v0, Lcom/android/server/pm/UserTypeDetails;->mIsCredentialSharableWithParent:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZIIIIIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ZZLcom/android/server/pm/UserTypeDetails-IA;)V
    .registers 21

    invoke-direct/range {p0 .. p19}, Lcom/android/server/pm/UserTypeDetails;-><init>(Ljava/lang/String;ZIIIIIIII[I[I[ILandroid/os/Bundle;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;ZZ)V

    return-void
.end method


# virtual methods
.method public addDefaultRestrictionsTo(Landroid/os/Bundle;)V
    .registers 2

    .line 337
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p1, p0}, Lcom/android/server/pm/UserRestrictionsUtils;->merge(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    .line 359
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mName: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBaseType: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 362
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMaxAllowed: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 363
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mMaxAllowedPerParent: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 364
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mDefaultUserInfoFlags: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    invoke-static {v0}, Landroid/content/pm/UserInfo;->flagsToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLabel: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mLabel:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-virtual {p0}, Lcom/android/server/pm/UserTypeDetails;->isSystem()Z

    move-result v1

    if-eqz v1, :cond_ba

    .line 370
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "config_defaultFirstUserRestrictions: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    :try_start_89
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 373
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1070099

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 375
    array-length v3, v2

    const/4 v4, 0x0

    :goto_9b
    if-ge v4, v3, :cond_ac

    aget-object v5, v2, v4

    .line 376
    invoke-static {v5}, Lcom/android/server/pm/UserRestrictionsUtils;->isValidRestriction(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_a9

    const/4 v6, 0x1

    .line 377
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_a9
    add-int/lit8 v4, v4, 0x1

    goto :goto_9b

    .line 380
    :cond_ac
    invoke-static {p1, v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_af
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_89 .. :try_end_af} :catch_b0

    goto :goto_c8

    .line 382
    :catch_b0
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "none - resource not found"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c8

    .line 385
    :cond_ba
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "mDefaultRestrictions: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    iget-object v1, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Lcom/android/server/pm/UserRestrictionsUtils;->dumpRestrictions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 389
    :goto_c8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mIconBadge: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 390
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBadgePlain: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 391
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBadgeNoBackground: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 392
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBadgeLabels.length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    const-string v1, "0(null)"

    if-eqz v0, :cond_107

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_108

    :cond_107
    move-object v0, v1

    :goto_108
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 394
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mBadgeColors.length: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz v0, :cond_11e

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_11f

    :cond_11e
    move-object v0, v1

    :goto_11f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 396
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "mDarkThemeBadgeColors.length: "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 397
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    if-eqz p0, :cond_134

    array-length p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_134
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getBadgeColor(I)I
    .registers 3

    .line 284
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeColors:[I

    if-eqz p0, :cond_14

    array-length v0, p0

    if-eqz v0, :cond_14

    if-gez p1, :cond_a

    goto :goto_14

    .line 287
    :cond_a
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method public getBadgeLabel(I)I
    .registers 3

    .line 272
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeLabels:[I

    if-eqz p0, :cond_14

    array-length v0, p0

    if-eqz v0, :cond_14

    if-gez p1, :cond_a

    goto :goto_14

    .line 275
    :cond_a
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    aget p0, p0, p1

    return p0

    :cond_14
    :goto_14
    const/4 p0, 0x0

    return p0
.end method

.method public getBadgeNoBackground()I
    .registers 1

    .line 263
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgeNoBackground:I

    return p0
.end method

.method public getBadgePlain()I
    .registers 1

    .line 258
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBadgePlain:I

    return p0
.end method

.method public getDarkThemeBadgeColor(I)I
    .registers 4

    .line 297
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDarkThemeBadgeColors:[I

    if-eqz v0, :cond_14

    array-length v1, v0

    if-eqz v1, :cond_14

    if-gez p1, :cond_a

    goto :goto_14

    .line 300
    :cond_a
    array-length p0, v0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    aget p0, v0, p0

    return p0

    .line 298
    :cond_14
    :goto_14
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserTypeDetails;->getBadgeColor(I)I

    move-result p0

    return p0
.end method

.method public getDefaultCrossProfileIntentFilters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/DefaultCrossProfileIntentFilter;",
            ">;"
        }
    .end annotation

    .line 352
    iget-object v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    if-eqz v0, :cond_c

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultCrossProfileIntentFilters:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_10

    .line 354
    :cond_c
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_10
    return-object v0
.end method

.method public getDefaultRestrictions()Landroid/os/Bundle;
    .registers 1

    .line 332
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultRestrictions:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultSecureSettings()Landroid/os/Bundle;
    .registers 1

    .line 347
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSecureSettings:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultSystemSettings()Landroid/os/Bundle;
    .registers 1

    .line 342
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultSystemSettings:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/server/BundleUtils;->clone(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultUserInfoFlags()I
    .registers 2

    .line 238
    iget v0, p0, Lcom/android/server/pm/UserTypeDetails;->mDefaultUserInfoPropertyFlags:I

    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    or-int/2addr p0, v0

    return p0
.end method

.method public getIconBadge()I
    .registers 1

    .line 253
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    return p0
.end method

.method public getLabel()I
    .registers 1

    .line 243
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mLabel:I

    return p0
.end method

.method public getMaxAllowed()I
    .registers 1

    .line 220
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowed:I

    return p0
.end method

.method public getMaxAllowedPerParent()I
    .registers 1

    .line 232
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mMaxAllowedPerParent:I

    return p0
.end method

.method public getName()Ljava/lang/String;
    .registers 1

    .line 204
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public hasBadge()Z
    .registers 1

    .line 248
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mIconBadge:I

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public isCredentialSharableWithParent()Z
    .registers 1

    .line 327
    iget-boolean p0, p0, Lcom/android/server/pm/UserTypeDetails;->mIsCredentialSharableWithParent:Z

    return p0
.end method

.method public isEnabled()Z
    .registers 1

    .line 212
    iget-boolean p0, p0, Lcom/android/server/pm/UserTypeDetails;->mEnabled:Z

    return p0
.end method

.method public isFull()Z
    .registers 1

    .line 308
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 p0, p0, 0x400

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isManagedProfile()Z
    .registers 1

    .line 612
    iget-object p0, p0, Lcom/android/server/pm/UserTypeDetails;->mName:Ljava/lang/String;

    invoke-static {p0}, Landroid/os/UserManager;->isUserTypeManagedProfile(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isMediaSharedWithParent()Z
    .registers 1

    .line 319
    iget-boolean p0, p0, Lcom/android/server/pm/UserTypeDetails;->mIsMediaSharedWithParent:Z

    return p0
.end method

.method public isProfile()Z
    .registers 1

    .line 304
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public isSystem()Z
    .registers 1

    .line 312
    iget p0, p0, Lcom/android/server/pm/UserTypeDetails;->mBaseType:I

    and-int/lit16 p0, p0, 0x800

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method
