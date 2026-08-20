.class public Lcom/android/server/wm/MultiWindowEnableController;
.super Ljava/lang/Object;
.source "MultiWindowEnableController.java"

# interfaces
.implements Lcom/android/server/wm/IController;
.implements Lcom/samsung/android/server/corestate/CoreStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;
    }
.end annotation


# static fields
.field public static final KIDS_HOME_PKG:Ljava/lang/String; = "com.sec.android.app.kidshome"

.field public static final MAX_DUMP_COUNT:I = 0x1e

.field public static final TAG:Ljava/lang/String; = "MultiWindowEnableController"


# instance fields
.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mCDRequestLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mCGRequestLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mCoreStateController:Lcom/android/server/wm/CoreStateController;

.field public final mDefaultLaunchFreeformLogs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDeviceSupportsMultiWindow:Z

.field public mDeviceSupportsSplitScreenMultiWindow:Z

.field public final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field public mH:Landroid/os/Handler;

.field public final mMWForceOnRequesters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mMWForceOnRequestersLog:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mMWOffRequesters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mMWOffRequestersForAllUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mMWOffRequestersLog:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mMultiStarBlockedMinimizeRequestLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mNaviStarSplitImmersiveModeRequestLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mPref:Landroid/content/SharedPreferences;

.field public final mSFRequestLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mSimpleDateFormat:Ljava/text/SimpleDateFormat;

