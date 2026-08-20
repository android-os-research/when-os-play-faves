.class public Lcom/android/server/print/PrintManagerService$PrintManagerImpl;
.super Landroid/print/IPrintManager$Stub;
.source "PrintManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/PrintManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PrintManagerImpl"
.end annotation


# static fields
.field public static final BACKGROUND_USER_ID:I = -0xa


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;

.field public final mUserManager:Landroid/os/UserManager;

.field public final mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/print/UserState;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/print/PrintManagerService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserManager(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/os/UserManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserStates(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetOrCreateUserStateLocked(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;IZZ)Lcom/android/server/print/UserState;
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleUserStopped(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserStopped(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleUserUnlocked(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->handleUserUnlocked(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/print/PrintManagerService;Landroid/content/Context;)V
    .registers 3

    .line 125
    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->this$0:Lcom/android/server/print/PrintManagerService;

    invoke-direct {p0}, Landroid/print/IPrintManager$Stub;-><init>()V

    .line 117
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    .line 123
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    .line 126
    iput-object p2, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo p1, "user"

    .line 127
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    .line 128
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerContentObservers()V

    .line 129
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->registerBroadcastReceivers()V

    return-void
.end method


# virtual methods
.method public addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 577
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 582
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 584
    :try_start_a
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_16

    .line 585
    monitor-exit v0

    return-void

    .line 587
    :cond_16
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result p2

    const/4 v1, 0x0

    .line 588
    invoke-virtual {p0, p3, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 589
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_30

    .line 590
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 592
    :try_start_24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->addPrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2b

    .line 594
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 595
    throw p0

    :catchall_30
    move-exception p0

    .line 589
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 672
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 678
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 680
    :try_start_12
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_1e

    .line 681
    monitor-exit v0

    return-void

    :cond_1e
    const/4 v1, 0x0

    .line 683
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 684
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_34

    .line 685
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 687
    :try_start_28
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->addPrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2f

    .line 689
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 690
    throw p0

    :catchall_34
    move-exception p0

    .line 684
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 623
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 629
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 631
    :try_start_12
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_1e

    .line 632
    monitor-exit v0

    return-void

    :cond_1e
    const/4 v1, 0x0

    .line 634
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 635
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_34

    .line 636
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 638
    :try_start_28
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->addPrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2f

    .line 640
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 641
    throw p0

    :catchall_34
    move-exception p0

    .line 635
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public cancelPrintJob(Landroid/print/PrintJobId;II)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 269
    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 272
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_a
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_16

    .line 275
    monitor-exit v0

    return-void

    .line 277
    :cond_16
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result p2

    const/4 v1, 0x0

    .line 278
    invoke-virtual {p0, p3, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 279
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_a .. :try_end_20} :catchall_30

    .line 280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 282
    :try_start_24
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->cancelPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2b

    .line 284
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 285
    throw p0

    :catchall_30
    move-exception p0

    .line 279
    :try_start_31
    monitor-exit v0
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_30

    throw p0
.end method

.method public createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .registers 6

    .line 423
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 427
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 429
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_16

    .line 430
    monitor-exit v0

    return-void

    :cond_16
    const/4 v1, 0x0

    .line 432
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 433
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_2c

    .line 434
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 436
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->createPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 438
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 439
    throw p0

    :catchall_2c
    move-exception p0

    .line 433
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;I)V
    .registers 6

    .line 445
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 449
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_16

    .line 452
    monitor-exit v0

    return-void

    :cond_16
    const/4 v1, 0x0

    .line 454
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 455
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_2c

    .line 456
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 458
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->destroyPrinterDiscoverySession(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 460
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 461
    throw p0

    :catchall_2c
    move-exception p0

    .line 455
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public final dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/dump/DualDumpOutputStream;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/print/UserState;",
            ">;)V"
        }
    .end annotation

    .line 810
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p0, :cond_22

    const-wide v1, 0x20b00000001L

    const-string/jumbo v3, "user_states"

    .line 812
    invoke-virtual {p1, v3, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v1

    .line 813
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/print/UserState;

    invoke-virtual {v3, p1}, Lcom/android/server/print/UserState;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;)V

    .line 814
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 817
    :cond_22
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 10

    .line 720
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "PrintManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 726
    :goto_11
    array-length v3, p3

    if-ge v1, v3, :cond_4d

    .line 727
    aget-object v3, p3, v1

    if-eqz v3, :cond_4d

    .line 728
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4d

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_27

    goto :goto_4d

    :cond_27
    add-int/lit8 v1, v1, 0x1

    const-string v4, "--proto"

    .line 732
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    const/4 v2, 0x1

    goto :goto_11

    .line 735
    :cond_33
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown argument: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; use -h for help"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    .line 739
    :cond_4d
    :goto_4d
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 740
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 741
    :try_start_55
    iget-object v3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    :goto_5b
    if-ge v0, v3, :cond_6b

    .line 743
    iget-object v4, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/print/UserState;

    invoke-virtual {p3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_5b

    .line 745
    :cond_6b
    monitor-exit v1
    :try_end_6c
    .catchall {:try_start_55 .. :try_end_6c} :catchall_9d

    .line 747
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    if-eqz v2, :cond_80

    .line 750
    :try_start_72
    new-instance p2, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v2, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {p2, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p0, p2, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/ArrayList;)V

    goto :goto_94

    :cond_80
    const-string p1, "PRINT MANAGER STATE (dumpsys print)"

    .line 753
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 755
    new-instance p1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v3, "  "

    invoke-direct {v2, p2, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {p0, p1, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/ArrayList;)V
    :try_end_94
    .catchall {:try_start_72 .. :try_end_94} :catchall_98

    .line 759
    :goto_94
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_98
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 760
    throw p0

    :catchall_9d
    move-exception p0

    .line 745
    :try_start_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw p0
.end method

.method public getBindInstantServiceAllowed(I)Z
    .registers 4

    .line 765
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_13

    if-nez v0, :cond_b

    goto :goto_13

    .line 767
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by uid 2000 or 0"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 772
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 773
    :try_start_17
    invoke-virtual {p0, p1, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 774
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2d

    .line 775
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 777
    :try_start_20
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->getBindInstantServiceAllowed()Z

    move-result p0
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_28

    .line 779
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_28
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 780
    throw p0

    :catchall_2d
    move-exception p0

    .line 774
    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    throw p0
.end method

.method public final getCurrentUserId()I
    .registers 3

    .line 1112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1114
    :try_start_4
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p0
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 1116
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1117
    throw p0
.end method

.method public getCustomPrinterIcon(Landroid/print/PrinterId;I)Landroid/graphics/drawable/Icon;
    .registers 6

    .line 244
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 248
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_17

    const/4 p0, 0x0

    .line 251
    monitor-exit v0

    return-object p0

    :cond_17
    const/4 v1, 0x0

    .line 253
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 254
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_a .. :try_end_1d} :catchall_2e

    .line 255
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 257
    :try_start_21
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->getCustomPrinterIcon(Landroid/print/PrinterId;)Landroid/graphics/drawable/Icon;

    move-result-object p0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_29

    .line 259
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_29
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 260
    throw p0

    :catchall_2e
    move-exception p0

    .line 254
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public final getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;
    .registers 4

    const/4 v0, 0x1

    .line 988
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;

    move-result-object p0

    return-object p0
.end method

.method public final getOrCreateUserStateLocked(IZZ)Lcom/android/server/print/UserState;
    .registers 6

    if-eqz p3, :cond_27

    .line 994
    iget-object p3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p3, p1}, Landroid/os/UserManager;->isUserUnlockingOrUnlocked(I)Z

    move-result p3

    if-eqz p3, :cond_b

    goto :goto_27

    .line 995
    :cond_b
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "User "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be unlocked for printing to be available"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 999
    :cond_27
    :goto_27
    iget-object p3, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/print/UserState;

    if-nez p3, :cond_3f

    .line 1001
    new-instance p3, Lcom/android/server/print/UserState;

    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    invoke-direct {p3, v0, p1, v1, p2}, Lcom/android/server/print/UserState;-><init>(Landroid/content/Context;ILjava/lang/Object;Z)V

    .line 1002
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3f
    if-nez p2, :cond_44

    .line 1006
    invoke-virtual {p3}, Lcom/android/server/print/UserState;->increasePriority()V

    :cond_44
    return-object p3
.end method

.method public getPrintJobInfo(Landroid/print/PrintJobId;II)Landroid/print/PrintJobInfo;
    .registers 8

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 223
    :cond_4
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 226
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 228
    :try_start_b
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_17

    .line 229
    monitor-exit v1

    return-object v0

    .line 231
    :cond_17
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result p2

    const/4 v0, 0x0

    .line 232
    invoke-virtual {p0, p3, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 233
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_b .. :try_end_21} :catchall_32

    .line 234
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 236
    :try_start_25
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->getPrintJobInfo(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2d

    .line 238
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_2d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 239
    throw p0

    :catchall_32
    move-exception p0

    .line 233
    :try_start_33
    monitor-exit v1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public getPrintJobInfos(II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 198
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 201
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 203
    :try_start_7
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_14

    const/4 p0, 0x0

    .line 204
    monitor-exit v0

    return-object p0

    .line 206
    :cond_14
    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result p1

    const/4 v1, 0x0

    .line 207
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 208
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_2f

    .line 209
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 211
    :try_start_22
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->getPrintJobInfos(I)Ljava/util/List;

    move-result-object p0
    :try_end_26
    .catchall {:try_start_22 .. :try_end_26} :catchall_2a

    .line 213
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_2a
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 214
    throw p0

    :catchall_2f
    move-exception p0

    .line 208
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    throw p0
.end method

.method public getPrintServiceRecommendations(I)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/printservice/recommendation/RecommendationInfo;",
            ">;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p1

    .line 405
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_f
    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v1, v3, :cond_1b

    .line 408
    monitor-exit v0

    return-object v2

    :cond_1b
    const/4 v1, 0x0

    .line 410
    invoke-virtual {p0, p1, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 411
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_32

    .line 412
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 414
    :try_start_25
    invoke-virtual {p0}, Lcom/android/server/print/UserState;->getPrintServiceRecommendations()Ljava/util/List;

    move-result-object p0
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_2d

    .line 416
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_2d
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 417
    throw p0

    :catchall_32
    move-exception p0

    .line 411
    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public getPrintServices(II)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x3

    .line 316
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkFlagsArgument(II)I

    .line 319
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 323
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 325
    :try_start_13
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v1, v3, :cond_1f

    .line 326
    monitor-exit v0

    return-object v2

    :cond_1f
    const/4 v1, 0x0

    .line 328
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 329
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_36

    .line 330
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 332
    :try_start_29
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->getPrintServices(I)Ljava/util/List;

    move-result-object p0
    :try_end_2d
    .catchall {:try_start_29 .. :try_end_2d} :catchall_31

    .line 334
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_31
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 335
    throw p0

    :catchall_36
    move-exception p0

    .line 329
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public final handleUserStopped(I)V
    .registers 4

    .line 1037
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$4;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final handleUserUnlocked(I)V
    .registers 4

    .line 1015
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$3;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isPrintServiceEnabled(Landroid/content/ComponentName;I)Z
    .registers 8

    .line 374
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 375
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 374
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 377
    :goto_10
    array-length v3, v0

    if-ge v2, v3, :cond_24

    .line 378
    aget-object v3, v0, v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v0, 0x1

    goto :goto_25

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    :cond_24
    move v0, v1

    :goto_25
    if-eqz v0, :cond_47

    .line 387
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 389
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 391
    :try_start_2e
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v3

    if-eq v2, v3, :cond_3a

    .line 392
    monitor-exit v0

    return v1

    .line 394
    :cond_3a
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 395
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_2e .. :try_end_3f} :catchall_44

    .line 396
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->isPrintServiceEnabled(Landroid/content/ComponentName;)Z

    move-result p0

    return p0

    :catchall_44
    move-exception p0

    .line 395
    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw p0

    .line 385
    :cond_47
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "PrintService does not share UID with caller."

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isPrintingEnabled()Z
    .registers 3

    .line 804
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    .line 805
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    const-string/jumbo v1, "no_printing"

    .line 804
    invoke-virtual {p0, v1, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15

    .line 136
    new-instance v0, Lcom/android/server/print/PrintShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/print/PrintShellCommand;-><init>(Landroid/print/IPrintManager;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;II)Landroid/os/Bundle;
    .registers 15

    .line 142
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->isPrintingEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4d

    .line 145
    const-class p1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 146
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManagerInternal;

    .line 147
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p3

    .line 148
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p4

    .line 150
    :try_start_1a
    invoke-virtual {p1, p3}, Landroid/app/admin/DevicePolicyManagerInternal;->getPrintingDisabledReasonForUser(I)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_2e

    .line 153
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    const/4 p6, 0x1

    invoke-static {p0, p3, p1, p6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Landroid/os/Looper;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 154
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_2e
    .catchall {:try_start_1a .. :try_end_2e} :catchall_48

    .line 157
    :cond_2e
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 160
    :try_start_31
    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->start()V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_3c

    :catch_35
    const-string p0, "PrintManagerService"

    const-string p1, "Error calling IPrintDocumentAdapter.start()"

    .line 162
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_3c
    :try_start_3c
    invoke-interface {p2}, Landroid/print/IPrintDocumentAdapter;->finish()V
    :try_end_3f
    .catch Landroid/os/RemoteException; {:try_start_3c .. :try_end_3f} :catch_40

    goto :goto_47

    :catch_40
    const-string p0, "PrintManagerService"

    const-string p1, "Error calling IPrintDocumentAdapter.finish()"

    .line 167
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_47
    return-object v1

    :catchall_48
    move-exception p0

    .line 157
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 158
    throw p0

    .line 171
    :cond_4d
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    .line 172
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 174
    invoke-virtual {p0, p6}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p4

    .line 178
    iget-object p6, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter p6

    .line 180
    :try_start_61
    invoke-virtual {p0, p4}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v0, v2, :cond_6d

    .line 181
    monitor-exit p6

    return-object v1

    .line 183
    :cond_6d
    invoke-virtual {p0, p5}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result v7

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 p1, 0x0

    .line 185
    invoke-virtual {p0, p4, p1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object v2

    .line 186
    monitor-exit p6
    :try_end_7b
    .catchall {:try_start_61 .. :try_end_7b} :catchall_8e

    .line 187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p0

    move-object v4, p2

    move-object v5, p3

    .line 189
    :try_start_81
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/print/UserState;->print(Ljava/lang/String;Landroid/print/IPrintDocumentAdapter;Landroid/print/PrintAttributes;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object p2
    :try_end_85
    .catchall {:try_start_81 .. :try_end_85} :catchall_89

    .line 192
    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p2

    :catchall_89
    move-exception p2

    invoke-static {p0, p1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 193
    throw p2

    :catchall_8e
    move-exception p0

    .line 186
    :try_start_8f
    monitor-exit p6
    :try_end_90
    .catchall {:try_start_8f .. :try_end_90} :catchall_8e

    throw p0
.end method

.method public final registerBroadcastReceivers()V
    .registers 5

    .line 845
    new-instance v0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;

    invoke-direct {v0, p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$2;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;)V

    .line 984
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method

.method public final registerContentObservers()V
    .registers 5

    const-string v0, "disabled_print_services"

    .line 821
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 823
    new-instance v1, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl$1;-><init>(Lcom/android/server/print/PrintManagerService$PrintManagerImpl;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 840
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0, v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;I)V
    .registers 6

    .line 601
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 605
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 607
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_16

    .line 608
    monitor-exit v0

    return-void

    :cond_16
    const/4 v1, 0x0

    .line 610
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 611
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_2c

    .line 612
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 614
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->removePrintJobStateChangeListener(Landroid/print/IPrintJobStateChangeListener;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 616
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 617
    throw p0

    :catchall_2c
    move-exception p0

    .line 611
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;I)V
    .registers 6

    .line 696
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICE_RECOMMENDATIONS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 702
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 705
    :try_start_12
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_1e

    .line 706
    monitor-exit v0

    return-void

    :cond_1e
    const/4 v1, 0x0

    .line 708
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 709
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_34

    .line 710
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 712
    :try_start_28
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->removePrintServiceRecommendationsChangeListener(Landroid/printservice/recommendation/IRecommendationsChangeListener;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2f

    .line 714
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 715
    throw p0

    :catchall_34
    move-exception p0

    .line 709
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;I)V
    .registers 6

    .line 647
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 649
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.READ_PRINT_SERVICES"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 653
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_12
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_1e

    .line 656
    monitor-exit v0

    return-void

    :cond_1e
    const/4 v1, 0x0

    .line 658
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 659
    monitor-exit v0
    :try_end_24
    .catchall {:try_start_12 .. :try_end_24} :catchall_34

    .line 660
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 662
    :try_start_28
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->removePrintServicesChangeListener(Landroid/print/IPrintServicesChangeListener;)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2f

    .line 664
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2f
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 665
    throw p0

    :catchall_34
    move-exception p0

    .line 659
    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw p0
.end method

.method public final resolveCallingAppEnforcingPermissions(I)I
    .registers 5

    .line 1069
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-nez v0, :cond_7

    return p1

    .line 1073
    :cond_7
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-eq p1, v0, :cond_45

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_45

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_16

    goto :goto_45

    .line 1078
    :cond_16
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "com.android.printspooler.permission.ACCESS_ALL_PRINT_JOBS"

    invoke-virtual {p0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_21

    return p1

    .line 1081
    :cond_21
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call from app "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " as app "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without com.android.printspooler.permission.ACCESS_ALL_PRINT_JOBS"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_45
    :goto_45
    return p1
.end method

.method public final resolveCallingPackageNameEnforcingSecurity(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 1100
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1101
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1100
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 1102
    array-length v0, p0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 1104
    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    return-object p1

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1108
    :cond_1e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "packageName has to belong to the caller"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resolveCallingProfileParentLocked(I)I
    .registers 4

    .line 1052
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_29

    .line 1053
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1055
    :try_start_a
    iget-object p0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 1057
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0
    :try_end_1a
    .catchall {:try_start_a .. :try_end_1a} :catchall_24

    .line 1062
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_1e
    const/16 p0, -0xa

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_24
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1063
    throw p0

    :cond_29
    return p1
.end method

.method public final resolveCallingUserEnforcingPermissions(I)I
    .registers 10

    .line 1090
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1091
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x1

    const/4 v5, 0x1

    const-string v6, ""

    const/4 v7, 0x0

    move v3, p1

    .line 1090
    invoke-interface/range {v0 .. v7}, Landroid/app/IActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_16} :catch_17

    return p0

    :catch_17
    return p1
.end method

.method public restartPrintJob(Landroid/print/PrintJobId;II)V
    .registers 7

    if-eqz p1, :cond_39

    .line 290
    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->isPrintingEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_39

    .line 295
    :cond_9
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 298
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 300
    :try_start_10
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_1c

    .line 301
    monitor-exit v0

    return-void

    .line 303
    :cond_1c
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingAppEnforcingPermissions(I)I

    move-result p2

    const/4 v1, 0x0

    .line 304
    invoke-virtual {p0, p3, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 305
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_10 .. :try_end_26} :catchall_36

    .line 306
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 308
    :try_start_2a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->restartPrintJob(Landroid/print/PrintJobId;I)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_31

    .line 310
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_31
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 311
    throw p0

    :catchall_36
    move-exception p0

    .line 305
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0

    :cond_39
    :goto_39
    return-void
.end method

.method public setBindInstantServiceAllowed(IZ)V
    .registers 5

    .line 785
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_13

    if-nez v0, :cond_b

    goto :goto_13

    .line 787
    :cond_b
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Can only be called by uid 2000 or 0"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 792
    :cond_13
    :goto_13
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 793
    :try_start_17
    invoke-virtual {p0, p1, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 794
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_17 .. :try_end_1c} :catchall_2c

    .line 795
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 797
    :try_start_20
    invoke-virtual {p0, p2}, Lcom/android/server/print/UserState;->setBindInstantServiceAllowed(Z)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 799
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 800
    throw p0

    :catchall_2c
    move-exception p0

    .line 794
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public setPrintServiceEnabled(Landroid/content/ComponentName;ZI)V
    .registers 7

    .line 340
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 341
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_34

    .line 344
    :try_start_10
    iget-object v1, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mContext:Landroid/content/Context;

    .line 345
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.android.printspooler"

    invoke-virtual {v1, v2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 344
    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    if-ne v0, v1, :cond_23

    goto :goto_34

    .line 347
    :cond_23
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system and print spooler can call this"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception p0

    const-string p1, "PrintManagerService"

    const-string p2, "Could not verify caller"

    .line 350
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    .line 354
    :cond_34
    :goto_34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_3a
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_46

    .line 360
    monitor-exit v0

    return-void

    :cond_46
    const/4 v1, 0x0

    .line 362
    invoke-virtual {p0, p3, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 363
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_3a .. :try_end_4c} :catchall_5c

    .line 364
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 366
    :try_start_50
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->setPrintServiceEnabled(Landroid/content/ComponentName;Z)V
    :try_end_53
    .catchall {:try_start_50 .. :try_end_53} :catchall_57

    .line 368
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_57
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 369
    throw p0

    :catchall_5c
    move-exception p0

    .line 363
    :try_start_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5d .. :try_end_5e} :catchall_5c

    throw p0
.end method

.method public startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/print/IPrinterDiscoveryObserver;",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    .line 467
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_d

    const-string v0, "PrinterId"

    .line 469
    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 473
    :cond_d
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p3

    .line 475
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 477
    :try_start_14
    invoke-virtual {p0, p3}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_20

    .line 478
    monitor-exit v0

    return-void

    :cond_20
    const/4 v1, 0x0

    .line 480
    invoke-virtual {p0, p3, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 481
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_36

    .line 482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 484
    :try_start_2a
    invoke-virtual {p0, p1, p2}, Lcom/android/server/print/UserState;->startPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;Ljava/util/List;)V
    :try_end_2d
    .catchall {:try_start_2a .. :try_end_2d} :catchall_31

    .line 486
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_31
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 487
    throw p0

    :catchall_36
    move-exception p0

    .line 481
    :try_start_37
    monitor-exit v0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p0
.end method

.method public startPrinterStateTracking(Landroid/print/PrinterId;I)V
    .registers 6

    .line 534
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 538
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 540
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_16

    .line 541
    monitor-exit v0

    return-void

    :cond_16
    const/4 v1, 0x0

    .line 543
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 544
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_2c

    .line 545
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 547
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->startPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 549
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 550
    throw p0

    :catchall_2c
    move-exception p0

    .line 544
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;I)V
    .registers 6

    .line 492
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 494
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 496
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 498
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_16

    .line 499
    monitor-exit v0

    return-void

    :cond_16
    const/4 v1, 0x0

    .line 501
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 502
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_2c

    .line 503
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 505
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->stopPrinterDiscovery(Landroid/print/IPrinterDiscoveryObserver;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 507
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 508
    throw p0

    :catchall_2c
    move-exception p0

    .line 502
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public stopPrinterStateTracking(Landroid/print/PrinterId;I)V
    .registers 6

    .line 555
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 559
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 561
    :try_start_a
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_16

    .line 562
    monitor-exit v0

    return-void

    :cond_16
    const/4 v1, 0x0

    .line 564
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 565
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_2c

    .line 566
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 568
    :try_start_20
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->stopPrinterStateTracking(Landroid/print/PrinterId;)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_27

    .line 570
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_27
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 571
    throw p0

    :catchall_2c
    move-exception p0

    .line 565
    :try_start_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    throw p0
.end method

.method public validatePrinters(Ljava/util/List;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/print/PrinterId;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "PrinterId"

    .line 513
    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkCollectionElementsNotNull(Ljava/util/Collection;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 515
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingUserEnforcingPermissions(I)I

    move-result p2

    .line 517
    iget-object v0, p0, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 519
    :try_start_f
    invoke-virtual {p0, p2}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->resolveCallingProfileParentLocked(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getCurrentUserId()I

    move-result v2

    if-eq v1, v2, :cond_1b

    .line 520
    monitor-exit v0

    return-void

    :cond_1b
    const/4 v1, 0x0

    .line 522
    invoke-virtual {p0, p2, v1}, Lcom/android/server/print/PrintManagerService$PrintManagerImpl;->getOrCreateUserStateLocked(IZ)Lcom/android/server/print/UserState;

    move-result-object p0

    .line 523
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_31

    .line 524
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 526
    :try_start_25
    invoke-virtual {p0, p1}, Lcom/android/server/print/UserState;->validatePrinters(Ljava/util/List;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_2c

    .line 528
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_2c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 529
    throw p0

    :catchall_31
    move-exception p0

    .line 523
    :try_start_32
    monitor-exit v0
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p0
.end method
