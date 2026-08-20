.class public Lcom/android/server/wm/PopOverState;
.super Ljava/lang/Object;
.source "PopOverState.java"


# static fields
.field public static final POP_OVER_MINIMUM_SMALLEST_WIDTH:I = 0x258

.field public static final TAG:Ljava/lang/String; = "PopOverState"


# instance fields
.field public final mActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public mAnimationInherited:Z

.field public mIsActivated:Z

.field public mLastOccludesParent:Z

.field public mOptions:Landroid/app/ActivityOptions;

.field public mOptionsInherited:Landroid/app/ActivityOptions;

.field public mOriginTaskId:I

.field public mOriginTaskIdInherited:I


# direct methods
.method public static synthetic $r8$lambda$PBf3BvkD9Gxar15r8zlX9o4UuNE(Lcom/android/server/wm/WindowState;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/PopOverState;->lambda$inactivate$0(Lcom/android/server/wm/WindowState;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rod534WbSL4eHcZTroaZBfRH4DA(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/PopOverState;->lambda$isBelowAnotherOpaquePopOver$2(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$iA8SUfN784MMHMMMIZ3gphHWxds(Lcom/android/server/wm/PopOverState;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/PopOverState;->lambda$isAboveAnotherOpaquePopOver$1(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskId:I

    .line 51
    iput v0, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskIdInherited:I

    .line 57
    iput-object p1, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method public static synthetic lambda$inactivate$0(Lcom/android/server/wm/WindowState;)V
    .registers 1

    .line 193
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->clearPopOverDimmer()V

    return-void
.end method

.method private synthetic lambda$isAboveAnotherOpaquePopOver$1(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 220
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1a

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-object v0, p1, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    if-ne v0, p0, :cond_1a

    iget-boolean p0, p1, Lcom/android/server/wm/PopOverState;->mLastOccludesParent:Z

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public static synthetic lambda$isBelowAnotherOpaquePopOver$2(Landroid/graphics/Rect;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    .line 234
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_1e

    .line 235
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1e

    iget-object p0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mLastOccludesParent:Z

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method public static supportsPopOver(Landroid/content/pm/ActivityInfo;)Z
    .registers 4

    .line 361
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x1

    const-string v2, "com.samsung.android.supports_pop_over"

    if-eqz v0, :cond_14

    .line 362
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 363
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    .line 365
    :cond_14
    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_29

    .line 366
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 367
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, v2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_29
    return v1
.end method


# virtual methods
.method public final activate()V
    .registers 4

    .line 148
    iget-boolean v0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 150
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 151
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v1, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskId:I

    if-ne v0, v1, :cond_94

    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 152
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v0

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowContainer;->mReparenting:Z

    if-eqz v1, :cond_2b

    goto :goto_94

    :cond_2b
    const/4 v1, 0x1

    .line 157
    iput-boolean v1, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    const/4 v2, 0x0

    .line 158
    iput-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    .line 160
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_OCCLUDES_PARENT_CHANGE_CALLBACK:Z

    if-eqz v2, :cond_44

    iget-boolean v2, p0, Lcom/android/server/wm/PopOverState;->mLastOccludesParent:Z

    if-eqz v2, :cond_44

    .line 161
    iget-object v2, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 162
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 161
    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowManagerServiceExt;->updateOccludeTargetIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 165
    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 166
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getLastDispatchedWindowFocusInTask()Z

    move-result v0

    if-nez v0, :cond_59

    .line 167
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->updateWindowFocusInTask()V

    .line 172
    :cond_59
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/DisplayContent;->mWaitingForConfig:Z

    if-nez v0, :cond_94

    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 173
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 174
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_94

    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 175
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_94

    .line 176
    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mPendingEnsureVisibleForPopOver:Z

    :cond_94
    :goto_94
    return-void
.end method

.method public applyOptionsAnimationIfNeeded(I)V
    .registers 12

    .line 255
    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_64

    invoke-static {p1}, Lcom/android/server/wm/PopOverController;->isPopOverActivityTransit(I)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_64

    .line 259
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, v0, Landroid/app/ActivityOptions;->mPopOverAnimationPackageName:Ljava/lang/String;

    if-eqz v1, :cond_5d

    .line 261
    invoke-static {p1}, Lcom/android/server/wm/PopOverController;->isPopOverActivityOpenTransit(I)Z

    move-result p1

    if-eqz p1, :cond_34

    .line 262
    iget-boolean p1, p0, Lcom/android/server/wm/PopOverState;->mAnimationInherited:Z

    if-eqz p1, :cond_22

    .line 263
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget v0, v0, Landroid/app/ActivityOptions;->mPopOverInheritOpenEnterResId:I

    goto :goto_26

    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget v0, v0, Landroid/app/ActivityOptions;->mPopOverEnterResId:I

    :goto_26
    if-eqz p1, :cond_2d

    .line 265
    iget-object p1, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget p1, p1, Landroid/app/ActivityOptions;->mPopOverInheritOpenExitResId:I

    goto :goto_31

    :cond_2d
    iget-object p1, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget p1, p1, Landroid/app/ActivityOptions;->mPopOverExitResId:I

    :goto_31
    move v5, p1

    move v4, v0

    goto :goto_49

    .line 267
    :cond_34
    iget-boolean p1, p0, Lcom/android/server/wm/PopOverState;->mAnimationInherited:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_3e

    iget-object v1, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget v1, v1, Landroid/app/ActivityOptions;->mPopOverInheritCloseEnterResId:I

    goto :goto_3f

    :cond_3e
    move v1, v0

    :goto_3f
    if-eqz p1, :cond_46

    .line 268
    iget-object p1, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget p1, p1, Landroid/app/ActivityOptions;->mPopOverInheritCloseExitResId:I

    goto :goto_47

    :cond_46
    move p1, v0

    :goto_47
    move v5, p1

    move v4, v1

    .line 270
    :goto_49
    iget-object p1, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    iget-object v2, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object v3, p0, Landroid/app/ActivityOptions;->mPopOverAnimationPackageName:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransition(Ljava/lang/String;IIILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;Z)V

    return-void

    .line 277
    :cond_5d
    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object p1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation(Landroid/app/ActivityOptions;Landroid/content/Intent;)V

    :cond_64
    :goto_64
    return-void
.end method

.method public applyOptionsInherited()V
    .registers 4

    .line 93
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 94
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 95
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v1, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskIdInherited:I

    if-eq v0, v1, :cond_19

    goto :goto_2e

    .line 99
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    iput-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    const/4 v2, 0x0

    .line 100
    iput-object v2, p0, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    .line 101
    iput v1, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskId:I

    const/4 v1, -0x1

    .line 102
    iput v1, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskIdInherited:I

    .line 105
    iget-object v0, v0, Landroid/app/ActivityOptions;->mPopOverAnimationPackageName:Ljava/lang/String;

    if-eqz v0, :cond_2b

    const/4 v0, 0x1

    goto :goto_2c

    :cond_2b
    const/4 v0, 0x0

    :goto_2c
    iput-boolean v0, p0, Lcom/android/server/wm/PopOverState;->mAnimationInherited:Z

    :cond_2e
    :goto_2e
    return-void
.end method

.method public clearOptions()V
    .registers 2

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    .line 119
    iput-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    const/4 v0, -0x1

    .line 120
    iput v0, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskId:I

    .line 121
    iput v0, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskIdInherited:I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 10

    .line 288
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    if-nez v0, :cond_5

    return-void

    .line 292
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "PopOver="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " size=land("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object v1, v1, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object v3, v3, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")/port("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object v4, v4, Landroid/app/ActivityOptions;->mPopOverWidthDp:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object v4, v4, Landroid/app/ActivityOptions;->mPopOverHeightDp:[I

    aget v4, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " margin=land("

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object v6, v6, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    aget-object v6, v6, v2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object v6, v6, Landroid/app/ActivityOptions;->mPopOverAnchorMarginDp:[Landroid/graphics/Point;

    aget-object v6, v6, v5

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " position=land(0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object v6, v6, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    aget v6, v6, v2

    .line 300
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")/port(0x"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object v6, v6, Landroid/app/ActivityOptions;->mPopOverAnchorPosition:[I

    aget v6, v6, v5

    .line 301
    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 303
    iget-boolean v0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-nez v0, :cond_d1

    return-void

    .line 307
    :cond_d1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 308
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " inherit="

    .line 309
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    iget-object v4, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean v4, v4, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mLastOccludesParent="

    .line 311
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    iget-boolean v4, p0, Lcom/android/server/wm/PopOverState;->mLastOccludesParent:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isBelowAnotherOpaquePopOver="

    .line 313
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->isBelowAnotherOpaquePopOver()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", isAboveAnotherOpaquePopOver="

    .line 315
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->isAboveAnotherOpaquePopOver()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 318
    iget-object v4, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object v6, v4, Landroid/app/ActivityOptions;->mPopOverWidthWeight:[F

    if-eqz v6, :cond_1d3

    iget-object v4, v4, Landroid/app/ActivityOptions;->mPopOverHeightWeight:[F

    if-eqz v4, :cond_1d3

    const-string v4, "\n"

    .line 321
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " weight=land("

    .line 323
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    iget-object p2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object p2, p2, Landroid/app/ActivityOptions;->mPopOverWidthWeight:[F

    aget p2, p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 325
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    iget-object p2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object p2, p2, Landroid/app/ActivityOptions;->mPopOverHeightWeight:[F

    aget p2, p2, v2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    iget-object p2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object p2, p2, Landroid/app/ActivityOptions;->mPopOverWidthWeight:[F

    aget p2, p2, v5

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    iget-object p2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object p2, p2, Landroid/app/ActivityOptions;->mPopOverHeightWeight:[F

    aget p2, p2, v5

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, "), allowOutsideTouch="

    .line 331
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 332
    iget-object p2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean p2, p2, Landroid/app/ActivityOptions;->mPopOverAllowOutsideTouch:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", removeDefaultMargin="

    .line 333
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    iget-object p2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean p2, p2, Landroid/app/ActivityOptions;->mPopOverRemoveDefaultMargin:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", removeOutlineEffect="

    .line 335
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    iget-object p2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-boolean p2, p2, Landroid/app/ActivityOptions;->mPopOverRemoveOutlineEffect:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 337
    iget-object p2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object p2, p2, Landroid/app/ActivityOptions;->mPopOverAnimationPackageName:Ljava/lang/String;

    if-eqz p2, :cond_1d3

    const-string p2, ", animationPackageName="

    .line 338
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    iget-object p2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget-object p2, p2, Landroid/app/ActivityOptions;->mPopOverAnimationPackageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", enterResId="

    .line 340
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object p2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget p2, p2, Landroid/app/ActivityOptions;->mPopOverEnterResId:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", exitResId="

    .line 342
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object p2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget p2, p2, Landroid/app/ActivityOptions;->mPopOverExitResId:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", inheritOpenEnterResId="

    .line 344
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object p2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget p2, p2, Landroid/app/ActivityOptions;->mPopOverInheritOpenEnterResId:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", inheritOpenExitResId="

    .line 346
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    iget-object p2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget p2, p2, Landroid/app/ActivityOptions;->mPopOverInheritOpenExitResId:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", inheritCloseEnterResId="

    .line 348
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    iget-object p2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget p2, p2, Landroid/app/ActivityOptions;->mPopOverInheritCloseEnterResId:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", inheritCloseExitResId="

    .line 350
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    iget-object p2, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    iget p2, p2, Landroid/app/ActivityOptions;->mPopOverInheritCloseExitResId:I

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", animationInherited="

    .line 352
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mAnimationInherited:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 357
    :cond_1d3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getOptions()Landroid/app/ActivityOptions;
    .registers 1

    .line 114
    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public getState()I
    .registers 2

    .line 202
    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x2

    return p0

    .line 205
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->shouldRemoveOutlineEffect()Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x3

    return p0

    :cond_10
    const/4 p0, 0x1

    return p0
.end method

.method public hasCustomAnimation()Z
    .registers 2

    .line 281
    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    if-eqz p0, :cond_11

    iget-object v0, p0, Landroid/app/ActivityOptions;->mPopOverAnimationPackageName:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 283
    invoke-virtual {p0}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result p0

    const/4 v0, -0x1

    if-eq p0, v0, :cond_11

    :cond_f
    const/4 p0, 0x1

    goto :goto_12

    :cond_11
    const/4 p0, 0x0

    :goto_12
    return p0
.end method

.method public hasOptions()Z
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    if-nez v0, :cond_b

    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method public final inactivate()V
    .registers 4

    .line 182
    iget-boolean v0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x0

    .line 184
    iput-boolean v0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    .line 185
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, p0, Lcom/android/server/wm/PopOverState;->mLastOccludesParent:Z

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mOccludesParent:Z

    .line 187
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SUPPORT_OCCLUDES_PARENT_CHANGE_CALLBACK:Z

    if-eqz v2, :cond_1f

    if-eqz v1, :cond_1f

    .line 188
    iget-object v1, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mExt:Lcom/android/server/wm/WindowManagerServiceExt;

    .line 189
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 188
    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowManagerServiceExt;->updateOccludeTargetIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 192
    :cond_1f
    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    new-instance v0, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    return-void
.end method

.method public isAboveAnotherOpaquePopOver()Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    new-instance v3, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/PopOverState;)V

    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3, p0, v2, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1e

    goto :goto_1f

    :cond_1e
    move v1, v2

    :goto_1f
    return v1
.end method

.method public isActivated()Z
    .registers 1

    .line 198
    iget-boolean p0, p0, Lcom/android/server/wm/PopOverState;->mIsActivated:Z

    return p0
.end method

.method public isAllowOutsideTouchSet()Z
    .registers 1

    .line 247
    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Landroid/app/ActivityOptions;->mPopOverAllowOutsideTouch:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isBelowAnotherOpaquePopOver()Z
    .registers 5

    .line 232
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    new-instance v3, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda1;

    invoke-direct {v3, v0}, Lcom/android/server/wm/PopOverState$$ExternalSyntheticLambda1;-><init>(Landroid/graphics/Rect;)V

    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1, v3, p0, v2, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_23

    const/4 v2, 0x1

    :cond_23
    return v2
.end method

.method public isInLargeSizeTask()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 143
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1a

    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    .line 144
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v0, 0x258

    if-lt p0, v0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public isRemoveOutlineEffectSet()Z
    .registers 1

    .line 243
    iget-object p0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    if-eqz p0, :cond_a

    iget-boolean p0, p0, Landroid/app/ActivityOptions;->mPopOverRemoveOutlineEffect:Z

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public setLastOccludesParent(Z)V
    .registers 2

    .line 125
    iput-boolean p1, p0, Lcom/android/server/wm/PopOverState;->mLastOccludesParent:Z

    return-void
.end method

.method public setupOptions(Landroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 61
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-static {v0}, Lcom/android/server/wm/PopOverState;->supportsPopOver(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 66
    :cond_b
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->isPopOver()Z

    move-result v0

    if-eqz v0, :cond_3d

    if-eqz p2, :cond_21

    .line 67
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_21

    const-string p0, "PopOverState"

    const-string p1, "Pop-over is not supported on Activity Embedding"

    .line 68
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 71
    :cond_21
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    if-eqz p2, :cond_3c

    .line 72
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_3c

    .line 73
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput p1, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskId:I

    :cond_3c
    return-void

    .line 78
    :cond_3d
    iget-boolean p1, p1, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    if-nez p1, :cond_42

    return-void

    :cond_42
    if-eqz p2, :cond_67

    .line 83
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_67

    .line 84
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_67

    iget-object p1, p2, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    iget-object p1, p1, Lcom/android/server/wm/PopOverState;->mOptions:Landroid/app/ActivityOptions;

    if-eqz p1, :cond_67

    iget-boolean v0, p1, Landroid/app/ActivityOptions;->mPopOverInheritOptions:Z

    if-eqz v0, :cond_67

    .line 87
    iput-object p1, p0, Lcom/android/server/wm/PopOverState;->mOptionsInherited:Landroid/app/ActivityOptions;

    .line 88
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    iget p1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iput p1, p0, Lcom/android/server/wm/PopOverState;->mOriginTaskIdInherited:I

    :cond_67
    return-void
.end method

.method public shouldRemoveOutlineEffect()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 213
    iget-boolean v0, p0, Lcom/android/server/wm/PopOverState;->mLastOccludesParent:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->isAboveAnotherOpaquePopOver()Z

    move-result v0

    if-nez v0, :cond_10

    .line 214
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->isRemoveOutlineEffectSet()Z

    move-result p0

    if-eqz p0, :cond_12

    :cond_10
    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public toggle()V
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/android/server/wm/PopOverState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    .line 130
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsCompatRecord;->getController()Lcom/android/server/wm/BoundsCompatController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/BoundsCompatController;->isBoundsCompatEnabled()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 131
    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->inactivate()V

    return-void

    .line 134
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->isInLargeSizeTask()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 135
    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->activate()V

    goto :goto_1f

    .line 137
    :cond_1c
    invoke-virtual {p0}, Lcom/android/server/wm/PopOverState;->inactivate()V

    :goto_1f
    return-void
.end method
