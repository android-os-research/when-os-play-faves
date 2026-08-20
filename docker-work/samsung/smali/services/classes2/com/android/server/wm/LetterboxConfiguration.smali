.class public final Lcom/android/server/wm/LetterboxConfiguration;
.super Ljava/lang/Object;
.source "LetterboxConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/LetterboxConfiguration$LetterboxReachabilityPosition;,
        Lcom/android/server/wm/LetterboxConfiguration$LetterboxBackgroundType;
    }
.end annotation


# static fields
.field public static final LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND:I = 0x1

.field public static final LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND_FLOATING:I = 0x2

.field public static final LETTERBOX_BACKGROUND_SOLID_COLOR:I = 0x0

.field public static final LETTERBOX_BACKGROUND_WALLPAPER:I = 0x3

.field public static final LETTERBOX_REACHABILITY_POSITION_CENTER:I = 0x1

.field public static final LETTERBOX_REACHABILITY_POSITION_LEFT:I = 0x0

.field public static final LETTERBOX_REACHABILITY_POSITION_RIGHT:I = 0x2

.field public static final MIN_FIXED_ORIENTATION_LETTERBOX_ASPECT_RATIO:F = 1.0f


# instance fields
.field public mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public final mContext:Landroid/content/Context;

.field public mDefaultPositionForReachability:I

.field public mFixedOrientationLetterboxAspectRatio:F

.field public mIsEducationEnabled:Z

.field public mIsReachabilityEnabled:Z

.field public mLetterboxActivityCornersRadius:I

.field public mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

.field public mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

.field public mLetterboxBackgroundType:I

.field public mLetterboxBackgroundWallpaperBlurRadius:I

.field public mLetterboxBackgroundWallpaperDarkScrimAlpha:F

.field public mLetterboxHorizontalPositionMultiplier:F

