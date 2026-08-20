.class public Lcom/android/server/wm/AppTransitionController;
.super Ljava/lang/Object;
.source "AppTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/AppTransitionController$TransitContainerType;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "WindowManager"

.field public static final TYPE_ACTIVITY:I = 0x1

.field public static final TYPE_NONE:I = 0x0

.field public static final TYPE_TASK:I = 0x3

.field public static final TYPE_TASK_FRAGMENT:I = 0x2


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTempTransitionReasons:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final mTempTransitionWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation
.end field

.field public final mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;


# direct methods
.method public static synthetic $r8$lambda$1bOfKAyc2ayzkacEtmlqSP46BOQ(Lcom/android/server/wm/Task;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransitionController;->lambda$overrideWithTaskFragmentRemoteAnimation$5(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5tos31X2YKuzamqqcPd9wobK-64([Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/AppTransitionController;->lambda$findTaskFragmentOrganizer$2([Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8q3Ig1oDxlwtzowUI5kPa5b4FFk(Lcom/android/server/wm/TaskFragment;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransitionController;->lambda$transitionGoodToGoForTaskFragments$9(Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CZcmd8kka-P9sqwvmOJHLE_MbsY(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransitionController;->lambda$findAnimLayoutParamsToken$8(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EH7S3R5INL4EUEhQOBy7wlWLog0(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransitionController;->lambda$findAnimLayoutParamsToken$7(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IS8UV36GbylYkHHkdB9zY2rgX5M(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransitionController;->lambda$overrideWithTaskFragmentRemoteAnimation$4(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W4kBRbVWJQgBnPtqZTB5tsKRwNg(Lcom/android/server/wm/TaskFragment;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransitionController;->lambda$overrideWithTaskFragmentRemoteAnimation$3(Lcom/android/server/wm/TaskFragment;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$bq1EOBjUp9CmWrAkaEYxo62xUwU(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransitionController;->lambda$handleAppTransitionReady$0(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$h-XqqftDtzOR0XNJ84PR9J7j6Xc(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/AppTransitionController;->lambda$handleAppTransitionReady$1(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ogu8VyvQ980Lhr_yWIiYB95EvmQ(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/AppTransitionController;->lambda$findAnimLayoutParamsToken$6(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 122
    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    .line 138
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    .line 142
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 143
    iput-object p2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 144
    iget-object p1, p2, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    return-void
.end method

.method public static canBeWallpaperTarget(Landroid/util/ArraySet;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 1516
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_18

    .line 1517
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowToken;->windowsCanBeWallpaperTarget()Z

    move-result v2

    if-eqz v2, :cond_15

    return v1

    :cond_15
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 881
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 882
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_21

    .line 883
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 885
    :cond_21
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_27
    if-ltz p0, :cond_3d

    .line 886
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, -0x1

    goto :goto_27

    .line 888
    :cond_3d
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_43
    if-ltz p0, :cond_59

    .line 889
    invoke-virtual {p2, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p0, p0, -0x1

    goto :goto_43

    :cond_59
    return-object v0
.end method

.method public static findRootTaskFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;
    .registers 2

    .line 840
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    goto :goto_17

    .line 841
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p0

    :goto_17
    return-object p0
.end method

.method public static getAnimLp(Lcom/android/server/wm/ActivityRecord;)Landroid/view/WindowManager$LayoutParams;
    .registers 2

    const/4 v0, 0x0

    if-eqz p0, :cond_8

    .line 620
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    goto :goto_9

    :cond_8
    move-object p0, v0

    :goto_9
    if-eqz p0, :cond_d

    .line 621
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :cond_d
    return-object v0
.end method

.method public static getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;
    .registers 16
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;"
        }
    .end annotation

    .line 997
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    if-eqz p2, :cond_9

    move-object v1, p0

    goto :goto_a

    :cond_9
    move-object v1, p1

    :goto_a
    const/4 v2, 0x0

    move v3, v2

    .line 999
    :goto_c
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ge v3, v4, :cond_4c

    .line 1000
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1001
    invoke-virtual {v4, p2}, Lcom/android/server/wm/ActivityRecord;->shouldApplyAnimation(Z)Z

    move-result v8

    if-eqz v8, :cond_49

    .line 1002
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 1003
    sget-boolean v8, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v8, :cond_49

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v4

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x754ced9f

    const/16 v11, 0x3c

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v8, v12, v2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v12, v7

    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v4, v12, v5

    invoke-static {v9, v10, v11, v6, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_49
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    :cond_4c
    if-eqz p2, :cond_4f

    move-object p0, p1

    .line 1012
    :cond_4f
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    move p2, v2

    .line 1013
    :goto_55
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge p2, v3, :cond_6e

    .line 1014
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    :goto_61
    if-eqz v3, :cond_6b

    .line 1015
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1014
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    goto :goto_61

    :cond_6b
    add-int/lit8 p2, p2, 0x1

    goto :goto_55

    .line 1020
    :cond_6e
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 1021
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1022
    :goto_78
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_18a

    .line 1023
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1026
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v4, :cond_a1

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_a1

    .line 1027
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isFullscreenEmbedded()Z

    move-result v4

    if-eqz v4, :cond_a1

    .line 1028
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    goto :goto_a5

    .line 1031
    :cond_a1
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 1033
    :goto_a5
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 1034
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1037
    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->isTaskViewTask(Lcom/android/server/wm/WindowContainer;)Z

    move-result v8

    if-eqz v8, :cond_b2

    goto :goto_78

    :cond_b2
    if-eqz v4, :cond_17d

    .line 1043
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->canCreateRemoteAnimationTarget()Z

    move-result v8

    if-eqz v8, :cond_17d

    .line 1044
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->canBeAnimationTarget()Z

    move-result v8

    if-eqz v8, :cond_17d

    .line 1048
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    if-eqz v8, :cond_ce

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v8

    iget-boolean v8, v8, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    if-nez v8, :cond_17d

    .line 1052
    :cond_ce
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isChangingAppTransition()Z

    move-result v8

    if-eqz v8, :cond_d6

    goto/16 :goto_17d

    .line 1067
    :cond_d6
    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v8

    xor-int/2addr v8, v7

    .line 1074
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_fa

    .line 1075
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    if-eqz v9, :cond_fa

    .line 1076
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_fa

    move v8, v2

    .line 1085
    :cond_fa
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v9

    .line 1087
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v10

    if-eqz v10, :cond_129

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v10

    if-eqz v10, :cond_129

    .line 1088
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v10

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    if-ne v10, v11, :cond_129

    iget-object v10, v9, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 1089
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v10

    if-nez v10, :cond_129

    iget-object v9, v9, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1090
    invoke-virtual {v9}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v9

    if-nez v9, :cond_129

    move v8, v2

    :cond_129
    move v9, v2

    .line 1113
    :goto_12a
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_17e

    .line 1114
    invoke-virtual {v4, v9}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    .line 1115
    invoke-virtual {v0, v10}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_144

    .line 1116
    invoke-static {v10}, Lcom/android/server/wm/AppTransitionController;->isTaskViewTask(Lcom/android/server/wm/WindowContainer;)Z

    move-result v11

    if-nez v11, :cond_17a

    .line 1121
    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_17a

    :cond_144
    if-eq v10, v3, :cond_14e

    .line 1123
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v11

    if-eqz v11, :cond_14e

    :goto_14c
    move v8, v2

    goto :goto_17a

    .line 1126
    :cond_14e
    sget-boolean v11, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v11, :cond_161

    if-eq v10, v3, :cond_161

    .line 1127
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->isSplitEmbedded()Z

    move-result v11

    if-eqz v11, :cond_161

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_161

    goto :goto_17a

    :cond_161
    if-eq v10, v3, :cond_17a

    .line 1130
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    if-eqz v11, :cond_17a

    .line 1131
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v11

    iget-boolean v11, v11, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v11, :cond_17a

    .line 1132
    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    iget-object v10, v10, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v10, :cond_17a

    goto :goto_14c

    :cond_17a
    :goto_17a
    add-int/lit8 v9, v9, 0x1

    goto :goto_12a

    :cond_17d
    :goto_17d
    move v8, v2

    :cond_17e
    if-eqz v8, :cond_185

    .line 1147
    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_78

    .line 1149
    :cond_185
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_78

    .line 1152
    :cond_18a
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_ANIM_enabled:Z

    if-eqz p1, :cond_1a4

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS_ANIM:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x57116af2

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object p2, v3, v7

    invoke-static {v0, v1, v2, v6, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1a4
    return-object p0
.end method

.method public static getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 846
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    goto :goto_13

    .line 847
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    :goto_13
    return-object p0
.end method

.method public static getAppsForAnimation(Landroid/util/ArraySet;Z)Landroid/util/ArraySet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;Z)",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 179
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    if-eqz p1, :cond_f

    .line 181
    new-instance p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda5;

    invoke-direct {p0}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->removeIf(Ljava/util/function/Predicate;)Z

    :cond_f
    return-object v0
.end method

.method public static getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;Z)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 1537
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/high16 v1, -0x80000000

    const/4 v2, 0x0

    :goto_9
    if-ltz v0, :cond_2b

    .line 1538
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_28

    if-eqz p1, :cond_20

    .line 1539
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v4

    if-nez v4, :cond_20

    goto :goto_28

    .line 1542
    :cond_20
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v4

    if-le v4, v1, :cond_28

    move-object v2, v3

    move v1, v4

    :cond_28
    :goto_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_9

    :cond_2b
    return-object v2
.end method

.method public static getTransitCompatType(Lcom/android/server/wm/AppTransition;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)I
    .registers 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/AppTransition;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Lcom/android/server/wm/WindowState;",
            "Lcom/android/server/wm/WindowState;",
            "Z)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    .line 385
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ANIMATION:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_34

    if-eqz v3, :cond_34

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 386
    invoke-static {v4}, Lcom/android/server/wm/CustomLetterboxConfiguration;->hasWallpaperBackgroundForLetterbox(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 388
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 390
    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v3}, Lcom/android/server/wm/WallpaperController;->getPrevWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 391
    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 392
    invoke-static {v4}, Lcom/android/server/wm/CustomLetterboxConfiguration;->hasWallpaperBackgroundForLetterbox(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-eqz v4, :cond_31

    move-object v3, v5

    goto :goto_31

    :cond_2f
    move-object/from16 v3, p5

    :cond_31
    :goto_31
    move-object v4, v3

    move-object v3, v5

    goto :goto_36

    :cond_34
    move-object/from16 v4, p5

    .line 403
    :goto_36
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v6, :cond_42

    if-eqz v3, :cond_42

    move v6, v8

    goto :goto_43

    :cond_42
    move v6, v7

    .line 405
    :goto_43
    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/AppTransitionController;->canBeWallpaperTarget(Landroid/util/ArraySet;)Z

    move-result v9

    if-eqz v9, :cond_4d

    if-eqz v3, :cond_4d

    move v9, v8

    goto :goto_4e

    :cond_4d
    move v9, v7

    .line 409
    :goto_4e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getKeyguardTransition()I

    move-result v10

    const/4 v11, 0x7

    if-eq v10, v11, :cond_25d

    const/16 v12, 0x8

    const/4 v13, 0x6

    if-eq v10, v12, :cond_251

    const/16 v14, 0x9

    if-eq v10, v14, :cond_24e

    const/4 v10, -0x1

    if-eqz p6, :cond_62

    return v10

    .line 427
    :cond_62
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v15

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getFirstAppTransition()I

    move-result v12

    .line 432
    invoke-virtual {v0, v13}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v16

    const/4 v10, 0x2

    const/4 v11, 0x3

    if-eqz v16, :cond_a5

    invoke-virtual/range {p3 .. p3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_a5

    move-object/from16 v13, p3

    .line 434
    invoke-virtual {v13, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    invoke-static {v0}, Lcom/android/server/wm/AppTransitionController;->getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I

    move-result v0

    if-eq v0, v10, :cond_a2

    if-ne v0, v11, :cond_8b

    const/16 v0, 0x1b

    return v0

    .line 441
    :cond_8b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TRANSIT_CHANGE with unrecognized changing type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a2
    const/16 v0, 0x1e

    return v0

    :cond_a5
    const/16 v13, 0x10

    and-int/2addr v15, v13

    if-eqz v15, :cond_ad

    const/16 v0, 0x1a

    return v0

    :cond_ad
    if-nez v12, :cond_b0

    return v7

    .line 458
    :cond_b0
    invoke-static {v12}, Lcom/android/server/wm/AppTransition;->isNormalTransit(I)Z

    move-result v15

    if-eqz v15, :cond_114

    .line 460
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v15

    xor-int/2addr v15, v8

    .line 461
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v17

    add-int/lit8 v17, v17, -0x1

    move/from16 v13, v17

    move/from16 v17, v8

    :goto_c5
    if-ltz v13, :cond_e2

    .line 462
    invoke-virtual {v1, v13}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/ActivityRecord;

    .line 463
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v19

    if-nez v19, :cond_df

    .line 465
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v17

    if-eqz v17, :cond_dd

    move v15, v7

    move/from16 v17, v15

    goto :goto_df

    :cond_dd
    move/from16 v17, v7

    :cond_df
    :goto_df
    add-int/lit8 v13, v13, -0x1

    goto :goto_c5

    .line 470
    :cond_e2
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v13

    xor-int/2addr v13, v8

    .line 471
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v14, v18

    :goto_ef
    if-ltz v14, :cond_102

    .line 472
    invoke-virtual {v2, v14}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v18

    if-eqz v18, :cond_ff

    move v13, v7

    goto :goto_102

    :cond_ff
    add-int/lit8 v14, v14, -0x1

    goto :goto_ef

    :cond_102
    :goto_102
    if-eqz v13, :cond_109

    if-eqz v17, :cond_109

    const/16 v0, 0x19

    return v0

    :cond_109
    if-eqz v15, :cond_114

    .line 481
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_114

    const/16 v0, 0x18

    return v0

    .line 486
    :cond_114
    invoke-static {v1, v7}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v13

    .line 488
    invoke-static {v2, v8}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    const/4 v15, 0x4

    if-eqz v9, :cond_13c

    if-eqz v6, :cond_13c

    .line 492
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v3, :cond_12d

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x6042b19

    invoke-static {v3, v4, v7, v5, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_12d
    if-eq v12, v8, :cond_136

    if-eq v12, v10, :cond_139

    if-eq v12, v11, :cond_136

    if-eq v12, v15, :cond_139

    goto :goto_189

    :cond_136
    const/16 v0, 0xe

    goto :goto_13b

    :cond_139
    const/16 v0, 0xf

    :goto_13b
    return v0

    :cond_13c
    if-eqz v4, :cond_15b

    .line 501
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15b

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 502
    invoke-virtual {v1, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_15b

    iget-object v6, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 503
    invoke-virtual {v2, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15b

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v14, v4, :cond_15b

    const/16 v0, 0xc

    return v0

    :cond_15b
    if-eqz v3, :cond_172

    .line 507
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_172

    iget-object v4, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 508
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_172

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-ne v13, v3, :cond_172

    const/16 v0, 0xd

    return v0

    :cond_172
    if-eq v12, v8, :cond_176

    if-ne v12, v11, :cond_189

    :cond_176
    if-eqz v14, :cond_189

    .line 517
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeRecents()Z

    move-result v3

    if-eqz v3, :cond_189

    if-eqz v13, :cond_189

    .line 518
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v3

    if-eqz v3, :cond_189

    const/16 v3, 0xe

    return v3

    .line 526
    :cond_189
    :goto_189
    invoke-static {v1, v2, v8}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v3

    .line 528
    invoke-static {v1, v2, v7}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v4

    .line 530
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_19e

    .line 531
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    goto :goto_19f

    :cond_19e
    move-object v6, v5

    .line 532
    :goto_19f
    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1ac

    .line 533
    invoke-virtual {v4, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 534
    :cond_1ac
    invoke-static {v6}, Lcom/android/server/wm/AppTransitionController;->getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I

    move-result v4

    .line 535
    invoke-static {v5}, Lcom/android/server/wm/AppTransitionController;->getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    .line 536
    invoke-virtual {v0, v11}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v6

    if-eqz v6, :cond_1de

    if-ne v4, v11, :cond_1de

    if-eqz v13, :cond_1db

    .line 539
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 540
    invoke-virtual {v13}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1db

    if-eqz v14, :cond_1db

    .line 541
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeStandard()Z

    move-result v0

    if-eqz v0, :cond_1db

    .line 542
    invoke-virtual {v14}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_1db

    const/16 v0, 0x9

    return v0

    :cond_1db
    const/16 v0, 0xa

    return v0

    .line 553
    :cond_1de
    invoke-virtual {v0, v15}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v6

    if-eqz v6, :cond_1e9

    if-ne v5, v11, :cond_1e9

    const/16 v0, 0xb

    return v0

    .line 556
    :cond_1e9
    invoke-virtual {v0, v8}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v6

    if-eqz v6, :cond_20c

    if-ne v4, v11, :cond_203

    if-ne v5, v8, :cond_1f5

    const/4 v6, 0x6

    return v6

    .line 567
    :cond_1f5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_200

    const/16 v12, 0x10

    goto :goto_202

    :cond_200
    const/16 v12, 0x8

    :goto_202
    return v12

    :cond_203
    const/4 v6, 0x6

    if-ne v4, v8, :cond_207

    return v6

    :cond_207
    if-ne v4, v10, :cond_20c

    const/16 v0, 0x1c

    return v0

    .line 577
    :cond_20c
    invoke-virtual {v0, v10}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v4

    if-eqz v4, :cond_237

    if-ne v5, v11, :cond_217

    const/16 v4, 0x9

    return v4

    :cond_217
    if-ne v5, v10, :cond_21c

    const/16 v0, 0x1d

    return v0

    :cond_21c
    if-ne v5, v8, :cond_237

    .line 585
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v8

    :goto_223
    if-ltz v0, :cond_235

    .line 586
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-eqz v1, :cond_231

    const/4 v1, 0x7

    return v1

    :cond_231
    const/4 v1, 0x7

    add-int/lit8 v0, v0, -0x1

    goto :goto_223

    :cond_235
    const/4 v0, -0x1

    return v0

    :cond_237
    const/4 v2, 0x5

    .line 594
    invoke-virtual {v0, v2}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v0

    if-eqz v0, :cond_24d

    .line 595
    invoke-virtual {v3}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24d

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_24d

    const/16 v0, 0x12

    return v0

    :cond_24d
    return v7

    :cond_24e
    const/16 v0, 0x17

    return v0

    :cond_251
    move v6, v13

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_25b

    const/16 v13, 0x16

    goto :goto_25c

    :cond_25b
    move v13, v6

    :goto_25c
    return v13

    :cond_25d
    if-eqz v6, :cond_262

    const/16 v0, 0x15

    goto :goto_264

    :cond_262
    const/16 v0, 0x14

    :goto_264
    return v0
.end method

.method public static getTransitContainerType(Lcom/android/server/wm/WindowContainer;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)I"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 606
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_c

    const/4 p0, 0x3

    return p0

    .line 609
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-eqz v1, :cond_14

    const/4 p0, 0x2

    return p0

    .line 612
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_1c

    const/4 p0, 0x1

    return p0

    :cond_1c
    return v0
.end method

.method public static isTaskViewTask(Lcom/android/server/wm/WindowContainer;)Z
    .registers 2

    .line 980
    instance-of v0, p0, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_c

    check-cast p0, Lcom/android/server/wm/Task;

    iget-boolean p0, p0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public static synthetic lambda$findAnimLayoutParamsToken$6(ILandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4

    .line 861
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 862
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroid/view/RemoteAnimationDefinition;->hasTransition(ILandroid/util/ArraySet;)Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static synthetic lambda$findAnimLayoutParamsToken$7(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 867
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->fillsParent()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static synthetic lambda$findAnimLayoutParamsToken$8(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 872
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static synthetic lambda$findTaskFragmentOrganizer$2([Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)Z
    .registers 5

    .line 734
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    .line 738
    :cond_8
    aget-object v1, p0, v0

    if-eqz v1, :cond_1c

    invoke-interface {v1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1c

    const/4 p0, 0x1

    return p0

    .line 741
    :cond_1c
    aput-object p1, p0, v0

    return v0
.end method

.method public static synthetic lambda$handleAppTransitionReady$0(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    const/4 v0, 0x2

    const/16 v1, 0x8

    .line 245
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$handleAppTransitionReady$1(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3

    const/4 v0, 0x2

    const/16 v1, 0x8

    .line 247
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowContainer;->isAnimating(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$overrideWithTaskFragmentRemoteAnimation$3(Lcom/android/server/wm/TaskFragment;)Z
    .registers 1

    .line 769
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->matchParentBounds()Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$overrideWithTaskFragmentRemoteAnimation$4(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    const/4 v0, 0x1

    .line 808
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->setDropInputForAnimation(Z)V

    return-void
.end method

.method public static synthetic lambda$overrideWithTaskFragmentRemoteAnimation$5(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 807
    new-instance v0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda0;-><init>()V

    .line 809
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static synthetic lambda$transitionGoodToGoForTaskFragments$9(Lcom/android/server/wm/TaskFragment;)Z
    .registers 7

    .line 1467
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isReadyToTransit()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1e

    .line 1468
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x59800c97

    const/4 v4, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    aput-object p0, v5, v1

    invoke-static {v0, v3, v1, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1d
    return v2

    :cond_1e
    return v1
.end method

.method public static lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 897
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    .line 898
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/2addr v1, v0

    .line 899
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v2

    add-int/2addr v2, v1

    const/high16 v3, -0x80000000

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_12
    if-ge v5, v2, :cond_47

    if-ge v5, v0, :cond_1d

    .line 904
    invoke-virtual {p0, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    goto :goto_30

    :cond_1d
    if-ge v5, v1, :cond_28

    sub-int v6, v5, v0

    .line 906
    invoke-virtual {p1, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    goto :goto_30

    :cond_28
    sub-int v6, v5, v1

    .line 907
    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 908
    :goto_30
    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->getPrefixOrderIndex()I

    move-result v7

    .line 909
    invoke-static {v6}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_44

    .line 910
    invoke-interface {p3, v6}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_44

    if-le v7, v3, :cond_44

    move-object v4, v6

    move v3, v7

    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_47
    return-object v4
.end method


# virtual methods
.method public final applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;ILandroid/view/WindowManager$LayoutParams;Z)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;I",
            "Landroid/view/WindowManager$LayoutParams;",
            "Z)V"
        }
    .end annotation

    const/4 v0, -0x1

    if-eq p3, v0, :cond_a7

    .line 1171
    invoke-virtual {p1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto/16 :goto_a7

    :cond_11
    const/4 v0, 0x1

    .line 1175
    invoke-static {p1, p2, v0}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v2

    const/4 v0, 0x0

    .line 1177
    invoke-static {p1, p2, v0}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v4

    const/4 v7, 0x0

    move-object v3, p0

    move-object v5, p2

    move v6, p3

    move-object v8, p4

    move v9, p5

    .line 1182
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    move v4, p3

    move-object v6, p4

    move v7, p5

    .line 1184
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V

    .line 1193
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v1

    if-eqz v1, :cond_38

    .line 1195
    invoke-virtual {v1}, Lcom/android/server/wm/RecentsAnimationController;->sendTasksAppeared()V

    .line 1199
    :cond_38
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 1200
    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v1

    .line 1201
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootMainStageTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 1202
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_52

    :cond_51
    const/4 v2, 0x0

    :goto_52
    move-object v3, v2

    if-eqz v1, :cond_6e

    if-eqz v3, :cond_6e

    .line 1205
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isFullscreenRootForStageTask()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1206
    invoke-virtual {v1}, Lcom/android/server/wm/RemoteAnimationController;->updateExitSplitScreenByHome()V

    .line 1208
    invoke-virtual {v1}, Lcom/android/server/wm/RemoteAnimationController;->isExitingSplitScreenByHome()Z

    move-result v1

    if-eqz v1, :cond_6e

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v4, p4

    move v5, p3

    move v7, p5

    .line 1209
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowContainer;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    :cond_6e
    move p4, v0

    .line 1214
    :goto_6f
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p5

    if-ge p4, p5, :cond_80

    .line 1215
    invoke-virtual {p1, p4}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/android/server/wm/ActivityRecord;

    iput-boolean v0, p5, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_6f

    :cond_80
    move p1, v0

    .line 1217
    :goto_81
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p4

    if-ge p1, p4, :cond_92

    .line 1218
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/wm/ActivityRecord;

    iput-boolean v0, p4, Lcom/android/server/wm/ActivityRecord;->mOverrideTaskTransition:Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_81

    .line 1221
    :cond_92
    iget-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 1223
    invoke-virtual {p1}, Lcom/android/server/wm/AccessibilityController;->hasCallbacks()Z

    move-result p2

    if-eqz p2, :cond_a7

    .line 1224
    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p0

    invoke-virtual {p1, p0, p3}, Lcom/android/server/wm/AccessibilityController;->onAppWindowTransition(II)V

    :cond_a7
    :goto_a7
    return-void
.end method

.method public final applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;IZLandroid/view/WindowManager$LayoutParams;Z)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;IZ",
            "Landroid/view/WindowManager$LayoutParams;",
            "Z)V"
        }
    .end annotation

    move-object v0, p0

    .line 942
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_7
    if-ge v3, v1, :cond_58

    move-object v4, p1

    .line 944
    invoke-virtual {p1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 949
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v6, v2

    .line 950
    :goto_16
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_2f

    move-object v12, p2

    .line 951
    invoke-virtual {p2, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 952
    invoke-virtual {v7, v5}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 953
    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v6, v6, 0x1

    goto :goto_16

    :cond_2f
    move-object v12, p2

    move-object v6, v5

    move-object/from16 v7, p5

    move/from16 v8, p3

    move/from16 v9, p4

    move/from16 v10, p6

    .line 956
    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/WindowContainer;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    .line 958
    iget-object v6, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_55

    iget-object v6, v5, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 959
    invoke-virtual {v6}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v6

    if-nez v6, :cond_55

    .line 962
    iget-object v6, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_58
    return-void
.end method

.method public final containsVoiceInteraction(Landroid/util/ArraySet;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;)Z"
        }
    .end annotation

    .line 919
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p0

    const/4 v0, 0x1

    sub-int/2addr p0, v0

    :goto_6
    if-ltz p0, :cond_16

    .line 920
    invoke-virtual {p1, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityRecord;->mVoiceInteraction:Z

    if-eqz v1, :cond_13

    return v0

    :cond_13
    add-int/lit8 p0, p0, -0x1

    goto :goto_6

    :cond_16
    const/4 p0, 0x0

    return p0
.end method

.method public final findAnimLayoutParamsToken(ILandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)",
            "Lcom/android/server/wm/ActivityRecord;"
        }
    .end annotation

    .line 860
    new-instance p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda2;-><init>(ILandroid/util/ArraySet;)V

    invoke-static {p4, p3, p5, p0}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_c

    return-object p0

    .line 866
    :cond_c
    new-instance p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p4, p3, p5, p0}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    if-eqz p0, :cond_18

    return-object p0

    .line 871
    :cond_18
    new-instance p0, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda4;

    invoke-direct {p0}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {p4, p3, p5, p0}, Lcom/android/server/wm/AppTransitionController;->lookForHighestTokenWithFilter(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final findParentTaskForAllEmbeddedWindows()Lcom/android/server/wm/Task;
    .registers 7

    .line 669
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 670
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 671
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 672
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 676
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_2a
    if-ltz v0, :cond_67

    .line 677
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_3b

    goto :goto_68

    .line 692
    :cond_3b
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_68

    .line 694
    invoke-virtual {v4}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_48

    goto :goto_68

    :cond_48
    if-eqz v2, :cond_4d

    if-eq v2, v4, :cond_4d

    goto :goto_68

    .line 703
    :cond_4d
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_54

    goto :goto_68

    .line 711
    :cond_54
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    iget v5, v4, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq v2, v5, :cond_63

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v2

    if-nez v2, :cond_63

    goto :goto_68

    :cond_63
    add-int/lit8 v0, v0, -0x1

    move-object v2, v4

    goto :goto_2a

    :cond_67
    move-object v1, v2

    .line 717
    :cond_68
    :goto_68
    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController;->mTempTransitionWindows:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-object v1
.end method

.method public final findTaskFragmentOrganizer(Lcom/android/server/wm/Task;)Landroid/window/ITaskFragmentOrganizer;
    .registers 4

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return-object p0

    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/window/ITaskFragmentOrganizer;

    .line 733
    new-instance v1, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda6;-><init>([Landroid/window/ITaskFragmentOrganizer;)V

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_20

    .line 745
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz p1, :cond_1f

    sget-object p1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, 0x6b97e41c

    invoke-static {p1, v0, v1, p0, p0}, Lcom/android/internal/protolog/ProtoLogImpl;->e(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_1f
    return-object p0

    :cond_20
    aget-object p0, v0, v1

    return-object p0
.end method

.method public final getOldWallpaper()Lcom/android/server/wm/WindowState;
    .registers 7

    .line 157
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 158
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 159
    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getFirstAppTransition()I

    move-result v1

    .line 161
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/android/server/wm/AppTransitionController;->getAnimationTargets(Landroid/util/ArraySet;Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v0, :cond_42

    .line 164
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->hasWallpaper()Z

    move-result v5

    if-nez v5, :cond_43

    if-eq v1, v4, :cond_27

    const/4 v5, 0x3

    if-ne v1, v5, :cond_42

    .line 168
    :cond_27
    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_42

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_42

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 169
    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v1

    if-eqz v1, :cond_42

    goto :goto_43

    :cond_42
    move v4, v3

    .line 172
    :cond_43
    :goto_43
    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {p0}, Lcom/android/server/wm/WallpaperController;->isWallpaperTargetAnimating()Z

    move-result p0

    if-nez p0, :cond_4d

    if-nez v4, :cond_4e

    :cond_4d
    const/4 v0, 0x0

    :cond_4e
    return-object v0
.end method

.method public getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/view/RemoteAnimationAdapter;"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 627
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getRemoteAnimationDefinition()Landroid/view/RemoteAnimationDefinition;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 629
    invoke-virtual {p1, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object p1

    if-eqz p1, :cond_f

    return-object p1

    .line 636
    :cond_f
    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    if-eqz p0, :cond_18

    .line 637
    invoke-virtual {p0, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object p0

    goto :goto_19

    :cond_18
    const/4 p0, 0x0

    :goto_19
    return-object p0
.end method

.method public handleAppTransitionReady()V
    .registers 22

    move-object/from16 v7, p0

    .line 190
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 191
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0, v1}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z

    move-result v0

    if-eqz v0, :cond_273

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    .line 192
    invoke-virtual {v7, v0, v1}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z

    move-result v0

    if-eqz v0, :cond_273

    .line 193
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->transitionGoodToGoForTaskFragments()Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_273

    :cond_27
    const-wide/16 v8, 0x20

    const-string v0, "AppTransitionReady"

    .line 196
    invoke-static {v8, v9, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 198
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v0, :cond_3c

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0xf3d8ebc

    invoke-static {v0, v1, v11, v10, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_3c
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v1, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda7;-><init>()V

    const/4 v12, 0x1

    invoke-virtual {v0, v1, v12}, Lcom/android/server/wm/WindowContainer;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 203
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v13, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 205
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/ChangeTransitionController;->isReady()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 209
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ChangeTransitionController;->handleAppTransitionIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 213
    :cond_63
    invoke-virtual {v13}, Lcom/android/server/wm/AppTransition;->removeAppTransitionTimeoutCallbacks()V

    .line 215
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v11, v0, Lcom/android/server/wm/DisplayContent;->mWallpaperMayChange:Z

    .line 217
    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    move v1, v11

    :goto_71
    if-ge v1, v0, :cond_83

    .line 223
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->clearAnimatingFlags()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_71

    .line 225
    :cond_83
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    move v1, v11

    :goto_8c
    if-ge v1, v0, :cond_a4

    .line 228
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 229
    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAtUnchecked(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 228
    invoke-static {v2}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_a1

    .line 231
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->clearAnimatingFlags()V

    :cond_a1
    add-int/lit8 v1, v1, 0x1

    goto :goto_8c

    .line 238
    :cond_a4
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WallpaperController;->adjustWallpaperWindowsForAppTransitionIfNeeded(Landroid/util/ArraySet;)V

    .line 243
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 244
    invoke-virtual {v0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-nez v0, :cond_d6

    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 246
    invoke-virtual {v0}, Landroid/util/ArraySet;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_d4

    goto :goto_d6

    :cond_d4
    move v0, v11

    goto :goto_d7

    :cond_d6
    :goto_d6
    move v0, v12

    .line 248
    :goto_d7
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Lcom/android/server/wm/AppTransitionController;->getAppsForAnimation(Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v6

    .line 250
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-static {v1, v0}, Lcom/android/server/wm/AppTransitionController;->getAppsForAnimation(Landroid/util/ArraySet;Z)Landroid/util/ArraySet;

    move-result-object v5

    .line 253
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v14, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 256
    invoke-virtual {v2}, Lcom/android/server/wm/WallpaperController;->getWallpaperTarget()Lcom/android/server/wm/WindowState;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->getOldWallpaper()Lcom/android/server/wm/WindowState;

    move-result-object v19

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-boolean v2, v2, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    move-object v15, v6

    move-object/from16 v16, v5

    move-object/from16 v17, v1

    move/from16 v20, v2

    .line 253
    invoke-static/range {v14 .. v20}, Lcom/android/server/wm/AppTransitionController;->getTransitCompatType(Lcom/android/server/wm/AppTransition;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;Z)I

    move-result v14

    .line 258
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v11, v1, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 260
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v2, :cond_157

    iget v1, v1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    int-to-long v1, v1

    invoke-virtual {v13}, Lcom/android/server/wm/AppTransition;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v8, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v14}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v15, v11

    aput-object v3, v15, v12

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, v15, v1

    const/4 v0, 0x3

    aput-object v4, v15, v0

    const/4 v0, 0x4

    aput-object v8, v15, v0

    const/4 v0, 0x5

    aput-object v9, v15, v0

    const v0, -0x808c946

    const/16 v1, 0x31

    const/4 v2, 0x0

    invoke-static {v10, v0, v1, v2, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 271
    :cond_157
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-static {v6, v5, v0}, Lcom/android/server/wm/AppTransitionController;->collectActivityTypes(Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Landroid/util/ArraySet;

    move-result-object v0

    .line 273
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v8, v1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    move-object/from16 v1, p0

    move v2, v14

    move-object v3, v0

    move-object v4, v6

    move-object v9, v5

    move-object v10, v6

    move-object v6, v8

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AppTransitionController;->findAnimLayoutParamsToken(ILandroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;Landroid/util/ArraySet;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 277
    invoke-static {v10, v11}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 279
    invoke-static {v9, v11}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v15

    .line 280
    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 281
    invoke-static {v2, v11}, Lcom/android/server/wm/AppTransitionController;->getTopApp(Landroid/util/ArraySet;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 282
    invoke-static {v1}, Lcom/android/server/wm/AppTransitionController;->getAnimLp(Lcom/android/server/wm/ActivityRecord;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    .line 285
    invoke-virtual {v7, v14, v0}, Lcom/android/server/wm/AppTransitionController;->overrideWithTaskFragmentRemoteAnimation(ILandroid/util/ArraySet;)Z

    move-result v2

    if-nez v2, :cond_18f

    .line 287
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->unfreezeEmbeddedChangingWindows()V

    .line 288
    invoke-virtual {v7, v1, v14, v0}, Lcom/android/server/wm/AppTransitionController;->overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/ActivityRecord;ILandroid/util/ArraySet;)V

    .line 291
    :cond_18f
    invoke-virtual {v7, v9}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-nez v0, :cond_19b

    .line 292
    invoke-virtual {v7, v10}, Lcom/android/server/wm/AppTransitionController;->containsVoiceInteraction(Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_19c

    :cond_19b
    move v11, v12

    .line 295
    :cond_19c
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->deferStartingAnimations()V

    .line 298
    :try_start_1a3
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ANIMATION:Z

    if-eqz v0, :cond_1aa

    .line 299
    invoke-static {v8}, Lcom/android/server/wm/CustomLetterboxConfiguration;->updateTopOpeningApp(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1aa
    move-object/from16 v1, p0

    move-object v2, v10

    move-object v3, v9

    move v4, v14

    move-object v0, v6

    move v6, v11

    .line 302
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/AppTransitionController;->applyAnimations(Landroid/util/ArraySet;Landroid/util/ArraySet;ILandroid/view/WindowManager$LayoutParams;Z)V

    .line 304
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->handleClosingApps()V

    .line 305
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/AppTransitionController;->handleOpeningApps()V

    .line 306
    invoke-virtual {v7, v14}, Lcom/android/server/wm/AppTransitionController;->handleChangingApps(I)V

    .line 308
    invoke-virtual {v13, v14, v8, v15, v0}, Lcom/android/server/wm/AppTransition;->setLastAppTransition(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 311
    invoke-virtual {v13}, Lcom/android/server/wm/AppTransition;->getTransitFlags()I

    move-result v0

    .line 312
    invoke-virtual {v13, v14, v8}, Lcom/android/server/wm/AppTransition;->goodToGo(ILcom/android/server/wm/ActivityRecord;)I

    move-result v1

    .line 313
    invoke-virtual {v7, v14, v0}, Lcom/android/server/wm/AppTransitionController;->handleNonAppWindowsInTransition(II)V

    .line 314
    invoke-virtual {v13}, Lcom/android/server/wm/AppTransition;->postAnimationCallback()V

    .line 315
    invoke-virtual {v13}, Lcom/android/server/wm/AppTransition;->clear()V

    .line 318
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v0}, Lcom/android/server/wm/ChangeTransitionController;->clear()V

    .line 320
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ANIMATION:Z

    if-eqz v0, :cond_1e0

    const/4 v0, 0x0

    .line 321
    invoke-static {v0}, Lcom/android/server/wm/CustomLetterboxConfiguration;->updateTopOpeningApp(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_1e0
    .catchall {:try_start_1a3 .. :try_end_1e0} :catchall_26a

    .line 325
    :cond_1e0
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 328
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskSnapshotController;->onTransitionStarting(Lcom/android/server/wm/DisplayContent;)V

    .line 332
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiTaskingTransitController:Lcom/android/server/wm/MultiTaskingTransitionController;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiTaskingTransitionController;->clearMinimizeAnimState(Landroid/util/ArraySet;)V

    .line 333
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiTaskingTransitController:Lcom/android/server/wm/MultiTaskingTransitionController;

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiTaskingTransitionController;->clearMinimizeAnimState(Landroid/util/ArraySet;)V

    .line 337
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 338
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 339
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 340
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->clear()V

    .line 343
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_BASIC_ANIM_WITH_DIM:Z

    if-eqz v0, :cond_241

    if-eqz v15, :cond_241

    if-eqz v8, :cond_241

    .line 345
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->isAppTransitioning()Z

    move-result v0

    if-eqz v0, :cond_236

    invoke-virtual {v8}, Lcom/android/server/wm/WindowContainer;->isAppTransitioning()Z

    move-result v0

    if-nez v0, :cond_241

    .line 346
    :cond_236
    iget-object v0, v8, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DimAnimator;->finishDimAnimation(I)V

    .line 347
    iget-object v0, v15, Lcom/android/server/wm/WindowContainer;->mDimAnimator:Lcom/android/server/wm/DimAnimator;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/DimAnimator;->finishDimAnimation(I)V

    .line 354
    :cond_241
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    .line 356
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v12}, Lcom/android/server/wm/DisplayContent;->computeImeTarget(Z)Lcom/android/server/wm/WindowState;

    .line 358
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v2, v7, Lcom/android/server/wm/AppTransitionController;->mTempTransitionReasons:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyTransitionStarting(Landroid/util/ArrayMap;)V

    const-wide/16 v2, 0x20

    .line 361
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 363
    iget-object v0, v7, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/2addr v1, v12

    const/4 v3, 0x2

    or-int/2addr v1, v3

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    return-void

    :catchall_26a
    move-exception v0

    .line 325
    iget-object v1, v7, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mSurfaceAnimationRunner:Lcom/android/server/wm/SurfaceAnimationRunner;

    invoke-virtual {v1}, Lcom/android/server/wm/SurfaceAnimationRunner;->continueStartingAnimations()V

    .line 326
    throw v0

    :cond_273
    :goto_273
    return-void
.end method

.method public final handleChangingApps(I)V
    .registers 13

    .line 1298
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 1299
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_a
    if-ltz v1, :cond_4f

    .line 1307
    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1308
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v10, 0x0

    if-eqz v4, :cond_28

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0xb2054f0

    new-array v7, v2, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v7, v8

    invoke-static {v5, v6, v8, v10, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_28
    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v3

    move v6, p1

    .line 1309
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/WindowContainer;->applyAnimation(Landroid/view/WindowManager$LayoutParams;IZZLjava/util/ArrayList;)Z

    .line 1312
    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_39

    .line 1313
    iget-object v10, v3, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    :cond_39
    if-eqz v10, :cond_4c

    .line 1314
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    .line 1315
    invoke-interface {v3, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    .line 1316
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4c
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    :cond_4f
    return-void
.end method

.method public final handleClosingApps()V
    .registers 12

    .line 1272
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    .line 1273
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_a
    if-ge v3, v1, :cond_4b

    .line 1276
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1277
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_28

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x2f5c2e52

    const/4 v9, 0x0

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v5, v10, v2

    invoke-static {v7, v8, v2, v9, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1279
    :cond_28
    invoke-virtual {v4, v2, v2}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    .line 1280
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 1284
    iput-boolean v6, v4, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    .line 1287
    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    if-eqz v5, :cond_3b

    iget-boolean v5, v5, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-nez v5, :cond_3b

    .line 1288
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->removeStartingWindow()V

    .line 1291
    :cond_3b
    iget-object v5, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v5, v5, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailDown()Z

    move-result v5

    if-eqz v5, :cond_48

    .line 1292
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    :cond_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_4b
    return-void
.end method

.method public final handleNonAppWindowsInTransition(II)V
    .registers 8

    const/16 v0, 0x14

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_37

    .line 1324
    sget-boolean v3, Lcom/android/server/wm/WindowManagerService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    if-nez v3, :cond_37

    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_37

    and-int/lit8 v3, p2, 0x2

    if-nez v3, :cond_37

    and-int/lit8 v3, p2, 0x8

    if-nez v3, :cond_37

    .line 1329
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    and-int/lit8 v4, p2, 0x1

    if-eqz v4, :cond_20

    move v4, v2

    goto :goto_21

    :cond_20
    move v4, v1

    :goto_21
    invoke-interface {v3, v4}, Lcom/android/server/policy/WindowManagerPolicy;->createKeyguardWallpaperExit(Z)Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 1332
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerService;->getTransitionAnimationScaleLocked()F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/animation/Animation;->scaleCurrentDuration(F)V

    .line 1333
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mWallpaperController:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WallpaperController;->startWallpaperAnimation(Landroid/view/animation/Animation;)V

    :cond_37
    const/16 v3, 0x15

    if-eq p1, v0, :cond_3d

    if-ne p1, v3, :cond_57

    .line 1337
    :cond_3d
    sget-boolean v0, Lcom/android/server/wm/WindowManagerService;->sEnableRemoteKeyguardGoingAwayAnimation:Z

    if-nez v0, :cond_57

    .line 1340
    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne p1, v3, :cond_47

    move p1, v2

    goto :goto_48

    :cond_47
    move p1, v1

    :goto_48
    and-int/lit8 v0, p2, 0x1

    if-eqz v0, :cond_4e

    move v0, v2

    goto :goto_4f

    :cond_4e
    move v0, v1

    :goto_4f
    and-int/lit8 p2, p2, 0x8

    if-eqz p2, :cond_54

    move v1, v2

    :cond_54
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/DisplayContent;->startKeyguardExitOnNonAppWindows(ZZZ)V

    :cond_57
    return-void
.end method

.method public final handleOpeningApps()V
    .registers 14

    const-string v0, "<<< CLOSE TRANSACTION handleAppTransitionReady()"

    const-string v1, "handleAppTransitionReady"

    .line 1229
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 1230
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_e
    if-ge v5, v3, :cond_99

    .line 1233
    invoke-virtual {v2, v5}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 1234
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_2c

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, 0x610e94b5

    const/4 v11, 0x0

    new-array v12, v8, [Ljava/lang/Object;

    aput-object v7, v12, v4

    invoke-static {v9, v10, v4, v11, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1236
    :cond_2c
    invoke-virtual {v6, v8, v4}, Lcom/android/server/wm/ActivityRecord;->commitVisibility(ZZ)V

    const/4 v7, 0x2

    .line 1242
    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/WindowContainer;->getAnimatingContainer(II)Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    if-eqz v7, :cond_40

    .line 1244
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getAnimationSources()Landroid/util/ArraySet;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_49

    .line 1248
    :cond_40
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mNoAnimationNotifyOnTransitionFinished:Ljava/util/List;

    iget-object v8, v6, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1250
    :cond_49
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->updateReportedVisibilityLocked()V

    .line 1251
    iput-boolean v4, v6, Lcom/android/server/wm/WindowToken;->waitingToShow:Z

    .line 1252
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    const-string v8, "WindowManager"

    if-eqz v7, :cond_59

    const-string v7, ">>> OPEN TRANSACTION handleAppTransitionReady()"

    invoke-static {v8, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    :cond_59
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowManagerService;->openSurfaceTransaction()V

    .line 1256
    :try_start_5e
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->showAllWindowsLocked()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_8b

    .line 1258
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v7, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1259
    sget-boolean v7, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz v7, :cond_6d

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    :cond_6d
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionThumbnailUp()Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 1264
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->attachThumbnailAnimation()V

    goto :goto_88

    .line 1265
    :cond_7b
    iget-object v7, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v7, v7, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v7}, Lcom/android/server/wm/AppTransition;->isNextAppTransitionOpenCrossProfileApps()Z

    move-result v7

    if-eqz v7, :cond_88

    .line 1266
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->attachCrossProfileAppsThumbnailAnimation()V

    :cond_88
    :goto_88
    add-int/lit8 v5, v5, 0x1

    goto :goto_e

    :catchall_8b
    move-exception v2

    .line 1258
    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowManagerService;->closeSurfaceTransaction(Ljava/lang/String;)V

    .line 1259
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->SHOW_LIGHT_TRANSACTIONS:Z

    if-eqz p0, :cond_98

    invoke-static {v8, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1261
    :cond_98
    throw v2

    :cond_99
    return-void
.end method

.method public isTransitWithinTask(ILcom/android/server/wm/Task;)Z
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_51

    .line 1488
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 1489
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_51

    :cond_e
    const/4 v1, 0x6

    if-eq p1, v1, :cond_19

    const/4 v1, 0x7

    if-eq p1, v1, :cond_19

    const/16 v1, 0x12

    if-eq p1, v1, :cond_19

    return v0

    .line 1501
    :cond_19
    iget-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1502
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v1, p2, :cond_21

    return v0

    .line 1507
    :cond_34
    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ActivityRecord;

    .line 1508
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    if-eq p1, p2, :cond_3c

    return v0

    :cond_4f
    const/4 p0, 0x1

    return p0

    :cond_51
    :goto_51
    return v0
.end method

.method public final overrideWithRemoteAnimationIfSet(Lcom/android/server/wm/ActivityRecord;ILandroid/util/ArraySet;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/ActivityRecord;",
            "I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x1a

    if-ne p2, v1, :cond_6

    goto :goto_24

    .line 826
    :cond_6
    invoke-static {p2}, Lcom/android/server/wm/AppTransition;->isKeyguardGoingAwayTransitOld(I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 827
    iget-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    if-eqz p1, :cond_24

    .line 828
    invoke-virtual {p1, p2, p3}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object p1

    move-object v0, p1

    goto :goto_24

    .line 830
    :cond_16
    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v1

    if-nez v1, :cond_24

    .line 831
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v0

    :cond_24
    :goto_24
    if-eqz v0, :cond_2d

    .line 834
    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    :cond_2d
    return-void
.end method

.method public final overrideWithTaskFragmentRemoteAnimation(ILandroid/util/ArraySet;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 761
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AppTransitionController;->transitionMayContainNonAppWindows(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 765
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransitionController;->findParentTaskForAllEmbeddedWindows()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 767
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v2, :cond_1e

    if-eqz v0, :cond_1e

    .line 768
    new-instance v2, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda10;

    invoke-direct {v2}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 779
    :cond_1e
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppTransitionController;->findTaskFragmentOrganizer(Lcom/android/server/wm/Task;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_32

    .line 782
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iget v5, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v4, v2, v5}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getRemoteAnimationDefinition(Landroid/window/ITaskFragmentOrganizer;I)Landroid/view/RemoteAnimationDefinition;

    move-result-object v4

    goto :goto_33

    :cond_32
    move-object v4, v3

    :goto_33
    if-eqz v4, :cond_3a

    .line 785
    invoke-virtual {v4, p1, p2}, Landroid/view/RemoteAnimationDefinition;->getAdapter(ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object p2

    goto :goto_3b

    :cond_3a
    move-object p2, v3

    :goto_3b
    if-nez p2, :cond_3e

    return v1

    .line 790
    :cond_3e
    iget-object v4, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v4, p2}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;)V

    .line 791
    sget-boolean p2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v4, 0x1

    if-eqz p2, :cond_5e

    invoke-static {p1}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x29e1972c

    new-array v6, v4, [Ljava/lang/Object;

    aput-object p1, v6, v1

    invoke-static {p2, v5, v1, v3, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 795
    :cond_5e
    iget-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 796
    invoke-virtual {p1, v2}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getTaskFragmentOrganizerUid(Landroid/window/ITaskFragmentOrganizer;)I

    move-result p1

    .line 797
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskFragment;->isFullyTrustedEmbedding(I)Z

    move-result p1

    xor-int/2addr p1, v4

    .line 799
    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 800
    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->getRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object p0

    if-eqz p1, :cond_98

    if-eqz p0, :cond_98

    .line 806
    new-instance p1, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda11;

    invoke-direct {p1, v0}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RemoteAnimationController;->setOnRemoteAnimationReady(Ljava/lang/Runnable;)V

    .line 811
    sget-boolean p0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz p0, :cond_98

    iget p0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    int-to-long p0, p0

    sget-object p2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v0, 0x7d327001

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v1

    invoke-static {p2, v0, v4, v3, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_98
    return v4
.end method

.method public registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/android/server/wm/AppTransitionController;->mRemoteAnimationDefinition:Landroid/view/RemoteAnimationDefinition;

    return-void
.end method

.method public final transitionGoodToGo(Landroid/util/ArraySet;Landroid/util/ArrayMap;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "+",
            "Lcom/android/server/wm/WindowContainer;",
            ">;",
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/WindowContainer;",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 1349
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v3, :cond_3e

    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v3

    int-to-long v9, v3

    iget-object v3, v0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v3, v3, Lcom/android/server/wm/WindowManagerService;->mDisplayFrozen:Z

    iget-object v11, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v11, v11, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v11}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v11

    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, 0x79ee0313

    const/16 v14, 0x3d

    new-array v15, v4, [Ljava/lang/Object;

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v15, v8

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v15, v7

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v15, v5

    invoke-static {v12, v13, v14, v6, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1352
    :cond_3e
    iget-object v3, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v3}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v3

    if-eqz v3, :cond_49

    return v7

    .line 1356
    :cond_49
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX_ENHANCED:Z

    if-eqz v3, :cond_56

    iget-object v3, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1357
    invoke-static {v3}, Lcom/android/server/wm/CustomLetterboxConfiguration;->isWaitingForEnhancedEnabled(Lcom/android/server/wm/DisplayContent;)Z

    move-result v3

    if-eqz v3, :cond_56

    return v8

    .line 1361
    :cond_56
    iget-object v3, v0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v8}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1362
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getRotationAnimation()Lcom/android/server/wm/ScreenRotationAnimation;

    move-result-object v3

    if-eqz v3, :cond_83

    .line 1371
    invoke-virtual {v3}, Lcom/android/server/wm/ScreenRotationAnimation;->isAnimating()Z

    move-result v3

    if-eqz v3, :cond_83

    iget-object v3, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1372
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayRotation;->needsUpdate()Z

    move-result v3

    if-eqz v3, :cond_83

    .line 1373
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_82

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, 0x2572bb7a

    invoke-static {v0, v1, v8, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_82
    return v8

    .line 1378
    :cond_83
    iget-object v3, v0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v3}, Lcom/android/server/wm/ChangeTransitionController;->isPreparing()Z

    move-result v3

    if-eqz v3, :cond_8e

    return v8

    :cond_8e
    move v3, v8

    .line 1382
    :goto_8f
    invoke-virtual/range {p1 .. p1}, Landroid/util/ArraySet;->size()I

    move-result v9

    if-ge v3, v9, :cond_137

    .line 1383
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/wm/WindowContainer;

    .line 1384
    invoke-static {v9}, Lcom/android/server/wm/AppTransitionController;->getAppFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v10

    if-nez v10, :cond_a4

    :cond_a1
    :goto_a1
    move v12, v4

    goto/16 :goto_131

    .line 1389
    :cond_a4
    iget-object v11, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v11, v11, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    if-ne v11, v1, :cond_b7

    iget-object v9, v9, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    .line 1391
    invoke-virtual {v9}, Lcom/android/server/wm/SurfaceFreezer;->isDismissChangeTransitMode()Z

    move-result v9

    if-nez v9, :cond_a1

    iget-boolean v9, v10, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v9, :cond_b7

    goto :goto_a1

    .line 1396
    :cond_b7
    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v9, :cond_fd

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-boolean v12, v10, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    iget-boolean v13, v10, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    iget-boolean v14, v10, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v15

    iget-object v6, v10, Lcom/android/server/wm/ActivityRecord;->mStartingWindow:Lcom/android/server/wm/WindowState;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v11, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v9, v4, v8

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v4, v7

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v4, v5

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v12, 0x3

    aput-object v9, v4, v12

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v13, 0x4

    aput-object v9, v4, v13

    const/4 v9, 0x5

    aput-object v6, v4, v9

    const v6, 0x11488da1

    const/16 v9, 0x3fc

    const/4 v14, 0x0

    invoke-static {v11, v6, v9, v14, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_ff

    :cond_fd
    move v12, v4

    const/4 v13, 0x4

    .line 1402
    :goto_ff
    iget-boolean v4, v10, Lcom/android/server/wm/ActivityRecord;->allDrawn:Z

    if-eqz v4, :cond_10b

    invoke-virtual {v10}, Lcom/android/server/wm/ActivityRecord;->isRelaunching()Z

    move-result v4

    if-nez v4, :cond_10b

    move v4, v7

    goto :goto_10c

    :cond_10b
    move v4, v8

    :goto_10c
    if-nez v4, :cond_117

    .line 1403
    iget-boolean v6, v10, Lcom/android/server/wm/ActivityRecord;->startingDisplayed:Z

    if-nez v6, :cond_117

    iget-boolean v6, v10, Lcom/android/server/wm/ActivityRecord;->startingMoved:Z

    if-nez v6, :cond_117

    return v8

    :cond_117
    if-eqz v4, :cond_121

    .line 1407
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v10, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_131

    .line 1410
    :cond_121
    iget-object v4, v10, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    instance-of v4, v4, Lcom/android/server/wm/SplashScreenStartingData;

    if-eqz v4, :cond_129

    move v11, v7

    goto :goto_12a

    :cond_129
    move v11, v13

    :goto_12a
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1409
    invoke-virtual {v2, v10, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_131
    add-int/lit8 v3, v3, 0x1

    move v4, v12

    const/4 v6, 0x0

    goto/16 :goto_8f

    .line 1417
    :cond_137
    iget-object v1, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v1}, Lcom/android/server/wm/AppTransition;->isFetchingAppTransitionsSpecs()Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 1418
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v0, :cond_14e

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x3c25e891

    const/4 v2, 0x0

    invoke-static {v0, v1, v8, v2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_14e
    return v8

    .line 1422
    :cond_14f
    iget-object v1, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v1}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v1

    if-nez v1, :cond_177

    .line 1423
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_APP_TRANSITIONS_enabled:Z

    if-eqz v1, :cond_176

    iget-object v0, v0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    invoke-virtual {v0}, Lcom/android/server/wm/UnknownAppVisibilityController;->getDebugMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_APP_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, -0x1698204e

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v0, v3, v8

    const/4 v0, 0x0

    invoke-static {v1, v2, v8, v0, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    :cond_176
    return v8

    .line 1429
    :cond_177
    iget-object v1, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    invoke-virtual {v1}, Lcom/android/server/wm/WallpaperController;->isWallpaperVisible()Z

    move-result v1

    if-eqz v1, :cond_189

    iget-object v0, v0, Lcom/android/server/wm/AppTransitionController;->mWallpaperControllerLocked:Lcom/android/server/wm/WallpaperController;

    .line 1430
    invoke-virtual {v0}, Lcom/android/server/wm/WallpaperController;->wallpaperTransitionReady()Z

    move-result v0

    if-eqz v0, :cond_188

    goto :goto_189

    :cond_188
    move v7, v8

    :cond_189
    :goto_189
    return v7
.end method

.method public final transitionGoodToGoForTaskFragments()Z
    .registers 5

    .line 1434
    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v0}, Lcom/android/server/wm/AppTransition;->isTimeout()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    return v1

    .line 1441
    :cond_c
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 1442
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1a
    if-ltz v2, :cond_30

    .line 1443
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 1445
    :cond_30
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_39
    if-ltz v2, :cond_4f

    .line 1446
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mClosingApps:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_39

    .line 1448
    :cond_4f
    iget-object v2, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_58
    if-ltz v2, :cond_6e

    .line 1449
    iget-object v3, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 1450
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-static {v3}, Lcom/android/server/wm/AppTransitionController;->findRootTaskFromContainer(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 1449
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_58

    .line 1459
    :cond_6e
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result p0

    sub-int/2addr p0, v1

    :goto_73
    if-ltz p0, :cond_8e

    .line 1460
    invoke-virtual {v0, p0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/Task;

    if-nez v2, :cond_7e

    goto :goto_8b

    .line 1466
    :cond_7e
    new-instance v3, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/wm/AppTransitionController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v2

    if-eqz v2, :cond_8b

    const/4 p0, 0x0

    return p0

    :cond_8b
    :goto_8b
    add-int/lit8 p0, p0, -0x1

    goto :goto_73

    :cond_8e
    return v1
.end method

.method public final transitionMayContainNonAppWindows(I)Z
    .registers 4

    .line 656
    invoke-static {p1}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->shouldStartNonAppWindowAnimationsForKeyguardExit(I)Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/AppTransitionController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 657
    invoke-static {v0, v1, p1}, Lcom/android/server/wm/NonAppWindowAnimationAdapter;->shouldAttachNavBarToApp(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;I)Z

    move-result p1

    if-nez p1, :cond_1b

    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 658
    invoke-static {p0}, Lcom/android/server/wm/WallpaperAnimationAdapter;->shouldStartWallpaperAnimation(Lcom/android/server/wm/DisplayContent;)Z

    move-result p0

    if-eqz p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public final unfreezeEmbeddedChangingWindows()V
    .registers 4

    .line 642
    iget-object p0, p0, Lcom/android/server/wm/AppTransitionController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    .line 643
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_24

    .line 644
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 645
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 646
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/wm/SurfaceFreezer;->unfreeze(Landroid/view/SurfaceControl$Transaction;)V

    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    :cond_24
    return-void
.end method
