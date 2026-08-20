.class public Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;
.super Ljava/lang/Object;
.source "DisplayWindowPolicyControllerHelper.java"


# instance fields
.field public final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field public mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

.field public mRunningUid:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;


# direct methods
.method public static synthetic $r8$lambda$wYka77LoUwyA8yEVzF4SVN_9P1c([ZLandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->lambda$onRunningActivityChanged$0([ZLandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .registers 3

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    .line 51
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mRunningUid:Landroid/util/ArraySet;

    .line 54
    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 55
    iget-object v0, p1, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    iget p1, p1, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    .line 56
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getDisplayWindowPolicyController(I)Landroid/window/DisplayWindowPolicyController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    return-void
.end method

.method public static synthetic lambda$onRunningActivityChanged$0([ZLandroid/util/ArraySet;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5

    .line 129
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_16

    const/4 v0, 0x0

    .line 130
    aget-boolean v1, p0, v0

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p1

    or-int/2addr p1, v1

    aput-boolean p1, p0, v0

    :cond_16
    return-void
.end method


# virtual methods
.method public canActivityBeLaunched(Landroid/content/pm/ActivityInfo;IIZ)Z
    .registers 5
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    .line 83
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 86
    :cond_6
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/window/DisplayWindowPolicyController;->canActivityBeLaunched(Landroid/content/pm/ActivityInfo;IIZ)Z

    move-result p0

    return p0
.end method

.method public canContainActivities(Ljava/util/List;I)Z
    .registers 3
    .param p2    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ActivityInfo;",
            ">;I)Z"
        }
    .end annotation

    .line 71
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 74
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroid/window/DisplayWindowPolicyController;->canContainActivities(Ljava/util/List;I)Z

    move-result p0

    return p0
.end method

.method public final canShowTasksInRecents()Z
    .registers 1

    .line 159
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 162
    :cond_6
    invoke-virtual {p0}, Landroid/window/DisplayWindowPolicyController;->canShowTasksInRecents()Z

    move-result p0

    return p0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-eqz v0, :cond_c

    .line 167
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 168
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    invoke-virtual {p0, p1, p2}, Landroid/window/DisplayWindowPolicyController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    :cond_c
    return-void
.end method

.method public hasController()Z
    .registers 1

    .line 63
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public final isWindowingModeSupported(I)Z
    .registers 2
    .param p1    # I
        .annotation build Landroid/app/WindowConfiguration$WindowingMode;
        .end annotation
    .end param

    .line 149
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez p0, :cond_6

    const/4 p0, 0x1

    return p0

    .line 152
    :cond_6
    invoke-virtual {p0, p1}, Landroid/window/DisplayWindowPolicyController;->isWindowingModeSupported(I)Z

    move-result p0

    return p0
.end method

.method public keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;II)Z
    .registers 6

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 99
    :cond_6
    invoke-virtual {v0, p2, p3}, Landroid/window/DisplayWindowPolicyController;->isInterestedWindowFlags(II)Z

    move-result v0

    if-nez v0, :cond_d

    return v1

    .line 104
    :cond_d
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    invoke-virtual {p0, p1, p2, p3}, Landroid/window/DisplayWindowPolicyController;->keepActivityOnWindowFlagsChanged(Landroid/content/pm/ActivityInfo;II)Z

    move-result p0

    return p0
.end method

.method public onRunningActivityChanged()V
    .registers 6

    .line 110
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez v0, :cond_5

    return-void

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowContainer;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 117
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v3, :cond_2d

    .line 118
    iput-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mTopRunningActivity:Lcom/android/server/wm/ActivityRecord;

    .line 119
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    if-nez v0, :cond_19

    const/4 v4, 0x0

    goto :goto_1f

    .line 120
    :cond_19
    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    :goto_1f
    if-nez v0, :cond_24

    const/16 v0, -0x2710

    goto :goto_2a

    .line 122
    :cond_24
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 119
    :goto_2a
    invoke-virtual {v3, v4, v0}, Landroid/window/DisplayWindowPolicyController;->onTopActivityChanged(Landroid/content/ComponentName;I)V

    :cond_2d
    new-array v0, v2, [Z

    aput-boolean v1, v0, v1

    .line 127
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 128
    iget-object v3, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    new-instance v4, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v2}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper$$ExternalSyntheticLambda0;-><init>([ZLandroid/util/ArraySet;)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    aget-boolean v0, v0, v1

    if-nez v0, :cond_50

    .line 138
    iget-object v0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mRunningUid:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-eq v0, v1, :cond_57

    .line 139
    :cond_50
    iput-object v2, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mRunningUid:Landroid/util/ArraySet;

    .line 140
    iget-object p0, p0, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->mDisplayWindowPolicyController:Landroid/window/DisplayWindowPolicyController;

    invoke-virtual {p0, v2}, Landroid/window/DisplayWindowPolicyController;->onRunningAppsChanged(Landroid/util/ArraySet;)V

    :cond_57
    return-void
.end method
