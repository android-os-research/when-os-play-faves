.class public Lcom/android/server/wm/FlexPanelController;
.super Lcom/android/server/wm/PackagesChange;
.source "FlexPanelController.java"


# static fields
.field public static final UNCHANGEABLE:I = 0x6


# instance fields
.field public final mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final mFlexModeAppList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mFlexPanelEnabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

.field public final mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$hhjBGQH_zjI_aExSxJ1SFRLk780(Lcom/android/server/wm/FlexPanelController;ILjava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/FlexPanelController;->lambda$new$0(ILjava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 6

    .line 73
    invoke-direct {p0, p1}, Lcom/android/server/wm/PackagesChange;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 54
    new-instance p1, Lcom/samsung/android/server/packagefeature/util/FoldablePackageSpecialManagementList;

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->FLEX_MODE_APP:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/util/FoldablePackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    iput-object p1, p0, Lcom/android/server/wm/FlexPanelController;->mFlexModeAppList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 59
    new-instance p1, Lcom/samsung/android/server/packagefeature/util/FoldablePackageSpecialManagementList;

    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->FLEX_PANEL_DEFAULT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-direct {p1, v0}, Lcom/samsung/android/server/packagefeature/util/FoldablePackageSpecialManagementList;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V

    iput-object p1, p0, Lcom/android/server/wm/FlexPanelController;->mFlexPanelEnabledList:Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;

    .line 63
    new-instance p1, Lcom/android/server/wm/FlexPanelController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/wm/FlexPanelController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/FlexPanelController;)V

    iput-object p1, p0, Lcom/android/server/wm/FlexPanelController;->mDumpInterface:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;

    .line 66
    new-instance v0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    sget-object v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->MULTI_DISPLAY_DIRECTORY:Ljava/lang/String;

    const/16 v2, 0x10

    const-string v3, "SupportsFlexPanelPackageMap"

    invoke-direct {v0, v2, v1, v3, p1}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange$DumpInterface;)V

    iput-object v0, p0, Lcom/android/server/wm/FlexPanelController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const/4 p1, 0x1

    new-array p1, p1, [Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    const/4 v1, 0x0

    aput-object v0, p1, v1

    .line 74
    invoke-virtual {p0, p1}, Lcom/android/server/wm/PackagesChange;->setUserChanges([Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;)V

    return-void
.end method

.method public static isFlexPanelEnabled(Lcom/android/server/wm/WindowState;)Z
    .registers 2

    .line 78
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isSplitScreenModeActivated()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 80
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->isFlexPanelEnabled()Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private synthetic lambda$new$0(ILjava/lang/String;Ljava/lang/Boolean;)Ljava/lang/String;
    .registers 5

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", get=0x"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/FlexPanelController;->getSupportsFlexPanel(ILjava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public declared-synchronized getSupportsFlexPanel(ILjava/lang/String;)I
    .registers 5

    monitor-enter p0

    .line 87
    :try_start_1
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/PackagesChange;->isHomeActivity(Ljava/lang/String;I)Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_41

    if-eqz v0, :cond_b

    const/16 p1, 0x26

    .line 88
    monitor-exit p0

    return p1

    .line 90
    :cond_b
    :try_start_b
    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/FlexPanelController;->isSupportsFlexPanelChangeable(Ljava/lang/String;I)Z

    move-result v0
    :try_end_f
    .catchall {:try_start_b .. :try_end_f} :catchall_41

    if-nez v0, :cond_15

    const/16 p1, 0x46

    .line 91
    monitor-exit p0

    return p1

    .line 93
    :cond_15
    :try_start_15
    invoke-static {p2, p1}, Lcom/android/server/wm/PackagesChange;->getAdjustedUserIdIfNeeded(Ljava/lang/String;I)I

    move-result p1

    .line 95
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_41

    :try_start_1e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 96
    iget-object v1, p0, Lcom/android/server/wm/FlexPanelController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-virtual {v1, p1, p2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->getValue(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 97
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_3b

    :try_start_2a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p2, 0x2

    if-eqz p1, :cond_39

    .line 99
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_41

    if-eqz p1, :cond_37

    const/4 p2, 0x1

    :cond_37
    monitor-exit p0

    return p2

    .line 104
    :cond_39
    monitor-exit p0

    return p2

    :catchall_3b
    move-exception p1

    .line 97
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    :try_start_3d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p1
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_41

    :catchall_41
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final isSupportsFlexPanelChangeable(Ljava/lang/String;I)Z
    .registers 8

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 113
    iget-object v1, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_14

    .line 114
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_78

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 116
    :cond_14
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_78

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 118
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 119
    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isAllowListApp(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_23

    return v2

    .line 122
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/PackagesChange;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMwSupportPolicyController:Lcom/android/server/wm/MultiWindowSupportPolicyController;

    .line 123
    invoke-virtual {v0, p1}, Lcom/android/server/wm/MultiWindowSupportPolicyController;->isBlocklistApp(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2f

    return v1

    .line 128
    :cond_2f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 130
    :try_start_33
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/PackagesChange;->getLauncherActivities(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ResolveInfo;

    .line 131
    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p2

    .line 132
    instance-of v0, p2, Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3b

    iget-object v0, p2, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 133
    check-cast p2, Landroid/content/pm/ActivityInfo;

    .line 134
    iget p0, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result p0

    if-eqz p0, :cond_6a

    iget p0, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 135
    invoke-static {p0}, Landroid/content/pm/ActivityInfo;->isPreserveOrientationMode(I)Z

    move-result p0
    :try_end_67
    .catchall {:try_start_33 .. :try_end_67} :catchall_73

    if-nez p0, :cond_6a

    goto :goto_6b

    :cond_6a
    move v2, v1

    .line 139
    :goto_6b
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_6f
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v1

    :catchall_73
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 140
    throw p0

    :catchall_78
    move-exception p0

    .line 116
    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public setSupportsFlexPanel(ILjava/lang/String;Z)V
    .registers 4

    .line 108
    iget-object p0, p0, Lcom/android/server/wm/FlexPanelController;->mUserChange:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChange;->putValue(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
