.class public Lcom/android/server/UiModeManagerService$12;
.super Landroid/app/IUiModeManager$Stub;
.source "UiModeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/UiModeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public static synthetic $r8$lambda$KHzwrh9sBWFpn3ELm1Vx_cWTsF4(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService$12;->lambda$disableCarModeByCallingPackage$0(Ljava/lang/String;Ljava/util/Map$Entry;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$YCuxQ0CrbK3-3af2afTAgqrEvbM(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/UiModeManagerService$12;->lambda$requestProjection$1(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    .line 697
    iput-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-direct {p0}, Landroid/app/IUiModeManager$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$disableCarModeByCallingPackage$0(Ljava/lang/String;Ljava/util/Map$Entry;)Z
    .registers 2

    .line 779
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic lambda$requestProjection$1(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z
    .registers 3

    .line 1162
    invoke-static {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mreleaseProjectionUnchecked(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;I)V
    .registers 7

    .line 1214
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PROJECTION_STATE"

    const-string v2, "addOnProjectionStateChangedListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_10

    return-void

    .line 1220
    :cond_10
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1221
    :try_start_17
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 1222
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    new-instance v2, Landroid/util/SparseArray;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v1, v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmProjectionListeners(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)V

    .line 1224
    :cond_2a
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_44

    .line 1225
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1227
    :cond_44
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_74

    .line 1229
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1230
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 1231
    invoke-static {p0, p2, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpopulateWithRelevantActivePackageNames(Lcom/android/server/UiModeManagerService;ILjava/util/List;)I

    move-result p0

    .line 1232
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p2
    :try_end_65
    .catchall {:try_start_17 .. :try_end_65} :catchall_76

    if-nez p2, :cond_74

    .line 1234
    :try_start_67
    invoke-interface {p1, p0, v1}, Landroid/app/IOnProjectionStateChangedListener;->onProjectionStateChanged(ILjava/util/List;)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6a} :catch_6b
    .catchall {:try_start_67 .. :try_end_6a} :catchall_76

    goto :goto_74

    .line 1236
    :catch_6b
    :try_start_6b
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed a call to onProjectionStateChanged() during listener registration."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1242
    :cond_74
    :goto_74
    monitor-exit v0

    return-void

    :catchall_76
    move-exception p0

    monitor-exit v0
    :try_end_78
    .catchall {:try_start_6b .. :try_end_78} :catchall_76

    throw p0
.end method

.method public disableCarMode(I)V
    .registers 3

    const/4 v0, 0x0

    .line 741
    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService$12;->disableCarModeByCallingPackage(ILjava/lang/String;)V

    return-void
.end method

.method public disableCarModeByCallingPackage(ILjava/lang/String;)V
    .registers 10

    .line 752
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 753
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "disableCarMode while UI mode is locked"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 763
    :cond_10
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$Injector;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_22

    move v1, v2

    goto :goto_23

    :cond_22
    move v1, v3

    :goto_23
    const/16 v4, 0x7d0

    if-ne v0, v4, :cond_28

    goto :goto_29

    :cond_28
    move v2, v3

    :goto_29
    if-nez v1, :cond_32

    if-nez v2, :cond_32

    .line 767
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    :cond_32
    if-eqz v1, :cond_36

    move v0, p1

    goto :goto_38

    :cond_36
    and-int/lit8 v0, p1, -0x3

    .line 772
    :goto_38
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 774
    :try_start_3c
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_43
    .catchall {:try_start_3c .. :try_end_43} :catchall_8b

    .line 777
    :try_start_43
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCarModePackagePriority(Lcom/android/server/UiModeManagerService;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    .line 778
    invoke-interface {v5}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda1;

    invoke-direct {v6, p2}, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    .line 779
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 780
    invoke-interface {v5}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda2;-><init>()V

    .line 781
    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    .line 782
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 784
    iget-object v6, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v6, v3, v0, v5, p2}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 785
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p2, :cond_83

    .line 786
    invoke-virtual {p0, v3, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 788
    :cond_83
    monitor-exit v4
    :try_end_84
    .catchall {:try_start_43 .. :try_end_84} :catchall_88

    .line 790
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_88
    move-exception p0

    .line 788
    :try_start_89
    monitor-exit v4
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_88

    :try_start_8a
    throw p0
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception p0

    .line 790
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 791
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 969
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_11

    return-void

    .line 970
    :cond_11
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p0, p2}, Lcom/android/server/UiModeManagerService;->dumpImpl(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enableCarMode(IILjava/lang/String;)V
    .registers 10

    .line 701
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isUiModeLocked()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 702
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "enableCarMode while UI mode is locked"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_10
    if-eqz p2, :cond_29

    .line 706
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 707
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ENTER_CAR_MODE_PRIORITIZED"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_29

    .line 710
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Enabling car mode with a priority requires permission ENTER_CAR_MODE_PRIORITIZED"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 716
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmInjector(Lcom/android/server/UiModeManagerService;)Lcom/android/server/UiModeManagerService$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService$Injector;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_3b

    move v0, v2

    goto :goto_3c

    :cond_3b
    move v0, v3

    :goto_3c
    if-nez v0, :cond_43

    .line 718
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p3}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 721
    :cond_43
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 723
    :try_start_47
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_4e
    .catchall {:try_start_47 .. :try_end_4e} :catchall_64

    .line 724
    :try_start_4e
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v5, v2, p1, p2, p3}, Lcom/android/server/UiModeManagerService;->setCarModeLocked(ZIILjava/lang/String;)V

    .line 725
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget-boolean p2, p0, Lcom/android/server/UiModeManagerService;->mSystemReady:Z

    if-eqz p2, :cond_5c

    .line 726
    invoke-virtual {p0, p1, v3}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 728
    :cond_5c
    monitor-exit v4
    :try_end_5d
    .catchall {:try_start_4e .. :try_end_5d} :catchall_61

    .line 730
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_61
    move-exception p0

    .line 728
    :try_start_62
    monitor-exit v4
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw p0
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    :catchall_64
    move-exception p0

    .line 730
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 731
    throw p0
.end method

.method public getActiveProjectionTypes()I
    .registers 5

    .line 1185
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PROJECTION_STATE"

    const-string v2, "getActiveProjectionTypes"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1188
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1189
    :try_start_14
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4b

    move v1, v2

    .line 1190
    :goto_1e
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_4a

    .line 1191
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_47

    .line 1192
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    or-int/2addr v1, v3

    :cond_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1e

    :cond_4a
    move v2, v1

    .line 1196
    :cond_4b
    monitor-exit v0

    return v2

    :catchall_4d
    move-exception p0

    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_14 .. :try_end_4f} :catchall_4d

    throw p0
