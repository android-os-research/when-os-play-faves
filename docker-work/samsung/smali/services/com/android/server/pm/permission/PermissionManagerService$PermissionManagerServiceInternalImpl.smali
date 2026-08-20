.class public Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;
.super Ljava/lang/Object;
.source "PermissionManagerService.java"

# interfaces
.implements Lcom/android/server/pm/permission/PermissionManagerServiceInternal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/PermissionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PermissionManagerServiceInternalImpl"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/permission/PermissionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;)V
    .registers 2

    .line 588
    iput-object p1, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;-><init>(Lcom/android/server/pm/permission/PermissionManagerService;)V

    return-void
.end method


# virtual methods
.method public addOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 2

    .line 803
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->addOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method public applyRuntimePermissionsForAllApplicationsForMDM(II)Z
    .registers 3

    .line 727
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->applyRuntimePermissionsForAllApplicationsForMDM(II)Z

    move-result p0

    return p0
.end method

.method public applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)Z"
        }
    .end annotation

    .line 721
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->applyRuntimePermissionsForMDM(Ljava/lang/String;Ljava/util/List;II)Z

    move-result p0

    return p0
.end method

.method public backupRuntimePermissions(I)[B
    .registers 2

    .line 700
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->backupRuntimePermissions(I)[B

    move-result-object p0

    return-object p0
.end method

.method public checkPermission(Ljava/lang/String;Ljava/lang/String;I)I
    .registers 4

    .line 592
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$mcheckPermission(Lcom/android/server/pm/permission/PermissionManagerService;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public checkPostNotificationsPermissionGrantedOrLegacyAccess(I)I
    .registers 7

    .line 604
    iget-object v0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, p1, v1}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$mcheckUidPermission(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;)I

    move-result v0

    .line 606
    iget-object v2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v2}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPackageManagerInt(Lcom/android/server/pm/permission/PermissionManagerService;)Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    if-nez v2, :cond_2d

    .line 608
    invoke-static {}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No package for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2d
    if-eqz v0, :cond_4f

    .line 612
    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getTargetSdkVersion()I

    move-result v3

    const/16 v4, 0x17

    if-lt v3, v4, :cond_4f

    .line 613
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-interface {v2}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 614
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 613
    invoke-virtual {p0, v2, v1, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    and-int/lit8 p1, p0, 0x40

    if-eqz p1, :cond_4f

    and-int/lit8 p0, p0, 0x1

    if-nez p0, :cond_4f

    const/4 p0, 0x0

    return p0

    :cond_4f
    return v0
.end method

.method public checkUidPermission(ILjava/lang/String;)I
    .registers 3

    .line 598
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$mcheckUidPermission(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getAllAppOpPermissionPackages()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 677
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllAppOpPermissionPackages()Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public getAllPermissionsWithProtection(I)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 877
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllPermissionsWithProtection(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getAllPermissionsWithProtectionFlags(I)Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .line 884
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    .line 885
    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAllPermissionsWithProtectionFlags(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 849
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getAppOpPermissionPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDelegatedShellPermissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 639
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$mgetDelegatedShellPermissionsInternal(Lcom/android/server/pm/permission/PermissionManagerService;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getGidsForUid(I)[I
    .registers 2

    .line 671
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getGidsForUid(I)[I

    move-result-object p0

    return-object p0
.end method

.method public getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 839
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getGrantedPermissions(Ljava/lang/String;I)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getHotwordDetectionServiceProvider()Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;
    .registers 1

    .line 649
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;

    move-result-object p0

    return-object p0
.end method

.method public getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;
    .registers 2

    .line 694
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object p0

    return-object p0
.end method

.method public getLegacyPermissions()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/pm/permission/LegacyPermission;",
            ">;"
        }
    .end annotation

    .line 688
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getLegacyPermissions()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 739
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPackageGrantedPermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getPermissionGids(Ljava/lang/String;I)[I
    .registers 3

    .line 844
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object p0

    return-object p0
.end method

.method public getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;
    .registers 2

    .line 870
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getPermissionTEMP(Ljava/lang/String;)Lcom/android/server/pm/permission/Permission;

    move-result-object p0

    return-object p0
.end method

.method public getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 716
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->getRequestedRuntimePermissionsForMDM(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 662
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->grantInstallPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isPermissionsReviewRequired(Ljava/lang/String;I)Z
    .registers 3

    .line 820
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->isPermissionsReviewRequired(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public onPackageAdded(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 4

    .line 763
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageAdded(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZLcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public onPackageInstalled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V
    .registers 11

    const-string/jumbo v0, "pkg"

    .line 769
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string/jumbo v0, "params"

    .line 770
    invoke-static {p3, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-gez p4, :cond_16

    if-ne p4, v0, :cond_14

    goto :goto_16

    :cond_14
    move v3, v1

    goto :goto_17

    :cond_16
    :goto_16
    move v3, v2

    :goto_17
    const-string/jumbo v4, "userId"

    .line 771
    invoke-static {v3, v4}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 774
    iget-object v3, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {v3}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3, p4}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageInstalled(Lcom/android/server/pm/parsing/pkg/AndroidPackage;ILcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;I)V

    if-ne p4, v0, :cond_2f

    .line 775
    iget-object p2, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p2}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$mgetAllUserIds(Lcom/android/server/pm/permission/PermissionManagerService;)[I

    move-result-object p2

    goto :goto_33

    :cond_2f
    new-array p2, v2, [I

    aput p4, p2, v1

    .line 777
    :goto_33
    array-length p4, p2

    move v0, v1

    :goto_35
    if-ge v0, p4, :cond_4e

    aget v3, p2, v0

    .line 778
    invoke-virtual {p3}, Lcom/android/server/pm/permission/PermissionManagerServiceInternal$PackageInstalledParams;->getAutoRevokePermissionsMode()I

    move-result v4

    if-eqz v4, :cond_41

    if-ne v4, v2, :cond_4b

    .line 781
    :cond_41
    iget-object v5, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    if-ne v4, v2, :cond_47

    move v4, v2

    goto :goto_48

    :cond_47
    move v4, v1

    :goto_48
    invoke-static {v5, p1, v4, v3}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$msetAutoRevokeExemptedInternal(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/parsing/pkg/AndroidPackage;ZI)Z

    :cond_4b
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_4e
    return-void
.end method

.method public onPackageRemoved(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V
    .registers 2

    .line 789
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageRemoved(Lcom/android/server/pm/parsing/pkg/AndroidPackage;)V

    return-void
.end method

.method public onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            "Ljava/util/List<",
            "Lcom/android/server/pm/parsing/pkg/AndroidPackage;",
            ">;I)V"
        }
    .end annotation

    .line 796
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object v0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onPackageUninstalled(Ljava/lang/String;ILcom/android/server/pm/parsing/pkg/AndroidPackage;Ljava/util/List;I)V

    return-void
.end method

.method public onStorageVolumeMounted(Ljava/lang/String;Z)V
    .registers 3

    .line 854
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onStorageVolumeMounted(Ljava/lang/String;Z)V

    return-void
.end method

.method public onSystemReady()V
    .registers 1

    .line 814
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onSystemReady()V

    return-void
.end method

.method public onUserCreated(I)V
    .registers 2

    .line 682
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onUserCreated(I)V

    return-void
.end method

.method public onUserRemoved(I)V
    .registers 2

    .line 833
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->onUserRemoved(I)V

    return-void
.end method

.method public readLegacyPermissionStateTEMP()V
    .registers 1

    .line 825
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->readLegacyPermissionStateTEMP()V

    return-void
.end method

.method public readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .registers 2

    .line 751
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->readLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    return-void
.end method

.method public removeOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V
    .registers 2

    .line 809
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removeOnRuntimePermissionStateChangedListener(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$OnRuntimePermissionStateChangedListener;)V

    return-void
.end method

.method public removePackageGrantedPermissionsForMDM(Ljava/lang/String;)V
    .registers 2

    .line 744
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->removePackageGrantedPermissionsForMDM(Ljava/lang/String;)V

    return-void
.end method

.method public resetRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 3

    .line 858
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V

    return-void
.end method

.method public resetRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V
    .registers 4

    .line 864
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->resetRuntimePermissions(Lcom/android/server/pm/parsing/pkg/AndroidPackage;IZ)V

    return-void
.end method

.method public restoreDelayedRuntimePermissions(Ljava/lang/String;I)V
    .registers 3

    .line 711
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restoreDelayedRuntimePermissions(Ljava/lang/String;I)V

    return-void
.end method

.method public restoreRuntimePermissions([BI)V
    .registers 3

    .line 705
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->restoreRuntimePermissions([BI)V

    return-void
.end method

.method public revokeInstallPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 656
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->revokeInstallPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)V
    .registers 2

    .line 644
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fputmHotwordDetectionServiceProvider(Lcom/android/server/pm/permission/PermissionManagerService;Lcom/android/server/pm/permission/PermissionManagerServiceInternal$HotwordDetectionServiceProvider;)V

    return-void
.end method

.method public setLicensePermissionsForMDM(Ljava/lang/String;Ljava/util/Set;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .line 733
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->setLicensePermissionsForMDM(Ljava/lang/String;Ljava/util/Set;)I

    move-result p0

    return p0
.end method

.method public startShellPermissionIdentityDelegation(ILjava/lang/String;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "packageName"

    .line 627
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 628
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$mstartShellPermissionIdentityDelegationInternal(Lcom/android/server/pm/permission/PermissionManagerService;ILjava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public stopShellPermissionIdentityDelegation()V
    .registers 1

    .line 633
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$mstopShellPermissionIdentityDelegationInternal(Lcom/android/server/pm/permission/PermissionManagerService;)V

    return-void
.end method

.method public writeLegacyPermissionStateTEMP()V
    .registers 1

    .line 829
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->writeLegacyPermissionStateTEMP()V

    return-void
.end method

.method public writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V
    .registers 2

    .line 757
    iget-object p0, p0, Lcom/android/server/pm/permission/PermissionManagerService$PermissionManagerServiceInternalImpl;->this$0:Lcom/android/server/pm/permission/PermissionManagerService;

    invoke-static {p0}, Lcom/android/server/pm/permission/PermissionManagerService;->-$$Nest$fgetmPermissionManagerServiceImpl(Lcom/android/server/pm/permission/PermissionManagerService;)Lcom/android/server/pm/permission/PermissionManagerServiceImpl;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/permission/PermissionManagerServiceImpl;->writeLegacyPermissionsTEMP(Lcom/android/server/pm/permission/LegacyPermissionSettings;)V

    return-void
.end method