.field public final mSplitImmersiveModeRequestLog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$8KvYFnorQS1DmkZWC8iETi_9zGU(Lcom/android/server/wm/MultiWindowEnableController;Ljava/lang/String;ZIZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/MultiWindowEnableController;->lambda$setMultiWindowDynamicEnabled$1(Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$a4RAAIoNn7Drl0sTGy8crJ0z274(Lcom/android/server/wm/Task;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/wm/MultiWindowEnableController;->lambda$dismissMultiWindowMode$0(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tIC7XLiOYoyOmlPQrZ2cnDMTJ0k(Lcom/android/server/wm/MultiWindowEnableController;Ljava/lang/String;ZIZ)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/wm/MultiWindowEnableController;->lambda$scheduleEnableChangedBroadcast$2(Ljava/lang/String;ZIZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAtm(Lcom/android/server/wm/MultiWindowEnableController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/wm/MultiWindowEnableController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 4

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 90
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    .line 91
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLog:Landroid/util/SparseArray;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequesters:Landroid/util/SparseArray;

    .line 96
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

    .line 100
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mDefaultLaunchFreeformLogs:Ljava/util/ArrayList;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCGRequestLogs:Ljava/util/ArrayList;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMultiStarBlockedMinimizeRequestLog:Ljava/util/ArrayList;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSFRequestLog:Ljava/util/ArrayList;

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCDRequestLogs:Ljava/util/ArrayList;

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mNaviStarSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 129
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsMultiWindow:Z

    .line 130
    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsSplitScreenMultiWindow:Z

    .line 133
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 134
    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-void
.end method

.method public static synthetic lambda$dismissMultiWindowMode$0(Lcom/android/server/wm/Task;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 197
    invoke-virtual {p0, p0, v0, v1, v1}, Lcom/android/server/wm/Task;->moveTaskToBack(Lcom/android/server/wm/Task;Landroid/os/Bundle;ZZ)Z

    return-void
.end method

.method private synthetic lambda$scheduleEnableChangedBroadcast$2(Ljava/lang/String;ZIZ)V
    .registers 5

    .line 596
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/MultiWindowEnableController;->sendEnableChangedBroadcast(Ljava/lang/String;ZIZ)V

    return-void
.end method

.method private synthetic lambda$setMultiWindowDynamicEnabled$1(Ljava/lang/String;ZIZ)V
    .registers 5

    .line 587
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/MultiWindowEnableController;->scheduleEnableChangedBroadcast(Ljava/lang/String;ZIZ)V

    return-void
.end method


# virtual methods
.method public deviceSupportsMultiWindow()Z
    .registers 1

    .line 666
    iget-boolean p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsMultiWindow:Z

    return p0
.end method

.method public deviceSupportsSplitScreenMultiWindow()Z
    .registers 1

    .line 670
    iget-boolean p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsSplitScreenMultiWindow:Z

    return p0
.end method

.method public disableDividerPanelFirstAutoOpen()V
    .registers 5

    .line 704
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 705
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v2, "multiwindow.property"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    .line 707
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "divider_panel_first_auto_open_disabled"

    .line 708
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 709
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 710
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    const-class v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/CoreStateController;->setSharedPreferenceEdited(Ljava/lang/Class;I)V

    return-void
.end method

.method public disableNonResizeableAppRestartDialog()V
    .registers 5

    .line 692
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 693
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v2, "multiwindow.property"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    .line 695
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v2, 0x1

    const-string v3, "dex_non_resizeable_app_restart_dialog_disabled"

    .line 696
    invoke-interface {v0, v3, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 697
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 698
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    const-class v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/CoreStateController;->setSharedPreferenceEdited(Ljava/lang/Class;I)V

    return-void
.end method

.method public dismissMultiWindowMode(I)V
    .registers 8

    .line 181
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 182
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    if-nez v1, :cond_2b

    .line 184
    sget-object p0, Lcom/android/server/wm/MultiWindowEnableController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissMultiWindowMode: cannot found displayContent #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_92

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 188
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-nez v2, :cond_4c

    .line 190
    sget-object p0, Lcom/android/server/wm/MultiWindowEnableController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dismissMultiWindowMode: cannot found defaultTaskDisplayArea for display #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_2b .. :try_end_48} :catchall_92

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_4c
    const/4 v3, 0x5

    const/4 v4, 0x1

    .line 196
    :try_start_4e
    invoke-virtual {v1, v3, v4}, Lcom/android/server/wm/DisplayContent;->getRootTasks(II)Ljava/util/List;

    move-result-object v3

    .line 197
    new-instance v5, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v3, v5}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 199
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_6a

    .line 201
    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    new-instance v3, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;

    invoke-direct {v3, p0, p1}, Lcom/android/server/wm/MultiWindowEnableController$TransitionListener;-><init>(Lcom/android/server/wm/MultiWindowEnableController;I)V

    invoke-virtual {v1, v3}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;)V

    .line 204
    :cond_6a
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result p1

    if-eqz p1, :cond_7f

    .line 205
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowEnableController;->isKidsHomeMode()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_7c

    const/4 p1, 0x0

    .line 208
    invoke-virtual {v2, v1, v4, p1}, Lcom/android/server/wm/TaskDisplayArea;->onStageSplitScreenDismissed(Lcom/android/server/wm/Task;ZZ)V

    goto :goto_7f

    .line 211
    :cond_7c
    invoke-virtual {v2, v1}, Lcom/android/server/wm/TaskDisplayArea;->onStageSplitScreenDismissed(Lcom/android/server/wm/Task;)V

    :cond_7f
    :goto_7f
    const/4 p1, 0x2

    .line 215
    invoke-virtual {v2, p1, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object p1

    if-eqz p1, :cond_8d

    .line 217
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 219
    :cond_8d
    monitor-exit v0
    :try_end_8e
    .catchall {:try_start_4e .. :try_end_8e} :catchall_92

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_92
    move-exception p0

    :try_start_93
    monitor-exit v0
    :try_end_94
    .catchall {:try_start_93 .. :try_end_94} :catchall_92

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7

    const-string p2, "[MultiWindowEnableController]"

    .line 236
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p2, 0x0

    move v0, p2

    .line 238
    :goto_7
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const-string v2, "] : "

    if-ge v0, v1, :cond_39

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MWOffRequester[u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 240
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_39
    move v0, p2

    .line 242
    :goto_3a
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_6a

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MWOffRequesterLog[u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 244
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3a

    .line 246
    :cond_6a
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_79

    .line 248
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    const-string v1, "MWOffRequestersForAllUsers : "

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 250
    :cond_79
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_88

    .line 252
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    const-string v1, "MWOffRequestersLogForAllUsers : "

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_88
    move v0, p2

    .line 254
    :goto_89
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_b9

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MWForceOnRequester[u"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 256
    iget-object v3, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v3, v1}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_89

    .line 258
    :cond_b9
    :goto_b9
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_e9

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MWForceOnRequesterLog[u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_b9

    .line 262
    :cond_e9
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_f8

    .line 264
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    const-string v0, "MWForceOnRequestersForAllUsers : "

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 266
    :cond_f8
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_107

    .line 268
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

    const-string v0, "MWForceOnRequestersLogForAllUsers : "

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 271
    :cond_107
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCGRequestLogs:Ljava/util/ArrayList;

    const-string v0, "MW_FREEFORM_CORNER_GESTURE_ENABLED"

    const-string v1, "mCGRequestLogs"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWFeatureLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 275
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMultiStarBlockedMinimizeRequestLog:Ljava/util/ArrayList;

    const-string v0, "MW_MULTISTAR_BLOCKED_MINIMIZE_FREEFORM"

    const-string v1, "mMultiStarBlockedMinimizeRequestLog"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWFeatureLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 280
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSFRequestLog:Ljava/util/ArrayList;

    const-string v0, "MW_MULTISTAR_STAY_FOCUS_ACTIVITY_DYNAMIC_ENABLED"

    const-string v1, "mSFRequestLog"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWFeatureLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 284
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCDRequestLogs:Ljava/util/ArrayList;

    const-string v0, "MW_MULTISTAR_CUSTOM_DENSITY_DYNAMIC_ENABLED"

    const-string v1, "mCDRequestLog"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWFeatureWithIntLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 288
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    const-string v0, "MW_SPLIT_IMMERSIVE_MODE_ENABLED"

    const-string v1, "mSplitImmersiveModeRequestLog"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWFeatureLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 290
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mNaviStarSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    const-string v0, "MW_NAVISTAR_SPLIT_IMMERSIVE_MODE_ENABLED"

    const-string v1, "mNaviStarSplitImmersiveModeRequestLog"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWFeatureLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 293
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public final dumpMWFeatureLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 321
    :try_start_0
    const-class v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    const/4 v1, 0x0

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 322
    const-class v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v0

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4a

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    aget-object p3, p3, v1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " : "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 327
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_0 .. :try_end_4a} :catchall_4a

    :catchall_4a
    :cond_4a
    return-void
.end method

.method public final dumpMWFeatureWithIntLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 336
    :try_start_0
    const-class v0, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    const/4 v1, 0x0

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 337
    const-class v2, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 338
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4a

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x1

    aget-object p3, p3, v1

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " : "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 342
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/MultiWindowEnableController;->dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V
    :try_end_4a
    .catchall {:try_start_0 .. :try_end_4a} :catchall_4a

    :catchall_4a
    :cond_4a
    return-void
.end method

.method public final dumpMWRequesterLocked(Ljava/io/PrintWriter;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 303
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_2e

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "      "

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x0

    :goto_14
    if-ge p3, p0, :cond_2b

    .line 309
    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p0, -0x1

    if-ge p3, v1, :cond_28

    const-string v1, " - "

    .line 311
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_28
    add-int/lit8 p3, p3, 0x1

    goto :goto_14

    .line 314
    :cond_2b
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2e
    return-void
.end method

.method public getMWDisableRequesters()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget p0, p0, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_11

    goto :goto_13

    .line 403
    :cond_11
    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :goto_13
    return-object p0
.end method

.method public initDeviceSupportsMultiWindow()V
    .registers 2

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityTaskManager;->deviceSupportsMultiWindow(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsMultiWindow:Z

    .line 298
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 299
    invoke-static {v0}, Landroid/app/ActivityTaskManager;->deviceSupportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mDeviceSupportsSplitScreenMultiWindow:Z

    return-void
.end method

.method public initialize()V
    .registers 8

    .line 139
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mH:Landroid/os/Handler;

    .line 140
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    iput-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    .line 142
    new-instance v2, Lsamsung/android/server/corestate/MultiWindowCoreStateSettingObserver;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/MultiWindowEnableController;->mH:Landroid/os/Handler;

    invoke-direct {v2, v0, v3}, Lsamsung/android/server/corestate/MultiWindowCoreStateSettingObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    new-instance v3, Lsamsung/android/server/corestate/MultiWindowCoreStateSystemFeatureObserver;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v3, v0}, Lsamsung/android/server/corestate/MultiWindowCoreStateSystemFeatureObserver;-><init>(Landroid/content/Context;)V

    new-instance v4, Lsamsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mH:Landroid/os/Handler;

    invoke-direct {v4, v0}, Lsamsung/android/server/corestate/MultiWindowCoreStateVolatileObserver;-><init>(Landroid/os/Handler;)V

    new-instance v5, Lsamsung/android/server/corestate/MultiWindowCoreStatePreferenceObserver;

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/wm/MultiWindowEnableController;->mH:Landroid/os/Handler;

    invoke-direct {v5, v0, v6}, Lsamsung/android/server/corestate/MultiWindowCoreStatePreferenceObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-class v6, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    .line 143
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/CoreStateController;->createObserverController(Lcom/samsung/android/server/corestate/CoreStateSettingObserver;Lcom/samsung/android/server/corestate/CoreStateSystemFeatureObserver;Lcom/samsung/android/server/corestate/CoreStateVolatileObserver;Lcom/samsung/android/server/corestate/CoreStatePreferenceObserver;Ljava/lang/Class;)Lcom/samsung/android/server/corestate/CoreStateObserverController;

    move-result-object v0

    .line 149
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/CoreStateController;->registerObserverControllerLocked(Lcom/samsung/android/server/corestate/CoreStateObserverController;Lcom/samsung/android/server/corestate/CoreStateCallback;)V

    return-void
.end method

.method public initializeLocked(I)V
    .registers 11

    .line 630
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 631
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11101d8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_17

    move v0, v1

    goto :goto_18

    :cond_17
    move v0, v2

    :goto_18
    if-nez v0, :cond_1b

    return-void

    .line 638
    :cond_1b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowForceOnRequested(I)Z

    move-result v3

    if-eqz v3, :cond_23

    move v5, v1

    goto :goto_2c

    .line 640
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowOffRequested(I)Z

    move-result v1

    if-eqz v1, :cond_2b

    move v5, v2

    goto :goto_2c

    :cond_2b
    move v5, v0

    :goto_2c
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v4, "Initialize"

    move-object v3, p0

    move v6, p1

    .line 644
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowDynamicEnabled(Ljava/lang/String;ZIZZ)V

    return-void
.end method

.method public final isKidsHomeMode()Z
    .registers 4

    .line 223
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 224
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/32 v1, 0x10000

    .line 225
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v1

    .line 224
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_30

    .line 226
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-string v0, "com.sec.android.app.kidshome"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, 0x1

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    return p0
.end method

.method public final isMultiWindowForceOnRequested(I)Z
    .registers 3

    .line 573
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequesters:Landroid/util/SparseArray;

    .line 574
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method public final isMultiWindowOffRequested(I)Z
    .registers 3

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    .line 579
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 p0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 p0, 0x1

    :goto_22
    return p0
.end method

.method public isSplitImmersiveModeEnabledLocked()Z
    .registers 4

    .line 780
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 781
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v2, "multiwindow.property"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    .line 783
    :cond_11
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    const-string v0, "mw_immersive_mode"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1d

    move v1, v0

    :cond_1d
    return v1
.end method

.method public onCoreStateChanged(I)V
    .registers 2

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_30

    .line 162
    iget-object p1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 163
    sget-boolean p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-nez p1, :cond_16

    const/4 p1, 0x0

    .line 164
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->dismissMultiWindowMode(I)V

    .line 166
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowEnableController;->retrieveMultiWindowSettings()V

    .line 168
    sget-boolean p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;->MW_ENABLED:Z

    if-eqz p1, :cond_27

    .line 169
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string p1, "mw_on"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->bindFreeformContainerService(Ljava/lang/String;)V

    goto :goto_30

    .line 173
    :cond_27
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFreeformController:Lcom/android/server/wm/FreeformController;

    const-string p1, "mw_off"

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformController;->unbindFreeformContainerService(Ljava/lang/String;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public onPostCoreStateChanged(I)V
    .registers 2

    return-void
.end method

.method public final retrieveMultiWindowSettings()V
    .registers 12

    .line 350
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 351
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 352
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.software.freeform_window_management"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_25

    const-string v1, "enable_freeform_support"

    .line 353
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_23

    goto :goto_25

    :cond_23
    move v1, v3

    goto :goto_26

    :cond_25
    :goto_25
    move v1, v2

    .line 356
    :goto_26
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_42

    .line 357
    iget-object v5, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 358
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v6, "android.software.picture_in_picture"

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    move v5, v2

    goto :goto_43

    :cond_42
    move v5, v3

    .line 359
    :goto_43
    iget-object v6, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 360
    invoke-static {v6}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v6

    .line 361
    iget-object v7, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.software.activities_on_secondary_displays"

    .line 362
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "force_resizable_activities"

    .line 363
    invoke-static {v0, v8, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_63

    move v0, v2

    goto :goto_64

    :cond_63
    move v0, v3

    .line 370
    :goto_64
    iget-object v8, p0, Lcom/android/server/wm/MultiWindowEnableController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v8

    :try_start_67
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 372
    iget-object v9, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v10, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-eq v10, v0, :cond_72

    move v10, v2

    goto :goto_73

    :cond_72
    move v10, v3

    .line 375
    :goto_73
    iput-boolean v0, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    if-nez v1, :cond_80

    if-nez v6, :cond_80

    if-nez v5, :cond_80

    if-eqz v7, :cond_7e

    goto :goto_80

    :cond_7e
    move v0, v3

    goto :goto_81

    :cond_80
    :goto_80
    move v0, v2

    :goto_81
    if-eqz v4, :cond_90

    if-eqz v0, :cond_90

    .line 381
    iput-boolean v2, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 382
    iput-boolean v1, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 383
    iput-boolean v6, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 384
    iput-boolean v5, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 385
    iput-boolean v7, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    goto :goto_9a

    .line 387
    :cond_90
    iput-boolean v3, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 388
    iput-boolean v3, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 389
    iput-boolean v3, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 390
    iput-boolean v3, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 391
    iput-boolean v7, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    .line 394
    :goto_9a
    monitor-exit v8
    :try_end_9b
    .catchall {:try_start_67 .. :try_end_9b} :catchall_a8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v10, :cond_a7

    .line 397
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateAllTasks()V

    :cond_a7
    return-void

    :catchall_a8
    move-exception p0

    .line 394
    :try_start_a9
    monitor-exit v8
    :try_end_aa
    .catchall {:try_start_a9 .. :try_end_aa} :catchall_a8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final scheduleEnableChangedBroadcast(Ljava/lang/String;ZIZ)V
    .registers 13

    .line 596
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mH:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiWindowEnableController;Ljava/lang/String;ZIZ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final sendEnableChangedBroadcast(Ljava/lang/String;ZIZ)V
    .registers 7

    .line 602
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.action.MULTI_WINDOW_ENABLE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 603
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.samsung.android.extra.MULTI_WINDOW_ENABLE_REQUESTER"

    .line 604
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.samsung.android.extra.MULTI_WINDOW_ENABLED"

    .line 605
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "com.samsung.android.extra.MULTI_WINDOW_ENABLED_USER_ID"

    .line 606
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.samsung.android.extra.IN_MULTI_WINDOW_MODE"

    .line 607
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 609
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string p2, "com.samsung.android.permission.MULTI_WINDOW_MONITOR"

    const/4 p3, -0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;I)V

    return-void
.end method

.method public setBlockedMinimizeFreeformEnabled(Z)V
    .registers 12

    .line 716
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMultiStarBlockedMinimizeRequestLog:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 717
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMultiStarBlockedMinimizeRequestLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_41

    .line 718
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMultiStarBlockedMinimizeRequestLog:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 721
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 722
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 723
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    const-class v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    .line 724
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, "mw_blocked_minimized_freeform"

    .line 723
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V

    goto :goto_4d

    :cond_6e
    return-void
.end method

.method public setCornerGestureCustomValue(I)V
    .registers 5

    if-ltz p1, :cond_6

    const/16 v0, 0xff

    if-le p1, v0, :cond_31

    .line 807
    :cond_6
    sget-object v0, Lcom/android/server/wm/MultiWindowEnableController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Corner gesture custom value is invalid. value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", caller="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x8

    .line 808
    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\nSet custom value to default."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 807
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x10

    .line 812
    :cond_31
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_42

    .line 813
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v2, "multiwindow.property"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    .line 815
    :cond_42
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "corner_gesture_custom_value"

    .line 816
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 817
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 818
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    const-class p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/CoreStateController;->setSharedPreferenceEdited(Ljava/lang/Class;I)V

    return-void
.end method

.method public setCornerGestureEnabled(Z)V
    .registers 7

    .line 676
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCGRequestLogs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 677
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCGRequestLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x32

    if-le v0, v2, :cond_41

    .line 678
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCGRequestLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 680
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_51

    .line 681
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v2, "multiwindow.property"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    .line 683
    :cond_51
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v2, "open_in_pop_up_view"

    .line 684
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 685
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 686
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    const-class p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/CoreStateController;->setSharedPreferenceEdited(Ljava/lang/Class;I)V

    return-void
.end method

.method public setCustomDensityEnabled(I)V
    .registers 12

    .line 748
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCDRequestLogs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 749
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCDRequestLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_41

    .line 750
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCDRequestLogs:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 753
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 754
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 755
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    const-class v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    .line 757
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, "custom_density"

    .line 755
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V

    goto :goto_4d

    :cond_6e
    return-void
.end method

.method public setDefaultLaunchModeFreeformEnabledLocked(Z)V
    .registers 7

    .line 648
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-nez v0, :cond_5

    return-void

    .line 651
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mDefaultLaunchFreeformLogs:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 651
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mDefaultLaunchFreeformLogs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x1e

    const/4 v2, 0x0

    if-le v0, v1, :cond_46

    .line 654
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mDefaultLaunchFreeformLogs:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 656
    :cond_46
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_56

    .line 657
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v1, "multiwindow.property"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    .line 659
    :cond_56
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mw_default_launch_mode_freeform"

    .line 660
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 661
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 662
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    const-class p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/CoreStateController;->setSharedPreferenceEdited(Ljava/lang/Class;I)V

    return-void
.end method

.method public setEnableForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 10

    const/4 v0, -0x1

    if-ne p4, v0, :cond_6

    .line 430
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersForAllUsers:Ljava/util/ArrayList;

    goto :goto_e

    .line 431
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    :goto_e
    if-ne p4, v0, :cond_13

    .line 433
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLogForAllUsers:Ljava/util/ArrayList;

    goto :goto_1b

    .line 434
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_1b
    if-nez v1, :cond_27

    .line 437
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 438
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {v2, p4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_27
    if-nez v0, :cond_33

    .line 441
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 442
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 447
    invoke-virtual {p2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 446
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 449
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-le p2, v2, :cond_77

    .line 450
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_77
    if-eqz p3, :cond_87

    .line 454
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 455
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_93

    const/4 p2, 0x1

    .line 456
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/wm/MultiWindowEnableController;->updateEnableLocked(Ljava/lang/String;ZI)V

    goto :goto_93

    .line 459
    :cond_87
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_93

    .line 460
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    invoke-virtual {p0, p1, v3, p4}, Lcom/android/server/wm/MultiWindowEnableController;->updateEnableLocked(Ljava/lang/String;ZI)V

    .line 464
    :cond_93
    :goto_93
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_97
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_bb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 465
    sget-object p2, Lcom/android/server/wm/MultiWindowEnableController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "updateMultiWindowSetting prev requester : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    :cond_bb
    return-void
.end method

.method public setForceEnableForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 10

    const/4 v0, -0x1

    if-ne p4, v0, :cond_6

    .line 482
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersForAllUsers:Ljava/util/ArrayList;

    goto :goto_e

    .line 483
    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    :goto_e
    if-ne p4, v0, :cond_13

    .line 485
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLogForAllUsers:Ljava/util/ArrayList;

    goto :goto_1b

    .line 486
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    :goto_1b
    if-nez v1, :cond_27

    .line 489
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 490
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequesters:Landroid/util/SparseArray;

    invoke-virtual {v2, p4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_27
    if-nez v0, :cond_33

    .line 493
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 494
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWForceOnRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {v2, p4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 498
    :cond_33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 498
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/16 v2, 0x64

    const/4 v3, 0x0

    if-le p2, v2, :cond_77

    .line 501
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_77
    if-eqz p3, :cond_87

    .line 505
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_93

    .line 506
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    .line 507
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/wm/MultiWindowEnableController;->updateEnableLocked(Ljava/lang/String;ZI)V

    goto :goto_93

    .line 511
    :cond_87
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 512
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_93

    .line 513
    invoke-virtual {p0, p1, v3, p4}, Lcom/android/server/wm/MultiWindowEnableController;->updateEnableLocked(Ljava/lang/String;ZI)V

    .line 517
    :cond_93
    :goto_93
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_97
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_bb

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 518
    sget-object p2, Lcom/android/server/wm/MultiWindowEnableController;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "updateMultiWindowSetting prev requester : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_97

    :cond_bb
    return-void
.end method

.method public final setMultiWindowDynamicEnabled(Ljava/lang/String;ZIZZ)V
    .registers 16

    .line 584
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v1, v1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    const/4 v2, 0x0

    if-ne v1, p3, :cond_12

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiTaskingController:Lcom/android/server/wm/MultiTaskingController;

    .line 585
    invoke-virtual {v0, v2}, Lcom/android/server/wm/MultiTaskingController;->getMultiWindowModeStates(I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    :cond_12
    move v8, v2

    .line 587
    new-instance v9, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda2;

    move-object v3, v9

    move-object v4, p0

    move-object v5, p1

    move v6, p2

    move v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/MultiWindowEnableController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/MultiWindowEnableController;Ljava/lang/String;ZIZ)V

    .line 589
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    const-class v1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    .line 590
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v2, "mw_enabled"

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, v9

    .line 589
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V

    return-void
.end method

.method public setMultiWindowEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 6

    .line 407
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 408
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/MultiWindowEnableController;->setEnableForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 409
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setMultiWindowForceEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V
    .registers 6

    .line 413
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 414
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/MultiWindowEnableController;->setForceEnableForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 415
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_e
    move-exception p0

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setNaviStarImmersiveSplitModeLocked(Z)V
    .registers 12

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 790
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 789
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mNaviStarSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mNaviStarSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_41

    .line 793
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mNaviStarSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 795
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 796
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 797
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    const-class v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    .line 798
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string v4, "mw_navibar_immersive_mode"

    .line 797
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V

    goto :goto_4d

    :cond_6e
    return-void
.end method

.method public setSplitImmersiveModeLocked(Z)V
    .registers 6

    .line 764
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 765
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 764
    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 766
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 767
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x14

    if-le v0, v2, :cond_41

    .line 768
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSplitImmersiveModeRequestLog:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 770
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    if-nez v0, :cond_51

    .line 771
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string v2, "multiwindow.property"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    .line 773
    :cond_51
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "mw_immersive_mode"

    .line 774
    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 775
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 776
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    const-class p1, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/CoreStateController;->setSharedPreferenceEdited(Ljava/lang/Class;I)V

    return-void
.end method

.method public setStayFocusActivityEnabled(Z)V
    .registers 12

    .line 732
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSFRequestLog:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSimpleDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 733
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSFRequestLog:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_41

    .line 734
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mSFRequestLog:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 737
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    move-result-object v0

    .line 738
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 739
    iget-object v2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mCoreStateController:Lcom/android/server/wm/CoreStateController;

    const-class v3, Lcom/samsung/android/multiwindow/MultiWindowCoreState;

    .line 741
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    const-string/jumbo v4, "stay_focus_activity"

    .line 739
    invoke-virtual/range {v2 .. v9}, Lcom/android/server/wm/CoreStateController;->setVolatileState(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;IZZLjava/lang/Runnable;)V

    goto :goto_4d

    :cond_6f
    return-void
.end method

.method public startUserLocked(IZ)V
    .registers 3

    if-eqz p2, :cond_5

    .line 615
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->initializeLocked(I)V

    :cond_5
    return-void
.end method

.method public stopUserLocked(IZ)V
    .registers 3

    if-eqz p2, :cond_c

    .line 621
    iget-object p2, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequesters:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 622
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mMWOffRequestersLog:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_c
    return-void
.end method

.method public final updateEnableLocked(Ljava/lang/String;ZI)V
    .registers 14

    .line 530
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowEnableController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mExt:Lcom/android/server/wm/ActivityTaskManagerServiceExt;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt;->getStartedUserIdsLocked()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "], Requester : "

    if-eqz p2, :cond_85

    const-string/jumbo p2, "turn on MW[#"

    if-ne p3, v1, :cond_55

    .line 534
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_16
    :goto_16
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_135

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 535
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowForceOnRequested(I)Z

    move-result v8

    .line 536
    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowOffRequested(I)Z

    move-result v1

    if-eqz v1, :cond_32

    if-eqz v8, :cond_16

    :cond_32
    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move v6, v0

    .line 537
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowDynamicEnabled(Ljava/lang/String;ZIZZ)V

    .line 538
    sget-object v1, Lcom/android/server/wm/MultiWindowEnableController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_16

    .line 542
    :cond_55
    invoke-virtual {p0, p3}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowForceOnRequested(I)Z

    move-result v8

    .line 543
    invoke-virtual {p0, p3}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowOffRequested(I)Z

    move-result v0

    if-eqz v0, :cond_61

    if-eqz v8, :cond_135

    :cond_61
    const/4 v5, 0x1

    const/4 v7, 0x1

    move-object v3, p0

    move-object v4, p1

    move v6, p3

    .line 544
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowDynamicEnabled(Ljava/lang/String;ZIZZ)V

    .line 545
    sget-object p0, Lcom/android/server/wm/MultiWindowEnableController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_135

    :cond_85
    const-string/jumbo p2, "turn off MW[#"

    const-string v3, "force on now, turn off failed, MW[#"

    if-ne p3, v1, :cond_eb

    .line 551
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_90
    :goto_90
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_135

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 552
    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowForceOnRequested(I)Z

    move-result v4

    if-eqz v4, :cond_c1

    .line 553
    sget-object v1, Lcom/android/server/wm/MultiWindowEnableController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 555
    :cond_c1
    invoke-virtual {p0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowOffRequested(I)Z

    move-result v4

    if-eqz v4, :cond_90

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move v7, v1

    .line 556
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowDynamicEnabled(Ljava/lang/String;ZIZZ)V

    .line 557
    sget-object v4, Lcom/android/server/wm/MultiWindowEnableController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 561
    :cond_eb
    invoke-virtual {p0, p3}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowForceOnRequested(I)Z

    move-result v0

    if-eqz v0, :cond_10c

    .line 562
    sget-object p0, Lcom/android/server/wm/MultiWindowEnableController;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_135

    .line 564
    :cond_10c
    invoke-virtual {p0, p3}, Lcom/android/server/wm/MultiWindowEnableController;->isMultiWindowOffRequested(I)Z

    move-result v0

    if-eqz v0, :cond_135

    const/4 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p1

    move v6, p3

    .line 565
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/MultiWindowEnableController;->setMultiWindowDynamicEnabled(Ljava/lang/String;ZIZZ)V

    .line 566
    sget-object p0, Lcom/android/server/wm/MultiWindowEnableController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_135
    :goto_135
    return-void
.end method
