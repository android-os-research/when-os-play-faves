.class public final Lcom/android/server/sepunion/cover/CoverVerifier;
.super Ljava/lang/Object;
.source "CoverVerifier.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public mContext:Landroid/content/Context;

.field public mDefaultClearCoverHeight:I

.field public mDefaultClearCoverWidth:I

.field public mDefaultCoverColor:I

.field public mDefaultCoverModel:I

.field public mDefaultMiniSViewCoverHeight:I

.field public mDefaultMiniSViewCoverWidth:I

.field public mDefaultSViewCoverHeight:I

.field public mDefaultSViewCoverWidth:I

.field public mIsCoverAttached:Z

.field public mIsCoverVerified:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CoverManager_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/sepunion/cover/CoverVerifier;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverColor:I

    .line 43
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverModel:I

    .line 44
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    .line 45
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    .line 46
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    .line 47
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    .line 48
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 49
    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    .line 51
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 55
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->initializeDefaultCoverState()V

    return-void
.end method

.method public static isFactoryMode()Z
    .registers 2

    const-string/jumbo v0, "ro.factory.factory_binary"

    .line 327
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "factory"

    .line 328
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    const-string p1, " Current CoverVerifier state:"

    .line 332
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mIsCoverVerified="

    .line 333
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, "  mIsCoverAttached="

    .line 334
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mDefaultCoverType="

    .line 335
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, "  mDefaultCoverColor="

    .line 336
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverColor:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(I)V

    const-string p1, "  mDefaultSViewCoverWidth="

    .line 337
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverWidth:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, "  mDefaultSViewCoverHeight="

    .line 338
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultSViewCoverHeight:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, "  mDefaultMiniSViewCoverWidth="

    .line 339
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultMiniSViewCoverWidth:I

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(I)V

    const-string p1, "  mDefaultMiniSViewCoverHeight="

    .line 340
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultMiniSViewCoverHeight:I

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    const-string p0, "  "

    .line 341
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final getDefaultTypeOfCover()I
    .registers 6

    .line 60
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportVerifyCover()Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xb

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-eqz v0, :cond_4c

    .line 61
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_25

    .line 62
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-nez v0, :cond_25

    return v4

    .line 64
    :cond_25
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportClearCover()Z

    move-result v0

    if-eqz v0, :cond_38

    .line 65
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v0

    if-ne v0, v3, :cond_38

    return v3

    .line 67
    :cond_38
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportNeonCover()Z

    move-result p0

    if-eqz p0, :cond_4b

    .line 68
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result p0

    if-ne p0, v2, :cond_4b

    return v2

    :cond_4b
    return v1

    .line 74
    :cond_4c
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 75
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportFlipCover()Z

    move-result p0

    if-eqz p0, :cond_8c

    return v4

    .line 79
    :cond_65
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportFlipCover()Z

    move-result v0

    if-eqz v0, :cond_72

    return v4

    .line 81
    :cond_72
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportClearCover()Z

    move-result v0

    if-eqz v0, :cond_7f

    return v3

    .line 83
    :cond_7f
    iget-object p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/Feature;->isSupportNeonCover()Z

    move-result p0

    if-eqz p0, :cond_8c

    return v2

    :cond_8c
    return v1
.end method

.method public final getScreenSizeForClearCover()V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 137
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 138
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 139
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 141
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    if-eqz v0, :cond_38

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x2

    if-eq v0, v2, :cond_38

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2f

    .line 154
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 155
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    goto :goto_40

    .line 150
    :cond_2f
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 151
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    goto :goto_40

    .line 145
    :cond_38
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    .line 146
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    :goto_40
    return-void
.end method

.method public final getSupportSViewCoverHeight(I)I
    .registers 3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_a

    const/16 v0, 0xb

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    goto :goto_c

    .line 109
    :cond_a
    iget p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverHeight:I

    :goto_c
    return p0
.end method

.method public final getSupportSViewCoverWidth(I)I
    .registers 3

    const/16 v0, 0x8

    if-eq p1, v0, :cond_a

    const/16 v0, 0xb

    if-eq p1, v0, :cond_a

    const/4 p0, 0x0

    goto :goto_c

    .line 96
    :cond_a
    iget p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultClearCoverWidth:I

    :goto_c
    return p0
.end method

.method public initializeDefaultCoverState()V
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 131
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getScreenSizeForClearCover()V

    :cond_b
    return-void
.end method

.method public isCoverAttached()Z
    .registers 1

    .line 323
    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    return p0
.end method

.method public isCoverVerified()Z
    .registers 1

    .line 319
    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    return p0
.end method

