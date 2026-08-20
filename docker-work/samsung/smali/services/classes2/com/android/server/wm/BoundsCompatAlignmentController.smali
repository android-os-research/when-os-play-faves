.class public Lcom/android/server/wm/BoundsCompatAlignmentController;
.super Ljava/lang/Object;
.source "BoundsCompatAlignmentController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsCompatAlignmentController$LazyHolder;
    }
.end annotation


# static fields
.field public static final COMMAND_ALIGNMENT_ENABLED:Ljava/lang/String; = "-setBoundsCompatAlignment"

.field public static final COMMAND_ANIMATION_ENABLED:Ljava/lang/String; = "-setBoundsCompatAlignmentAnimation"

.field public static final TAG:Ljava/lang/String; = "BoundsCompatAlignmentController"


# instance fields
.field public mAnimationEnabled:Z

.field public mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public mGlobalAlignment:Lcom/android/server/wm/BoundsCompatAlignment;

.field public final mRecomputeConfiguration:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$0UurxXHfymD6RiZUES5IUV_qbQo(Lcom/android/server/wm/BoundsCompatAlignmentController;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/wm/BoundsCompatAlignmentController;->recomputeConfiguration()V

    return-void
.end method

.method public static synthetic $r8$lambda$ViNYgroVqItdKX_adc0kIsKbVis(Lcom/android/server/wm/BoundsCompatAlignmentController;Landroid/graphics/Rect;Ljava/util/List;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/BoundsCompatAlignmentController;->lambda$recomputeConfiguration$1(Landroid/graphics/Rect;Ljava/util/List;Lcom/android/server/wm/DisplayContent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hyHQUAgH6g8KE_qR1zi32eZLudc(Landroid/graphics/Rect;Ljava/util/List;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/BoundsCompatAlignmentController;->lambda$recomputeConfiguration$0(Landroid/graphics/Rect;Ljava/util/List;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/BoundsCompatAlignmentController;)V

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mRecomputeConfiguration:Ljava/lang/Runnable;

    .line 165
    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignment;->getCenterAlignment()Lcom/android/server/wm/BoundsCompatAlignment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mGlobalAlignment:Lcom/android/server/wm/BoundsCompatAlignment;

    .line 166
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_ANIMATION:Z

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAnimationEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/BoundsCompatAlignmentController-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/BoundsCompatAlignmentController;-><init>()V

    return-void
.end method

.method public static dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    .line 120
    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getController()Lcom/android/server/wm/BoundsCompatAlignmentController;

    move-result-object v0

    .line 121
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 122
    sget-object p1, Lcom/android/server/wm/BoundsCompatAlignmentController;->TAG:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ":[ mLast"

    .line 123
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 124
    iget-object p1, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mGlobalAlignment:Lcom/android/server/wm/BoundsCompatAlignment;

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string p1, "]"

    .line 125
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, ", FeatureEnabled="

    .line 126
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 127
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_CONTROL:Z

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, ", mAnimationEnabled="

    .line 128
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    iget-boolean p1, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAnimationEnabled:Z

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 130
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public static executeShellCommandLocked(Ljava/lang/String;[Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 8

    .line 135
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, -0x1

    .line 139
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x1dee2db3

    const/4 v4, 0x1

    if-eq v2, v3, :cond_21

    const v3, 0x23f4ef7

    if-eq v2, v3, :cond_17

    goto :goto_2a

    :cond_17
    const-string v2, "-setBoundsCompatAlignment"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2a

    move v0, v1

    goto :goto_2a

    :cond_21
    const-string v2, "-setBoundsCompatAlignmentAnimation"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_4e

    if-eqz p0, :cond_2a

    move v0, v4

    :cond_2a
    :goto_2a
    const-string p0, ""

    if-eqz v0, :cond_41

    if-eq v0, v4, :cond_31

    goto :goto_67

    .line 146
    :cond_31
    :try_start_31
    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getController()Lcom/android/server/wm/BoundsCompatAlignmentController;

    move-result-object v0

    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAnimationEnabled:Z

    .line 147
    invoke-static {p2, p0}, Lcom/android/server/wm/BoundsCompatAlignmentController;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return v4

    .line 141
    :cond_41
    aget-object p1, p1, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Lcom/android/server/wm/BoundsCompatAlignmentController;->setAlignmentLocked(I)V

    .line 142
    invoke-static {p2, p0}, Lcom/android/server/wm/BoundsCompatAlignmentController;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_31 .. :try_end_4d} :catchall_4e

    return v4

    :catchall_4e
    move-exception p0

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_67
    return v1
.end method

.method public static getAlignmentLocked()I
    .registers 1

    .line 112
    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getGlobalBoundsCompatAlignmentLocked()Lcom/android/server/wm/BoundsCompatAlignment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsCompatAlignment;->getAlignment()I

    move-result v0

    return v0
.end method

.method public static getController()Lcom/android/server/wm/BoundsCompatAlignmentController;
    .registers 1

    .line 58
    sget-object v0, Lcom/android/server/wm/BoundsCompatAlignmentController$LazyHolder;->sController:Lcom/android/server/wm/BoundsCompatAlignmentController;

    return-object v0
.end method

.method public static getGlobalBoundsCompatAlignmentLocked()Lcom/android/server/wm/BoundsCompatAlignment;
    .registers 1

    .line 116
    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getController()Lcom/android/server/wm/BoundsCompatAlignmentController;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mGlobalAlignment:Lcom/android/server/wm/BoundsCompatAlignment;

    return-object v0
.end method

.method public static synthetic lambda$recomputeConfiguration$0(Landroid/graphics/Rect;Ljava/util/List;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 185
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/BoundsCompatRecord;->getController()Lcom/android/server/wm/BoundsCompatController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/BoundsCompatController;->isBoundsCompatEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    return-void

    .line 188
    :cond_d
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 189
    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 190
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->recomputeConfiguration()V

    .line 191
    invoke-virtual {p0, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    .line 192
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_ANIMATION:Z

    if-eqz p0, :cond_2c

    .line 193
    iget-object p0, p2, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mShouldPlayMoveAnimation:Z

    .line 195
    :cond_2c
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2f
    return-void
.end method

.method private synthetic lambda$recomputeConfiguration$1(Landroid/graphics/Rect;Ljava/util/List;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 181
    invoke-virtual {p0, p3}, Lcom/android/server/wm/BoundsCompatAlignmentController;->supportsDisplay(Lcom/android/server/wm/DisplayContent;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    .line 184
    :cond_7
    new-instance p0, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda2;-><init>(Landroid/graphics/Rect;Ljava/util/List;)V

    invoke-virtual {p3, p0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public static scheduleRecomputeConfigurationLocked()V
    .registers 3

    .line 103
    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getController()Lcom/android/server/wm/BoundsCompatAlignmentController;

    move-result-object v0

    .line 104
    iget-object v1, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v1, :cond_1c

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v2, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mRecomputeConfiguration:Ljava/lang/Runnable;

    .line 105
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_1c

    .line 108
    :cond_13
    iget-object v1, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v0, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mRecomputeConfiguration:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1c
    :goto_1c
    return-void
.end method

.method public static setAlignmentLocked(I)V
    .registers 5

    .line 66
    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getController()Lcom/android/server/wm/BoundsCompatAlignmentController;

    move-result-object v0

    .line 67
    iget-object v1, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mGlobalAlignment:Lcom/android/server/wm/BoundsCompatAlignment;

    invoke-virtual {v1}, Lcom/android/server/wm/BoundsCompatAlignment;->getAlignment()I

    move-result v1

    if-ne p0, v1, :cond_d

    return-void

    .line 71
    :cond_d
    sget-boolean v1, Lcom/samsung/android/rune/CoreRune;->FW_SA_LOGGING:Z

    if-eqz v1, :cond_43

    .line 73
    iget-object v1, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mGlobalAlignment:Lcom/android/server/wm/BoundsCompatAlignment;

    invoke-virtual {v1}, Lcom/android/server/wm/BoundsCompatAlignment;->getAlignment()I

    move-result v1

    and-int/lit8 v2, v1, 0xf

    and-int/lit8 v3, p0, 0xf

    if-ne v2, v3, :cond_2f

    and-int/lit8 v2, p0, 0x50

    const/16 v3, 0x50

    if-eq v2, v3, :cond_2c

    const/16 v2, 0x30

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_29

    goto :goto_2c

    :cond_29
    const-string v1, "519303"

    goto :goto_3e

    :cond_2c
    :goto_2c
    const-string v1, "519304"

    goto :goto_3e

    :cond_2f
    and-int/lit8 v2, p0, 0x5

    const/4 v3, 0x5

    if-eq v2, v3, :cond_3c

    const/4 v2, 0x3

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_39

    goto :goto_3c

    :cond_39
    const-string v1, "519301"

    goto :goto_3e

    :cond_3c
    :goto_3c
    const-string v1, "519302"

    :goto_3e
    const-string v2, "Tapped"

    .line 95
    invoke-static {v1, v2}, Lcom/samsung/android/core/CoreSaLogger;->logForBasic(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :cond_43
    new-instance v1, Lcom/android/server/wm/BoundsCompatAlignment;

    invoke-direct {v1, p0}, Lcom/android/server/wm/BoundsCompatAlignment;-><init>(I)V

    iput-object v1, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mGlobalAlignment:Lcom/android/server/wm/BoundsCompatAlignment;

    .line 99
    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->scheduleRecomputeConfigurationLocked()V

    return-void
.end method

.method public static setAtmService(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    .line 62
    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getController()Lcom/android/server/wm/BoundsCompatAlignmentController;

    move-result-object v0

    iput-object p0, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method

.method public static shouldPlayMoveAnimation(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 158
    invoke-static {}, Lcom/android/server/wm/BoundsCompatAlignmentController;->getController()Lcom/android/server/wm/BoundsCompatAlignmentController;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAnimationEnabled:Z

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_14

    iget-object p0, p0, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    iget-boolean p0, p0, Lcom/android/server/wm/BoundsCompatRecord;->mShouldPlayMoveAnimation:Z

    if-eqz p0, :cond_14

    const/4 p0, 0x1

    goto :goto_15

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method


# virtual methods
.method public final recomputeConfiguration()V
    .registers 6

    .line 176
    iget-object v0, p0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 177
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 178
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 180
    iget-object v3, p0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/server/wm/BoundsCompatAlignmentController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BoundsCompatAlignmentController;Landroid/graphics/Rect;Ljava/util/List;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 199
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 200
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_5 .. :try_end_25} :catchall_51

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 202
    :cond_29
    :try_start_29
    iget-object p0, p0, Lcom/android/server/wm/BoundsCompatAlignmentController;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 203
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->FW_BOUNDS_COMPAT_ALIGNMENT_ANIMATION:Z

    if-eqz p0, :cond_4c

    .line 204
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 205
    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mCompatRecord:Lcom/android/server/wm/BoundsCompatRecord;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/server/wm/BoundsCompatRecord;->mShouldPlayMoveAnimation:Z

    goto :goto_3a

    .line 208
    :cond_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_29 .. :try_end_4d} :catchall_51

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_51
    move-exception p0

    :try_start_52
    monitor-exit v0
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final supportsDisplay(Lcom/android/server/wm/DisplayContent;)Z
    .registers 2

    .line 172
    iget-boolean p0, p1, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    return p0
.end method
