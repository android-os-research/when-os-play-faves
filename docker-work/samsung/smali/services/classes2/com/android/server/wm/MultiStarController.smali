.class public Lcom/android/server/wm/MultiStarController;
.super Ljava/lang/Object;
.source "MultiStarController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiStarController$H;
    }
.end annotation


# static fields
.field public static final DEFAULT_ALLOW_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final PACKAGE_FLEX_PANEL:Ljava/lang/String; = "com.samsung.controlpanel"

.field public static final PACKAGE_MULIT_STAR:Ljava/lang/String; = "com.samsung.android.multistar"

.field public static final PACKAGE_NAVI_STAR:Ljava/lang/String; = "com.samsung.systemui.navillera"

.field public static final PACKAGE_ONE_HAND_OPERATION:Ljava/lang/String; = "com.samsung.android.sidegesturepad"

.field public static final PACKAGE_SETTINGS:Ljava/lang/String; = "com.android.settings"

.field public static final PACKAGE_SYSTEM_UI:Ljava/lang/String; = "com.android.systemui"


# instance fields
.field public mAtm:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAtm(Lcom/android/server/wm/MultiStarController;)Lcom/android/server/wm/ActivityTaskManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 3

    const-string v0, "com.samsung.android.multistar"

    const-string v1, "com.android.systemui"

    const-string v2, "com.android.settings"

    .line 54
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/MultiStarController;->DEFAULT_ALLOW_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public checkMultiStarPackageAndPermission(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiStarController;->checkMultiStarPackageAndPermission(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public checkMultiStarPackageAndPermission(Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-nez p2, :cond_7

    .line 92
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 94
    :cond_7
    sget-object v0, Lcom/android/server/wm/MultiStarController;->DEFAULT_ALLOW_LIST:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 96
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiStarController;->ensureCallingPkg(Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_16

    .line 102
    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    return-void

    .line 97
    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Permission Denial: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 99
    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 3

    return-void
.end method

.method public final ensureCallingPkg(Ljava/util/List;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    .line 68
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 69
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 68
    invoke-interface {v0, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    array-length v2, v0

    move v3, p0

    :goto_1f
    if-ge v3, v2, :cond_11

    aget-object v4, v0, v3

    .line 72
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_27} :catch_2e

    if-eqz v4, :cond_2b

    const/4 p0, 0x1

    return p0

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :catch_2e
    :cond_2e
    return p0
.end method

.method public initialize()V
    .registers 1

    return-void
.end method

.method public setCustomDensityEnabled(I)V
    .registers 4

    .line 137
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/MultiWindowEnableController;->dismissMultiWindowMode(I)V

    .line 138
    iget-object p0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMultiWindowEnableController:Lcom/android/server/wm/MultiWindowEnableController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowEnableController;->setCustomDensityEnabled(I)V

    return-void
.end method

.method public toggleFreeformWindowingMode()Z
    .registers 10

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, v1, v1}, Lcom/android/server/wm/DisplayContent;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_69

    .line 147
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_69

    .line 148
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->supportsFreeform()Z

    move-result v0

    if-eqz v0, :cond_69

    .line 149
    iget-object v0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    iget-object v2, v5, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityClientController;->toggleFreeformWindowingMode(Landroid/os/IBinder;)V

    .line 150
    invoke-virtual {v5}, Lcom/android/server/wm/ConfigurationContainer;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 151
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_44

    .line 152
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_68

    .line 153
    :cond_44
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v7

    const/4 v0, 0x5

    .line 154
    invoke-virtual {v7, v0}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 155
    iget-object p0, p0, Lcom/android/server/wm/MultiStarController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v2

    .line 156
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    iget-object p0, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, p0, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    const/4 v6, 0x0

    .line 157
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v8

    .line 155
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;I)Z

    :cond_68
    return v1

    :cond_69
    const/4 p0, 0x0

    return p0
.end method
