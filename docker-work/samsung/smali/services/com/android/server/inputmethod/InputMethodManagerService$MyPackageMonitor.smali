.class public final Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field public final mChangedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mImePackageAppeared:Z

.field public final mKnownImePackageNames:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 1624
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 1633
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    .line 1646
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 1654
    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    return-void
.end method


# virtual methods
.method public final addKnownImePackageNameLocked(Ljava/lang/String;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 1663
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearKnownImePackageNamesLocked()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 1658
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public final clearPackageChangeState()V
    .registers 2

    .line 1771
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1772
    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    return-void
.end method

.method public final isChangingPackagesOfCurrentUserLocked()Z
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 1668
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1669
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result p0

    if-ne v0, p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public onBeginPackageChanges()V
    .registers 1

    .line 1709
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    return-void
.end method

.method public onFinishPackageChanges()V
    .registers 1

    .line 1758
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->onFinishPackageChangesInternal()V

    .line 1759
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    return-void
.end method

.method public final onFinishPackageChangesInternal()V
    .registers 15

    .line 1799
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1800
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_b

    .line 1801
    monitor-exit v0

    return-void

    .line 1803
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->shouldRebuildInputMethodListLocked()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1804
    monitor-exit v0

    return-void

    .line 1808
    :cond_13
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 1809
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v8, v5

    if-eqz v1, :cond_9e

    move v7, v6

    :goto_2b
    if-ge v7, v2, :cond_9e

    .line 1812
    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 1813
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    .line 1814
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_42

    move-object v8, v9

    .line 1818
    :cond_42
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v10

    .line 1819
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_74

    .line 1820
    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmAdditionalSubtypeMap(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1821
    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmAdditionalSubtypeMap(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/ArrayMap;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v13, v12, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v12, v12, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1822
    invoke-virtual {v12}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v12

    .line 1821
    invoke-static {v11, v13, v12}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->save(Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V

    :cond_74
    if-eq v10, v4, :cond_78

    if-ne v10, v3, :cond_9b

    :cond_78
    const-string v10, "InputMethodManagerService"

    .line 1826
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input method uninstalled, disabling: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1827
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1826
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1828
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$msetInputMethodEnabledLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Z)Z

    :cond_9b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2b

    .line 1833
    :cond_9e
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v2, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    const/4 v2, 0x1

    if-eqz v8, :cond_103

    .line 1838
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/content/PackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v7
    :try_end_ae
    .catchall {:try_start_3 .. :try_end_ae} :catchall_125

    if-eq v7, v4, :cond_b2

    if-ne v7, v3, :cond_103

    .line 1843
    :cond_b2
    :try_start_b2
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmIPackageManager(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 1844
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    const-wide/16 v9, 0x0

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v7, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    .line 1843
    invoke-interface {v3, v4, v9, v10, v7}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ServiceInfo;

    move-result-object v3
    :try_end_ca
    .catch Landroid/os/RemoteException; {:try_start_b2 .. :try_end_ca} :catch_cb
    .catchall {:try_start_b2 .. :try_end_ca} :catchall_125

    goto :goto_cc

    :catch_cb
    move-object v3, v5

    :goto_cc
    if-nez v3, :cond_103

    :try_start_ce
    const-string v3, "InputMethodManagerService"

    .line 1850
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current input method removed: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v3, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-static {v1, v6, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mupdateSystemUiLocked(Lcom/android/server/inputmethod/InputMethodManagerService;II)V

    .line 1852
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mchooseNewDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v1

    if-nez v1, :cond_103

    const-string v1, "InputMethodManagerService"

    const-string v3, "Unsetting current input method"

    .line 1855
    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1856
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mresetSelectedInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V

    move v1, v2

    goto :goto_105

    :cond_103
    move v1, v6

    move-object v5, v8

    :goto_105
    if-nez v5, :cond_10e

    .line 1865
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mchooseNewDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v2

    goto :goto_11c

    :cond_10e
    if-nez v1, :cond_11b

    .line 1866
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/content/PackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11b

    goto :goto_11c

    :cond_11b
    move v2, v1

    :goto_11c
    if-eqz v2, :cond_123

    .line 1873
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {p0, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1875
    :cond_123
    monitor-exit v0

    return-void

    :catchall_125
    move-exception p0

    monitor-exit v0
    :try_end_127
    .catchall {:try_start_ce .. :try_end_127} :catchall_125

    throw p0
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 13

    .line 1680
    const-class p1, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter p1

    .line 1681
    :try_start_3
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_c

    .line 1682
    monitor-exit p1

    return v0

    .line 1684
    :cond_c
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p3, p3, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p3

    .line 1685
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz p3, :cond_5e

    move v2, v0

    :goto_1f
    if-ge v2, v1, :cond_5e

    .line 1688
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 1689
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 1690
    array-length v4, p2

    move v5, v0

    :goto_37
    if-ge v5, v4, :cond_5b

    aget-object v6, p2, v5

    .line 1691
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_58

    const/4 p2, 0x1

    if-nez p4, :cond_4a

    .line 1693
    monitor-exit p1

    return p2

    .line 1695
    :cond_4a
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string p4, ""

    invoke-static {p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mresetSelectedInputMethodAndSubtypeLocked(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V

    .line 1696
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$mchooseNewDefaultIMELocked(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    .line 1697
    monitor-exit p1

    return p2

    :cond_58
    add-int/lit8 v5, v5, 0x1

    goto :goto_37

    :cond_5b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 1703
    :cond_5e
    monitor-exit p1

    return v0

    :catchall_60
    move-exception p0

    monitor-exit p1
    :try_end_62
    .catchall {:try_start_3 .. :try_end_62} :catchall_60

    throw p0
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .registers 6

    .line 1714
    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    if-nez p2, :cond_2a

    .line 1715
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 1716
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1717
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x200

    .line 1718
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v2

    .line 1716
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p2

    .line 1720
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2a

    const/4 p2, 0x1

    .line 1721
    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    .line 1725
    :cond_2a
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 3

    .line 1731
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 2

    .line 1737
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .registers 6

    .line 1743
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 1744
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .registers 6

    .line 1751
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 1752
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    return-void
.end method

.method public onUidRemoved(I)V
    .registers 3

    .line 1764
    const-class v0, Lcom/android/server/inputmethod/ImfLock;

    monitor-enter v0

    .line 1765
    :try_start_3
    iget-object p0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p0}, Lcom/android/server/inputmethod/InputMethodManagerService;->-$$Nest$fgetmLoggedDeniedGetInputMethodWindowVisibleHeightForUid(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/SparseBooleanArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1766
    monitor-exit v0

    return-void

    :catchall_e
    move-exception p0

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_e

    throw p0
.end method

.method public final shouldRebuildInputMethodListLocked()Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "ImfLock.class"
        }
    .end annotation

    .line 1781
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    .line 1788
    :cond_6
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v0, :cond_24

    .line 1790
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1791
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    return v1

    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_24
    return v2
.end method
