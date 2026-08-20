.class public Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
.super Landroid/companion/ICompanionDeviceManager$Stub;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CompanionDeviceManagerImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method public static synthetic $r8$lambda$SdZ5Mv_-JxEPaaaXBcbsnVrU6R4(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->lambda$isDeviceAssociatedForWifiConnection$0(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .registers 2

    .line 474
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Landroid/companion/ICompanionDeviceManager$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$isDeviceAssociatedForWifiConnection$0(Ljava/lang/String;Landroid/companion/AssociationInfo;)Z
    .registers 2

    .line 624
    invoke-virtual {p1, p0}, Landroid/companion/AssociationInfo;->isLinkedTo(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public addOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .registers 5

    .line 524
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 525
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "addOnAssociationsChangedListener"

    invoke-static {v0, v1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerCanManageCompanionDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 528
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;Ljava/lang/Object;)Z

    return-void
.end method

.method public associate(Landroid/companion/AssociationRequest;Landroid/companion/IAssociationRequestCallback;Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 489
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "associate() request="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", package=u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CompanionDeviceManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "create associations"

    invoke-static {v0, p4, p3, v1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 495
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationRequestsProcessor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationRequestsProcessor;

    move-result-object p0

    invoke-virtual {p0, p1, p3, p4, p2}, Lcom/android/server/companion/AssociationRequestsProcessor;->processNewAssociationRequest(Landroid/companion/AssociationRequest;Ljava/lang/String;ILandroid/companion/IAssociationRequestCallback;)V

    return-void
.end method

.method public canPairWithoutPrompt(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 9

    .line 777
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object p0

    .line 778
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackageWithAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_e

    return v0

    .line 783
    :cond_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p0}, Landroid/companion/AssociationInfo;->getTimeApprovedMs()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x927c0

    cmp-long p0, v1, v3

    if-gez p0, :cond_1f

    const/4 v0, 0x1

    .line 786
    :cond_1f
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canPairWithoutPrompt = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", packageName = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", deviceMacAddress = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", userId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CompanionDeviceManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public final checkCanCallNotificationApi(Ljava/lang/String;)V
    .registers 5

    .line 763
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 764
    invoke-static {v0, p1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerIsSystemOr(ILjava/lang/String;)V

    .line 766
    invoke-static {}, Landroid/companion/ICompanionDeviceManager$Stub;->getCallingUid()I

    move-result v1

    const/16 v2, 0x3e8

    if-ne v1, v2, :cond_10

    return-void

    .line 768
    :cond_10
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, p1}, Lcom/android/server/companion/PackageUtils;->enforceUsesCompanionDeviceFeature(Landroid/content/Context;ILjava/lang/String;)V

    .line 769
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object p0

    .line 770
    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 769
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string p1, "App must have an association before calling this API"

    invoke-static {p0, p1}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    return-void
.end method

.method public createAssociation(Ljava/lang/String;Ljava/lang/String;I[B)V
    .registers 7

    .line 750
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p4, v1}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result p4

    if-nez p4, :cond_19

    const-string p0, "CompanionDeviceManagerService"

    const-string p1, "Given certificate doesn\'t match the package certificate."

    .line 752
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 756
    :cond_19
    iget-object p4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p4}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p4

    const-string v0, "android.permission.ASSOCIATE_COMPANION_DEVICES"

    const-string v1, "createAssociation"

    invoke-virtual {p4, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    const/4 p4, 0x0

    invoke-virtual {p0, p3, p2, p1, p4}, Lcom/android/server/companion/CompanionDeviceManagerService;->legacyCreateAssociation(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public disassociate(I)V
    .registers 4

    .line 566
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 574
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->disassociateInternal(I)V

    return-void

    .line 568
    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Association with ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist or belongs to a different package or belongs to a different user"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public dispatchMessage(II[B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 808
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p3, "CompanionDeviceManagerService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_f

    return-void

    .line 812
    :cond_f
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/companion/AssociationStoreImpl;->dump(Ljava/io/PrintWriter;)V

    .line 813
    iget-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceMonitor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 814
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCompanionAppController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/CompanionApplicationController;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/companion/CompanionApplicationController;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public getAllAssociationsForUser(I)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 515
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 516
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "getAllAssociationsForUser"

    invoke-static {v0, v1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerCanManageCompanionDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 518
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForUser(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getAssociations(Ljava/lang/String;I)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/companion/AssociationInfo;",
            ">;"
        }
    .end annotation

    .line 501
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "get associations"

    invoke-static {v0, p2, p1, v1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerCanManageAssociationsForPackage(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 504
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/companion/PermissionsUtils;->checkCallerCanManageCompanionDevice(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 507
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p1}, Lcom/android/server/companion/PackageUtils;->enforceUsesCompanionDeviceFeature(Landroid/content/Context;ILjava/lang/String;)V

    .line 510
    :cond_20
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public hasNotificationAccess(Landroid/content/ComponentName;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 605
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(Ljava/lang/String;)V

    .line 606
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 607
    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isDeviceAssociatedForWifiConnection(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 7

    .line 613
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_COMPANION_DEVICES"

    const-string/jumbo v2, "isDeviceAssociated"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.COMPANION_APPROVE_WIFI_CONNECTIONS"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_23

    move v0, v1

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    if-eqz v0, :cond_27

    return v1

    .line 623
    :cond_27
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object p0

    invoke-virtual {p0, p3, p1}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackage(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    new-instance p1, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p1}, Lcom/android/internal/util/CollectionUtils;->any(Ljava/util/List;Ljava/util/function/Predicate;)Z

    move-result p0

    return p0
.end method

.method public legacyDisassociate(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 5

    .line 548
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 552
    invoke-virtual {v0, p3, p2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAssociationWithCallerChecks(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object p1

    if-eqz p1, :cond_18

    .line 559
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p1}, Landroid/companion/AssociationInfo;->getId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->disassociateInternal(I)V

    return-void

    .line 554
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Association does not exist or the caller does not have permissions to manage it (ie. it belongs to a different package or a different user)."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyDeviceAppeared(I)V
    .registers 5

    .line 651
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    const-string v1, "Association with ID "

    if-eqz v0, :cond_4d

    .line 659
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v2

    if-eqz v2, :cond_33

    .line 666
    invoke-static {v0}, Landroid/companion/AssociationInfo;->builder(Landroid/companion/AssociationInfo;)Landroid/companion/AssociationInfo$NonActionableBuilder;

    move-result-object v0

    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroid/companion/AssociationInfo$NonActionableBuilder;->setLastTimeConnected(J)Landroid/companion/AssociationInfo$Builder;

    move-result-object v0

    .line 668
    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object v0

    .line 669
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/companion/AssociationStoreImpl;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 671
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceMonitor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onSelfManagedDeviceConnected(I)V

    return-void

    .line 660
    :cond_33
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not self-managed. notifyDeviceAppeared(int) can only be called for self-managed associations."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 653
    :cond_4d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist or belongs to a different package or belongs to a different user"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public notifyDeviceDisappeared(I)V
    .registers 4

    .line 678
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    move-result-object v0

    const-string v1, "Association with ID "

    if-eqz v0, :cond_34

    .line 686
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->isSelfManaged()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 692
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceMonitor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->onSelfManagedDeviceDisconnected(I)V

    return-void

    .line 687
    :cond_1a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not self-managed. notifyDeviceAppeared(int) can only be called for self-managed associations."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 680
    :cond_34
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " does not exist or belongs to a different package or belongs to a different user"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "onShellCommand"

    invoke-static {v0, v2}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerCanManageCompanionDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 798
    new-instance v0, Lcom/android/server/companion/CompanionDeviceShellCommand;

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v4}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceMonitor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/companion/CompanionDeviceShellCommand;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/AssociationStore;Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 802
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 479
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    return p0

    :catchall_5
    move-exception p0

    const-string p1, "CompanionDeviceManagerService"

    const-string p2, "Error during IPC"

    .line 481
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 482
    const-class p1, Landroid/os/RemoteException;

    invoke-static {p0, p1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method public final registerDevicePresenceListenerActive(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.REQUEST_OBSERVE_COMPANION_DEVICE_PRESENCE"

    const-string v2, "[un]registerDevicePresenceListenerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 707
    invoke-static {v0, p1}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerIsSystemOr(ILjava/lang/String;)V

    .line 709
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object v1

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/server/companion/AssociationStoreImpl;->getAssociationsForPackageWithAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    move-result-object v1

    if-eqz v1, :cond_6b

    .line 719
    invoke-virtual {v1}, Landroid/companion/AssociationInfo;->isNotifyOnDeviceNearby()Z

    move-result p2

    if-ne p3, p2, :cond_27

    return-void

    .line 726
    :cond_27
    invoke-static {v1}, Landroid/companion/AssociationInfo;->builder(Landroid/companion/AssociationInfo;)Landroid/companion/AssociationInfo$NonActionableBuilder;

    move-result-object p2

    .line 727
    invoke-interface {p2, p3}, Landroid/companion/AssociationInfo$NonActionableBuilder;->setNotifyOnDeviceNearby(Z)Landroid/companion/AssociationInfo$Builder;

    move-result-object p2

    .line 728
    invoke-virtual {p2}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    move-result-object p2

    .line 732
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmAssociationStore(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/AssociationStoreImpl;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/server/companion/AssociationStoreImpl;->updateAssociation(Landroid/companion/AssociationInfo;)V

    if-eqz p3, :cond_57

    .line 735
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmDevicePresenceMonitor(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;

    move-result-object v1

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/companion/presence/CompanionDevicePresenceMonitor;->isDevicePresent(I)Z

    move-result v1

    if-eqz v1, :cond_57

    .line 737
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {p2}, Landroid/companion/AssociationInfo;->getId()I

    move-result p2

    invoke-static {v1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$monDeviceAppearedInternal(Lcom/android/server/companion/CompanionDeviceManagerService;I)V

    :cond_57
    if-nez p3, :cond_6a

    .line 741
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p2, v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$mshouldBindPackage(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6a

    .line 743
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmCompanionAppController(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/server/companion/CompanionApplicationController;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/companion/CompanionApplicationController;->unbindCompanionApplication(ILjava/lang/String;)V

    :cond_6a
    return-void

    .line 713
    :cond_6b
    new-instance p0, Landroid/os/RemoteException;

    new-instance p3, Landroid/companion/DeviceNotAssociatedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "App "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not associated with device "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Landroid/companion/DeviceNotAssociatedException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Landroid/os/RemoteException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public registerDevicePresenceListenerService(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x1

    .line 631
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->registerDevicePresenceListenerActive(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public removeOnAssociationsChangedListener(Landroid/companion/IOnAssociationsChangedListener;I)V
    .registers 4

    .line 534
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerIsSystemOrCanInteractWithUserId(Landroid/content/Context;I)V

    .line 535
    iget-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 536
    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "removeOnAssociationsChangedListener"

    .line 535
    invoke-static {p2, v0}, Lcom/android/server/companion/PermissionsUtils;->enforceCallerCanManageCompanionDevice(Landroid/content/Context;Ljava/lang/String;)V

    .line 538
    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {p0}, Lcom/android/server/companion/CompanionDeviceManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public requestNotificationAccess(Landroid/content/ComponentName;I)Landroid/app/PendingIntent;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 580
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 581
    invoke-virtual {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(Ljava/lang/String;)V

    .line 583
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 585
    :try_start_b
    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 588
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 587
    invoke-static {p0, p2, p1}, Lcom/android/internal/notification/NotificationAccessConfirmationActivityContract;->launcherIntent(Landroid/content/Context;ILandroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    const/high16 v6, 0x54000000

    const/4 v7, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 585
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p0
    :try_end_28
    .catchall {:try_start_b .. :try_end_28} :catchall_2c

    .line 594
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_2c
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 595
    throw p0
.end method

.method public unregisterDevicePresenceListenerService(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p3, 0x0

    .line 638
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->registerDevicePresenceListenerActive(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
