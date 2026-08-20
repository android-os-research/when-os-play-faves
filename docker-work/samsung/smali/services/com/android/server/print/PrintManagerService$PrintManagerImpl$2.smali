.class public Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerBroadcastReceivers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)V
    .registers 2

    .line 845
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public final hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z
    .registers 6

    const/4 p0, 0x3

    .line 875
    invoke-virtual {p1, p0}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_9

    return p1

    .line 881
    :cond_9
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    move v1, p1

    :goto_e
    if-ge v1, v0, :cond_29

    .line 883
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v2}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 884
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    const/4 p0, 0x1

    return p0

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_29
    return p1
.end method

.method public final hasPrintService(Ljava/lang/String;)Z
    .registers 4

    .line 854
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.printservice.PrintService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 855
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 857
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmContext(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 860
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    const v1, 0x10800004

    .line 858
    invoke-virtual {p1, v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_29

    .line 862
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_29

    const/4 p0, 0x1

    goto :goto_2a

    :cond_29
    const/4 p0, 0x0

    :goto_2a
    return p0
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 12

    .line 934
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmUserManager(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_12

    return p3

    .line 935
    :cond_12
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmLock(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 939
    :try_start_19
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    invoke-static {v0, p0, p3, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object p0

    const/4 v0, 0x1

    .line 944
    invoke-virtual {p0, v0}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2c

    .line 946
    monitor-exit p1

    return p3

    .line 949
    :cond_2c
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, p3

    .line 950
    :cond_31
    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 951
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/printservice/PrintServiceInfo;

    invoke-virtual {v3}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    .line 952
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 953
    array-length v4, p2

    move v5, p3

    :goto_47
    if-ge v5, v4, :cond_31

    aget-object v6, p2, v5

    .line 954
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_57

    if-nez p4, :cond_55

    .line 956
    monitor-exit p1

    return v0

    :cond_55
    move v2, v0

    goto :goto_31

    :cond_57
    add-int/lit8 v5, v5, 0x1

    goto :goto_47

    :cond_5a
    if-eqz v2, :cond_5f

    .line 964
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 966
    :cond_5f
    monitor-exit p1

    return p3

    :catchall_61
    move-exception p0

    .line 967
    monitor-exit p1
    :try_end_63
    .catchall {:try_start_19 .. :try_end_63} :catchall_61

    throw p0
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 4

    .line 972
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmUserManager(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p2

    if-nez p2, :cond_11

    return-void

    .line 973
    :cond_11
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmLock(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 974
    :try_start_18
    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hasPrintService(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2c

    .line 975
    iget-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {p1, p0, v0, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 977
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    .line 979
    :cond_2c
    monitor-exit p2

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit p2
    :try_end_30
    .catchall {:try_start_18 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 6

    .line 894
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmUserManager(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_11

    return-void

    .line 895
    :cond_11
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, v2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object v0

    .line 899
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmLock(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 900
    :try_start_23
    invoke-virtual {p0, v0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2f

    .line 901
    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hasPrintService(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_33

    .line 902
    :cond_2f
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    const/4 v2, 0x1

    .line 905
    :cond_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_23 .. :try_end_34} :catchall_3a

    if-eqz v2, :cond_39

    .line 908
    invoke-virtual {v0}, Lcom/android/server/print/UserState;->prunePrintServices()V

    :cond_39
    return-void

    :catchall_3a
    move-exception p0

    .line 905
    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 5

    .line 914
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmUserManager(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;

    move-result-object p2

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p2

    if-nez p2, :cond_11

    return-void

    .line 915
    :cond_11
    iget-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;

    move-result-object p2

    .line 919
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->this$1:Lcom/android/server/print/PrintManagerService$PrintManagerImpl;

    invoke-static {v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->-$$Nest$fgetmLock(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 920
    :try_start_23
    invoke-virtual {p0, p2, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;->hadPrintService(Lcom/android/server/print/UserState;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2d

    .line 921
    invoke-virtual {p2}, Lcom/android/server/print/UserState;->updateIfNeededLocked()V

    const/4 v1, 0x1

    .line 924
    :cond_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_23 .. :try_end_2e} :catchall_34

    if-eqz v1, :cond_33

    .line 927
    invoke-virtual {p2}, Lcom/android/server/print/UserState;->prunePrintServices()V

    :cond_33
    return-void

    :catchall_34
    move-exception p0

    .line 924
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method
