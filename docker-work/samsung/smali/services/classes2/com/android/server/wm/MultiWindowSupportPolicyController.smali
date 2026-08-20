.class public Lcom/android/server/wm/MultiWindowSupportPolicyController;
.super Ljava/lang/Object;
.source "MultiWindowSupportPolicyController.java"

# interfaces
.implements Lcom/android/server/wm/IController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/MultiWindowSupportPolicyController$Callbacks;
    }
.end annotation


# instance fields
.field public final mAllowListRepository:Lcom/android/server/wm/MultiWindowAllowListRepository;

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mBlockListRepository:Lcom/android/server/wm/MultiWindowBlockListRepository;


# direct methods
.method public static synthetic $r8$lambda$5MLsBqfdoQ5WhMuREk2ph4z_5LQ(Lcom/android/server/wm/MultiWindowSupportPolicyController;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->lambda$updateAllTasks$1(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bk47Tp9u99WqT90m90iqiPw028w(Lcom/android/server/wm/MultiWindowSupportPolicyController;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->lambda$updateAllTasks$0(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 3

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 55
    new-instance v0, Lcom/android/server/wm/MultiWindowAllowListRepository;

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/MultiWindowAllowListRepository;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/MultiWindowSupportPolicyController;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowAllowListRepository;

    .line 59
    new-instance v0, Lcom/android/server/wm/MultiWindowBlockListRepository;

    invoke-direct {v0, p1, p0}, Lcom/android/server/wm/MultiWindowBlockListRepository;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/MultiWindowSupportPolicyController;)V

    iput-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowBlockListRepository;

    return-void
.end method

.method private synthetic lambda$updateAllTasks$0(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method private synthetic lambda$updateAllTasks$1(Lcom/android/server/wm/Task;)V
    .registers 3

    const/4 v0, 0x0

    .line 100
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->updateSupportPolicyLocked(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V

    .line 101
    new-instance v0, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/MultiWindowSupportPolicyController;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public addAllowPackage(Ljava/lang/String;)V
    .registers 2

    .line 235
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowAllowListRepository;

    if-nez p0, :cond_5

    return-void

    .line 239
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowAllowListRepository;->add(Ljava/lang/String;)V

    return-void
.end method

.method public addBlockPackage(Ljava/lang/String;)V
    .registers 2

    .line 253
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowBlockListRepository;

    if-eqz p0, :cond_7

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowBlockListRepository;->addBlockPackage(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final checkSupportPolicyLocked(ILjava/lang/String;)I
    .registers 7

    .line 124
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const v1, -0x200001

    const v2, -0x100001

    if-eqz v0, :cond_10

    and-int p0, p1, v2

    and-int/2addr p0, v1

    return p0

    .line 130
    :cond_10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    return p1

    :cond_17
    const/4 v0, 0x0

    .line 136
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isAllowListApp(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_23

    const/4 v0, 0x1

    const/high16 v2, 0x100000

    or-int/2addr p1, v2

    goto :goto_24

    :cond_23
    and-int/2addr p1, v2

    :goto_24
    if-nez v0, :cond_30

    .line 145
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isBlocklistApp(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_30

    const/high16 p0, 0x200000

    or-int/2addr p0, p1

    goto :goto_32

    :cond_30
    and-int p0, p1, v1

    :goto_32
    return p0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4

    const-string v0, "[MultiWindowSupportPolicyController]"

    .line 289
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowAllowListRepository;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/MultiWindowAllowListRepository;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 295
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowBlockListRepository;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/MultiWindowBlockListRepository;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getAllowAppList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowAllowListRepository;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 224
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowAllowListRepository;->getAllowList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getBlocklistAppList()Ljava/util/ArrayList;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowBlockListRepository;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 275
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowBlockListRepository;->getBlocklistAppList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getResizeMode(Landroid/content/pm/ActivityInfo;)I
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_64

    .line 190
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_8

    goto :goto_64

    .line 196
    :cond_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 198
    :try_start_c
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 199
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    const-wide/16 v5, 0x80

    iget-object v7, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 200
    invoke-virtual {v7}, Landroid/content/Context;->getUserId()I

    move-result v7

    .line 198
    invoke-interface {v3, v4, v5, v6, v7}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    .line 201
    invoke-virtual {p0, v3}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v3
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_26} :catch_2f
    .catchall {:try_start_c .. :try_end_26} :catchall_2a

    .line 204
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_33

    :catchall_2a
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 205
    throw p0

    .line 204
    :catch_2f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move v3, v0

    .line 208
    :goto_33
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v1

    .line 209
    :try_start_38
    iget v2, p1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v4}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->checkSupportPolicyLocked(ILjava/lang/String;)I

    move-result v2

    .line 210
    invoke-static {v2}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v4

    if-nez v4, :cond_4f

    .line 211
    invoke-virtual {p1}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result p1

    if-eqz p1, :cond_4d

    goto :goto_4f

    :cond_4d
    move p1, v0

    goto :goto_50

    :cond_4f
    :goto_4f
    const/4 p1, 0x1

    .line 212
    :goto_50
    iget-object v4, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 213
    invoke-virtual {p0, v4, v2, p1, v3}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;IZZ)Z

    move-result p0

    if-eqz p0, :cond_5f

    const/4 v0, 0x2

    .line 215
    :cond_5f
    monitor-exit v1

    return v0

    :catchall_61
    move-exception p0

    .line 216
    monitor-exit v1
    :try_end_63
    .catchall {:try_start_38 .. :try_end_63} :catchall_61

    throw p0

    :cond_64
    :goto_64
    return v0
.end method

.method public initialize()V
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowAllowListRepository;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowAllowListRepository;->initialize()V

    .line 70
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowBlockListRepository;

    invoke-virtual {p0}, Lcom/android/server/wm/MultiWindowBlockListRepository;->initialize()V

    return-void
.end method

.method public isAllowListApp(Ljava/lang/String;)Z
    .registers 2

    .line 228
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowAllowListRepository;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 231
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowAllowListRepository;->isAllowApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBlocklistApp(Ljava/lang/String;)Z
    .registers 2

    .line 265
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowBlockListRepository;

    if-nez p0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 268
    :cond_6
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowBlockListRepository;->isBlocklistApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z
    .registers 5

    const/4 p0, 0x0

    if-nez p1, :cond_4

    return p0

    .line 85
    :cond_4
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v1, 0x1

    const-string v2, "com.samsung.android.multiwindow.ignore.nonresizable.setting"

    if-eqz v0, :cond_16

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_16

    .line 86
    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_16

    return v1

    .line 91
    :cond_16
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz p1, :cond_21

    invoke-virtual {p1, v2, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_21

    move p0, v1

    :cond_21
    return p0
.end method

.method public isMultiSplitBlocklistPackageLocked(Ljava/lang/String;)Z
    .registers 2

    .line 279
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowBlockListRepository;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowBlockListRepository;->isMultiSplitBlocklistPackageLocked(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeAllowPackage(Ljava/lang/String;)V
    .registers 2

    .line 243
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAllowListRepository:Lcom/android/server/wm/MultiWindowAllowListRepository;

    if-nez p0, :cond_5

    return-void

    .line 247
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowAllowListRepository;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public removeBlockPackage(Ljava/lang/String;)V
    .registers 2

    .line 259
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowBlockListRepository;

    if-eqz p0, :cond_7

    .line 260
    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowBlockListRepository;->removeBlockPackage(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public removeFromDeferredBlocklistIfNeeedLocked(Lcom/android/server/wm/Task;)V
    .registers 2

    .line 283
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mBlockListRepository:Lcom/android/server/wm/MultiWindowBlockListRepository;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/MultiWindowBlockListRepository;->removeFromDeferredBlocklistIfNeeedLocked(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 2

    return-void
.end method

.method public supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;IZZ)Z
    .registers 7

    .line 166
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    const/high16 v0, 0x100000

    and-int/2addr v0, p2

    if-eqz v0, :cond_e

    return v1

    :cond_e
    const/high16 v0, 0x200000

    and-int/2addr p2, v0

    if-eqz p2, :cond_18

    .line 177
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->supportsNonResizableMultiWindow(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p0

    return p0

    :cond_18
    if-eqz p3, :cond_1b

    return v1

    .line 186
    :cond_1b
    invoke-virtual {p0, p1, p4}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->supportsNonResizableMultiWindow(Lcom/android/server/wm/TaskDisplayArea;Z)Z

    move-result p0

    return p0
.end method

.method public final supportsNonResizableMultiWindow(Lcom/android/server/wm/TaskDisplayArea;Z)Z
    .registers 3

    if-eqz p2, :cond_4

    const/4 p0, 0x0

    return p0

    .line 160
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->supportsNonResizableMultiWindow()Z

    move-result p0

    return p0
.end method

.method public updateAllTasks()V
    .registers 4

    .line 97
    iget-object v0, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 98
    iget-object v1, p0, Lcom/android/server/wm/MultiWindowSupportPolicyController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/RecentTasks;->getRawTasks()Ljava/util/ArrayList;

    move-result-object v1

    .line 99
    new-instance v2, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/wm/MultiWindowSupportPolicyController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/MultiWindowSupportPolicyController;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 103
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_5 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1f
    move-exception p0

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public updateSupportPolicyLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4

    .line 108
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->mIgnoreDevSettingForNonResizable:Z

    .line 111
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iget-object p1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->checkSupportPolicyLocked(ILjava/lang/String;)I

    move-result p0

    iput p0, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    return-void
.end method

.method public updateSupportPolicyLocked(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)V
    .registers 4

    if-eqz p2, :cond_8

    .line 116
    invoke-virtual {p0, p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isIgnoreDevSettingForNonResizable(Landroid/content/pm/ActivityInfo;)Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/server/wm/Task;->mIgnoreDevSettingForNonResizable:Z

    .line 119
    :cond_8
    iget-object p2, p1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_12

    :cond_11
    const/4 p2, 0x0

    .line 120
    :goto_12
    iget v0, p1, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->checkSupportPolicyLocked(ILjava/lang/String;)I

    move-result p0

    iput p0, p1, Lcom/android/server/wm/Task;->mResizeMode:I

    return-void
.end method
