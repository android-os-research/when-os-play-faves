.class public Lcom/android/server/wm/EnsureActivitiesVisibleHelper;
.super Ljava/lang/Object;
.source "EnsureActivitiesVisibleHelper.java"


# instance fields
.field public mAboveTop:Z

.field public mBehindFullyOccludedContainer:Z

.field public mConfigChanges:I

.field public mContainerShouldBeVisible:Z

.field public mNotifyClients:Z

.field public mPreserveWindows:Z

.field public mStarting:Lcom/android/server/wm/ActivityRecord;

.field public final mTaskFragment:Lcom/android/server/wm/TaskFragment;

.field public mTop:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public static synthetic $r8$lambda$Q9RVOmzsLa7MKS_Lh2LZ5Am_JMc(Lcom/android/server/wm/EnsureActivitiesVisibleHelper;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->lambda$process$1(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jPDCSxML4DZ5p_BIe-Gmt7fFgWE(Lcom/android/server/wm/EnsureActivitiesVisibleHelper;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->setActivityVisibilityState(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$yma9EEkdU7iCBxE3IZwtaAAAaiI(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->lambda$process$0(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-void
.end method

.method public static synthetic lambda$process$0(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 122
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isInActivityGroup()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$process$1(Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 125
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->setActivityVisibilityStateInSplitActivityMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;)V

    return-void
.end method


# virtual methods
.method public isBehindFullscreenActivity()Z
    .registers 1

    .line 354
    iget-boolean p0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    return p0
.end method

.method public final isBehindFullscreenActivityChanged(Lcom/android/internal/util/function/TriConsumer;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/EnsureActivitiesVisibleHelper;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/ActivityRecord;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/server/wm/ActivityRecord;",
            "Lcom/android/server/wm/ActivityRecord;",
            "Z",
            "Lcom/android/server/wm/EnsureActivitiesVisibleHelper;",
            ")Z"
        }
    .end annotation

    .line 344
    iget-boolean p0, p5, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 345
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p4

    invoke-interface {p1, p2, p3, p4}, Lcom/android/internal/util/function/TriConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 346
    iget-boolean p1, p5, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    if-eq p0, p1, :cond_f

    const/4 p0, 0x1

    goto :goto_10

    :cond_f
    const/4 p0, 0x0

    :goto_10
    return p0
.end method

.method public final makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/ActivityRecord;)V
    .registers 8

    if-nez p3, :cond_f

    .line 296
    iget-boolean p3, p5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz p3, :cond_f

    sget-object p3, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p5, p3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result p3

    if-nez p3, :cond_f

    return-void

    .line 302
    :cond_f
    sget-boolean p3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    const-string v0, "ActivityTaskManager"

    if-eqz p3, :cond_29

    .line 303
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start and freeze screen for "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_29
    if-eq p5, p1, :cond_2e

    .line 306
    invoke-virtual {p5, p2}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    .line 308
    :cond_2e
    iget-boolean p2, p5, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_37

    iget-boolean p2, p5, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-eqz p2, :cond_52

    .line 309
    :cond_37
    sget-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz p2, :cond_4f

    .line 310
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting and making visible: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    :cond_4f
    invoke-virtual {p5, p3}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    :cond_52
    if-eq p5, p1, :cond_5b

    .line 315
    iget-object p0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object p0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p5, p4, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    :cond_5b
    return-void
.end method

.method public process(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 14

    .line 97
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->reset(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 99
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_2b

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ensureActivitiesVisible behind "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " configChanges=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    .line 100
    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_2b
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_42

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V

    .line 111
    :cond_42
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_60

    iget-boolean v0, v0, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 112
    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_60

    if-eqz p1, :cond_5e

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 113
    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_60

    :cond_5e
    move v0, v2

    goto :goto_61

    :cond_60
    move v0, v1

    .line 116
    :goto_61
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz v3, :cond_aa

    iget-object v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_aa

    iget-object v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 117
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isInSplitActivityMode()Z

    move-result v3

    if-eqz v3, :cond_aa

    .line 118
    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getActivityGroups()Lcom/android/server/wm/ActivityRecordGroups;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecordGroups;->getEnsureActivitiesVisibleHelpers()Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;

    move-result-object v1

    .line 121
    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->reset(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 122
    iget-object p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    new-instance p3, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p2, p3, p1, v2, v2}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    .line 124
    iget-object p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p2

    new-instance p3, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda2;

    invoke-direct {p3, p0, p1, v0, v1}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/EnsureActivitiesVisibleHelper;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;)V

    invoke-virtual {p2, p3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void

    :cond_aa
    const/4 v3, 0x0

    .line 133
    iget-object v4, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v4, v4, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    sub-int/2addr v4, v2

    :goto_b4
    if-ltz v4, :cond_13d

    .line 134
    iget-object v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v5, v5, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowContainer;

    .line 135
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v6

    if-eqz v6, :cond_12c

    .line 137
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v7

    if-eqz v7, :cond_12c

    .line 138
    invoke-virtual {v6, p1, p2, p3, p4}, Lcom/android/server/wm/TaskFragment;->updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 142
    iget-boolean v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 143
    invoke-virtual {v6}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e9

    .line 144
    invoke-virtual {v6, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v7

    if-nez v7, :cond_e9

    move v7, v2

    goto :goto_ea

    :cond_e9
    move v7, v1

    :goto_ea
    or-int/2addr v5, v7

    iput-boolean v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 145
    iget-boolean v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    if-eqz v5, :cond_fb

    iget-object v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-ne v5, v6, :cond_fb

    .line 146
    iput-boolean v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 149
    :cond_fb
    iget-boolean v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    if-eqz v5, :cond_100

    goto :goto_139

    :cond_100
    if-eqz v3, :cond_11b

    .line 153
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11b

    .line 155
    invoke-virtual {v6, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-nez v5, :cond_139

    .line 156
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v5

    if-nez v5, :cond_139

    .line 159
    iput-boolean v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    goto :goto_139

    .line 164
    :cond_11b
    invoke-virtual {v6}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_139

    if-nez v3, :cond_128

    .line 167
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 169
    :cond_128
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_139

    .line 171
    :cond_12c
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_139

    .line 172
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    invoke-virtual {p0, v5, p1, v0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->setActivityVisibilityState(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_139
    :goto_139
    add-int/lit8 v4, v4, -0x1

    goto/16 :goto_b4

    :cond_13d
    return-void
.end method

.method public reset(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7

    .line 62
    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    .line 64
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->MW_SPLIT_ACTIVITY:Z

    if-eqz p1, :cond_d

    .line 65
    invoke-virtual {p0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    goto :goto_15

    .line 68
    :cond_d
    iget-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    .line 72
    :goto_15
    iget-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    const/4 v0, 0x1

    if-eqz p1, :cond_1c

    move p1, v0

    goto :goto_1d

    :cond_1c
    const/4 p1, 0x0

    :goto_1d
    iput-boolean p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 73
    iget-object p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    xor-int/2addr p1, v0

    .line 74
    iput-boolean p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 75
    iput p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    .line 76
    iput-boolean p3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mPreserveWindows:Z

    .line 77
    iput-boolean p4, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    return-void
.end method

.method public final setActivityVisibilityState(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 15

    .line 179
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTop:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_8

    move v6, v1

    goto :goto_9

    :cond_8
    move v6, v2

    .line 180
    :goto_9
    iget-boolean v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    if-eqz v3, :cond_10

    if-nez v6, :cond_10

    return-void

    .line 183
    :cond_10
    iput-boolean v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mAboveTop:Z

    .line 186
    sget-boolean v3, Lcom/samsung/android/rune/CoreRune;->FW_CUSTOM_LETTERBOX:Z

    if-eqz v3, :cond_32

    iget-boolean v3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    if-nez v3, :cond_32

    if-eqz v0, :cond_32

    .line 187
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v3, :cond_32

    .line 188
    invoke-static {p1}, Lcom/android/server/wm/CustomLetterboxConfiguration;->hasWallpaperBackgroundForLetterbox(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 193
    iput-boolean v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    .line 197
    :cond_32
    iget-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    if-nez v0, :cond_49

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 200
    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mPopOverState:Lcom/android/server/wm/PopOverState;

    .line 201
    invoke-virtual {v0}, Lcom/android/server/wm/PopOverState;->isBelowAnotherOpaquePopOver()Z

    move-result v0

    if-eqz v0, :cond_47

    goto :goto_49

    :cond_47
    move v0, v2

    goto :goto_4a

    :cond_49
    :goto_49
    move v0, v1

    .line 197
    :goto_4a
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->updateVisibilityIgnoringKeyguard(Z)V

    .line 203
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisibleUnchecked()Z

    move-result v0

    .line 206
    iget-boolean v3, p1, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    const-string v9, "ActivityTaskManager"

    if-eqz v3, :cond_8f

    .line 207
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v3

    if-eqz v3, :cond_8c

    .line 209
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v3, :cond_89

    .line 210
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fullscreen: at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " containerVisible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " behindFullyOccluded="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_89
    iput-boolean v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    goto :goto_9a

    .line 216
    :cond_8c
    iput-boolean v2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    goto :goto_9a

    .line 218
    :cond_8f
    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->INITIALIZING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 219
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->cancelInitializing()V

    :cond_9a
    :goto_9a
    const-string v10, " containerShouldBeVisible="

    const-string v3, " state="

    const-string v4, " finishing="

    if-nez v0, :cond_10e

    .line 222
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    iget-object v0, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 223
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isOccluding()Z

    move-result v0

    if-eqz v0, :cond_c3

    if-eqz v6, :cond_c3

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 224
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_c3

    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 225
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v0

    if-eqz v0, :cond_c3

    goto :goto_10e

    .line 264
    :cond_c3
    sget-boolean p2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz p2, :cond_109

    .line 265
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Make invisible? "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " behindFullyOccludedContainer="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " mLaunchTaskBehind="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p1, Lcom/android/server/wm/WindowContainer;->mLaunchTaskBehind:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 265
    invoke-static {v9, p2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_109
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->makeInvisible()V

    goto/16 :goto_1a8

    .line 226
    :cond_10e
    :goto_10e
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_113

    return-void

    .line 229
    :cond_113
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz v0, :cond_13d

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Make visible? "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 230
    invoke-static {v9, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_13d
    iget-object v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    if-eq p1, v0, :cond_14a

    iget-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v0, :cond_14a

    .line 236
    iget-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mPreserveWindows:Z

    invoke-virtual {p1, v2, v0, v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZZ)Z

    .line 240
    :cond_14a
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_161

    .line 241
    iget-object v4, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    iget v5, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    if-eqz p3, :cond_15a

    if-eqz v6, :cond_15a

    move v7, v1

    goto :goto_15b

    :cond_15a
    move v7, v2

    :goto_15b
    move-object v3, p0

    move-object v8, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->makeVisibleAndRestartIfNeeded(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/ActivityRecord;)V

    goto :goto_1a1

    .line 243
    :cond_161
    iget-boolean p3, p1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz p3, :cond_19a

    .line 245
    sget-boolean p3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz p3, :cond_17d

    .line 246
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping: already visible at "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v9, p3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_17d
    iget-boolean p3, p1, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    if-eqz p3, :cond_18d

    iget-boolean v0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz v0, :cond_18d

    if-eqz p3, :cond_188

    const/4 p2, 0x0

    .line 250
    :cond_188
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    .line 251
    iput-boolean v2, p1, Lcom/android/server/wm/ActivityRecord;->mClientVisibilityDeferred:Z

    .line 254
    :cond_18d
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->handleAlreadyVisible()V

    .line 255
    iget-boolean p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    if-eqz p2, :cond_1a1

    .line 256
    iget-object p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->makeActiveIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z

    goto :goto_1a1

    .line 259
    :cond_19a
    iget-object p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mStarting:Lcom/android/server/wm/ActivityRecord;

    iget-boolean p3, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mNotifyClients:Z

    invoke-virtual {p1, p2, p3}, Lcom/android/server/wm/ActivityRecord;->makeVisibleIfNeeded(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 262
    :cond_1a1
    :goto_1a1
    iget p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    iget p3, p1, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    or-int/2addr p2, p3

    iput p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mConfigChanges:I

    .line 274
    :goto_1a8
    iget-boolean p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    if-nez p2, :cond_1e8

    iget-object p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p2

    if-eqz p2, :cond_1e8

    .line 275
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result p1

    if-eqz p1, :cond_1e8

    .line 276
    sget-boolean p1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_VISIBILITY:Z

    if-eqz p1, :cond_1e6

    .line 277
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Home task: at "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mContainerShouldBeVisible:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " behindOccludedParentContainer="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v9, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1e6
    iput-boolean v1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    :cond_1e8
    return-void
.end method

.method public setActivityVisibilityStateInSplitActivityMode(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;)V
    .registers 13

    .line 323
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isInActivityGroup()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 325
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getActivityGroup()Lcom/android/server/wm/ActivityRecordGroup;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecordGroup;->zone()I

    move-result v1

    invoke-virtual {p4, v1}, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->get(I)Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    move-result-object v1

    move-object v7, v1

    goto :goto_15

    :cond_14
    move-object v7, p0

    .line 327
    :goto_15
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v7}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/EnsureActivitiesVisibleHelper;)V

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->isBehindFullscreenActivityChanged(Lcom/android/internal/util/function/TriConsumer;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZLcom/android/server/wm/EnsureActivitiesVisibleHelper;)Z

    move-result p1

    if-nez p1, :cond_28

    return-void

    :cond_28
    if-eqz v0, :cond_36

    .line 332
    iget-boolean p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    if-nez p1, :cond_36

    .line 333
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->isOccluded()Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    goto :goto_40

    :cond_36
    if-nez v0, :cond_40

    .line 334
    iget-boolean p0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    if-eqz p0, :cond_40

    const/4 p0, 0x1

    .line 335
    invoke-virtual {p4, p0}, Lcom/android/server/wm/ActivityRecordGroups$EnsureActivitiesVisibleHelpers;->setBehindFullscreenActivity(Z)V

    :cond_40
    :goto_40
    return-void
.end method

.method public setBehindFullscreenActivity(Z)V
    .registers 2

    .line 350
    iput-boolean p1, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mBehindFullyOccludedContainer:Z

    return-void
.end method

.method public topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 1

    .line 358
    iget-object p0, p0, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->mTaskFragment:Lcom/android/server/wm/TaskFragment;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method
