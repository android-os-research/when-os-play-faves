.class public Lcom/android/server/wm/DisplayWindowSettings;
.super Ljava/lang/Object;
.source "DisplayWindowSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;
    }
.end annotation


# instance fields
.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;)V
    .registers 3

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 60
    iput-object p2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    return-void
.end method


# virtual methods
.method public applyRotationSettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 324
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 325
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p0

    .line 327
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    if-eqz p0, :cond_13

    .line 328
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    .line 329
    :goto_14
    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->setIgnoreOrientationRequest(Z)Z

    .line 331
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->resetAllowAllRotations()V

    return-void
.end method

.method public applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    const/4 v0, 0x1

    .line 276
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings;->applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V

    return-void
.end method

.method public applySettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 15

    .line 280
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 284
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;Lcom/android/server/wm/DisplayContent;)I

    move-result v1

    .line 285
    invoke-virtual {p1, v1}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 287
    iget-object v1, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    const/4 v2, 0x0

    if-eqz v1, :cond_1b

    .line 288
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1c

    :cond_1b
    move v1, v2

    .line 289
    :goto_1c
    iget-object v3, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    if-eqz v3, :cond_25

    .line 290
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_26

    :cond_25
    move v3, v2

    .line 291
    :goto_26
    iget-object v4, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    if-eqz v4, :cond_2f

    .line 292
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_30

    :cond_2f
    move v4, v2

    .line 293
    :goto_30
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v4}, Lcom/android/server/wm/DisplayRotation;->restoreSettings(III)V

    .line 296
    iget v1, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    const/4 v3, 0x1

    if-eqz v1, :cond_3e

    move v1, v3

    goto :goto_3f

    :cond_3e
    move v1, v2

    .line 297
    :goto_3f
    iget v4, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    if-eqz v4, :cond_49

    iget v4, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    if-eqz v4, :cond_49

    move v4, v3

    goto :goto_4a

    :cond_49
    move v4, v2

    .line 298
    :goto_4a
    iput-boolean v1, p1, Lcom/android/server/wm/DisplayContent;->mIsDensityForced:Z

    .line 299
    iput-boolean v4, p1, Lcom/android/server/wm/DisplayContent;->mIsSizeForced:Z

    .line 301
    iget-object v5, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreDisplayCutout:Ljava/lang/Boolean;

    if-eqz v5, :cond_57

    .line 302
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    goto :goto_58

    :cond_57
    move v5, v2

    .line 303
    :goto_58
    iput-boolean v5, p1, Lcom/android/server/wm/DisplayContent;->mIgnoreDisplayCutout:Z

    if-eqz v4, :cond_5f

    .line 305
    iget v5, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    goto :goto_61

    :cond_5f
    iget v5, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayWidth:I

    :goto_61
    move v7, v5

    if-eqz v4, :cond_67

    .line 306
    iget v4, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    goto :goto_69

    :cond_67
    iget v4, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayHeight:I

    :goto_69
    move v8, v4

    if-eqz v1, :cond_6f

    .line 307
    iget v1, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    goto :goto_71

    .line 308
    :cond_6f
    iget v1, p1, Lcom/android/server/wm/DisplayContent;->mInitialDisplayDensity:I

    :goto_71
    move v9, v1

    .line 309
    iget v10, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalXDpi:F

    iget v11, p1, Lcom/android/server/wm/DisplayContent;->mBaseDisplayPhysicalYDpi:F

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/DisplayContent;->updateBaseDisplayMetrics(IIIFF)V

    .line 312
    iget-object v1, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    if-eqz v1, :cond_83

    .line 313
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_84

    :cond_83
    move v1, v2

    :goto_84
    if-ne v1, v3, :cond_87

    goto :goto_88

    :cond_87
    move v3, v2

    .line 314
    :goto_88
    iput-boolean v3, p1, Lcom/android/server/wm/DisplayContent;->mDisplayScalingDisabled:Z

    .line 316
    iget-object v0, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    if-eqz v0, :cond_92

    .line 317
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 318
    :cond_92
    iput-boolean v2, p1, Lcom/android/server/wm/DisplayContent;->mDontMoveToTop:Z

    if-eqz p2, :cond_99

    .line 320
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->applyRotationSettingsToDisplayLocked(Lcom/android/server/wm/DisplayContent;)V

    :cond_99
    return-void
