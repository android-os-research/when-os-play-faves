.class public Lcom/android/server/wm/BoundsCompatRecord;
.super Ljava/lang/Object;
.source "BoundsCompatRecord.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsCompatRecord$DisabledBoundsCompatController;,
        Lcom/android/server/wm/BoundsCompatRecord$ClearReason;,
        Lcom/android/server/wm/BoundsCompatRecord$AspectRatioValue;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "BoundsCompat"


# instance fields
.field public mAspectRatioPolicy:I

.field public final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mCanRotationCompatMode:Z

.field public mCandidateAspectRatioController:Lcom/android/server/wm/AspectRatioController;

.field public mContainingRatio:F

.field public mController:Lcom/android/server/wm/BoundsCompatController;

.field public mDesiredAspectRatio:F

.field public mFixedAspectRatio:F

.field public mIsIgnoreOrientationRequest:Z

.field public mIsTaskOrientationMismatched:Z

.field public final mOwner:Lcom/android/server/wm/ActivityRecord;

.field public mPendingCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

.field public mPreferredOrientation:I

.field public mRestrictedBounds:Z

.field public mRotationCompatReason:I

.field public mShouldPlayMoveAnimation:Z

.field public mWasDisplayCompatEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 97
    iput v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPreferredOrientation:I

    .line 111
    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    .line 112
    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 113
    invoke-static {}, Lcom/android/server/wm/BoundsCompatRecord$DisabledBoundsCompatController;->getInstance()Lcom/android/server/wm/BoundsCompatRecord$DisabledBoundsCompatController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    return-void
.end method

.method public static calculateDisplayAspectRatio(Lcom/android/server/wm/DisplayContent;Landroid/content/res/Configuration;)F
    .registers 3

    .line 372
    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 373
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    goto :goto_f

    :cond_d
    iget v0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayWidth:I

    :goto_f
    if-eqz p1, :cond_16

    .line 374
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    goto :goto_18

    :cond_16
    iget p0, p0, Lcom/android/server/wm/DisplayContent;->mBaseDisplayHeight:I

    .line 375
    :goto_18
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr p1, p0

    const p0, 0x461c4000    # 10000.0f

    mul-float/2addr p1, p0

    .line 376
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, p0

    return p1
.end method

.method public static hasDefinedAspectRatio(F)Z
    .registers 2

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-lez p0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method


