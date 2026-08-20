.class public Lcom/android/server/wm/WindowOrganizerController;
.super Landroid/window/IWindowOrganizerController$Stub;
.source "WindowOrganizerController.java"

# interfaces
.implements Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/WindowOrganizerController$CallerInfo;
    }
.end annotation


# static fields
.field public static final CONTROLLABLE_CONFIGS:I = 0x20002c00

.field public static final CONTROLLABLE_WINDOW_CONFIGS:I = 0xa00003

.field public static final TAG:Ljava/lang/String; = "WindowOrganizerController"

.field public static final TRANSACT_EFFECTS_CLIENT_CONFIG:I = 0x1

.field public static final TRANSACT_EFFECTS_LIFECYCLE:I = 0x2


# instance fields
.field public final mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

.field public mEnterSplitWithSingleStage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public final mLaunchTaskFragments:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/wm/TaskFragment;",
            ">;"
        }
    .end annotation
.end field

.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field public final mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

.field public final mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/window/IWindowContainerTransactionCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mTransitionController:Lcom/android/server/wm/TransitionController;


# direct methods
.method public static synthetic $r8$lambda$2Cp_q9PZ3Ua-sp0TWyXIose4EoQ(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyHierarchyOp$7(Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4q6sjbckrRinauxrKkIdENhzwF8(Lcom/android/server/wm/WindowOrganizerController;[Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->lambda$waitAsyncStart$9([Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9_AbPDs6IF8TKewcYbVmH2AXr80(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)I
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyHierarchyOp$6(Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$CBJYK7b3jOzxs-aJNHMihTYpGaM(Landroid/window/WindowContainerTransaction$Change;[ILjava/lang/Object;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyDisplayAreaChanges$4(Landroid/window/WindowContainerTransaction$Change;[ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DuM4cb78d0hetIEryNu-YK1z9aQ(Lcom/android/server/wm/Task;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowOrganizerController;->lambda$reparentChildrenTasksHierarchyOp$10(Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$InvmSupBHxvrr-D16YJMgF1XZ58(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)Z
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/wm/WindowOrganizerController;->lambda$reparentChildrenTasksHierarchyOp$11(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ZaE-hMxnKBkiigVl54rOqX93YTc(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applySyncTransaction$0(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    return-void
.end method

.method public static synthetic $r8$lambda$apNYp490xI8fsqJWnx2ccPxgGC4(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowOrganizerController;->lambda$startTransition$3(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$bCQ4HxBKIVyeHw1WgGE61w7JDT0(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->lambda$startTransition$2(Lcom/android/server/wm/Transition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dUDeTYkQbPp3qznNKLrJ-vKnNzQ(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applyHierarchyOp$5(Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$g0HCzqhnZmDUAL3aVac0GN-o_Ug(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->lambda$reparentTaskFragment$12(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$lwTGdnp0GzcC6oiZ-3C9g3MTqFM(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->lambda$applySyncTransaction$1(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 165
    invoke-direct {p0}, Landroid/window/IWindowOrganizerController$Stub;-><init>()V

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 158
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    .line 162
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    .line 166
    iput-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 167
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 168
    new-instance v0, Lcom/android/server/wm/TaskOrganizerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 169
    new-instance v0, Lcom/android/server/wm/DisplayAreaOrganizerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/DisplayAreaOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    .line 170
    new-instance v0, Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskFragmentOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    return-void
.end method

.method public static configurationsAreEqualForOrganizer(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 1584
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    const/high16 v2, 0x20000000

    and-int/2addr v2, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_18

    .line 1586
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0, p1, v3}, Landroid/app/WindowConfiguration;->diff(Landroid/app/WindowConfiguration;Z)J

    move-result-wide p0

    long-to-int p0, p0

    goto :goto_19

    :cond_18
    move p0, v0

    :goto_19
    const p1, 0xa00003

    and-int/2addr p0, p1

    if-nez p0, :cond_23

    const p0, -0x20000001

    and-int/2addr v1, p0

    :cond_23
    const p0, 0x20002c00

    and-int/2addr p0, v1

    if-nez p0, :cond_2a

    move v0, v3

    :cond_2a
    return v0
.end method

.method public static synthetic lambda$applyDisplayAreaChanges$4(Landroid/window/WindowContainerTransaction$Change;[ILjava/lang/Object;)V
    .registers 4

    .line 788
    check-cast p2, Lcom/android/server/wm/Task;

    .line 789
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_1b

    .line 790
    invoke-virtual {p0}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result p0

    const/4 v0, 0x2

    invoke-virtual {p2, v0, p0}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    move-result p0

    if-eqz p0, :cond_1b

    const/4 p0, 0x0

    .line 791
    aget p2, p1, p0

    or-int/2addr p2, v0

    aput p2, p1, p0

    :cond_1b
    return-void
.end method

.method public static synthetic lambda$applyHierarchyOp$5(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 1

    .line 859
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$applyHierarchyOp$6(Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)I
    .registers 5

    .line 1097
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v0, p1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget p1, p1, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$applyHierarchyOp$7(Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)I
    .registers 16

    .line 1120
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1121
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    .line 1122
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getWhitelistToken()Landroid/os/IBinder;

    move-result-object v2

    .line 1123
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v4

    iget v9, p4, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v10, p4, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p2

    move-object v8, p3

    .line 1120
    invoke-virtual/range {v0 .. v10}, Landroid/app/ActivityManagerInternal;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;II)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$applyHierarchyOp$8(Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;)I
    .registers 13

    .line 1127
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1128
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getTarget()Landroid/content/IIntentSender;

    move-result-object v1

    .line 1129
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->getWhitelistToken()Landroid/os/IBinder;

    move-result-object v2

    .line 1130
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v5, p2

    move-object v8, p3

    .line 1127
    invoke-virtual/range {v0 .. v8}, Landroid/app/ActivityManagerInternal;->sendIntentSender(Landroid/content/IIntentSender;Landroid/os/IBinder;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method private synthetic lambda$applySyncTransaction$0(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .registers 2

    .line 273
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    return-void
.end method

.method private synthetic lambda$applySyncTransaction$1(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .registers 5

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 276
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    return-void
.end method

.method public static synthetic lambda$reparentChildrenTasksHierarchyOp$10(Lcom/android/server/wm/Task;)Z
    .registers 3

    .line 1356
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_12

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-nez v0, :cond_12

    .line 1357
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return v1
.end method

.method public static synthetic lambda$reparentChildrenTasksHierarchyOp$11(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)Z
    .registers 9

    .line 1377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Processing task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowOrganizerController"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    iget-boolean v0, p5, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    const/4 v2, 0x0

    if-nez v0, :cond_78

    invoke-virtual {p5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eq v0, p0, :cond_22

    goto :goto_78

    :cond_22
    if-eqz p1, :cond_40

    .line 1384
    invoke-virtual {p5, p2}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result p0

    if-nez p0, :cond_40

    .line 1385
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "reparentChildrenTasksHierarchyOp non-resizeable task to multi window, task="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 1389
    :cond_40
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object p0

    invoke-virtual {p5}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-eqz p0, :cond_78

    .line 1390
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object p0

    invoke-virtual {p5}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p0

    if-nez p0, :cond_5d

    goto :goto_78

    .line 1394
    :cond_5d
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result p0

    if-eqz p0, :cond_67

    .line 1395
    invoke-virtual {p4, v2, p5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_6a

    .line 1397
    :cond_67
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    :goto_6a
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getReparentTopOnly()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_78

    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-ne p0, p1, :cond_78

    move v2, p1

    :cond_78
    :goto_78
    return v2
.end method

.method public static synthetic lambda$reparentTaskFragment$12(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    .line 1865
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method private synthetic lambda$startTransition$2(Lcom/android/server/wm/Transition;)V
    .registers 2

    .line 329
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TransitionController;->moveToCollecting(Lcom/android/server/wm/Transition;)V

    return-void
.end method

.method private synthetic lambda$startTransition$3(Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)V
    .registers 6

    .line 331
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->start()V

    const/4 v0, -0x1

    .line 332
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    if-eqz p4, :cond_c

    .line 334
    invoke-virtual {p1}, Lcom/android/server/wm/Transition;->setAllReady()V

    :cond_c
    return-void
.end method

.method private synthetic lambda$waitAsyncStart$9([Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V
    .registers 5

    const/4 v0, 0x0

    .line 1216
    :try_start_1
    invoke-interface {p2}, Ljava/util/function/IntSupplier;->getAsInt()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_1a

    :catchall_c
    move-exception p2

    const/16 v1, -0x60

    .line 1218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    const-string p1, "WindowOrganizerController"

    .line 1219
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1221
    :goto_1a
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter p1

    :try_start_1d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1222
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 1223
    monitor-exit p1
    :try_end_26
    .catchall {:try_start_1d .. :try_end_26} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_2a
    move-exception p0

    :try_start_2b
    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method


# virtual methods
.method public addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1532
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BLASTSyncEngine;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    return-void
.end method

.method public final adjustBoundsForMinDimensionsIfNeeded(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Landroid/window/WindowContainerTransaction$Change;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    .line 731
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p1

    if-eqz p1, :cond_51

    .line 732
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_51

    .line 735
    :cond_d
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_16

    return-void

    .line 738
    :cond_16
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 739
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 740
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->calculateMinDimension()Landroid/graphics/Point;

    move-result-object v1

    .line 741
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, v1, Landroid/graphics/Point;->x:I

    if-lt v2, v3, :cond_34

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iget v3, v1, Landroid/graphics/Point;->y:I

    if-ge v2, v3, :cond_51

    .line 742
    :cond_34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setBounds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, p3, v0}, Lcom/android/server/wm/WindowOrganizerController;->sendMinimumDimensionViolation(Lcom/android/server/wm/TaskFragment;Landroid/graphics/Point;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 745
    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p2, p0}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    :cond_51
    :goto_51
    return-void
.end method

.method public final applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Landroid/window/WindowContainerTransaction$Change;",
            "Landroid/os/IBinder;",
            ")I"
        }
    .end annotation

    .line 668
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->hasChangeTransitMode()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 669
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 670
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeTransitMode()I

    move-result v2

    .line 669
    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/ChangeTransitionController;->handleWindowContainerTransaction(Lcom/android/server/wm/Task;I)V

    .line 676
    :cond_1b
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v0

    const v1, 0x20002c00

    and-int/2addr v0, v1

    .line 677
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result v1

    const v2, 0xa00003

    and-int/2addr v1, v2

    const/4 v2, 0x0

    .line 679
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getWindowingMode()I

    move-result v3

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v0, :cond_69

    .line 682
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->adjustBoundsForMinDimensionsIfNeeded(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)V

    if-le v3, v4, :cond_4b

    .line 684
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p3

    if-eq v3, p3, :cond_4b

    .line 690
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    .line 691
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p3, v2, v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    goto :goto_5e

    .line 693
    :cond_4b
    new-instance p3, Landroid/content/res/Configuration;

    .line 694
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p3, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 695
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {p3, v2, v0, v1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;II)V

    .line 696
    invoke-virtual {p1, p3}, Lcom/android/server/wm/WindowContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    :goto_5e
    if-eqz v1, :cond_68

    .line 699
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isEmbedded()Z

    move-result p3

    if-eqz p3, :cond_68

    const/4 v2, 0x3

    goto :goto_69

    :cond_68
    move v2, v5

    .line 704
    :cond_69
    :goto_69
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result p3

    and-int/2addr p3, v5

    if-eqz p3, :cond_7c

    .line 705
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getFocusable()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->setFocusable(Z)Z

    move-result p2

    if-eqz p2, :cond_7c

    or-int/lit8 v2, v2, 0x2

    :cond_7c
    if-le v3, v4, :cond_a4

    .line 711
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result p0

    if-eqz p0, :cond_95

    .line 712
    invoke-static {v3}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result p0

    if-nez p0, :cond_8d

    goto :goto_95

    .line 713
    :cond_8d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported to set multi-window windowing mode during locked task mode."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 717
    :cond_95
    :goto_95
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p0

    .line 718
    invoke-virtual {p1, v3}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 719
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result p1

    if-eq p0, p1, :cond_a4

    or-int/lit8 v2, v2, 0x2

    :cond_a4
    return v2
.end method

.method public final applyDisplayAreaChanges(Lcom/android/server/wm/DisplayArea;Landroid/window/WindowContainerTransaction$Change;)I
    .registers 5

    const/4 p0, 0x1

    new-array p0, p0, [I

    .line 780
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 782
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getIgnoreOrientationRequest()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/DisplayArea;->setIgnoreOrientationRequest(Z)Z

    move-result v0

    if-eqz v0, :cond_1c

    aget v0, p0, v1

    or-int/lit8 v0, v0, 0x2

    aput v0, p0, v1

    .line 787
    :cond_1c
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;

    invoke-direct {v0, p2, p0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda12;-><init>(Landroid/window/WindowContainerTransaction$Change;[I)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Consumer;)V

    aget p0, p0, v1

    return p0
.end method

.method public final applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/Transition;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/Transition;Z)I
    .registers 33

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p6

    move-object/from16 v15, p7

    move-object/from16 v14, p8

    move-object/from16 v13, p9

    .line 806
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v12

    const/4 v0, 0x3

    const-string v1, "Cannot set non-task as launch root: "

    const-string v11, "Attempt to operate on detached container: "

    const-string v5, "Attempt to operate on unknown or detached container: "

    const/4 v4, 0x0

    const/16 v19, 0x0

    const-string v3, "WindowOrganizerController"

    if-eq v12, v0, :cond_40a

    const/4 v0, 0x4

    if-eq v12, v0, :cond_3fc

    const/16 v0, 0xd

    if-eq v12, v0, :cond_34f

    const/16 v0, 0x12

    if-eq v12, v0, :cond_2df

    packed-switch v12, :pswitch_data_650

    if-eqz p5, :cond_4c

    .line 1041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skip applying hierarchy operation "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " while in lock task mode"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p2

    :cond_4c
    move-object v7, v3

    move-object v13, v11

    move v11, v12

    move-object v9, v14

    move-object v8, v15

    move-object v12, v5

    goto/16 :goto_432

    .line 905
    :pswitch_54
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v0

    .line 906
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    .line 907
    invoke-static {v1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-nez v2, :cond_68

    .line 911
    iget-object v2, v6, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 912
    invoke-virtual {v2, v14, v1}, Lcom/android/server/wm/TaskFragmentOrganizerController;->getReparentActivityFromTemporaryToken(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 914
    :cond_68
    iget-object v1, v6, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/wm/TaskFragment;

    if-eqz v1, :cond_12e

    if-nez v2, :cond_77

    goto/16 :goto_12e

    .line 922
    :cond_77
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 923
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not allowed to reparent activity to PIP TaskFragment"

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 p5, v1

    move-object/from16 v1, p8

    move-object/from16 v16, v2

    move-object/from16 v2, p7

    move-object v7, v3

    move-object/from16 v3, p5

    move v8, v4

    move v4, v12

    move-object/from16 v20, v5

    move-object/from16 v5, v16

    .line 925
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_169

    :cond_9c
    move-object v7, v3

    move v8, v4

    move-object/from16 v20, v5

    move-object v3, v1

    .line 929
    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    if-eqz v0, :cond_ba

    .line 930
    new-instance v5, Ljava/lang/SecurityException;

    const-string v0, "The task fragment is not allowed to embed the given activity."

    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move v4, v12

    .line 932
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_169

    .line 936
    :cond_ba
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eq v0, v1, :cond_d7

    .line 937
    new-instance v5, Ljava/lang/SecurityException;

    const-string v0, "The reparented activity is not in the same Task as the target TaskFragment."

    invoke-direct {v5, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move v4, v12

    .line 939
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto/16 :goto_169

    .line 944
    :cond_d7
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v0, :cond_11e

    .line 945
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const-string v1, "Skip reparent activity to TaskFragment "

    if-nez v0, :cond_fe

    .line 946
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is current parent is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_169

    .line 949
    :cond_fe
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-ne v3, v0, :cond_11e

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is already in the same TaskFragment"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_169

    :cond_11e
    const v0, 0x7fffffff

    .line 956
    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    or-int/lit8 v0, p2, 0x2

    move-object v13, v11

    move v11, v12

    move-object v9, v14

    move-object v8, v15

    move-object/from16 v12, v20

    goto/16 :goto_408

    :cond_12e
    :goto_12e
    move-object v7, v3

    move v8, v4

    move-object/from16 v20, v5

    move-object v3, v1

    .line 916
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not allowed to operate with invalid fragment token or activity."

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move v4, v12

    .line 918
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto :goto_169

    :pswitch_145
    move-object v7, v3

    move v8, v4

    move-object/from16 v20, v5

    .line 874
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    .line 875
    iget-object v1, v6, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/TaskFragment;

    if-nez v3, :cond_171

    .line 877
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not allowed to operate with invalid fragment token"

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move v4, v12

    .line 879
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    :goto_169
    move-object v13, v11

    move v11, v12

    move-object v9, v14

    move-object v8, v15

    move-object/from16 v12, v20

    goto/16 :goto_432

    .line 883
    :cond_171
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v0

    if-eqz v0, :cond_189

    .line 884
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not allowed to start activity in PIP TaskFragment"

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move v4, v12

    .line 886
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto :goto_169

    .line 890
    :cond_189
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 891
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v1

    .line 892
    iget-object v2, v6, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    .line 894
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getCallingActivity()Landroid/os/IBinder;

    move-result-object v4

    iget v5, v10, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    iget v8, v10, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    move-object v9, v11

    move-object v11, v2

    move v2, v12

    move-object v12, v3

    move-object v13, v0

    move-object/from16 v21, v9

    move-object v9, v14

    move-object v14, v1

    move-object v1, v15

    move-object v15, v4

    move/from16 v16, v5

    move/from16 v17, v8

    move-object/from16 v18, p7

    .line 893
    invoke-virtual/range {v11 .. v18}, Lcom/android/server/wm/ActivityStartController;->startActivityInTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/IBinder;IILandroid/os/IBinder;)I

    move-result v4

    .line 896
    invoke-static {v4}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v5

    if-nez v5, :cond_1ce

    .line 898
    invoke-virtual {v6, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->convertStartFailureToThrowable(ILandroid/content/Intent;)Ljava/lang/Throwable;

    move-result-object v5

    move-object/from16 v0, p0

    move-object v8, v1

    move-object/from16 v1, p8

    move v11, v2

    move-object/from16 v2, p7

    move v4, v11

    .line 897
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    :goto_1ca
    move-object/from16 v12, v20

    goto/16 :goto_261

    :cond_1ce
    move-object v8, v1

    move v11, v2

    or-int/lit8 v0, p2, 0x2

    :goto_1d2
    move v14, v0

    move-object/from16 v12, v20

    move-object/from16 v13, v21

    goto/16 :goto_434

    :pswitch_1d9
    move-object v7, v3

    move-object/from16 v20, v5

    move-object/from16 v21, v11

    move v11, v12

    move-object v9, v14

    move-object v8, v15

    .line 847
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_23e

    .line 848
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v1

    if-nez v1, :cond_1f2

    goto :goto_23e

    .line 852
    :cond_1f2
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_236

    .line 853
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_236

    if-eqz p5, :cond_22f

    .line 858
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda9;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v3, v0, v1}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_22f

    .line 860
    iget-object v1, v6, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 861
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/wm/LockTaskController;->activityBlockedFromFinish(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_22f

    const-string v0, "Skip removing TaskFragment due in lock task mode."

    .line 863
    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v0, "Not allow to delete task fragment in lock task mode."

    invoke-direct {v5, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move v4, v11

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto :goto_1ca

    .line 870
    :cond_22f
    invoke-virtual {v6, v3, v9, v8}, Lcom/android/server/wm/WindowOrganizerController;->deleteTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;)I

    move-result v0

    or-int v0, p2, v0

    goto :goto_1d2

    .line 854
    :cond_236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only delete organized TaskFragment, but not Task."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 849
    :cond_23e
    :goto_23e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v12, v20

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_261

    :pswitch_253
    move-object v7, v3

    move-object/from16 v21, v11

    move v11, v12

    move-object v9, v14

    move-object v8, v15

    move-object v12, v5

    .line 842
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getTaskFragmentCreationOptions()Landroid/window/TaskFragmentCreationParams;

    move-result-object v0

    .line 843
    invoke-virtual {v6, v0, v8, v10}, Lcom/android/server/wm/WindowOrganizerController;->createTaskFragment(Landroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    :goto_261
    move-object/from16 v13, v21

    goto/16 :goto_432

    :pswitch_265
    move-object v7, v3

    move-object/from16 v21, v11

    move v11, v12

    move-object v9, v14

    move-object v8, v15

    move-object v12, v5

    .line 820
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_27b

    .line 821
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_27d

    :cond_27b
    move-object/from16 v2, v19

    .line 822
    :goto_27d
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v3

    if-eqz v2, :cond_2ca

    .line 825
    iget-boolean v1, v2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_2b3

    .line 828
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    if-nez v1, :cond_2a7

    if-eqz v3, :cond_290

    goto :goto_2a7

    .line 829
    :cond_290
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set non-adjacent task as adjacent flag root: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 833
    :cond_2a7
    :goto_2a7
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-eqz v3, :cond_2af

    move-object/from16 v2, v19

    :cond_2af
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->setLaunchAdjacentFlagRootTask(Lcom/android/server/wm/Task;)V

    goto :goto_261

    .line 826
    :cond_2b3
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot set non-organized task as adjacent flag root: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 824
    :cond_2ca
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2df
    move-object v7, v3

    move-object/from16 v21, v11

    move v11, v12

    move-object v9, v14

    move-object v8, v15

    move-object v12, v5

    .line 1013
    iget-object v0, v6, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    if-eqz v0, :cond_339

    .line 1014
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v1

    if-nez v1, :cond_2fb

    goto :goto_339

    .line 1018
    :cond_2fb
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_310

    .line 1019
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-ne v2, v0, :cond_310

    const-string v0, "The requested TaskFragment already has the focus."

    .line 1020
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_261

    :cond_310
    if-eqz v1, :cond_323

    .line 1023
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eq v1, v2, :cond_323

    const-string v0, "The Task of the requested TaskFragment doesn\'t have focus."

    .line 1024
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_261

    .line 1027
    :cond_323
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-nez v1, :cond_330

    const-string v0, "There is no resumed activity in the requested TaskFragment."

    .line 1029
    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_261

    .line 1032
    :cond_330
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    goto/16 :goto_261

    .line 1015
    :cond_339
    :goto_339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v13, v21

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_432

    :cond_34f
    move-object v7, v3

    move-object v13, v11

    move v11, v12

    move-object v9, v14

    move-object v8, v15

    move-object v12, v5

    .line 961
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    .line 962
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAdjacentRoot()Landroid/os/IBinder;

    move-result-object v1

    .line 963
    iget-object v2, v6, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/wm/TaskFragment;

    if-eqz v1, :cond_371

    .line 965
    iget-object v0, v6, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskFragment;

    goto :goto_373

    :cond_371
    move-object/from16 v0, v19

    :goto_373
    if-eqz v3, :cond_3ea

    if-eqz v1, :cond_37b

    if-nez v0, :cond_37b

    goto/16 :goto_3ea

    .line 974
    :cond_37b
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v1

    if-nez v1, :cond_3d8

    if-eqz v0, :cond_38a

    .line 975
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v1

    if-eqz v1, :cond_38a

    goto :goto_3d8

    :cond_38a
    const/4 v1, 0x0

    .line 982
    invoke-virtual {v3, v0, v1}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;Z)V

    or-int/lit8 v1, p2, 0x2

    .line 985
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz v2, :cond_3b4

    .line 988
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/android/server/wm/TaskFragment;->calculateEmbedActivityMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)I

    move-result v2

    .line 987
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ConfigurationContainer;->setEmbedActivityMode(I)V

    if-eqz v0, :cond_3b4

    .line 992
    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/server/wm/TaskFragment;->calculateEmbedActivityMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)I

    move-result v2

    .line 991
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ConfigurationContainer;->setEmbedActivityMode(I)V

    .line 996
    :cond_3b4
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_3c0

    .line 998
    new-instance v4, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;

    invoke-direct {v4, v2}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;-><init>(Landroid/os/Bundle;)V

    goto :goto_3c2

    :cond_3c0
    move-object/from16 v4, v19

    :goto_3c2
    if-nez v4, :cond_3c5

    goto :goto_3d5

    .line 1005
    :cond_3c5
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->shouldDelayPrimaryLastActivityRemoval()Z

    move-result v2

    .line 1004
    invoke-virtual {v3, v2}, Lcom/android/server/wm/TaskFragment;->setDelayLastActivityRemoval(Z)V

    if-eqz v0, :cond_3d5

    .line 1008
    invoke-virtual {v4}, Landroid/window/WindowContainerTransaction$TaskFragmentAdjacentParams;->shouldDelaySecondaryLastActivityRemoval()Z

    move-result v2

    .line 1007
    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskFragment;->setDelayLastActivityRemoval(Z)V

    :cond_3d5
    :goto_3d5
    move v14, v1

    goto/16 :goto_434

    .line 976
    :cond_3d8
    :goto_3d8
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not allowed to set adjacent on TaskFragment in PIP Task"

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move v4, v11

    .line 978
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto :goto_432

    .line 968
    :cond_3ea
    :goto_3ea
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not allowed to set adjacent on invalid fragment tokens"

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p8

    move-object/from16 v2, p7

    move v4, v11

    .line 970
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    goto :goto_432

    :cond_3fc
    move-object v7, v3

    move-object v13, v11

    move v11, v12

    move-object v9, v14

    move-object v8, v15

    move-object v12, v5

    .line 837
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/WindowOrganizerController;->setAdjacentRootsHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v0

    or-int v0, p2, v0

    :goto_408
    move v14, v0

    goto :goto_434

    :cond_40a
    move-object v7, v3

    move-object v13, v11

    move v11, v12

    move-object v9, v14

    move-object v8, v15

    move-object v12, v5

    .line 809
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_41f

    .line 810
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_421

    :cond_41f
    move-object/from16 v2, v19

    :goto_421
    if-eqz v2, :cond_63b

    .line 812
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 813
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getWindowingModes()[I

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityTypes()[I

    move-result-object v3

    .line 812
    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/wm/TaskDisplayArea;->setLaunchRootTask(Lcom/android/server/wm/Task;[I[I)V

    :goto_432
    move/from16 v14, p2

    :goto_434
    if-eqz v11, :cond_5d4

    const/4 v0, 0x1

    if-eq v11, v0, :cond_5d4

    const/4 v0, 0x2

    if-eq v11, v0, :cond_5c6

    const/4 v0, 0x5

    if-eq v11, v0, :cond_59c

    const/16 v0, 0xb

    if-eq v11, v0, :cond_556

    const/16 v0, 0xc

    if-eq v11, v0, :cond_4fc

    packed-switch v11, :pswitch_data_65e

    goto/16 :goto_63a

    .line 1188
    :pswitch_44c
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1189
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsTypes()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->removeLocalInsetsSourceProvider([I)V

    goto/16 :goto_63a

    .line 1181
    :pswitch_45d
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsProviderFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 1183
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1185
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getInsetsTypes()[I

    move-result-object v2

    .line 1184
    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowContainer;->addLocalRectInsetsSourceProvider(Landroid/graphics/Rect;[I)V

    goto/16 :goto_63a

    :pswitch_472
    move-object/from16 v0, p9

    if-nez v0, :cond_478

    goto/16 :goto_63a

    .line 1169
    :cond_478
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_484

    goto/16 :goto_63a

    .line 1171
    :cond_484
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_493

    .line 1172
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_497

    :cond_493
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    :goto_497
    if-nez v2, :cond_49b

    goto/16 :goto_63a

    .line 1174
    :cond_49b
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Transition;->getTransientLaunchRestoreTarget(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_4a3

    goto/16 :goto_63a

    .line 1176
    :cond_4a3
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 1177
    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/TaskDisplayArea;->moveRootTaskBehindRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    goto/16 :goto_63a

    .line 1136
    :pswitch_4b0
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:transaction.hop.shortcut_calling_package"

    .line 1137
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1139
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1142
    const-class v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;

    .line 1145
    iget v3, v10, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    iget v4, v10, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    .line 1146
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 1147
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    .line 1148
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    move-result v9

    move-object/from16 p0, v1

    move/from16 p1, v3

    move/from16 p2, v4

    move-object/from16 p3, v2

    move-object/from16 p4, v5

    move-object/from16 p5, v6

    move-object/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v0

    move/from16 p9, v9

    .line 1145
    invoke-virtual/range {p0 .. p9}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsServiceInternal;->startShortcut(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;I)Z

    goto/16 :goto_63a

    .line 1102
    :cond_4fc
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_514

    .line 1103
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getActivityIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, v6, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1104
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1103
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_516

    :cond_514
    move-object/from16 v3, v19

    .line 1108
    :goto_516
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result v0

    if-eqz v0, :cond_539

    .line 1112
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_530

    .line 1113
    new-instance v0, Landroid/app/ActivityOptions;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ActivityOptions;-><init>(Landroid/os/Bundle;)V

    goto :goto_534

    .line 1114
    :cond_530
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    :goto_534
    const/4 v1, 0x0

    .line 1115
    invoke-virtual {v0, v1}, Landroid/app/ActivityOptions;->setCallerDisplayId(I)Landroid/app/ActivityOptions;

    goto :goto_53b

    :cond_539
    move-object/from16 v0, v19

    :goto_53b
    if-eqz v0, :cond_543

    .line 1117
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    move-object v4, v0

    goto :goto_545

    :cond_543
    move-object/from16 v4, v19

    .line 1120
    :goto_545
    new-instance v7, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;

    move-object v0, v7

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    invoke-virtual {v6, v7}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)V

    goto/16 :goto_63a

    .line 1152
    :cond_556
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1153
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_56c

    .line 1154
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v19

    :cond_56c
    move-object/from16 v1, v19

    if-eqz v0, :cond_588

    .line 1156
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_588

    .line 1157
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_57d

    goto :goto_588

    .line 1162
    :cond_57d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v6, v0, v1, v9, v8}, Lcom/android/server/wm/WindowOrganizerController;->reparentTaskFragment(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;)V

    or-int/lit8 v14, v14, 0x2

    goto/16 :goto_63a

    .line 1158
    :cond_588
    :goto_588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_63a

    .line 1089
    :cond_59c
    iget-object v0, v6, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.START_TASKS_FROM_RECENTS"

    const-string v2, "launchTask HierarchyOp"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1091
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android:transaction.hop.taskId"

    .line 1092
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 1094
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 1095
    iget v1, v10, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v3, v10, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    .line 1096
    invoke-static {v0, v1, v3}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;II)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v0

    .line 1097
    new-instance v1, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda10;

    invoke-direct {v1, v6, v10, v2, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;ILcom/android/server/wm/SafeActivityOptions;)V

    invoke-virtual {v6, v1}, Lcom/android/server/wm/WindowOrganizerController;->waitAsyncStart(Ljava/util/function/IntSupplier;)V

    goto/16 :goto_63a

    :cond_5c6
    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p10

    .line 1050
    invoke-virtual {v6, v0, v2, v1, v3}, Lcom/android/server/wm/WindowOrganizerController;->reparentChildrenTasksHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/Transition;IZ)I

    move-result v0

    :goto_5d2
    or-int/2addr v14, v0

    goto :goto_63a

    :cond_5d4
    move-object/from16 v0, p1

    move/from16 v1, p3

    move-object/from16 v2, p4

    move-object v4, v7

    move-object v3, v13

    .line 1058
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_628

    .line 1059
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v7

    if-nez v7, :cond_5ed

    goto :goto_628

    :cond_5ed
    if-ltz v1, :cond_5f2

    .line 1064
    invoke-virtual {v6, v1, v5}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_5f2
    if-eqz v2, :cond_623

    .line 1067
    invoke-virtual {v2, v5}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1068
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v1

    if-eqz v1, :cond_623

    .line 1069
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-eqz v1, :cond_60a

    .line 1072
    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1074
    :cond_60a
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_623

    .line 1076
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_620

    const-string v0, "Can\'t resolve parent window from token"

    .line 1078
    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_63a

    .line 1081
    :cond_620
    invoke-virtual {v2, v1}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1085
    :cond_623
    invoke-virtual {v6, v5, v0}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeAndApplyHierarchyOp(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$HierarchyOp;)I

    move-result v0

    goto :goto_5d2

    .line 1060
    :cond_628
    :goto_628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_63a
    return v14

    .line 815
    :cond_63b
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_data_650
    .packed-switch 0x6
        :pswitch_265
        :pswitch_253
        :pswitch_1d9
        :pswitch_145
        :pswitch_54
    .end packed-switch

    :pswitch_data_65e
    .packed-switch 0xe
        :pswitch_4b0
        :pswitch_472
        :pswitch_45d
        :pswitch_44c
    .end packed-switch
.end method

.method public applySyncTransaction(Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I
    .registers 10

    if-eqz p1, :cond_7b

    const-string v0, "applySyncTransaction()"

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 236
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 237
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 239
    :try_start_10
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_13
    .catchall {:try_start_10 .. :try_end_13} :catchall_76

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 242
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-eqz v5, :cond_24

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_24

    const/4 v6, 0x1

    .line 243
    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;Z)V

    :cond_24
    const/4 v4, 0x0

    if-nez p2, :cond_33

    const/4 p2, -0x1

    .line 247
    invoke-virtual {p0, p1, p2, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 248
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_13 .. :try_end_2c} :catchall_70

    .line 282
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    .line 263
    :cond_33
    :try_start_33
    invoke-virtual {p0, p2}, Lcom/android/server/wm/WindowOrganizerController;->prepareSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object p2

    .line 264
    iget v5, p2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 265
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v6}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result v6

    if-nez v6, :cond_55

    .line 266
    iget-object v6, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v6, v6, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {v6, p2}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 267
    invoke-virtual {p0, p1, v5, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 268
    invoke-virtual {p0, v5}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    goto :goto_68

    .line 272
    :cond_55
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    new-instance v6, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;

    invoke-direct {v6, p0, p2}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    new-instance p2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WindowOrganizerController;Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    invoke-virtual {v4, v6, p2}, Lcom/android/server/wm/BLASTSyncEngine;->queueSyncSet(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 279
    :goto_68
    monitor-exit v3
    :try_end_69
    .catchall {:try_start_33 .. :try_end_69} :catchall_70

    .line 282
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :catchall_70
    move-exception p0

    .line 280
    :try_start_71
    monitor-exit v3
    :try_end_72
    .catchall {:try_start_71 .. :try_end_72} :catchall_70

    :try_start_72
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_76
    .catchall {:try_start_72 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception p0

    .line 282
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 283
    throw p0

    .line 233
    :cond_7b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null transaction passed to applySyncTransaction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I
    .registers 6

    .line 751
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p0

    .line 753
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    if-eqz v0, :cond_18

    .line 754
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getHidden()Z

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 759
    :goto_19
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getActivityWindowingMode()I

    move-result v0

    const/4 v2, -0x1

    if-le v0, v2, :cond_23

    .line 761
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->setActivityWindowingMode(I)V

    :cond_23
    if-eqz p0, :cond_28

    .line 765
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    .line 768
    :cond_28
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$Change;->getEnterPipBounds()Landroid/graphics/Rect;

    move-result-object p0

    if-eqz p0, :cond_35

    .line 770
    iget-object p1, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/PinnedTaskController;->setEnterPipBounds(Landroid/graphics/Rect;)V

    :cond_35
    return v1
.end method

.method public applyTransaction(Landroid/window/WindowContainerTransaction;)V
    .registers 8

    if-eqz p1, :cond_50

    const-string v0, "applyTransaction()"

    .line 197
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;Landroid/window/WindowContainerTransaction;)V

    .line 198
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 199
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 203
    :try_start_10
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->isStartIntentsType()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 209
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/wm/AppPairController;->adjustStartIntents(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)Z

    .line 212
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppPairController;->adjustStartIntentsForSingleInstancePerTask(Landroid/window/WindowContainerTransaction;)Z

    goto :goto_32

    .line 214
    :cond_25
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction;->isStartTaskAndIntentType()Z

    move-result v3

    if-eqz v3, :cond_32

    .line 216
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/wm/AppPairController;->adjustStartTaskAndIntent(Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 221
    :cond_32
    :goto_32
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_4b

    :try_start_35
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v4, -0x1

    const/4 v5, 0x0

    .line 222
    invoke-virtual {p0, p1, v4, v5, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 223
    monitor-exit v3
    :try_end_3e
    .catchall {:try_start_35 .. :try_end_3e} :catchall_45

    :try_start_3e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_41
    .catchall {:try_start_3e .. :try_end_41} :catchall_4b

    .line 225
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_45
    move-exception p0

    .line 223
    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4b

    :catchall_4b
    move-exception p0

    .line 225
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 226
    throw p0

    .line 195
    :cond_50
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Null transaction passed to applyTransaction"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .registers 11

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 432
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)V

    return-void
.end method

.method public final applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)V
    .registers 32

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move/from16 v0, p2

    move-object/from16 v14, p3

    move-object/from16 v15, p5

    .line 445
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    const/4 v11, 0x0

    const/4 v10, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_22

    int-to-long v1, v0

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x3603be95

    new-array v5, v9, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v10

    invoke-static {v3, v4, v9, v11, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 446
    :cond_22
    iget-object v1, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 447
    iget-object v1, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 451
    :try_start_2e
    iget-object v1, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mChangeTransitController:Lcom/android/server/wm/ChangeTransitionController;

    invoke-virtual {v1, v13}, Lcom/android/server/wm/ChangeTransitionController;->applySyncStagingTypesIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 452
    iget-object v1, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingTransitController:Lcom/android/server/wm/MultiTaskingTransitionController;

    invoke-virtual {v1, v13}, Lcom/android/server/wm/MultiTaskingTransitionController;->startFreezingDefaultDisplayIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartIntentsType()Z

    move-result v1

    if-eqz v1, :cond_57

    .line 455
    iget-object v1, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    .line 456
    iget-object v1, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiTaskingController;->deferEnsureConfig()V

    .line 458
    iget-object v1, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v1, v13}, Lcom/android/server/wm/AppPairController;->handleAutoPipIfNeededLocked(Landroid/window/WindowContainerTransaction;)V

    .line 462
    :cond_57
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartTasksType()Z

    move-result v1

    if-eqz v1, :cond_64

    .line 463
    iget-object v1, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiTaskingController;->deferEnsureConfig()V

    :cond_64
    const/4 v1, 0x2

    if-eqz v14, :cond_85

    .line 468
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/DisplayRotation;->getDisplayFromTransition(Lcom/android/server/wm/Transition;)Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eqz v2, :cond_85

    .line 469
    iget-object v3, v14, Lcom/android/server/wm/Transition;->mChanges:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Transition$ChangeInfo;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/Transition$ChangeInfo;->hasChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 473
    iget-object v3, v2, Lcom/android/server/wm/WindowContainer;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v3, v2, v14}, Lcom/android/server/wm/TransitionController;->collectForDisplayChange(Lcom/android/server/wm/DisplayContent;Lcom/android/server/wm/Transition;)V

    .line 474
    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->sendNewConfiguration()V

    move v2, v1

    goto :goto_86

    :cond_85
    move v2, v10

    .line 478
    :goto_86
    new-instance v8, Landroid/util/ArraySet;

    invoke-direct {v8}, Landroid/util/ArraySet;-><init>()V

    .line 480
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 482
    iget-object v4, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    if-nez v4, :cond_9f

    move v4, v9

    goto :goto_a0

    :cond_9f
    move v4, v10

    .line 484
    :goto_a0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5
    :try_end_a4
    .catchall {:try_start_2e .. :try_end_a4} :catchall_386

    const-string v7, "Attempt to operate on detached container: "

    const-string v6, "WindowOrganizerController"

    if-eqz v5, :cond_131

    .line 485
    :try_start_aa
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 486
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/os/IBinder;

    invoke-static/range {v16 .. v16}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    if-eqz v11, :cond_11c

    .line 487
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v16

    if-nez v16, :cond_c3

    goto :goto_11c

    :cond_c3
    if-nez v4, :cond_e4

    .line 494
    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_e4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v6}, Landroid/window/WindowContainerTransaction$Change;->getConfigSetMask()I

    move-result v6

    const/high16 v7, 0x20000000

    and-int/2addr v6, v7

    if-eqz v6, :cond_e4

    .line 496
    iget-object v4, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v6, v4, v9}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;Z)V

    move v4, v9

    :cond_e4
    if-ltz v0, :cond_e9

    .line 506
    invoke-virtual {v12, v0, v11}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_e9
    if-eqz v14, :cond_ee

    .line 508
    invoke-virtual {v14, v11}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_ee
    if-eqz v15, :cond_101

    .line 512
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v6}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v6

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_101

    .line 514
    invoke-virtual {v15, v10}, Lcom/android/server/wm/Transition;->setCanPipOnFinish(Z)V

    .line 518
    :cond_101
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/WindowContainerTransaction$Change;

    .line 519
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getErrorCallbackToken()Landroid/os/IBinder;

    move-result-object v6

    .line 518
    invoke-virtual {v12, v11, v5, v6}, Lcom/android/server/wm/WindowOrganizerController;->applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I

    move-result v5

    or-int/2addr v2, v5

    and-int/lit8 v6, v2, 0x2

    if-nez v6, :cond_12e

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_12e

    .line 525
    invoke-virtual {v8, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_12e

    .line 488
    :cond_11c
    :goto_11c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12e
    :goto_12e
    const/4 v11, 0x0

    goto/16 :goto_a0

    .line 529
    :cond_131
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object v11

    .line 533
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_139
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_156

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/window/WindowContainerTransaction$HierarchyOp;

    if-nez v4, :cond_139

    .line 534
    invoke-virtual {v5}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v5

    if-ne v5, v1, :cond_139

    .line 535
    iget-object v1, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAMBooster:Lcom/android/server/wm/ActivityManagerPerformance;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v1, v9}, Lcom/android/server/wm/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 544
    :cond_156
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStagePositionChanged()Z

    move-result v1

    if-eqz v1, :cond_163

    .line 545
    iget-object v1, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v1}, Lcom/android/server/wm/MultiTaskingController;->continueEnsureConfig()V

    .line 547
    :cond_163
    iget-object v1, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v16

    .line 550
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/TaskDisplayArea;->hasChildTaskInSideStage()Z

    move-result v1

    if-nez v1, :cond_179

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v1
    :try_end_175
    .catchall {:try_start_aa .. :try_end_175} :catchall_386

    if-nez v1, :cond_179

    move v1, v9

    goto :goto_17a

    :cond_179
    move v1, v10

    :goto_17a
    const-string/jumbo v5, "wct"

    if-eqz v1, :cond_188

    .line 551
    :try_start_17f
    invoke-virtual {v12, v11}, Lcom/android/server/wm/WindowOrganizerController;->isEnterSplitWithSingleStage(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_188

    .line 552
    invoke-virtual {v12, v5}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageStarted(Ljava/lang/String;)V

    .line 557
    :cond_188
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1f5

    .line 559
    iget-object v1, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->isInLockTaskMode()Z

    move-result v18

    move/from16 v19, v2

    move v3, v10

    :goto_197
    if-ge v3, v4, :cond_1e9

    .line 561
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 562
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getErrorCallbackToken()Landroid/os/IBinder;

    move-result-object v20

    .line 563
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v21

    .line 565
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isDismissSplit()Z

    move-result v22
    :try_end_1ac
    .catchall {:try_start_17f .. :try_end_1ac} :catchall_386

    move-object/from16 v1, p0

    move/from16 v23, v3

    move/from16 v3, v19

    move/from16 v24, v4

    move/from16 v4, p2

    move-object v0, v5

    move-object/from16 v5, p3

    move-object v14, v6

    move/from16 v6, v18

    move-object v15, v7

    move-object/from16 v7, p4

    move-object/from16 v25, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v21

    move-object/from16 v10, p5

    move-object/from16 v17, v11

    move-object/from16 v20, v14

    const/4 v14, 0x0

    move/from16 v11, v22

    .line 561
    :try_start_1ce
    invoke-virtual/range {v1 .. v11}, Lcom/android/server/wm/WindowOrganizerController;->applyHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;IILcom/android/server/wm/Transition;ZLcom/android/server/wm/WindowOrganizerController$CallerInfo;Landroid/os/IBinder;Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/Transition;Z)I

    move-result v1

    or-int v19, v19, v1

    add-int/lit8 v3, v23, 0x1

    move-object/from16 v14, p3

    move-object v5, v0

    move-object v7, v15

    move-object/from16 v11, v17

    move-object/from16 v6, v20

    move/from16 v4, v24

    move-object/from16 v8, v25

    const/4 v9, 0x1

    const/4 v10, 0x0

    move/from16 v0, p2

    move-object/from16 v15, p5

    goto :goto_197

    :cond_1e9
    move/from16 v24, v4

    move-object v0, v5

    move-object/from16 v20, v6

    move-object v15, v7

    move-object/from16 v25, v8

    const/4 v14, 0x0

    move/from16 v2, v19

    goto :goto_1fe

    :cond_1f5
    move/from16 v24, v4

    move-object v0, v5

    move-object/from16 v20, v6

    move-object v15, v7

    move-object/from16 v25, v8

    const/4 v14, 0x0

    .line 570
    :goto_1fe
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/WindowOrganizerController;->whileEnterSplitWithSingleStage()Z

    move-result v1

    if-eqz v1, :cond_212

    .line 571
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/TaskDisplayArea;->hasChildTaskInSideStage()Z

    move-result v1

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v3

    xor-int/2addr v1, v3

    if-nez v1, :cond_212

    .line 572
    invoke-virtual {v12, v0}, Lcom/android/server/wm/WindowOrganizerController;->onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V

    .line 575
    :cond_212
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartIntentsType()Z

    move-result v0

    if-nez v0, :cond_21e

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartTasksType()Z

    move-result v0

    if-eqz v0, :cond_227

    :cond_21e
    if-lez v24, :cond_227

    .line 577
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppPairController:Lcom/android/server/wm/AppPairController;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/AppPairController;->setEvictChildTasksRunnable(Landroid/window/WindowContainerTransaction;)V

    .line 582
    :cond_227
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 583
    :cond_233
    :goto_233
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e4

    .line 584
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 585
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_2cc

    .line 586
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v4

    if-nez v4, :cond_253

    goto/16 :goto_2cc

    .line 590
    :cond_253
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 591
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {v1}, Landroid/window/WindowContainerTransaction$Change;->getBoundsChangeSurfaceBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v3, :cond_233

    .line 592
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v4

    if-eqz v4, :cond_233

    if-nez v1, :cond_26c

    goto :goto_233

    .line 595
    :cond_26c
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v4

    if-nez v4, :cond_2a0

    .line 596
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eqz v4, :cond_281

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v11

    goto :goto_282

    :cond_281
    move-object v11, v14

    :goto_282
    if-eqz v11, :cond_289

    .line 599
    iget-boolean v4, v11, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_289

    goto :goto_2a0

    .line 600
    :cond_289
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t manipulate non-organized task surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_2a0
    :goto_2a0
    new-instance v4, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v4}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    .line 605
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    .line 606
    iget v6, v1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    iget v7, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 607
    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2bc

    .line 608
    invoke-virtual {v4, v5, v14}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    goto :goto_2c7

    .line 610
    :cond_2bc
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v4, v5, v6, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 612
    :goto_2c7
    invoke-virtual {v3, v4}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V

    goto/16 :goto_233

    .line 587
    :cond_2cc
    :goto_2cc
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v3, v20

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v20, v3

    goto/16 :goto_233

    :cond_2e4
    and-int/lit8 v0, v2, 0x2

    if-eqz v0, :cond_300

    .line 615
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;
    :try_end_2ec
    .catchall {:try_start_1ce .. :try_end_2ec} :catchall_383

    const/4 v1, 0x0

    :try_start_2ed
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 617
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x1

    invoke-virtual {v0, v14, v1, v3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 618
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    goto :goto_353

    :cond_300
    const/4 v1, 0x0

    const/4 v3, 0x1

    and-int/lit8 v0, v2, 0x1

    if-eqz v0, :cond_353

    .line 620
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda8;-><init>()V

    const-class v4, Lcom/android/server/wm/ActivityRecord;

    .line 622
    invoke-static {v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 623
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 620
    invoke-static {v0, v4, v5, v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v4
    :try_end_31b
    .catchall {:try_start_2ed .. :try_end_31b} :catchall_351

    .line 625
    :try_start_31b
    invoke-virtual/range {v25 .. v25}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_320
    if-ltz v0, :cond_348

    move-object/from16 v5, v25

    .line 628
    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_33a

    .line 629
    iget-boolean v7, v6, Lcom/android/server/wm/Task;->mPendingEnsureVisibleForPopOver:Z

    if-eqz v7, :cond_33a

    .line 630
    iput-boolean v1, v6, Lcom/android/server/wm/Task;->mPendingEnsureVisibleForPopOver:Z

    .line 631
    invoke-virtual {v6, v14, v1, v3}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    goto :goto_343

    .line 637
    :cond_33a
    invoke-virtual {v5, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v6, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V
    :try_end_343
    .catchall {:try_start_31b .. :try_end_343} :catchall_34c

    :goto_343
    add-int/lit8 v0, v0, -0x1

    move-object/from16 v25, v5

    goto :goto_320

    .line 640
    :cond_348
    :try_start_348
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    goto :goto_353

    :catchall_34c
    move-exception v0

    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 641
    throw v0

    :catchall_351
    move-exception v0

    goto :goto_388

    :cond_353
    :goto_353
    and-int/lit8 v0, v2, 0x1

    if-nez v0, :cond_35c

    .line 645
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V
    :try_end_35c
    .catchall {:try_start_348 .. :try_end_35c} :catchall_351

    .line 649
    :cond_35c
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartIntentsType()Z

    move-result v0

    if-nez v0, :cond_368

    .line 650
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartTasksType()Z

    move-result v0

    if-eqz v0, :cond_36f

    .line 651
    :cond_368
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiTaskingController;->continueEnsureConfig()V

    .line 654
    :cond_36f
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 655
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 658
    iget-object v0, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingTransitController:Lcom/android/server/wm/MultiTaskingTransitionController;

    invoke-virtual {v0, v13}, Lcom/android/server/wm/MultiTaskingTransitionController;->stopFreezingDefaultDisplayIfNeeded(Landroid/window/WindowContainerTransaction;)V

    return-void

    :catchall_383
    move-exception v0

    const/4 v1, 0x0

    goto :goto_388

    :catchall_386
    move-exception v0

    move v1, v10

    .line 649
    :goto_388
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartIntentsType()Z

    move-result v2

    if-nez v2, :cond_394

    .line 650
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction;->isStartTasksType()Z

    move-result v2

    if-eqz v2, :cond_39b

    .line 651
    :cond_394
    iget-object v2, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiTaskingController;->continueEnsureConfig()V

    .line 654
    :cond_39b
    iget-object v2, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->setDeferRootVisibilityUpdate(Z)V

    .line 655
    iget-object v1, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 658
    iget-object v1, v12, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingTransitController:Lcom/android/server/wm/MultiTaskingTransitionController;

    invoke-virtual {v1, v13}, Lcom/android/server/wm/MultiTaskingTransitionController;->stopFreezingDefaultDisplayIfNeeded(Landroid/window/WindowContainerTransaction;)V

    .line 661
    throw v0
.end method

.method public final applyWindowContainerChange(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I
    .registers 5

    .line 1470
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V

    .line 1471
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 p0, 0x0

    return p0

    .line 1476
    :cond_15
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/WindowOrganizerController;->applyChanges(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/os/IBinder;)I

    move-result p3

    .line 1478
    instance-of v0, p1, Lcom/android/server/wm/DisplayArea;

    if-eqz v0, :cond_27

    .line 1479
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyDisplayAreaChanges(Lcom/android/server/wm/DisplayArea;Landroid/window/WindowContainerTransaction$Change;)I

    move-result p0

    :goto_25
    or-int/2addr p3, p0

    goto :goto_34

    .line 1480
    :cond_27
    instance-of v0, p1, Lcom/android/server/wm/Task;

    if-eqz v0, :cond_34

    .line 1481
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->applyTaskChanges(Lcom/android/server/wm/Task;Landroid/window/WindowContainerTransaction$Change;)I

    move-result p0

    goto :goto_25

    :cond_34
    :goto_34
    return p3
.end method

.method public cleanUpEmbeddedTaskFragment(Lcom/android/server/wm/TaskFragment;)V
    .registers 2

    .line 1930
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final convertStartFailureToThrowable(ILandroid/content/Intent;)Ljava/lang/Throwable;
    .registers 5

    const/16 p0, -0x60

    if-eq p1, p0, :cond_5d

    const/16 p0, -0x5e

    if-eq p1, p0, :cond_46

    const/16 p0, -0x5c

    if-eq p1, p0, :cond_2f

    const/16 p0, -0x5b

    if-eq p1, p0, :cond_2f

    .line 1966
    new-instance p0, Landroid/util/AndroidRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start activity failed with error code : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " when starting "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1958
    :cond_2f
    new-instance p0, Landroid/content/ActivityNotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Activity found to handle "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/ActivityNotFoundException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1960
    :cond_46
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission denied and not allowed to start activity "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 1963
    :cond_5d
    new-instance p0, Landroid/util/AndroidRuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Activity could not be started for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " with error code : "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public createTaskFragment(Landroid/window/TaskFragmentCreationParams;Landroid/os/IBinder;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V
    .registers 12

    .line 1776
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOwnerToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1778
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOrganizer()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object v1

    invoke-virtual {v1}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 1777
    invoke-static {v1}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v3

    if-eqz v0, :cond_e6

    .line 1780
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_1e

    goto/16 :goto_e6

    .line 1787
    :cond_1e
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isResizeable()Z

    move-result v1

    if-nez v1, :cond_33

    .line 1788
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not allowed to operate with non-resizable owner Activity"

    invoke-direct {v7, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object v2, p0

    move-object v4, p2

    .line 1790
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void

    .line 1795
    :cond_33
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1796
    iget v2, v1, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    if-ne v2, v4, :cond_d7

    iget v2, v1, Lcom/android/server/wm/Task;->effectiveUid:I

    iget p3, p3, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    if-eq v2, p3, :cond_47

    goto/16 :goto_d7

    .line 1805
    :cond_47
    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result p3

    if-eqz p3, :cond_5c

    .line 1806
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not allowed to create TaskFragment in PIP Task"

    invoke-direct {v7, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object v2, p0

    move-object v4, p2

    .line 1808
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void

    .line 1812
    :cond_5c
    new-instance p2, Lcom/android/server/wm/TaskFragment;

    iget-object p3, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1813
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {p2, p3, v2, v3}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Z)V

    .line 1816
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getOrganizer()Landroid/window/TaskFragmentOrganizerToken;

    move-result-object p3

    .line 1817
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v2

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1816
    invoke-virtual {p2, p3, v2, v3}, Lcom/android/server/wm/TaskFragment;->setTaskFragmentOrganizer(Landroid/window/TaskFragmentOrganizerToken;ILjava/lang/String;)V

    .line 1819
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    const v2, 0x7fffffff

    if-eqz p3, :cond_a6

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->inFullscreenWindowingMode()Z

    move-result p3

    if-eqz p3, :cond_a6

    .line 1821
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopVisibleTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p3

    if-eqz p3, :cond_a2

    .line 1822
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->isSplitEmbedded()Z

    move-result v3

    if-nez v3, :cond_a2

    .line 1823
    invoke-virtual {p3}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eq v3, v0, :cond_a2

    .line 1824
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getWindowingMode()I

    move-result v3

    if-eqz v3, :cond_a2

    .line 1825
    iget-object v2, v1, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    .line 1827
    :cond_a2
    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_a9

    .line 1830
    :cond_a6
    invoke-virtual {v1, p2, v2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1832
    :goto_a9
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getWindowingMode()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/wm/ConfigurationContainer;->setWindowingMode(I)V

    .line 1833
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getInitialBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/android/server/wm/ConfigurationContainer;->setBounds(Landroid/graphics/Rect;)I

    .line 1835
    sget-boolean p3, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz p3, :cond_cd

    .line 1836
    invoke-virtual {v0}, Lcom/android/server/wm/ConfigurationContainer;->getActivityType()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/wm/ConfigurationContainer;->setActivityType(I)V

    .line 1838
    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getInitialBounds()Landroid/graphics/Rect;

    move-result-object p3

    .line 1837
    invoke-virtual {p2, v1, p3}, Lcom/android/server/wm/TaskFragment;->calculateEmbedActivityMode(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/server/wm/ConfigurationContainer;->setEmbedActivityMode(I)V

    .line 1841
    :cond_cd
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/window/TaskFragmentCreationParams;->getFragmentToken()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 1798
    :cond_d7
    :goto_d7
    new-instance v7, Ljava/lang/SecurityException;

    const-string p1, "Not allowed to operate with the ownerToken while the root activity of the target task belong to the different app"

    invoke-direct {v7, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object v2, p0

    move-object v4, p2

    .line 1801
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void

    .line 1781
    :cond_e6
    :goto_e6
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not allowed to operate with invalid ownerToken"

    invoke-direct {v7, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x7

    move-object v2, p0

    move-object v4, p2

    .line 1783
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void
.end method

.method public final deleteTaskFragment(Lcom/android/server/wm/TaskFragment;Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;)I
    .registers 13

    .line 1895
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_1a

    .line 1897
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not allowed to operate with invalid taskFragment"

    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v6, 0x8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p1

    .line 1900
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v1

    .line 1904
    :cond_1a
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 1907
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 1908
    new-instance v8, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not allowed to delete TaskFragment in PIP Task"

    invoke-direct {v8, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v7, 0x8

    move-object v3, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    .line 1910
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return v1

    .line 1914
    :cond_37
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 1916
    sget-boolean p0, Lcom/samsung/android/rune/CoreRune;->MW_EMBED_ACTIVITY:Z

    if-eqz p0, :cond_49

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAnimating()Z

    move-result p0

    if-eqz p0, :cond_49

    .line 1917
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    :cond_49
    const/4 p0, 0x1

    const-string p2, "deleteTaskFragment"

    .line 1920
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskFragment;->remove(ZLjava/lang/String;)V

    const/4 p0, 0x2

    return p0
.end method

.method public final enforceOperationsAllowedForTaskFragmentOrganizer(Ljava/lang/String;Landroid/window/WindowContainerTransaction;)V
    .registers 9

    .line 1615
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    .line 1619
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getChanges()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1620
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 1621
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1623
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 1624
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    .line 1625
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction$Change;

    invoke-virtual {p0, p1, v3, v2, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentConfigChangeAllowed(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/window/ITaskFragmentOrganizer;)V

    goto :goto_10

    .line 1629
    :cond_33
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getHierarchyOps()Ljava/util/List;

    move-result-object p2

    .line 1630
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_3d
    if-ltz v1, :cond_d8

    .line 1631
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 1632
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v4

    if-eq v4, v2, :cond_c9

    const/4 v5, 0x4

    if-eq v4, v5, :cond_b2

    const/16 v5, 0xd

    if-eq v4, v5, :cond_d4

    const/16 v5, 0x12

    if-eq v4, v5, :cond_d4

    packed-switch v4, :pswitch_data_da

    .line 1671
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1672
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " trying to apply a hierarchy change that is not allowed for TaskFragmentOrganizer="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowOrganizerController"

    .line 1675
    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1676
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1662
    :pswitch_95
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 1661
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    .line 1663
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v4

    if-eqz v4, :cond_d4

    .line 1665
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 1664
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    goto :goto_d4

    .line 1642
    :cond_b2
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    .line 1641
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    .line 1644
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAdjacentRoot()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 1643
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    goto :goto_d4

    .line 1638
    :cond_c9
    :pswitch_c9
    invoke-virtual {v3}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 1637
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V

    :cond_d4
    :goto_d4
    :pswitch_d4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_3d

    :cond_d8
    return-void

    nop

    :pswitch_data_da
    .packed-switch 0x7
        :pswitch_d4
        :pswitch_c9
        :pswitch_d4
        :pswitch_d4
        :pswitch_95
    .end packed-switch
.end method

.method public final enforceTaskFragmentConfigChangeAllowed(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$Change;Landroid/window/ITaskFragmentOrganizer;)V
    .registers 11

    const-string p0, "WindowOrganizerController"

    if-nez p2, :cond_a

    const-string p1, "Attempt to operate on task fragment that no longer exists"

    .line 1706
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    if-nez p3, :cond_d

    return-void

    .line 1712
    :cond_d
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$Change;->getChangeMask()I

    move-result v0

    const-string v1, ", uid="

    const-string v2, " from pid="

    const-string v3, "Permission Denial: "

    if-nez v0, :cond_130

    .line 1723
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isAllowedToBeEmbeddedInTrustedMode()Z

    move-result v0

    if-eqz v0, :cond_24

    return-void

    .line 1727
    :cond_24
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object p2

    if-nez p2, :cond_30

    const-string p1, "Attempt to apply config change on task fragment that has no parent"

    .line 1729
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1732
    :cond_30
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$Change;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1733
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 1734
    iget v4, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v5, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    if-lt v4, v5, :cond_fc

    iget v4, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v5, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    if-lt v4, v5, :cond_fc

    iget v4, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v5, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-lt v4, v5, :cond_fc

    .line 1744
    invoke-virtual {p3}, Landroid/window/WindowContainerTransaction$Change;->getWindowSetMask()I

    move-result p3

    if-nez p3, :cond_51

    return-void

    .line 1748
    :cond_51
    iget-object p3, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1749
    iget-object p2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1750
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a2

    .line 1751
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_6e

    goto :goto_a2

    .line 1752
    :cond_6e
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " trying to apply bounds outside of parent for non-trusted host, TaskFragmentOrganizer="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1756
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1759
    :cond_a2
    :goto_a2
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_fb

    .line 1760
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_fb

    .line 1761
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_fb

    .line 1762
    invoke-virtual {p2}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p2

    .line 1763
    invoke-virtual {p3}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object p3

    .line 1762
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p2

    if-eqz p2, :cond_c7

    goto :goto_fb

    .line 1764
    :cond_c7
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1765
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " trying to apply app bounds outside of parent for non-trusted host, TaskFragmentOrganizer="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1768
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1769
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_fb
    :goto_fb
    return-void

    .line 1737
    :cond_fc
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1738
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " trying to apply screen width/height greater than parent\'s for non-trusted host, TaskFragmentOrganizer="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1741
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1742
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1715
    :cond_130
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1716
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " trying to apply changes of "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " to TaskFragment TaskFragmentOrganizer="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1719
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1720
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceTaskFragmentOrganized(Ljava/lang/String;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;)V
    .registers 5

    const-string p0, "WindowOrganizerController"

    if-nez p2, :cond_a

    const-string p1, "Attempt to operate on window that no longer exists"

    .line 1684
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1688
    :cond_a
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p2

    if-eqz p2, :cond_17

    .line 1689
    invoke-virtual {p2, p3}, Lcom/android/server/wm/TaskFragment;->hasTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Z

    move-result p2

    if-eqz p2, :cond_17

    return-void

    .line 1690
    :cond_17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1691
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " trying to modify window container not belonging to the TaskFragmentOrganizer="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1693
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    new-instance p0, Ljava/lang/SecurityException;

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceTaskPermission(Ljava/lang/String;)V
    .registers 2

    .line 1595
    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    return-void
.end method

.method public final enforceTaskPermission(Ljava/lang/String;Landroid/window/WindowContainerTransaction;)V
    .registers 4

    if-eqz p2, :cond_d

    .line 1599
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_d

    .line 1606
    :cond_9
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/WindowOrganizerController;->enforceOperationsAllowedForTaskFragmentOrganizer(Ljava/lang/String;Landroid/window/WindowContainerTransaction;)V

    return-void

    .line 1600
    :cond_d
    :goto_d
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    return-void
.end method

.method public finishTransition(Landroid/os/IBinder;Landroid/window/WindowContainerTransaction;Landroid/window/IWindowContainerTransactionCallback;)I
    .registers 13

    const-string v0, "finishTransition()"

    .line 404
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 405
    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v5}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 406
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 408
    :try_start_e
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_45

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, -0x1

    if-eqz p2, :cond_1d

    if-eqz p3, :cond_1d

    .line 411
    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowOrganizerController;->startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I

    move-result v1

    :cond_1d
    move p3, v1

    .line 413
    invoke-static {p1}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object v6

    if-eqz p2, :cond_2b

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    .line 417
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Lcom/android/server/wm/Transition;)V

    .line 419
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrganizerController;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/server/wm/TransitionController;->finishTransition(Landroid/os/IBinder;)V

    if-ltz p3, :cond_37

    .line 421
    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    .line 423
    :cond_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_11 .. :try_end_38} :catchall_3f

    .line 426
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p3

    :catchall_3f
    move-exception p0

    .line 424
    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    :try_start_41
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_45

    :catchall_45
    move-exception p0

    .line 426
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 427
    throw p0
.end method

.method public getDisplayAreaOrganizerController()Landroid/window/IDisplayAreaOrganizerController;
    .registers 2

    const-string v0, "getDisplayAreaOrganizerController()"

    .line 1495
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1496
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mDisplayAreaOrganizerController:Lcom/android/server/wm/DisplayAreaOrganizerController;

    return-object p0
.end method

.method public getTaskFragment(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragment;
    .registers 2

    .line 1926
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mLaunchTaskFragments:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/TaskFragment;

    return-object p0
.end method

.method public getTaskFragmentOrganizerController()Landroid/window/ITaskFragmentOrganizerController;
    .registers 1

    .line 1501
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    return-object p0
.end method

.method public getTaskOrganizerController()Landroid/window/ITaskOrganizerController;
    .registers 2

    const-string v0, "getTaskOrganizerController()"

    .line 1489
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1490
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    return-object p0
.end method

.method public getTransitionController()Lcom/android/server/wm/TransitionController;
    .registers 1

    .line 179
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    return-object p0
.end method

.method public getTransitionMetricsReporter()Landroid/window/ITransitionMetricsReporter;
    .registers 1

    .line 1575
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object p0, p0, Lcom/android/server/wm/TransitionController;->mTransitionMetricsReporter:Lcom/android/server/wm/TransitionController$TransitionMetricsReporter;

    return-object p0
.end method

.method public final isEnterSplitWithSingleStage(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/window/WindowContainerTransaction$HierarchyOp;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    .line 2004
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_39

    .line 2005
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/window/WindowContainerTransaction$HierarchyOp;

    .line 2006
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getType()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_36

    .line 2007
    invoke-virtual {v2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getLaunchOptions()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 2009
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/Task;->fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 2010
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->inSplitScreenWindowingMode()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 2011
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->getStageType()I

    move-result v2

    or-int/2addr v1, v2

    :cond_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_39
    if-lez v1, :cond_3f

    const/4 p1, 0x3

    if-ge v1, p1, :cond_3f

    const/4 p0, 0x1

    :cond_3f
    return p0
.end method

.method public onEnterSplitWithSingleStageFinished(Ljava/lang/String;)V
    .registers 4

    .line 1985
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1986
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2a

    .line 1987
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnterSplitWithSingleStageFinished: c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " reason="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowOrganizerController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public onEnterSplitWithSingleStageStarted(Ljava/lang/String;)V
    .registers 4

    .line 1977
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1978
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz v0, :cond_2a

    .line 1979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onEnterSplitWithSingleStageStarted: c="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " reason="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowOrganizerController"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2a
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 186
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/window/IWindowOrganizerController$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return p0

    :catch_5
    move-exception p0

    const-string p1, "WindowOrganizerController"

    .line 188
    invoke-static {p1, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .registers 11

    .line 1537
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_18

    int-to-long v0, p1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x1da914ac

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1538
    :cond_18
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    .line 1539
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/window/IWindowContainerTransactionCallback;

    .line 1542
    :try_start_24
    invoke-interface {v0, p1, p2}, Landroid/window/IWindowContainerTransactionCallback;->onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_27} :catch_28

    goto :goto_2b

    .line 1546
    :catch_28
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 1549
    :goto_2b
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final prepareSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .registers 4

    .line 1511
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    const-string v1, ""

    .line 1512
    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/BLASTSyncEngine;->prepareSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;Ljava/lang/String;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object v0

    .line 1513
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransactionCallbacksByPendingSyncId:Ljava/util/HashMap;

    iget v1, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public registerTransitionPlayer(Landroid/window/ITransitionPlayer;)V
    .registers 8

    const-string/jumbo v0, "registerTransitionPlayer()"

    .line 1554
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1555
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1556
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1557
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1559
    :try_start_12
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_38

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1560
    iget-object v5, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1561
    invoke-virtual {v5, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 1564
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    .line 1566
    :cond_25
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/TransitionController;->registerTransitionPlayer(Landroid/window/ITransitionPlayer;Landroid/app/IApplicationThread;)V

    .line 1567
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_15 .. :try_end_2b} :catchall_32

    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_38

    .line 1569
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_32
    move-exception p0

    .line 1567
    :try_start_33
    monitor-exit v4
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    :try_start_34
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_38
    .catchall {:try_start_34 .. :try_end_38} :catchall_38

    :catchall_38
    move-exception p0

    .line 1569
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1570
    throw p0
.end method

.method public final reparentChildrenTasksHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;Lcom/android/server/wm/Transition;IZ)I
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    .line 1316
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 1317
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 1318
    :goto_18
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 1319
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    if-nez v1, :cond_45

    if-eqz v2, :cond_2d

    goto :goto_45

    .line 1321
    :cond_2d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reparentChildrenTasksHierarchyOp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_45
    :goto_45
    if-nez v1, :cond_54

    .line 1323
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    goto :goto_62

    :cond_54
    if-nez v2, :cond_62

    .line 1325
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    :cond_62
    :goto_62
    move-object v11, v1

    move-object v12, v2

    const-string v1, "WindowOrganizerController"

    const/4 v13, 0x0

    if-ne v11, v12, :cond_7f

    .line 1329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reparentChildrenTasksHierarchyOp parent not changing: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 1332
    :cond_7f
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    const-string v3, " hop="

    if-nez v2, :cond_a3

    .line 1333
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reparentChildrenTasksHierarchyOp currentParent detached="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 1337
    :cond_a3
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v2

    if-nez v2, :cond_c5

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reparentChildrenTasksHierarchyOp newParent detached="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    .line 1342
    :cond_c5
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reparentChildrenTasksHierarchyOp newParent in PIP="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v13

    :cond_e7
    if-eqz p4, :cond_121

    .line 1350
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v2

    if-eqz v2, :cond_121

    .line 1351
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_121

    .line 1352
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_121

    .line 1353
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 1354
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1355
    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v2, v5}, Lcom/android/server/wm/WindowContainer;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v5

    if-eqz v5, :cond_121

    .line 1359
    iget-object v6, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    iget-object v2, v2, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1360
    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 1359
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v2

    sub-int/2addr v5, v2

    move v14, v5

    goto :goto_122

    :cond_121
    move v14, v13

    .line 1365
    :goto_122
    invoke-virtual {v12}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v4

    .line 1366
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_135

    .line 1367
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    goto :goto_139

    .line 1368
    :cond_135
    invoke-virtual {v12}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    :goto_139
    move-object v5, v2

    .line 1370
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reparentChildrenTasksHierarchyOp currentParent="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " newParent="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1376
    new-instance v6, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;

    move-object v1, v6

    move-object v2, v11

    move v3, v4

    move-object v4, v5

    move-object/from16 v5, p1

    move-object v10, v6

    move-object v6, v15

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowContainer;ZLcom/android/server/wm/TaskDisplayArea;Landroid/window/WindowContainerTransaction$HierarchyOp;Ljava/util/ArrayList;)V

    invoke-virtual {v11, v10}, Lcom/android/server/wm/WindowContainer;->forAllTasks(Ljava/util/function/Predicate;)Z

    .line 1402
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v13

    const/4 v10, 0x0

    :goto_178
    if-ge v2, v1, :cond_1cc

    .line 1407
    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/Task;

    if-ltz v9, :cond_185

    .line 1409
    invoke-virtual {v0, v9, v3}, Lcom/android/server/wm/WindowOrganizerController;->addToSyncSet(ILcom/android/server/wm/WindowContainer;)V

    :cond_185
    if-eqz v8, :cond_18a

    .line 1411
    invoke-virtual {v8, v3}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    .line 1413
    :cond_18a
    instance-of v4, v12, Lcom/android/server/wm/TaskDisplayArea;

    if-eqz v4, :cond_1b4

    if-lez v14, :cond_1a0

    .line 1416
    move-object v4, v12

    check-cast v4, Lcom/android/server/wm/TaskDisplayArea;

    iget-object v5, v12, Lcom/android/server/wm/WindowContainer;->mChildren:Lcom/android/server/wm/WindowList;

    .line 1417
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v14

    .line 1416
    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_1c9

    .line 1421
    :cond_1a0
    move-object v4, v12

    check-cast v4, Lcom/android/server/wm/TaskDisplayArea;

    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    .line 1423
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v4

    if-eqz v4, :cond_1c9

    if-eqz p4, :cond_1c9

    move-object v10, v3

    goto :goto_1c9

    .line 1429
    :cond_1b4
    move-object v4, v12

    check-cast v4, Lcom/android/server/wm/Task;

    .line 1430
    invoke-virtual/range {p1 .. p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result v5

    if-eqz v5, :cond_1c1

    const v5, 0x7fffffff

    goto :goto_1c3

    :cond_1c1
    const/high16 v5, -0x80000000

    :goto_1c3
    const-string/jumbo v6, "processChildrenTaskReparentHierarchyOp"

    .line 1429
    invoke-virtual {v3, v4, v5, v13, v6}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    :cond_1c9
    :goto_1c9
    add-int/lit8 v2, v2, 0x1

    goto :goto_178

    :cond_1cc
    if-eqz v10, :cond_1d7

    .line 1437
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, v10}, Lcom/android/server/wm/RecentTasks;->adjustTopExcludeFromRecentTaskOrder(Lcom/android/server/wm/Task;)V

    :cond_1d7
    if-eqz v8, :cond_1dc

    .line 1441
    invoke-virtual {v8, v12}, Lcom/android/server/wm/Transition;->collect(Lcom/android/server/wm/WindowContainer;)V

    :cond_1dc
    const/4 v0, 0x2

    return v0
.end method

.method public reparentTaskFragment(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/WindowContainer;Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/TaskFragment;",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;",
            "Landroid/window/ITaskFragmentOrganizer;",
            "Landroid/os/IBinder;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_7

    .line 1850
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    goto :goto_b

    .line 1852
    :cond_7
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p2

    :goto_b
    move-object v3, p2

    if-nez v3, :cond_1e

    .line 1855
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not allowed to operate with invalid container"

    invoke-direct {v5, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xb

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    .line 1857
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void

    .line 1861
    :cond_1e
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object p2

    if-eqz p2, :cond_3f

    .line 1864
    new-instance p2, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;

    invoke-direct {p2, v3}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result p2

    if-eqz p2, :cond_3f

    .line 1867
    new-instance v5, Ljava/lang/SecurityException;

    const-string p1, "The new parent is not allowed to embed the activities."

    invoke-direct {v5, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xb

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    .line 1869
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void

    .line 1874
    :cond_3f
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result p2

    if-nez p2, :cond_79

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result p2

    if-eqz p2, :cond_4c

    goto :goto_79

    .line 1881
    :cond_4c
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eq p2, v0, :cond_66

    .line 1882
    new-instance v5, Ljava/lang/SecurityException;

    const-string p1, "The new parent is not in the same Task as the old parent."

    invoke-direct {v5, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xb

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    .line 1884
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void

    .line 1888
    :cond_66
    :goto_66
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->hasChild()Z

    move-result p0

    if-eqz p0, :cond_78

    const/4 p0, 0x0

    .line 1889
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    const p2, 0x7fffffff

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/WindowContainer;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    goto :goto_66

    :cond_78
    return-void

    .line 1875
    :cond_79
    :goto_79
    new-instance v5, Ljava/lang/SecurityException;

    const-string p1, "Not allow to reparent in TaskFragment in PIP Task."

    invoke-direct {v5, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    const/16 v4, 0xb

    move-object v0, p0

    move-object v1, p3

    move-object v2, p4

    .line 1877
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void
.end method

.method public final sanitizeAndApplyHierarchyOp(Lcom/android/server/wm/WindowContainer;Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .registers 9

    .line 1235
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object p0

    if-eqz p0, :cond_147

    .line 1239
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    const-string v0, "WindowOrganizerController"

    const/4 v1, 0x0

    if-nez p1, :cond_24

    .line 1241
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Container is no longer attached: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1246
    :cond_24
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->isReparent()Z

    move-result v2

    const v3, 0x7fffffff

    const/high16 v4, -0x80000000

    if-eqz v2, :cond_133

    .line 1248
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    if-nez v2, :cond_44

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v2, :cond_42

    goto :goto_44

    :cond_42
    move v2, v1

    goto :goto_45

    :cond_44
    :goto_44
    const/4 v2, 0x1

    :goto_45
    if-eqz v2, :cond_11c

    .line 1250
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_52

    .line 1251
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    goto :goto_5a

    .line 1252
    :cond_52
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getNewParent()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p1

    :goto_5a
    if-nez p1, :cond_62

    const-string p0, "Can\'t resolve parent window from token"

    .line 1254
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1257
    :cond_62
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    if-eq v2, p1, :cond_101

    .line 1258
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_7b

    .line 1260
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p1

    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V

    goto/16 :goto_145

    .line 1261
    :cond_7b
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_ea

    .line 1262
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_d9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v2

    if-eqz v2, :cond_d9

    .line 1263
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v2

    const-string v5, " task="

    if-eqz v2, :cond_b0

    .line 1264
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t support moving a task to another PIP window... newParent="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1269
    :cond_b0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 1268
    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v2

    if-nez v2, :cond_d9

    .line 1270
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t support task that doesn\'t support multi-window mode in multi-window mode... newParent="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1276
    :cond_d9
    check-cast p1, Lcom/android/server/wm/Task;

    .line 1277
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result p2

    if-eqz p2, :cond_e2

    goto :goto_e3

    :cond_e2
    move v3, v4

    :goto_e3
    const-string/jumbo p2, "sanitizeAndApplyHierarchyOp"

    .line 1276
    invoke-virtual {p0, p1, v3, v1, p2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    goto :goto_145

    .line 1280
    :cond_ea
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can only reparent task to another task or taskDisplayArea, but not "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1285
    :cond_101
    instance-of v0, p1, Lcom/android/server/wm/TaskDisplayArea;

    if-nez v0, :cond_106

    goto :goto_10a

    .line 1286
    :cond_106
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object p1

    :goto_10a
    check-cast p1, Lcom/android/server/wm/Task;

    .line 1287
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object p0

    .line 1288
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result p2

    if-eqz p2, :cond_117

    goto :goto_118

    :cond_117
    move v3, v4

    .line 1287
    :goto_118
    invoke-virtual {p0, v3, p1, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    goto :goto_145

    .line 1292
    :cond_11c
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reparenting leaf Tasks is not supported now. "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1295
    :cond_133
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1296
    invoke-virtual {p2}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getToTop()Z

    move-result p2

    if-eqz p2, :cond_13e

    goto :goto_13f

    :cond_13e
    move v3, v4

    .line 1295
    :goto_13f
    invoke-virtual {v0, v3, p0, v1}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 1299
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    :goto_145
    const/4 p0, 0x2

    return p0

    .line 1237
    :cond_147
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid container in hierarchy op"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final sanitizeWindowContainer(Lcom/android/server/wm/WindowContainer;)V
    .registers 2

    .line 1463
    instance-of p0, p1, Lcom/android/server/wm/TaskFragment;

    if-nez p0, :cond_11

    instance-of p0, p1, Lcom/android/server/wm/DisplayArea;

    if-eqz p0, :cond_9

    goto :goto_11

    .line 1464
    :cond_9
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Invalid token in task fragment or displayArea transaction"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    return-void
.end method

.method public final sendMinimumDimensionViolation(Lcom/android/server/wm/TaskFragment;Landroid/graphics/Point;Landroid/os/IBinder;Ljava/lang/String;)V
    .registers 12

    if-eqz p1, :cond_3e

    .line 1198
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    if-nez v0, :cond_9

    goto :goto_3e

    .line 1201
    :cond_9
    new-instance v6, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The task fragment\'s bounds:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1202
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " does not satisfy minimum dimensions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v6, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;

    move-result-object v2

    const/4 v5, -0x1

    move-object v1, p0

    move-object v3, p3

    move-object v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController;->sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    return-void
.end method

.method public sendTaskFragmentOperationFailure(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V
    .registers 12

    if-eqz p1, :cond_f

    .line 1949
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    .line 1950
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentError(Landroid/window/ITaskFragmentOrganizer;Landroid/os/IBinder;Lcom/android/server/wm/TaskFragment;ILjava/lang/Throwable;)V

    return-void

    .line 1947
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Not allowed to operate with invalid organizer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setAdjacentRootsHierarchyOp(Landroid/window/WindowContainerTransaction$HierarchyOp;)I
    .registers 5

    .line 1447
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getContainer()Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object p0

    .line 1449
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getAdjacentRoot()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/WindowContainer;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    .line 1450
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_3f

    iget-boolean v1, v0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_3f

    .line 1454
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v1

    if-eqz v1, :cond_2d

    goto :goto_36

    .line 1458
    :cond_2d
    invoke-virtual {p1}, Landroid/window/WindowContainerTransaction$HierarchyOp;->getMoveAdjacentTogether()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;Z)V

    const/4 p0, 0x2

    return p0

    :cond_36
    :goto_36
    const-string p0, "WindowOrganizerController"

    const-string p1, "Attempt to set adjacent TaskFragment in PIP Task"

    .line 1455
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 1451
    :cond_3f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAdjacentRootsHierarchyOp: Not created by organizer root1="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " root2="

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setSyncReady(I)V
    .registers 10
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1526
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_ORGANIZER_enabled:Z

    if-eqz v0, :cond_18

    int-to-long v0, p1

    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_ORGANIZER:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x377c50a7

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1527
    :cond_18
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->setReady(I)V

    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5

    .line 174
    new-instance v0, Lcom/android/server/wm/TransitionController;

    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/TransitionController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/TaskSnapshotController;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 175
    iget-object p0, p1, Lcom/android/server/wm/WindowManagerService;->mActivityManagerAppTransitionNotifier:Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TransitionController;->registerLegacyListener(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    return-void
.end method

.method public startLegacyTransition(ILandroid/view/RemoteAnimationAdapter;Landroid/window/IWindowContainerTransactionCallback;Landroid/window/WindowContainerTransaction;)I
    .registers 13

    const-string/jumbo v0, "startLegacyTransition()"

    .line 357
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 358
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v0}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 359
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 362
    :try_start_f
    iget-object v3, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_a8

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    if-ltz p1, :cond_9a

    .line 366
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v4}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v4

    if-nez v4, :cond_92

    .line 370
    iget-object v4, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x0

    .line 371
    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 372
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    invoke-virtual {v5}, Lcom/android/server/wm/AppTransition;->isTransitionSet()Z

    move-result v5

    if-eqz v5, :cond_6f

    .line 374
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isKeyguardOccluded()Z

    move-result v5

    const/4 v6, -0x1

    if-eqz v5, :cond_6d

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result v5

    if-nez v5, :cond_6d

    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    .line 375
    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6d

    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mChangingContainers:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_6d

    .line 376
    iget-object v5, v4, Lcom/android/server/wm/DisplayContent;->mOpeningApps:Landroid/util/ArraySet;

    invoke-virtual {v5}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_53
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 377
    invoke-virtual {v7}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v7

    if-nez v7, :cond_53

    .line 378
    monitor-exit v3
    :try_end_66
    .catchall {:try_start_12 .. :try_end_66} :catchall_a2

    .line 395
    :goto_66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v6

    .line 384
    :cond_6d
    :try_start_6d
    monitor-exit v3

    goto :goto_66

    .line 387
    :cond_6f
    iget v5, v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mPid:I

    iget v6, v0, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;->mUid:I

    invoke-virtual {p2, v5, v6}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 388
    invoke-virtual {v4, p1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 389
    iget-object p1, v4, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v4, 0x1

    invoke-virtual {p1, p2, v4}, Lcom/android/server/wm/AppTransition;->overridePendingAppTransitionRemote(Landroid/view/RemoteAnimationAdapter;Z)V

    .line 390
    invoke-virtual {p0, p3}, Lcom/android/server/wm/WindowOrganizerController;->startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I

    move-result p1

    const/4 p2, 0x0

    .line 391
    invoke-virtual {p0, p4, p1, p2, v0}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 392
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->setSyncReady(I)V

    .line 393
    monitor-exit v3
    :try_end_8b
    .catchall {:try_start_6d .. :try_end_8b} :catchall_a2

    :try_start_8b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_8e
    .catchall {:try_start_8b .. :try_end_8e} :catchall_a8

    .line 395
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p1

    .line 367
    :cond_92
    :try_start_92
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t use legacy transitions in when shell transitions are enabled."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 364
    :cond_9a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t create transition with no type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_a2
    move-exception p0

    .line 393
    monitor-exit v3
    :try_end_a4
    .catchall {:try_start_92 .. :try_end_a4} :catchall_a2

    :try_start_a4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_a8

    :catchall_a8
    move-exception p0

    .line 395
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 396
    throw p0
.end method

.method public startSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1519
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrganizerController;->prepareSyncWithOrganizer(Landroid/window/IWindowContainerTransactionCallback;)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    move-result-object p1

    .line 1520
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 1521
    iget p0, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    return p0
.end method

.method public startTransition(ILandroid/os/IBinder;Landroid/window/WindowContainerTransaction;)Landroid/os/IBinder;
    .registers 14

    const-string/jumbo v0, "startTransition()"

    .line 289
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowOrganizerController;->enforceTaskPermission(Ljava/lang/String;)V

    .line 290
    new-instance v5, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;

    invoke-direct {v5}, Lcom/android/server/wm/WindowOrganizerController$CallerInfo;-><init>()V

    .line 291
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 293
    :try_start_f
    iget-object v0, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_cf

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 294
    invoke-static {p2}, Lcom/android/server/wm/Transition;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/Transition;

    move-result-object p2

    .line 295
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v1}, Lcom/android/server/wm/TransitionController;->getTransitionPlayer()Landroid/window/ITransitionPlayer;

    move-result-object v1

    const/4 v2, -0x1

    if-nez v1, :cond_41

    if-nez p2, :cond_41

    const-string p1, "WindowOrganizerController"

    const-string p2, "Using shell transitions API for legacy transitions."

    .line 296
    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_39

    const/4 p1, 0x0

    .line 301
    invoke-virtual {p0, p3, v2, p1, v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    .line 302
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_12 .. :try_end_32} :catchall_c9

    .line 349
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p1

    .line 298
    :cond_39
    :try_start_39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t use legacy transitions in compatibility mode with no WCT."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_41
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_49

    if-eqz p3, :cond_49

    move v6, v1

    goto :goto_4a

    :cond_49
    move v6, v3

    :goto_4a
    if-eqz p3, :cond_4e

    :goto_4c
    move-object v4, p3

    goto :goto_54

    .line 310
    :cond_4e
    new-instance p3, Landroid/window/WindowContainerTransaction;

    invoke-direct {p3}, Landroid/window/WindowContainerTransaction;-><init>()V

    goto :goto_4c

    :goto_54
    if-nez p2, :cond_bc

    if-ltz p1, :cond_b4

    .line 319
    iget-object p2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p2, p2, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-virtual {p2}, Lcom/android/server/wm/BLASTSyncEngine;->hasActiveSync()Z

    move-result p2

    if-eqz p2, :cond_ad

    const-string p2, "WindowOrganizerController"

    const-string/jumbo p3, "startTransition() while one is already collecting."

    .line 320
    invoke-static {p2, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    new-instance p2, Lcom/android/server/wm/Transition;

    iget-object p3, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    iget-object v2, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    invoke-direct {p2, p1, v3, p3, v2}, Lcom/android/server/wm/Transition;-><init>(IILcom/android/server/wm/TransitionController;Lcom/android/server/wm/BLASTSyncEngine;)V

    .line 323
    sget-boolean p1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_WINDOW_TRANSITIONS_enabled:Z

    if-eqz p1, :cond_8f

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_WINDOW_TRANSITIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x635ee10b

    const-string v9, "Creating Pending Transition: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    invoke-static {p3, v2, v3, v9, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 325
    :cond_8f
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mSyncEngine:Lcom/android/server/wm/BLASTSyncEngine;

    new-instance p3, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0, p2}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;)V

    new-instance v9, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/WindowOrganizerController;Lcom/android/server/wm/Transition;Landroid/window/WindowContainerTransaction;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;Z)V

    invoke-virtual {p1, p3, v9}, Lcom/android/server/wm/BLASTSyncEngine;->queueSyncSet(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 337
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_39 .. :try_end_a6} :catchall_c9

    .line 349
    :goto_a6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    .line 339
    :cond_ad
    :try_start_ad
    iget-object p2, p0, Lcom/android/server/wm/WindowOrganizerController;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {p2, p1}, Lcom/android/server/wm/TransitionController;->createTransition(I)Lcom/android/server/wm/Transition;

    move-result-object p2

    goto :goto_bc

    .line 313
    :cond_b4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Can\'t create transition with no type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 341
    :cond_bc
    :goto_bc
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->start()V

    .line 342
    invoke-virtual {p0, v4, v2, p2, v5}, Lcom/android/server/wm/WindowOrganizerController;->applyTransaction(Landroid/window/WindowContainerTransaction;ILcom/android/server/wm/Transition;Lcom/android/server/wm/WindowOrganizerController$CallerInfo;)V

    if-eqz v6, :cond_c7

    .line 344
    invoke-virtual {p2}, Lcom/android/server/wm/Transition;->setAllReady()V

    .line 346
    :cond_c7
    monitor-exit v0

    goto :goto_a6

    :catchall_c9
    move-exception p0

    .line 347
    monitor-exit v0
    :try_end_cb
    .catchall {:try_start_ad .. :try_end_cb} :catchall_c9

    :try_start_cb
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_cf
    .catchall {:try_start_cb .. :try_end_cf} :catchall_cf

    :catchall_cf
    move-exception p0

    .line 349
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 350
    throw p0
.end method

.method public final waitAsyncStart(Ljava/util/function/IntSupplier;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1214
    iget-object v1, p0, Lcom/android/server/wm/WindowOrganizerController;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/server/wm/WindowOrganizerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowOrganizerController;[Ljava/lang/Integer;Ljava/util/function/IntSupplier;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :catch_13
    :goto_13
    aget-object p1, v0, v2

    if-nez p1, :cond_1d

    .line 1227
    :try_start_17
    iget-object p1, p0, Lcom/android/server/wm/WindowOrganizerController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_1c
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_1c} :catch_13

    goto :goto_13

    :cond_1d
    return-void
.end method

.method public whileEnterSplitWithSingleStage()Z
    .registers 1

    .line 1999
    iget-object p0, p0, Lcom/android/server/wm/WindowOrganizerController;->mEnterSplitWithSingleStage:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