.end method

.method public getCurrentModeType()I
    .registers 4

    .line 796
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 798
    :try_start_4
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_19

    .line 799
    :try_start_b
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    iget p0, p0, Lcom/android/server/UiModeManagerService;->mCurUiMode:I

    and-int/lit8 p0, p0, 0xf

    monitor-exit v2
    :try_end_12
    .catchall {:try_start_b .. :try_end_12} :catchall_16

    .line 802
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_16
    move-exception p0

    .line 800
    :try_start_17
    monitor-exit v2
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    :try_start_18
    throw p0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_19

    :catchall_19
    move-exception p0

    .line 802
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 803
    throw p0
.end method

.method public getCustomNightModeEnd()J
    .registers 5

    .line 1104
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCustomAutoNightModeEndMilliseconds(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getCustomNightModeStart()J
    .registers 5

    .line 1076
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCustomAutoNightModeStartMilliseconds(Lcom/android/server/UiModeManagerService;)Ljava/time/LocalTime;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/LocalTime;->toNanoOfDay()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getNightMode()I
    .registers 2

    .line 890
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 891
    :try_start_7
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 892
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public getNightModeCustomType()I
    .registers 3

    .line 908
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_20

    .line 914
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 915
    :try_start_15
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_1d
    move-exception p0

    .line 916
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_1d

    throw p0

    .line 911
    :cond_20
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "getNightModeCustomType requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProjectingPackages(I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1203
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PROJECTION_STATE"

    const-string/jumbo v2, "getProjectionState"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1206
    :try_start_15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1207
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0, p1, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpopulateWithRelevantActivePackageNames(Lcom/android/server/UiModeManagerService;ILjava/util/List;)I

    .line 1208
    monitor-exit v0

    return-object v1

    :catchall_21
    move-exception p0

    .line 1209
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_15 .. :try_end_23} :catchall_21

    throw p0