# virtual methods
.method public final applyPolicyIfNeeded(Landroid/content/pm/ActivityInfo;)V
    .registers 14

    .line 188
    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    const/4 v1, 0x0

    .line 189
    iput v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    .line 191
    iget-object v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Lcom/android/server/wm/AspectRatioController;->canMinAspectRatio(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v1

    .line 192
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_FIXED_ASPECT_RATIO_MODE:Z

    const/high16 v3, -0x40800000    # -1.0f

    if-eqz v2, :cond_20

    if-eqz v1, :cond_20

    .line 193
    iget-object v2, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFixedAspectRatioController:Lcom/android/server/wm/FixedAspectRatioController;

    iget-object v4, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v4}, Lcom/android/server/wm/FixedAspectRatioController;->getFixedAspectRatio(Lcom/android/server/wm/ActivityRecord;)F

    move-result v2

    goto :goto_21

    :cond_20
    move v2, v3

    .line 196
    :goto_21
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    if-eqz v4, :cond_11c

    .line 197
    iget-object v4, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mOrientationController:Lcom/android/server/wm/OrientationController;

    .line 198
    iget-object v5, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    const/4 v6, 0x0

    if-eqz v5, :cond_39

    .line 202
    iget-boolean v7, v5, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsFullScreen:Z

    .line 203
    iget-boolean v5, v5, Lcom/android/server/wm/Task;->mOrientationControlEnabledAsAspectRatio:Z

    goto :goto_3b

    :cond_39
    move v5, v6

    move v7, v5

    .line 207
    :goto_3b
    sget-boolean v8, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    const/4 v9, 0x1

    if-eqz v8, :cond_a8

    if-eqz v5, :cond_49

    .line 209
    iget-object v8, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v8}, Lcom/android/server/wm/OrientationController;->getRotationCompatReason(Lcom/android/server/wm/ActivityRecord;)I

    move-result v8

    goto :goto_4b

    :cond_49
    const/16 v8, 0xcb

    .line 210
    :goto_4b
    iput v8, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRotationCompatReason:I

    .line 212
    invoke-virtual {v4, v8}, Lcom/android/server/wm/OrientationController;->canRotationCompatMode(I)Z

    move-result v8

    .line 213
    iget-boolean v10, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    if-eq v8, v10, :cond_a8

    .line 214
    iput-boolean v8, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    .line 215
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "canRotationCompatMode="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", reason="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRotationCompatReason:I

    .line 216
    invoke-static {v11}, Lcom/android/server/wm/OrientationController;->rotationCompatReasonToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ", r="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "BoundsCompat"

    .line 215
    invoke-static {v11, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_96

    .line 219
    iget-object v8, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    .line 220
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object v8

    if-eqz v8, :cond_a8

    .line 221
    iget-boolean v10, v8, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    if-nez v10, :cond_a8

    .line 222
    iput-boolean v9, v8, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    goto :goto_a8

    .line 225
    :cond_96
    iget-object v8, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    sget-boolean v10, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT_FOR_FOLD:Z

    if-eqz v10, :cond_a4

    iget v10, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRotationCompatReason:I

    const/16 v11, 0xca

    if-ne v10, v11, :cond_a4

    move v10, v9

    goto :goto_a5

    :cond_a4
    move v10, v6

    :goto_a5
    invoke-virtual {v4, v8, v10}, Lcom/android/server/wm/OrientationController;->clearRotationCompatMode(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_a8
    :goto_a8
    if-nez v7, :cond_ac

    if-eqz v5, :cond_b6

    .line 232
    :cond_ac
    iget-object v7, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    .line 233
    invoke-virtual {v4, v7}, Lcom/android/server/wm/OrientationController;->isIgnoreOrientationRequest(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_b6

    move v7, v9

    goto :goto_b7

    :cond_b6
    move v7, v6

    :goto_b7
    iput-boolean v7, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsIgnoreOrientationRequest:Z

    if-eqz v7, :cond_c4

    .line 234
    iget-object v7, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    .line 235
    invoke-virtual {v4, v7}, Lcom/android/server/wm/OrientationController;->isTaskOrientationMismatched(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-eqz v7, :cond_c4

    move v6, v9

    :cond_c4
    iput-boolean v6, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsTaskOrientationMismatched:Z

    .line 236
    sget-boolean v6, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v6, :cond_f4

    iget-boolean v6, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    if-eqz v6, :cond_f4

    .line 237
    iget-object v6, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getCompatDisplayInsets()Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    move-result-object v6

    if-eqz v6, :cond_f4

    .line 238
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mCanRotationCompatMode:Z

    if-eqz v7, :cond_f4

    iget-boolean v7, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsTaskOrientationMismatched:Z

    if-nez v7, :cond_e6

    iget-boolean v7, v4, Lcom/android/server/wm/OrientationController;->mUseAspectRatioStarting:Z

    if-eqz v7, :cond_f4

    iget-boolean v6, v6, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mIsInFixedOrientationLetterbox:Z

    if-eqz v6, :cond_f4

    .line 242
    :cond_e6
    invoke-static {v0}, Lcom/android/server/wm/BoundsCompatRecord;->hasDefinedAspectRatio(F)Z

    move-result p1

    if-eqz p1, :cond_f0

    .line 243
    iput v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    .line 244
    iput-object v4, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCandidateAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    .line 246
    :cond_f0
    invoke-virtual {p0, v4}, Lcom/android/server/wm/BoundsCompatRecord;->setController(Lcom/android/server/wm/BoundsCompatController;)V

    return-void

    .line 250
    :cond_f4
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsTaskOrientationMismatched:Z

    if-eqz v0, :cond_11c

    .line 251
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ASPECT_RATIO:Z

    if-eqz p1, :cond_119

    if-eqz v5, :cond_119

    cmpl-float p1, v2, v3

    if-eqz p1, :cond_103

    goto :goto_117

    .line 253
    :cond_103
    iget-object p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 254
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 253
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->computeAspectRatio(Landroid/graphics/Rect;)F

    move-result v2

    :goto_117
    iput v2, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    .line 256
    :cond_119
    iput-object v4, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCandidateAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    return-void

    :cond_11c
    if-eqz v1, :cond_135

    .line 263
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_FIXED_ASPECT_RATIO_MODE:Z

    if-eqz p1, :cond_151

    .line 264
    iput v2, p0, Lcom/android/server/wm/BoundsCompatRecord;->mFixedAspectRatio:F

    .line 265
    invoke-static {v2}, Lcom/android/server/wm/BoundsCompatRecord;->hasDefinedAspectRatio(F)Z

    move-result p1

    if-eqz p1, :cond_151

    .line 266
    iput v2, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    .line 267
    iget-object p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mFixedAspectRatioController:Lcom/android/server/wm/FixedAspectRatioController;

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCandidateAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    return-void

    .line 273
    :cond_135
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCustomAspectRatioController:Lcom/android/server/wm/CustomAspectRatioController;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 274
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/CustomAspectRatioController;->getMaxAspectRatioPolicy(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result p1

    .line 275
    iput p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAspectRatioPolicy:I

    .line 276
    invoke-static {p1}, Lcom/android/server/wm/CustomAspectRatioController;->isFullScreenMode(I)Z

    move-result p1

    if-eqz p1, :cond_151

    .line 277
    iget-object p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCustomAspectRatioController:Lcom/android/server/wm/CustomAspectRatioController;

    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCandidateAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    :cond_151
    return-void
.end method

.method public canMaxAspectRatioApplied()Z
    .registers 2

    .line 295
    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mContainingRatio:F

    iget p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    cmpl-float p0, v0, p0

    if-lez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final clearPolicy(I)V
    .registers 4

    const/4 v0, 0x0

    .line 144
    iput v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    iput v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mContainingRatio:F

    .line 149
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 150
    iput-boolean v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsIgnoreOrientationRequest:Z

    iput-boolean v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsTaskOrientationMismatched:Z

    .line 152
    :cond_e
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v0, :cond_3f

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    if-eqz v0, :cond_3f

    .line 153
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT_FOR_FOLD:Z

    if-eqz v0, :cond_1d

    const/4 v0, 0x0

    .line 154
    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPendingCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    :cond_1d
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2b

    const/4 v0, 0x3

    if-eq p1, v0, :cond_28

    move p1, v1

    goto :goto_30

    :cond_28
    const/16 p1, 0xd1

    goto :goto_30

    :cond_2b
    const/16 p1, 0xc9

    goto :goto_30

    :cond_2e
    const/16 p1, 0xd2

    .line 168
    :goto_30
    iput p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRotationCompatReason:I

    .line 169
    iput-boolean v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    .line 170
    iget-object p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mOrientationController:Lcom/android/server/wm/OrientationController;

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p0, v1}, Lcom/android/server/wm/OrientationController;->clearRotationCompatMode(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_3f
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BoundsCompatInfo: mController="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "  "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 319
    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mContainingRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4a

    .line 320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mContainingRatio="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/BoundsCompatRecord;->mContainingRatio:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    :cond_4a
    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_69

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mDesiredAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    :cond_69
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_DISPLAY_CENTER_ALIGNMENT:Z

    if-eqz v0, :cond_85

    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRestrictedBounds:Z

    if-eqz v0, :cond_85

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRestrictedBounds=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 328
    :cond_85
    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAspectRatioPolicy:I

    if-eqz v0, :cond_a6

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mAspectRatioPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mAspectRatioPolicy:I

    .line 330
    invoke-static {v1}, Lcom/android/server/wm/CustomAspectRatioController;->policyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 332
    :cond_a6
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_FIXED_ASPECT_RATIO_MODE:Z

    if-eqz v0, :cond_cb

    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mFixedAspectRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_cb

    .line 333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mFixedAspectRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mFixedAspectRatio:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 335
    :cond_cb
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL:Z

    if-eqz v0, :cond_169

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/OrientationController;->isEnabled(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_169

    .line 336
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mIsIgnoreOrientationRequest="

    .line 337
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsIgnoreOrientationRequest:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ", mIsTaskOrientationMismatched="

    .line 339
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 340
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mIsTaskOrientationMismatched:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 341
    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPreferredOrientation:I

    if-eqz v0, :cond_104

    const-string v0, ", mPreferredOrientation="

    .line 342
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 343
    iget v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPreferredOrientation:I

    invoke-static {v0}, Lcom/android/server/wm/OrientationController;->orientationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 345
    :cond_104
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getRequestedConfigurationOrientation()I

    move-result v0

    if-eqz v0, :cond_118

    const-string v1, ", RequestedConfigurationOrientation="

    .line 347
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    invoke-static {v0}, Lcom/android/server/wm/OrientationController;->orientationToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    :cond_118
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 351
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT:Z

    if-eqz v0, :cond_148

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mRotationCompatReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRotationCompatReason:I

    .line 353
    invoke-static {v1}, Lcom/android/server/wm/OrientationController;->rotationCompatReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 352
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCanRotationCompatMode:Z

    if-eqz v0, :cond_145

    const-string v0, ", mCanRotationCompatMode=true"

    .line 355
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    :cond_145
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 359
    :cond_148
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_ORIENTATION_CONTROL_WITH_ROTATION_COMPAT_FOR_FOLD:Z

    if-eqz v0, :cond_169

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPendingCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    if-eqz v0, :cond_169

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mPendingCompatDisplayInsets"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 362
    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mPendingCompatDisplayInsets:Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    :cond_169
    return-void
.end method

.method public final getController()Lcom/android/server/wm/BoundsCompatController;
    .registers 1

    .line 308
    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    return-object p0
.end method

.method public getDesiredAspectRatio()F
    .registers 1

    .line 299
    iget p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    return p0
.end method

.method public isFullScreen()Z
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCandidateAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    if-eqz v0, :cond_d

    iget p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    const/4 v0, 0x0

    cmpl-float p0, p0, v0

    if-nez p0, :cond_d

    const/4 p0, 0x1

    goto :goto_e

    :cond_d
    const/4 p0, 0x0

    :goto_e
    return p0
.end method

.method public prepare()V
    .registers 2

    .line 117
    invoke-static {}, Lcom/android/server/wm/BoundsCompatRecord$DisabledBoundsCompatController;->getInstance()Lcom/android/server/wm/BoundsCompatRecord$DisabledBoundsCompatController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mCandidateAspectRatioController:Lcom/android/server/wm/AspectRatioController;

    .line 119
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_DISPLAY_CENTER_ALIGNMENT:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mRestrictedBounds:Z

    .line 123
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    .line 124
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2d

    const/4 v0, 0x1

    .line 125
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BoundsCompatRecord;->clearPolicy(I)V

    return-void

    .line 128
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 129
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_40

    const/4 v0, 0x2

    .line 131
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BoundsCompatRecord;->clearPolicy(I)V

    return-void

    .line 136
    :cond_40
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_4d

    const/4 v0, 0x3

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/server/wm/BoundsCompatRecord;->clearPolicy(I)V

    return-void

    .line 140
    :cond_4d
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/BoundsCompatRecord;->applyPolicyIfNeeded(Landroid/content/pm/ActivityInfo;)V

    return-void
.end method

.method public resolve(Landroid/content/res/Configuration;)V
    .registers 3

    .line 284
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    invoke-interface {v0}, Lcom/android/server/wm/BoundsCompatController;->isBoundsCompatEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    return-void

    .line 287
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mOwner:Lcom/android/server/wm/ActivityRecord;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/BoundsCompatController;->adjustBounds(Lcom/android/server/wm/ActivityRecord;Landroid/content/res/Configuration;)V

    return-void
.end method

.method public setAspectRatio(FF)V
    .registers 3

    .line 312
    iput p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mContainingRatio:F

    .line 313
    iput p2, p0, Lcom/android/server/wm/BoundsCompatRecord;->mDesiredAspectRatio:F

    return-void
.end method

.method public setController(Lcom/android/server/wm/BoundsCompatController;)V
    .registers 2

    .line 303
    iput-object p1, p0, Lcom/android/server/wm/BoundsCompatRecord;->mController:Lcom/android/server/wm/BoundsCompatController;

    return-void
.end method