.end method

.method public clearForcedDensity(Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 382
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 383
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 384
    iget v1, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    if-nez v1, :cond_f

    return-void

    .line 387
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(DisplayWindowSettings)"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 388
    invoke-virtual {p0, p1, v1, v1}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V

    .line 390
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMultiResolutionController:Lcom/android/server/wm/MultiResolutionController;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearForcedDensity: OldDensity="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiResolutionController;->updateDefaultDisplaySizeDensityChangedReason(Ljava/lang/String;)V

    return-void
.end method

.method public clearForcedSize(Lcom/android/server/wm/DisplayContent;Ljava/lang/String;)V
    .registers 5

    .line 360
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-nez v0, :cond_5

    return-void

    .line 363
    :cond_5
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 364
    iget-object p2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 365
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p2

    .line 366
    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    if-eqz v0, :cond_3c

    iget v0, p2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    if-nez v0, :cond_1e

    goto :goto_3c

    .line 369
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "(DisplayWindowSettings)"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3d

    :cond_3c
    :goto_3c
    return-void

    :cond_3d
    :goto_3d
    const/4 v0, 0x0

    .line 372
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/DisplayWindowSettings;->setForcedSize(Lcom/android/server/wm/DisplayContent;II)V

    .line 374
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerServiceExt;->mMultiResolutionController:Lcom/android/server/wm/MultiResolutionController;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "clearForcedSize: OldSize="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiResolutionController;->updateDefaultDisplaySizeDensityChangedReason(Ljava/lang/String;)V

    return-void
.end method

.method public getImePolicyLocked(Lcom/android/server/wm/DisplayContent;)I
    .registers 3
    .annotation build Landroid/view/WindowManager$DisplayImePolicy;
    .end annotation

    .line 248
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 261
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 262
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p0

    .line 263
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    if-eqz p0, :cond_1b

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_1c

    :cond_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public getRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;)I
    .registers 3

    .line 171
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 172
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p0

    .line 173
    iget p0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    if-nez p0, :cond_17

    .line 174
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x2

    return p0

    :cond_16
    const/4 p0, 0x1

    :cond_17
    return p0
.end method

.method public getSettingsEntry(Lcom/android/server/wm/DisplayContent;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;
    .registers 2

    .line 354
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p0

    return-object p0
.end method

.method public getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I
    .registers 4

    .line 156
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 158
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;Lcom/android/server/wm/DisplayContent;)I

    move-result p0

    return p0
.end method

.method public final getWindowingModeLocked(Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;Lcom/android/server/wm/DisplayContent;)I
    .registers 6

    .line 132
    iget p1, p1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    const/4 v0, 0x1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_f

    .line 135
    iget-object v2, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-nez v2, :cond_f

    return v0

    :cond_f
    if-nez p1, :cond_27

    .line 147
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz p1, :cond_26

    iget-boolean p0, p0, Lcom/android/server/wm/WindowManagerService;->mIsPc:Z

    if-nez p0, :cond_24

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->forceDesktopMode()Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_26

    :cond_24
    move p1, v1

    goto :goto_27

    :cond_26
    :goto_26
    move p1, v0

    :cond_27
    :goto_27
    return p1
.end method