.field public volatile mLetterboxPositionForReachability:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 149
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/LetterboxConfiguration;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_9

    .line 154
    iput-object p2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 157
    :cond_9
    iput-object p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10500b6

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    .line 160
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e00ab

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    .line 162
    invoke-static {p1}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundType:I

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10500bc

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    .line 165
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10500bb

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10500bd

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getFloat(I)F

    move-result p2

    iput p2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    .line 169
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x1110178

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsReachabilityEnabled:Z

    .line 171
    invoke-static {p1}, Lcom/android/server/wm/LetterboxConfiguration;->readLetterboxReachabilityPositionFromConfig(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForReachability:I

    .line 172
    iput p2, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x1110177

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsEducationEnabled:Z

    return-void
.end method

.method public static letterboxBackgroundTypeToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_27

    const/4 v0, 0x1

    if-eq p0, v0, :cond_24

    const/4 v0, 0x2

    if-eq p0, v0, :cond_21

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1e

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    const-string p0, "LETTERBOX_BACKGROUND_WALLPAPER"

    return-object p0

    :cond_21
    const-string p0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND_FLOATING"

    return-object p0

    :cond_24
    const-string p0, "LETTERBOX_BACKGROUND_APP_COLOR_BACKGROUND"

    return-object p0

    :cond_27
    const-string p0, "LETTERBOX_BACKGROUND_SOLID_COLOR"

    return-object p0
.end method

.method public static letterboxReachabilityPositionToString(I)Ljava/lang/String;
    .registers 4

    if-eqz p0, :cond_25

    const/4 v0, 0x1

    if-eq p0, v0, :cond_22

    const/4 v0, 0x2

    if-ne p0, v0, :cond_b

    const-string p0, "LETTERBOX_REACHABILITY_POSITION_RIGHT"

    return-object p0

    .line 431
    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_22
    const-string p0, "LETTERBOX_REACHABILITY_POSITION_CENTER"

    return-object p0

    :cond_25
    const-string p0, "LETTERBOX_REACHABILITY_POSITION_LEFT"

    return-object p0
.end method

.method public static readLetterboxBackgroundTypeFromConfig(Landroid/content/Context;)I
    .registers 2

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00ac

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    if-eqz p0, :cond_18

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_18

    const/4 v0, 0x3

    if-ne p0, v0, :cond_17

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :cond_18
    :goto_18
    return p0
.end method

.method public static readLetterboxReachabilityPositionFromConfig(Landroid/content/Context;)I
    .registers 3

    .line 392
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x10e00ad

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_15

    if-eq p0, v0, :cond_15

    const/4 v1, 0x2

    if-ne p0, v1, :cond_14

    goto :goto_15

    :cond_14
    move p0, v0

    :cond_15
    :goto_15
    return p0
.end method


# virtual methods
.method public getDefaultPositionForReachability()I
    .registers 1

    .line 387
    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mDefaultPositionForReachability:I

    return p0
.end method

.method public getFixedOrientationLetterboxAspectRatio()F
    .registers 1

    .line 202
    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return p0
.end method

.method public getHorizontalMultiplierForReachability()F
    .registers 4

    .line 407
    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    if-eqz v0, :cond_29

    const/4 v1, 0x1

    if-eq v0, v1, :cond_26

    const/4 v1, 0x2

    if-ne v0, v1, :cond_d

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    .line 415
    :cond_d
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected letterbox position type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_26
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_29
    const/4 p0, 0x0

    return p0
.end method

.method public getIsEducationEnabled()Z
    .registers 1

    .line 455
    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsEducationEnabled:Z

    return p0
.end method

.method public getIsReachabilityEnabled()Z
    .registers 1

    .line 358
    iget-boolean p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsReachabilityEnabled:Z

    return p0
.end method

.method public getLetterboxActivityCornersRadius()I
    .registers 3

    .line 217
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_e

    .line 218
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getCustomLetterboxActivityCornersRadius(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    return v0

    .line 222
    :cond_e
    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxActivityCornersRadius:I

    return p0
.end method

.method public getLetterboxBackgroundColor()Landroid/graphics/Color;
    .registers 2

    .line 232
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_d

    .line 233
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getCustomLetterboxBackgroundColor(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Color;

    move-result-object v0

    if-eqz v0, :cond_d

    return-object v0

    .line 237
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorOverride:Landroid/graphics/Color;

    if-eqz v0, :cond_12

    return-object v0

    .line 240
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundColorResourceIdOverride:Ljava/lang/Integer;

    if-eqz v0, :cond_1b

    .line 241
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1e

    :cond_1b
    const v0, 0x106018b

    .line 245
    :goto_1e
    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p0

    invoke-static {p0}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object p0

    return-object p0
.end method

.method public getLetterboxBackgroundType()I
    .registers 3

    .line 255
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_e

    .line 256
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getCustomLetterboxBackgroundType(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    return v0

    .line 260
    :cond_e
    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundType:I

    return p0
.end method

.method public getLetterboxBackgroundWallpaperBlurRadius()I
    .registers 3

    .line 311
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_e

    .line 312
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getCustomLetterboxBackgroundWallpaperBlurRadius(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_e

    return v0

    .line 316
    :cond_e
    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperBlurRadius:I

    return p0
.end method

.method public getLetterboxBackgroundWallpaperDarkScrimAlpha()F
    .registers 3

    .line 296
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v0, :cond_11

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 298
    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->getCustomLetterboxBackgroundWallpaperDarkScrimAlpha(Lcom/android/server/wm/ActivityRecord;)F

    move-result v0

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_11

    return v0

    .line 302
    :cond_11
    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxBackgroundWallpaperDarkScrimAlpha:F

    return p0
.end method

.method public getLetterboxHorizontalPositionMultiplier()F
    .registers 2

    .line 326
    iget p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    const/4 v0, 0x0

    cmpg-float v0, p0, v0

    if-ltz v0, :cond_d

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_f

    :cond_d
    const/high16 p0, 0x3f000000    # 0.5f

    :cond_f
    return p0
.end method

.method public getMultiWindowLetterboxBackgroundColor()I
    .registers 1

    .line 473
    iget-object p0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/multiwindow/MultiWindowUtils;->getRoundedCornerColorForMultiWindow(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public isLetterboxActivityCornersRounded()Z
    .registers 1

    .line 209
    invoke-virtual {p0}, Lcom/android/server/wm/LetterboxConfiguration;->getLetterboxActivityCornersRadius()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public movePositionForReachabilityToNextLeftStop()V
    .registers 3

    .line 448
    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    return-void
.end method

.method public movePositionForReachabilityToNextRightStop()V
    .registers 3

    .line 440
    iget v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxPositionForReachability:I

    return-void
.end method

.method public resetFixedOrientationLetterboxAspectRatio()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500b6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return-void
.end method

.method public resetIsReachabilityEnabled()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 376
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110178

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsReachabilityEnabled:Z

    return-void
.end method

.method public resetLetterboxHorizontalPositionMultiplier()V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500bd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    return-void
.end method

.method public setFixedOrientationLetterboxAspectRatio(F)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 185
    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mFixedOrientationLetterboxAspectRatio:F

    return-void
.end method

.method public setIsEducationEnabled(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 463
    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsEducationEnabled:Z

    return-void
.end method

.method public setIsReachabilityEnabled(Z)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 367
    iput-boolean p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mIsReachabilityEnabled:Z

    return-void
.end method

.method public setLetterboxHorizontalPositionMultiplier(F)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 340
    iput p1, p0, Lcom/android/server/wm/LetterboxConfiguration;->mLetterboxHorizontalPositionMultiplier:F

    return-void
.end method