.end method

.method public isNightModeLocked()Z
    .registers 2

    .line 956
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 957
    :try_start_7
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeLocked(Lcom/android/server/UiModeManagerService;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 958
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public isUiModeLocked()Z
    .registers 2

    .line 949
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 950
    :try_start_7
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmUiModeLocked(Lcom/android/server/UiModeManagerService;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_f
    move-exception p0

    .line 951
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_f

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 964
    new-instance v0, Lcom/android/server/UiModeManagerService$Shell;

    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmService(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/UiModeManagerService$Shell;-><init>(Landroid/app/IUiModeManager;)V

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmService(Lcom/android/server/UiModeManagerService;)Landroid/app/IUiModeManager$Stub;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public releaseProjection(ILjava/lang/String;)Z
    .registers 4

    .line 1177
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 1178
    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$smassertSingleProjectionType(I)V

    .line 1179
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$menforceProjectionTypePermissions(Lcom/android/server/UiModeManagerService;I)V

    .line 1180
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mreleaseProjectionUnchecked(Lcom/android/server/UiModeManagerService;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public removeOnProjectionStateChangedListener(Landroid/app/IOnProjectionStateChangedListener;)V
    .registers 5

    .line 1248
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_PROJECTION_STATE"

    const-string/jumbo v2, "removeOnProjectionStateChangedListener"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1252
    :try_start_15
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    if-eqz v1, :cond_3c

    const/4 v1, 0x0

    .line 1253
    :goto_1e
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3c

    .line 1254
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionListeners(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 1257
    :cond_3c
    monitor-exit v0

    return-void

    :catchall_3e
    move-exception p0

    monitor-exit v0
    :try_end_40
    .catchall {:try_start_15 .. :try_end_40} :catchall_3e

    throw p0
.end method

.method public requestProjection(Landroid/os/IBinder;ILjava/lang/String;)Z
    .registers 15

    .line 1133
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p3}, Lcom/android/server/UiModeManagerService;->-$$Nest$massertLegit(Lcom/android/server/UiModeManagerService;Ljava/lang/String;)V

    .line 1134
    invoke-static {p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$smassertSingleProjectionType(I)V

    .line 1135
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$menforceProjectionTypePermissions(Lcom/android/server/UiModeManagerService;I)V

    .line 1136
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1137
    :try_start_14
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_27

    .line 1138
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3, v2}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v1, v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmProjectionHolders(Lcom/android/server/UiModeManagerService;Landroid/util/SparseArray;)V

    .line 1140
    :cond_27
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->contains(I)Z

    move-result v1

    if-nez v1, :cond_41

    .line 1141
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1143
    :cond_41
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmProjectionHolders(Lcom/android/server/UiModeManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    const/4 v3, 0x0

    move v4, v3

    .line 1146
    :goto_4f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_6a

    .line 1147
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->-$$Nest$fgetmPackageName(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_67

    .line 1148
    monitor-exit v0

    return v2

    :cond_67
    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    :cond_6a
    if-ne p2, v2, :cond_74

    .line 1156
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_74

    .line 1157
    monitor-exit v0

    return v3

    .line 1160
    :cond_74
    new-instance v10, Lcom/android/server/UiModeManagerService$ProjectionHolder;

    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    new-instance v8, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda0;

    invoke-direct {v8, v4}, Lcom/android/server/UiModeManagerService$12$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/UiModeManagerService;)V

    const/4 v9, 0x0

    move-object v4, v10

    move-object v5, p3

    move v6, p2

    move-object v7, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/UiModeManagerService$ProjectionHolder;-><init>(Ljava/lang/String;ILandroid/os/IBinder;Lcom/android/server/UiModeManagerService$ProjectionHolder$ProjectionReleaser;Lcom/android/server/UiModeManagerService$ProjectionHolder-IA;)V

    .line 1163
    invoke-static {v10}, Lcom/android/server/UiModeManagerService$ProjectionHolder;->-$$Nest$mlinkToDeath(Lcom/android/server/UiModeManagerService$ProjectionHolder;)Z

    move-result p1

    if-nez p1, :cond_8d

    .line 1164
    monitor-exit v0

    return v3

    .line 1166
    :cond_8d
    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " set projection type "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$monProjectionStateChangedLocked(Lcom/android/server/UiModeManagerService;I)V

    .line 1170
    monitor-exit v0

    return v2

    :catchall_bc
    move-exception p0

    monitor-exit v0
    :try_end_be
    .catchall {:try_start_14 .. :try_end_be} :catchall_bc

    throw p0
.end method

.method public setApplicationNightMode(I)V
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_23

    if-eq p1, v1, :cond_23

    if-eq p1, v0, :cond_23

    const/4 v2, 0x3

    if-ne p1, v2, :cond_c

    goto :goto_23

    .line 928
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_23
    :goto_23
    if-eq p1, v1, :cond_2c

    if-eq p1, v0, :cond_29

    const/4 p1, 0x0

    goto :goto_2e

    :cond_29
    const/16 p1, 0x20

    goto :goto_2e

    :cond_2c
    const/16 p1, 0x10

    .line 941
    :goto_2e
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmActivityTaskManager(Lcom/android/server/UiModeManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object p0

    .line 942
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->createPackageConfigurationUpdater()Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    move-result-object p0

    .line 943
    invoke-interface {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->setNightMode(I)Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;

    .line 944
    invoke-interface {p0}, Lcom/android/server/wm/ActivityTaskManagerInternal$PackageConfigurationUpdater;->commit()Z

    return-void
.end method

.method public setCustomNightModeEnd(J)V
    .registers 7

    .line 1109
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1112
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Set custom time end, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1116
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    .line 1118
    :try_start_25
    invoke-static {p1, p2}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p1
    :try_end_29
    .catch Ljava/time/DateTimeException; {:try_start_25 .. :try_end_29} :catch_3d
    .catchall {:try_start_25 .. :try_end_29} :catchall_3b

    if-nez p1, :cond_2f

    .line 1125
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1120
    :cond_2f
    :try_start_2f
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmCustomAutoNightModeEndMilliseconds(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)V

    .line 1121
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 p2, -0x2

    invoke-static {p1, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$monCustomTimeUpdated(Lcom/android/server/UiModeManagerService;I)V
    :try_end_3a
    .catch Ljava/time/DateTimeException; {:try_start_2f .. :try_end_3a} :catch_3d
    .catchall {:try_start_2f .. :try_end_3a} :catchall_3b

    goto :goto_42

    :catchall_3b
    move-exception p0

    goto :goto_46

    .line 1123
    :catch_3d
    :try_start_3d
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_3b

    .line 1125
    :goto_42
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1126
    throw p0
.end method

.method public setCustomNightModeStart(J)V
    .registers 7

    .line 1081
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 1084
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Set custom time start, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1088
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    .line 1090
    :try_start_25
    invoke-static {p1, p2}, Ljava/time/LocalTime;->ofNanoOfDay(J)Ljava/time/LocalTime;

    move-result-object p1
    :try_end_29
    .catch Ljava/time/DateTimeException; {:try_start_25 .. :try_end_29} :catch_42
    .catchall {:try_start_25 .. :try_end_29} :catchall_40

    if-nez p1, :cond_2f

    .line 1098
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 1092
    :cond_2f
    :try_start_2f
    iget-object p2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p2, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmCustomAutoNightModeStartMilliseconds(Lcom/android/server/UiModeManagerService;Ljava/time/LocalTime;)V

    .line 1093
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 p2, -0x2

    invoke-static {p1, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpersistNightMode(Lcom/android/server/UiModeManagerService;I)V

    .line 1094
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$monCustomTimeUpdated(Lcom/android/server/UiModeManagerService;I)V
    :try_end_3f
    .catch Ljava/time/DateTimeException; {:try_start_2f .. :try_end_3f} :catch_42
    .catchall {:try_start_2f .. :try_end_3f} :catchall_40

    goto :goto_47

    :catchall_40
    move-exception p0

    goto :goto_4b

    .line 1096
    :catch_42
    :try_start_42
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V
    :try_end_47
    .catchall {:try_start_42 .. :try_end_47} :catchall_40

    .line 1098
    :goto_47
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_4b
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1099
    throw p0
.end method

.method public setDesktopMode(Z)V
    .registers 4

    .line 976
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 977
    :try_start_7
    iget-object v1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v1, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmDesktopModeEnabled(Lcom/android/server/UiModeManagerService;Z)V

    .line 978
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mupdateConfigurationLocked(Lcom/android/server/UiModeManagerService;)V

    .line 979
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method

.method public setNightMode(I)V
    .registers 3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    const/4 v0, 0x0

    goto :goto_6

    :cond_5
    const/4 v0, -0x1

    .line 812
    :goto_6
    invoke-virtual {p0, p1, v0}, Lcom/android/server/UiModeManagerService$12;->setNightModeInternal(II)V

    return-void
.end method

.method public setNightModeActivated(Z)Z
    .registers 3

    .line 990
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/UiModeManagerService$12;->setNightModeActivatedForModeInternal(IZ)Z

    move-result p0

    return p0
.end method

.method public setNightModeActivatedForCustomMode(IZ)Z
    .registers 3

    .line 985
    invoke-virtual {p0, p1, p2}, Lcom/android/server/UiModeManagerService$12;->setNightModeActivatedForModeInternal(IZ)Z

    move-result p0

    return p0
.end method

.method public final setNightModeActivatedForModeInternal(IZ)Z
    .registers 13

    .line 998
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 1001
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Night mode activated locked, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1004
    :cond_19
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 1005
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result v2

    if-eq v0, v2, :cond_41

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_41

    .line 1008
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Target user is not current user, INTERACT_ACROSS_USERS permission is required"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_41
    const/4 v0, 0x1

    if-ne p1, v0, :cond_49

    .line 1016
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmLastBedtimeRequestedNightMode(Lcom/android/server/UiModeManagerService;Z)V

    .line 1018
    :cond_49
    iget-object v2, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I

    move-result v2

    if-eq p1, v2, :cond_52

    return v1

    .line 1023
    :cond_52
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mcanSetNightMode(Lcom/android/server/UiModeManagerService;)Z

    move-result p1

    if-nez p1, :cond_81

    .line 1024
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore setNightModeActivated : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mNightMode "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 1028
    :cond_81
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 1029
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 1030
    iget-object v3, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v3}, Lcom/android/server/UiModeManagerService;->-$$Nest$mgetPackageName(Lcom/android/server/UiModeManagerService;)Ljava/lang/String;

    move-result-object v3

    .line 1033
    iget-object v4, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v4}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1034
    :try_start_a4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_190

    .line 1036
    :try_start_a8
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v7

    if-eqz v7, :cond_db

    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_ba

    goto :goto_db

    .line 1049
    :cond_ba
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v0, :cond_cb

    if-eqz p2, :cond_cb

    .line 1051
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7, v8}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmNightMode(Lcom/android/server/UiModeManagerService;I)V

    goto :goto_10e

    .line 1052
    :cond_cb
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v7

    if-ne v7, v8, :cond_10e

    if-nez p2, :cond_10e

    .line 1054
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7, v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmNightMode(Lcom/android/server/UiModeManagerService;I)V

    goto :goto_10e

    .line 1037
    :cond_db
    :goto_db
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    if-nez p2, :cond_e1

    move v8, v0

    goto :goto_e2

    :cond_e1
    move v8, v1

    :goto_e2
    invoke-static {v7, v8}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmOverrideNightModeOff(Lcom/android/server/UiModeManagerService;Z)V

    .line 1038
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmOverrideNightModeOn(Lcom/android/server/UiModeManagerService;Z)V

    .line 1039
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmOverrideNightModeUser(Lcom/android/server/UiModeManagerService;I)V

    .line 1040
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result v8

    invoke-static {v7, v8}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpersistNightModeOverrides(Lcom/android/server/UiModeManagerService;I)V

    .line 1042
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmComputedNightMode(Lcom/android/server/UiModeManagerService;)Z

    move-result v7

    if-eq v7, p2, :cond_109

    .line 1043
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmWaitForScreenOff(Lcom/android/server/UiModeManagerService;Z)V

    .line 1045
    :cond_109
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v7, p2}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmComputedNightMode(Lcom/android/server/UiModeManagerService;Z)V

    .line 1058
    :cond_10e
    :goto_10e
    iget-object v7, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v7}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "display_night_theme"

    if-eqz p2, :cond_11d

    move v1, v0

    .line 1059
    :cond_11d
    iget-object v9, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v9}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result v9

    .line 1058
    invoke-static {v7, v8, v1, v9}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1060
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setNightModeActivated : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " by "

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mNightMode "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mNightModeCustomType "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I

    move-result p1

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mupdateConfigurationLocked(Lcom/android/server/UiModeManagerService;)V

    .line 1065
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mapplyConfigurationExternallyLocked(Lcom/android/server/UiModeManagerService;)V

    .line 1066
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmCurrentUser(Lcom/android/server/UiModeManagerService;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpersistNightMode(Lcom/android/server/UiModeManagerService;I)V
    :try_end_186
    .catchall {:try_start_a8 .. :try_end_186} :catchall_18b

    .line 1069
    :try_start_186
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4

    return v0

    :catchall_18b
    move-exception p0

    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1070
    throw p0

    :catchall_190
    move-exception p0

    .line 1071
    monitor-exit v4
    :try_end_192
    .catchall {:try_start_186 .. :try_end_192} :catchall_190

    throw p0
.end method

.method public setNightModeCustomType(I)V
    .registers 4

    .line 897
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x3

    .line 903
    invoke-virtual {p0, v0, p1}, Lcom/android/server/UiModeManagerService$12;->setNightModeInternal(II)V

    return-void

    .line 900
    :cond_13
    new-instance p0, Ljava/lang/SecurityException;

    const-string/jumbo p1, "setNightModeCustomType requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final setNightModeInternal(II)V
    .registers 11

    .line 816
    invoke-virtual {p0}, Lcom/android/server/UiModeManagerService$12;->isNightModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_DAY_NIGHT_MODE"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1e

    .line 819
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Night mode locked, requires MODIFY_DAY_NIGHT_MODE permission"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 822
    :cond_1e
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmSetupWizardComplete(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_49

    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$misSetupWizardAllowDarkMode(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 823
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p2, "ui_night_mode"

    invoke-static {p0, p2, p1, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 825
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Night mode cannot be changed before setup wizard completes."

    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_49
    const/4 v0, 0x1

    const/4 v2, 0x3

    if-eqz p1, :cond_8f

    if-eq p1, v0, :cond_8f

    const/4 v3, 0x2

    if-eq p1, v3, :cond_8f

    if-ne p1, v2, :cond_78

    .line 834
    sget-object v3, Lcom/android/server/UiModeManagerService;->SUPPORTED_NIGHT_MODE_CUSTOM_TYPES:Ljava/util/Set;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_61

    goto :goto_8f

    .line 837
    :cond_61
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Can\'t set the custom type to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 840
    :cond_78
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown mode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8f
    :goto_8f
    if-eq p1, v0, :cond_b2

    .line 843
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mcanSetNightMode(Lcom/android/server/UiModeManagerService;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 844
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore setNightMode : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 849
    :cond_b2
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 851
    :try_start_b6
    iget-object v0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v0}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmLock(Lcom/android/server/UiModeManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_bd
    .catchall {:try_start_b6 .. :try_end_bd} :catchall_1a4

    .line 852
    :try_start_bd
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    if-ne v5, p1, :cond_d5

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    if-ne v5, v2, :cond_19c

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightModeCustomType(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    if-eq v5, p2, :cond_19c

    .line 853
    :cond_d5
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    if-eqz v5, :cond_e5

    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result v5

    if-ne v5, v2, :cond_ef

    .line 854
    :cond_e5
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V

    .line 855
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$mcancelCustomAlarm(Lcom/android/server/UiModeManagerService;)V

    .line 857
    :cond_ef
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    if-ne p1, v2, :cond_f5

    move v6, p2

    goto :goto_f6

    :cond_f5
    const/4 v6, -0x1

    .line 859
    :goto_f6
    invoke-static {v5, v6}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmNightModeCustomType(Lcom/android/server/UiModeManagerService;I)V

    .line 860
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5, p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fputmNightMode(Lcom/android/server/UiModeManagerService;I)V

    .line 861
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5}, Lcom/android/server/UiModeManagerService;->-$$Nest$mresetNightModeOverrideLocked(Lcom/android/server/UiModeManagerService;)Z

    .line 862
    iget-object v5, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {v5, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpersistNightMode(Lcom/android/server/UiModeManagerService;I)V

    .line 866
    invoke-static {}, Lcom/android/server/UiModeManagerService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setNightMode : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", customModeType : "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", by "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 867
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 868
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 869
    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mgetPackageName(Lcom/android/server/UiModeManagerService;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 866
    invoke-static {v5, p1}, Lcom/android/server/UiModeManagerService$LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1, v1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mpersistNightModeSettingDB(Lcom/android/server/UiModeManagerService;I)V

    .line 873
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result p1

    if-eqz p1, :cond_172

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmNightMode(Lcom/android/server/UiModeManagerService;)I

    move-result p1

    if-ne p1, v2, :cond_191

    :cond_172
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 874
    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$mshouldApplyAutomaticChangesImmediately(Lcom/android/server/UiModeManagerService;)Z

    move-result p1

    if-nez p1, :cond_191

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    .line 875
    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$misWithInCustomScheduled(Lcom/android/server/UiModeManagerService;)Z

    move-result p1

    if-nez p1, :cond_191

    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$fgetmAutoModeChangeImmediately(Lcom/android/server/UiModeManagerService;)Z

    move-result p1

    if-eqz p1, :cond_18b

    goto :goto_191

    .line 879
    :cond_18b
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p0}, Lcom/android/server/UiModeManagerService;->-$$Nest$mregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V

    goto :goto_19c

    .line 876
    :cond_191
    :goto_191
    iget-object p1, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    invoke-static {p1}, Lcom/android/server/UiModeManagerService;->-$$Nest$munregisterScreenOffEventLocked(Lcom/android/server/UiModeManagerService;)V

    .line 877
    iget-object p0, p0, Lcom/android/server/UiModeManagerService$12;->this$0:Lcom/android/server/UiModeManagerService;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/android/server/UiModeManagerService;->updateLocked(II)V

    .line 882
    :cond_19c
    :goto_19c
    monitor-exit v0
    :try_end_19d
    .catchall {:try_start_bd .. :try_end_19d} :catchall_1a1

    .line 884
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_1a1
    move-exception p0

    .line 882
    :try_start_1a2
    monitor-exit v0
    :try_end_1a3
    .catchall {:try_start_1a2 .. :try_end_1a3} :catchall_1a1

    :try_start_1a3
    throw p0
    :try_end_1a4
    .catchall {:try_start_1a3 .. :try_end_1a4} :catchall_1a4

    :catchall_1a4
    move-exception p0

    .line 884
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 885
    throw p0
.end method