.method public setDisplayImePolicy(Lcom/android/server/wm/DisplayContent;I)V
    .registers 4
    .param p2    # I
        .annotation build Landroid/view/WindowManager$DisplayImePolicy;
        .end annotation
    .end param

    .line 268
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 269
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 270
    invoke-interface {v0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 271
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mImePolicy:Ljava/lang/Integer;

    .line 272
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method

.method public setDontMoveToTop(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 4

    .line 213
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 214
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 215
    invoke-interface {v0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 216
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mDontMoveToTop:Ljava/lang/Boolean;

    .line 217
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method

.method public setFixedToUserRotation(Lcom/android/server/wm/DisplayContent;I)V
    .registers 4

    .line 115
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 116
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 117
    invoke-interface {v0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 118
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mFixedToUserRotation:Ljava/lang/Integer;

    .line 119
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method

.method public setForcedDensity(Lcom/android/server/wm/DisplayContent;II)V
    .registers 7

    .line 88
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_1a

    if-nez p2, :cond_9

    const-string v0, ""

    goto :goto_d

    .line 89
    :cond_9
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 90
    :goto_d
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_density_forced"

    invoke-static {v1, v2, v0, p3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 94
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 95
    iget-object p3, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 96
    invoke-interface {p3, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p3

    .line 97
    iput p2, p3, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedDensity:I

    .line 98
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, p1, p3}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method

.method public setForcedScalingMode(Lcom/android/server/wm/DisplayContent;I)V
    .registers 5

    .line 102
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_11

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_scaling_force"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 108
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 109
    invoke-interface {v0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedScalingMode:Ljava/lang/Integer;

    .line 111
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method

.method public setForcedSize(Lcom/android/server/wm/DisplayContent;II)V
    .registers 7

    .line 73
    iget-boolean v0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v0, :cond_2d

    if-eqz p2, :cond_1e

    if-nez p3, :cond_9

    goto :goto_1e

    .line 74
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_20

    :cond_1e
    :goto_1e
    const-string v0, ""

    .line 75
    :goto_20
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_size_forced"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    :cond_2d
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 81
    invoke-interface {v0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 82
    iput p2, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedWidth:I

    .line 83
    iput p3, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mForcedHeight:I

    .line 84
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method

.method public setIgnoreOrientationRequest(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 4

    .line 124
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 126
    invoke-interface {v0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 127
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mIgnoreOrientationRequest:Ljava/lang/Boolean;

    .line 128
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method

.method public setRemoveContentModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 4

    .line 185
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 186
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 187
    invoke-interface {v0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 188
    iput p2, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mRemoveContentMode:I

    .line 189
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method

.method public setShouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 4

    .line 240
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 241
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 242
    invoke-interface {v0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 243
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    .line 244
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method

.method public setShouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;Z)V
    .registers 4

    .line 200
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v0

    if-nez v0, :cond_11

    if-nez p2, :cond_9

    goto :goto_11

    .line 201
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Public display can\'t be allowed to show content when locked"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 205
    :cond_11
    :goto_11
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 207
    invoke-interface {v0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 208
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    .line 209
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method

.method public setUserRotation(Lcom/android/server/wm/DisplayContent;II)V
    .registers 5

    .line 64
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 66
    invoke-interface {v0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v0

    .line 67
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotationMode:Ljava/lang/Integer;

    .line 68
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, v0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mUserRotation:Ljava/lang/Integer;

    .line 69
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, p1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method

.method public setWindowingModeLocked(Lcom/android/server/wm/DisplayContent;I)V
    .registers 5

    .line 162
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    .line 164
    invoke-interface {v1, v0}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getOverrideSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object v1

    .line 165
    iput p2, v1, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mWindowingMode:I

    .line 166
    invoke-virtual {p1, p2}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    .line 167
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, v0, v1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->updateOverrideSettings(Landroid/view/DisplayInfo;Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;)V

    return-void
.end method

.method public shouldShowSystemDecorsLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 4

    .line 221
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x1

    return p0

    .line 229
    :cond_8
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->isAppCastingDisplay()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    return v1

    .line 234
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 235
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p0

    .line 236
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowSystemDecors:Ljava/lang/Boolean;

    if-eqz p0, :cond_22

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_22
    return v1
.end method

.method public shouldShowWithInsecureKeyguardLocked(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2

    .line 193
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    .line 194
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings;->mSettingsProvider:Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;

    invoke-interface {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider;->getSettings(Landroid/view/DisplayInfo;)Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;

    move-result-object p0

    .line 195
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowSettings$SettingsProvider$SettingsEntry;->mShouldShowWithInsecureKeyguard:Ljava/lang/Boolean;

    if-eqz p0, :cond_13

    .line 196
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method public updateSettingsForDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 4

    .line 343
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result v1

    if-eq v0, v1, :cond_13

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/server/wm/DisplayWindowSettings;->getWindowingModeLocked(Lcom/android/server/wm/DisplayContent;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/wm/DisplayContent;->setWindowingMode(I)V

    const/4 p0, 0x1

    return p0

    :cond_13
    const/4 p0, 0x0

    return p0
.end method