.method public isCoverVerifiedAndAttached()Z
    .registers 2

    .line 315
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public updateCoverAttachState(Z)Z
    .registers 6

    .line 282
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    .line 283
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eq v0, p1, :cond_3b

    .line 284
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    goto :goto_3c

    .line 287
    :cond_14
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportVerifyCover()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 288
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 289
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-nez v0, :cond_3b

    .line 290
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    goto :goto_3c

    .line 294
    :cond_2d
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eq v0, p1, :cond_3b

    .line 295
    iput-boolean p1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    goto :goto_3c

    .line 303
    :cond_34
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-nez v0, :cond_3b

    .line 304
    iput-boolean v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    .line 308
    :goto_3c
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    .line 309
    sget-object v0, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverAttachState : mIsCoverVerified ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", attached="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", change="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public updateCoverPropertiesLocked(Lcom/samsung/android/cover/CoverState;Lcom/samsung/android/cover/CoverState;)V
    .registers 12

    .line 175
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    if-eqz v0, :cond_6a

    if-nez p2, :cond_45

    .line 178
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result p2

    if-eqz p2, :cond_44

    .line 179
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestCoverType()I

    move-result v1

    .line 180
    iget v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverColor:I

    .line 181
    iget v6, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverModel:I

    .line 182
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v3

    .line 183
    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v4

    .line 184
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverVerifier;->isFactoryMode()Z

    move-result p2

    if-nez p2, :cond_30

    .line 185
    iget-boolean v5, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    .line 187
    :cond_30
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestVisibleRect()Landroid/graphics/Rect;

    move-result-object p0

    .line 188
    invoke-virtual {p0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3d

    .line 189
    invoke-virtual {p1, p0}, Lcom/samsung/android/cover/CoverState;->setVisibleRect(Landroid/graphics/Rect;)V

    .line 191
    :cond_3d
    sget-object p0, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string p1, "[SmartCover] CoverVerify : sview cover test mode enabled"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_44
    return-void

    .line 197
    :cond_45
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverVerifier;->isFactoryMode()Z

    move-result v0

    if-nez v0, :cond_ae

    .line 198
    invoke-virtual {p1, p2}, Lcom/samsung/android/cover/CoverState;->copyFrom(Lcom/samsung/android/cover/CoverState;)V

    .line 200
    iget p2, p1, Lcom/samsung/android/cover/CoverState;->type:I

    const/16 v0, 0x8

    if-ne p2, v0, :cond_57

    .line 202
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getScreenSizeForClearCover()V

    :cond_57
    const/16 v0, 0xff

    if-eq p2, v0, :cond_ae

    .line 205
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/cover/CoverState;->setWindowWidth(I)V

    .line 206
    invoke-virtual {p0, p2}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/cover/CoverState;->setWindowHeight(I)V

    goto :goto_ae

    .line 216
    :cond_6a
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result p2

    if-nez p2, :cond_8f

    iget-boolean p2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    if-eqz p2, :cond_8f

    .line 218
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result p2

    const-string v0, "/sys/devices/w1_bus_master1/w1_master_check_id"

    .line 217
    invoke-static {v0, p2}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result p2

    .line 219
    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverColor:I

    const-string v1, "/sys/devices/w1_bus_master1/w1_master_check_color"

    invoke-static {v1, v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v0

    .line 221
    iget v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverModel:I

    const-string v2, "/sys/bus/w1/devices/w1_bus_master1/w1_master_check_model"

    invoke-static {v2, v1}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v1

    goto :goto_97

    .line 224
    :cond_8f
    invoke-virtual {p0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getDefaultTypeOfCover()I

    move-result p2

    .line 225
    iget v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverColor:I

    .line 226
    iget v1, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mDefaultCoverModel:I

    :goto_97
    move v3, p2

    move v4, v0

    move v8, v1

    .line 228
    invoke-virtual {p0, v3}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result v5

    .line 229
    invoke-virtual {p0, v3}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v6

    .line 230
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverVerifier;->isFactoryMode()Z

    move-result p2

    if-nez p2, :cond_ae

    .line 231
    iget-boolean v7, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    move-object v2, p1

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/android/cover/CoverState;->updateCoverState(IIIIZI)V

    :cond_ae
    :goto_ae
    return-void
.end method

.method public updateCoverVerification()Z
    .registers 5

    .line 247
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isNfcAuthEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_16

    .line 248
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v0, :cond_49

    .line 249
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    :goto_14
    move v1, v2

    goto :goto_49

    .line 252
    :cond_16
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/sepunion/cover/Feature;->getInstance(Landroid/content/Context;)Lcom/android/server/sepunion/cover/Feature;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/sepunion/cover/Feature;->isSupportVerifyCover()Z

    move-result v0

    if-eqz v0, :cond_42

    .line 253
    invoke-static {}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->isTestMode()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 254
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v0, :cond_49

    .line 255
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    goto :goto_14

    :cond_2f
    const/4 v0, -0x1

    const-string v3, "/sys/devices/w1_bus_master1/w1_master_verify_mac"

    .line 259
    invoke-static {v3, v0}, Lcom/android/server/sepunion/cover/CoverManagerUtils;->getValueFromSysFS(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3a

    move v0, v2

    goto :goto_3b

    :cond_3a
    move v0, v1

    .line 261
    :goto_3b
    iget-boolean v3, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-eq v3, v0, :cond_49

    .line 262
    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    goto :goto_14

    .line 270
    :cond_42
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    if-nez v0, :cond_49

    .line 271
    iput-boolean v2, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    goto :goto_14

    .line 275
    :cond_49
    :goto_49
    iget-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    iput-boolean v0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverAttached:Z

    .line 276
    sget-object v0, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverVerification : mIsCoverVerified ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/server/sepunion/cover/CoverVerifier;->mIsCoverVerified:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", change="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public updateCoverWindowSize(Lcom/samsung/android/cover/CoverState;)V
    .registers 7

    if-nez p1, :cond_b

    .line 162
    sget-object p0, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "updateCoverWindowSize(): CoverState is null"

    invoke-static {p0, p1}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_b
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverHeight(I)I

    move-result v0

    .line 166
    invoke-virtual {p1}, Lcom/samsung/android/cover/CoverState;->getType()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/server/sepunion/cover/CoverVerifier;->getSupportSViewCoverWidth(I)I

    move-result p0

    .line 167
    sget-object v1, Lcom/android/server/sepunion/cover/CoverVerifier;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateCoverWindowSize(): old window = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " new window = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sepunion/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    invoke-virtual {p1, p0}, Lcom/samsung/android/cover/CoverState;->setWindowWidth(I)V

    .line 170
    invoke-virtual {p1, v0}, Lcom/samsung/android/cover/CoverState;->setWindowHeight(I)V

    return-void
.end method
