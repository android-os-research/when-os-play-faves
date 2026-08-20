.class public Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;
.super Lcom/samsung/android/knox/container/IRCPPolicy$Stub;
.source "KnoxMUMRCPPolicyService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field public static final ENFORCED_PERMISSION:Ljava/lang/String; = "com.samsung.permission.READ_KNOX_NOTIFICATION"

.field public static final KNOX_RCP_SYNC_MGMT_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

.field public static final MDM_ENTERPRISE_CONTAINER_PERMISSION:Ljava/lang/String; = "com.samsung.android.knox.permission.KNOX_CONTAINER"

.field public static final NOTIFICATION_POLICY_CHANGED:Ljava/lang/String; = "samsung.knox.intent.action.NOTIFICATION_POLICY_CHANGED"

.field public static final RCP_POLICY_CHANGED:Ljava/lang/String; = "samsung.knox.intent.action.RCP_POLICY_CHANGED"

.field public static final TABLE_NAME:Ljava/lang/String; = "RCP_DATA"

.field public static final TAG:Ljava/lang/String; = "KnoxMUMRCPPolicyService"

.field public static final isEngMode:Z


# instance fields
.field public mContext:Landroid/content/Context;

.field public mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public providerList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field public providerList2:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.build.type"

    .line 96
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/knox/container/IRCPPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 93
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 94
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->providerList1:Ljava/util/List;

    .line 95
    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->providerList2:Ljava/util/List;

    .line 106
    iput-object p1, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    .line 107
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    return-void
.end method


# virtual methods
.method public allowMoveAppsToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 644
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x0

    if-eqz v1, :cond_155

    .line 647
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 648
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cid"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 649
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "adminUid"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "propertyName"

    const-string v6, "EnforceMoveAppsToContainer"

    .line 650
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    sget-boolean v5, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    const-string v7, "KnoxMUMRCPPolicyService"

    if-eqz v5, :cond_6a

    .line 652
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setEnforceAuthForContainer: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " EnforceMoveAppsToContainer"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    :cond_6a
    iget-object v5, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "CONTAINER_POLICY"

    invoke-virtual {v5, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    .line 656
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setEnforceAuthForContainer: already row present ? "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v10, 0x1

    if-lez v5, :cond_82

    move v11, v10

    goto :goto_83

    :cond_82
    move v11, v3

    :goto_83
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "propertyValue"

    if-lez v5, :cond_a5

    .line 659
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 660
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v5, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 661
    iget-object v9, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v9, v8, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v4

    goto :goto_b2

    .line 664
    :cond_a5
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v9, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 665
    iget-object v5, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v5, v8, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v4

    :goto_b2
    if-nez v4, :cond_ca

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setEnforceAuthForContainer failed : result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 673
    :cond_ca
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 674
    iget v4, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v5, "android.intent.extra.user_handle"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v4, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    .line 675
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 676
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 677
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string/jumbo v8, "personaId"

    invoke-virtual {v4, v8, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v5, "policyName"

    .line 678
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v5, "policyValue"

    .line 679
    invoke-virtual {v4, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v5, "MoveAppsToContainerBundle"

    .line 680
    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 682
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "move apps to container allow ? : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 686
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v3, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v11, 0x5

    const/4 v12, 0x1

    const/4 v13, 0x1

    .line 689
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Admin "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_13a

    const-string v1, "allowed"

    goto :goto_13c

    :cond_13a
    const-string v1, "disallowed"

    .line 691
    :goto_13c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " moving applications to container."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 692
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v17

    const-string v15, "KnoxMUMRCPPolicyService"

    .line 688
    invoke-static/range {v11 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 694
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v10

    :cond_155
    return v3
.end method

.method public allowMoveFilesToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 453
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x0

    if-eqz v1, :cond_120

    .line 456
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 457
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cid"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 458
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "adminUid"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "propertyName"

    const-string v6, "EnforceMoveFilesToContainer"

    .line 459
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    sget-boolean v5, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    const-string v6, "KnoxMUMRCPPolicyService"

    if-eqz v5, :cond_69

    .line 461
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowMoveFilesToContainer: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " EnforceMoveFilesToContainer"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_69
    iget-object v5, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v5, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    .line 465
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allowMoveFilesToContainer: already row present ? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    if-lez v5, :cond_80

    move v10, v9

    goto :goto_81

    :cond_80
    move v10, v3

    :goto_81
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "propertyValue"

    if-lez v5, :cond_a3

    .line 468
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 469
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 470
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v7, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    goto :goto_b0

    .line 473
    :cond_a3
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 474
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    :goto_b0
    if-nez v0, :cond_c7

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowMoveFilesToContainer failed : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 483
    :cond_c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "move files to container allow ? : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 490
    :try_start_e3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v14, "KnoxMUMRCPPolicyService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_102

    const-string v1, "allowed"

    goto :goto_104

    :cond_102
    const-string v1, "disallowed"

    .line 492
    :goto_104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " moving files to container."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 493
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v16

    .line 489
    invoke-static/range {v10 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_117
    .catchall {:try_start_e3 .. :try_end_117} :catchall_11b

    .line 495
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :catchall_11b
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 496
    throw v0

    :cond_120
    return v3
.end method

.method public allowMoveFilesToOwner(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 549
    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    const/4 v3, 0x0

    if-eqz v1, :cond_120

    .line 552
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 553
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cid"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 554
    iget v5, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "adminUid"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "propertyName"

    const-string v6, "EnforceMoveFilesToOwner"

    .line 555
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    sget-boolean v5, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    const-string v6, "KnoxMUMRCPPolicyService"

    if-eqz v5, :cond_69

    .line 557
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "allowMoveFilesToOwner: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " EnforceMoveFilesToOwner"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_69
    iget-object v5, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v7, "CONTAINER_POLICY"

    invoke-virtual {v5, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v5

    .line 561
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "allowMoveFilesToOwner: already row present ? "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x1

    if-lez v5, :cond_80

    move v10, v9

    goto :goto_81

    :cond_80
    move v10, v3

    :goto_81
    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v8, "propertyValue"

    if-lez v5, :cond_a3

    .line 564
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 565
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v5, v8, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 566
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v7, v5, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v0

    goto :goto_b0

    .line 569
    :cond_a3
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 570
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, v7, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    :goto_b0
    if-nez v0, :cond_c7

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "allowMoveFilesToOwner failed : result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 579
    :cond_c7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "move files to owner allow ? : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v10, 0x5

    const/4 v11, 0x1

    const/4 v12, 0x1

    .line 585
    :try_start_e3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v14, "KnoxMUMRCPPolicyService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Admin "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " has "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_102

    const-string v1, "allowed"

    goto :goto_104

    :cond_102
    const-string v1, "disallowed"

    .line 587
    :goto_104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " moving files to owner."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 588
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v16

    .line 584
    invoke-static/range {v10 .. v16}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_117
    .catchall {:try_start_e3 .. :try_end_117} :catchall_11b

    .line 590
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v9

    :catchall_11b
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 591
    throw v0

    :cond_120
    return v3
.end method

.method public allowShareClipboardDataToContainer(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public allowShareClipboardDataToOwner(Lcom/samsung/android/knox/ContextInfo;Z)Z
    .registers 13

    .line 742
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    if-eqz p1, :cond_9d

    .line 744
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 746
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 747
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v3, "android.intent.extra.user_handle"

    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v2, "knox.container.proxy.EXTRA_KEY"

    const-string/jumbo v3, "no_cross_profile_copy_paste"

    .line 748
    invoke-virtual {p0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_37

    const-string/jumbo v2, "knox.container.proxy.POLICY_CLEAR_USER_RESTRICTION"

    .line 752
    invoke-static {v2, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    goto :goto_3e

    :cond_37
    const-string/jumbo v2, "knox.container.proxy.POLICY_ADD_USER_RESTRICTION"

    .line 754
    invoke-static {v2, p0}, Lcom/samsung/android/knox/ContainerProxy;->sendPolicyUpdate(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    :goto_3e
    if-eqz p0, :cond_9a

    const/4 v2, -0x1

    const-string v3, "android.intent.extra.RETURN_RESULT"

    .line 757
    invoke-virtual {p0, v3, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_9a

    .line 758
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "share cp to owner allow ? : "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "KnoxMUMRCPPolicyService"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 760
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " has "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_80

    const-string p2, "allowed"

    goto :goto_82

    :cond_80
    const-string p2, "disallowed"

    .line 762
    :goto_82
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " sharing clipboard to owner from Workspace."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget v9, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v7, "KnoxMUMRCPPolicyService"

    .line 759
    invoke-static/range {v3 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    .line 765
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    .line 769
    :cond_9a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_9d
    const/4 p0, 0x0

    return p0
.end method

.method public final enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/knox/ContextInfo;"
        }
    .end annotation

    .line 122
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final enforceSystemUid()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 126
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-ne p0, v0, :cond_9

    return-void

    .line 127
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Not a system service. This API only allowed by SYSTEM_UID"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const-string v0, "KnoxMUMRCPPolicyService"

    const-string v1, "getAllowChangeDataSyncPolicy"

    .line 360
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_c

    .line 363
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    goto :goto_14

    .line 365
    :cond_c
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 366
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 368
    :goto_14
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-string v2, "RCP_DATA"

    .line 369
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getPropertyValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 370
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez p0, :cond_25

    const/4 p0, 0x0

    return p0

    .line 374
    :cond_25
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getDataSyncPolicyByUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "RCP_DATA"

    .line 378
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getPropertyValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDefaultRCPPolicy(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 111
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 112
    iget-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 114
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public getListFromAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Z)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "KnoxMUMRCPPolicyService"

    const-string v1, "getListFromAllowChangeDataSyncPolicy"

    .line 383
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    invoke-static {p3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p3

    const-string v0, "RCP_DATA"

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getListFromSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getListFromSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 294
    sget-boolean v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v0, :cond_2f

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "admin uid from context info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxMUMRCPPolicyService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const/4 v0, 0x0

    if-eqz p3, :cond_90

    .line 298
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_90

    if-eqz p4, :cond_90

    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_41

    goto :goto_90

    :cond_41
    const-string/jumbo v1, "name"

    .line 301
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v2

    .line 303
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 304
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v4, "adminUid"

    invoke-virtual {v3, v4, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo p1, "propertyName"

    .line 305
    invoke-virtual {v3, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "propertyValue"

    .line 306
    invoke-virtual {v3, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p2, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_90

    .line 309
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_90

    .line 310
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 311
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_7b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ContentValues;

    .line 312
    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_7b

    :cond_8f
    return-object p1

    :cond_90
    :goto_90
    return-object v0
.end method

.method public getNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    const-string p1, "KnoxMUMRCPPolicyService"

    const-string v0, "getNotificationSyncPolicy"

    .line 395
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 397
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 398
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const-string v2, "RCP_NOTIFICATION"

    .line 399
    invoke-virtual {p0, v2, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getPropertyValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 400
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0
.end method

.method public getNotificationSyncPolicyByUser(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-string v0, "RCP_NOTIFICATION"

    .line 405
    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getPropertyValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPackagesFromNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "RCP_NOTIFICATION"

    .line 410
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getListFromSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getPropertyValue(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    .line 264
    invoke-virtual {p0}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->enforceSystemUid()V

    const/4 v0, 0x0

    if-eqz p3, :cond_72

    .line 266
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_72

    if-eqz p4, :cond_72

    .line 267
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_72

    if-nez p2, :cond_17

    goto :goto_72

    .line 270
    :cond_17
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getAdminLUidListAsUser(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_72

    .line 271
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_26

    goto :goto_72

    :cond_26
    const-string/jumbo v0, "propertyValue"

    .line 275
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    .line 278
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v4, "name"

    .line 279
    invoke-virtual {v3, v4, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p3, "propertyName"

    .line 280
    invoke-virtual {v3, p3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_42
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6d

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    const-string v4, "adminUid"

    .line 282
    invoke-virtual {v3, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 283
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_42

    .line 285
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_42

    const/4 p0, 0x0

    .line 286
    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 289
    :cond_6d
    invoke-virtual {p0, p2, p4}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->getDefaultRCPPolicy(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_72
    :goto_72
    return-object v0
.end method

.method public isMoveAppsToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 11

    const-string v0, "KnoxMUMRCPPolicyService"

    const/4 v1, 0x0

    if-eqz p1, :cond_a9

    const-string/jumbo v2, "propertyValue"

    .line 605
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 608
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v5, "propertyName"

    const-string v6, "EnforceMoveAppsToContainer"

    .line 609
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v5

    .line 611
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "adminUid"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 612
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cid"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 613
    sget-boolean v6, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v6, :cond_5c

    .line 614
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getEnforceAuthForContainer: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " EnforceMoveAppsToContainer"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    :cond_5c
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "CONTAINER_POLICY"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_a3

    .line 619
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a3

    if-eqz v6, :cond_8c

    .line 621
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEnforceAuthForContainer: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    :cond_8c
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a2

    const-string p1, "1"

    .line 625
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a2

    const/4 p0, 0x1

    return p0

    :cond_a2
    return v1

    :cond_a3
    const-string p0, "getEnforceAuthForContainer failed to get value from DB > returning true"

    .line 632
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_a9
    const-string p0, "getEnforceAuthForContainer failed > returning true"

    .line 636
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isMoveFilesToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 10

    const/4 v0, 0x1

    const-string v1, "KnoxMUMRCPPolicyService"

    if-eqz p1, :cond_aa

    const-string/jumbo v2, "propertyValue"

    .line 416
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 419
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 420
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cid"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "propertyName"

    const-string v6, "EnforceMoveFilesToContainer"

    .line 421
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v5

    .line 423
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "adminUid"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 424
    sget-boolean v6, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v6, :cond_5d

    .line 425
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isMoveFilesToContainerAllowed: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " EnforceMoveFilesToContainer"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_5d
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "CONTAINER_POLICY"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_a3

    .line 430
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a3

    .line 431
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMoveFilesToContainerAllowed: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ContentValues;

    invoke-virtual {v4, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a2

    const-string p1, "1"

    .line 434
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a2

    return v0

    :cond_a2
    return v3

    :cond_a3
    const-string/jumbo p0, "isMoveFilesToContainerAllowed failed to get value from DB > returning true"

    .line 441
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_aa
    const-string/jumbo p0, "isMoveFilesToContainerAllowed failed > returning true"

    .line 445
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isMoveFilesToOwnerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 11

    const-string v0, "KnoxMUMRCPPolicyService"

    const/4 v1, 0x0

    if-eqz p1, :cond_ac

    const-string/jumbo v2, "propertyValue"

    .line 510
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v3

    .line 513
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 514
    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "cid"

    invoke-virtual {v4, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v5, "propertyName"

    const-string v6, "EnforceMoveFilesToOwner"

    .line 515
    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v5, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v5

    .line 517
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "adminUid"

    invoke-virtual {v4, v7, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 518
    sget-boolean v6, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->isEngMode:Z

    if-eqz v6, :cond_5d

    .line 519
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isMoveFilesToOwnerAllowed: CONTAINER_ID - ADMIN_UID - CONTAINER_PROPERTY_NAME:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " EnforceMoveFilesToOwner"

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    :cond_5d
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string p1, "CONTAINER_POLICY"

    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_a5

    .line 524
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_a5

    if-eqz v6, :cond_8e

    .line 526
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isMoveFilesToOwnerAllowed: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentValues;

    invoke-virtual {v3, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_8e
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ContentValues;

    invoke-virtual {p0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_a4

    const-string p1, "1"

    .line 530
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a4

    const/4 p0, 0x1

    return p0

    :cond_a4
    return v1

    :cond_a5
    const-string/jumbo p0, "isMoveFilesToOwnerAllowed failed to get value from DB > returning true"

    .line 537
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_ac
    const-string/jumbo p0, "isMoveFilesToOwnerAllowed failed > returning true"

    .line 541
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isShareClipboardDataToContainerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public isShareClipboardDataToOwnerAllowed(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 4

    .line 725
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const/4 v0, 0x0

    if-eqz p1, :cond_20

    .line 729
    new-instance v1, Landroid/os/UserHandle;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo p1, "no_cross_profile_copy_paste"

    invoke-virtual {p0, p1, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    if-eqz p0, :cond_1f

    goto :goto_20

    :cond_1f
    const/4 v0, 0x1

    .line 736
    :cond_20
    :goto_20
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "isShareClipboardDataToOwnerAllowed:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KnoxMUMRCPPolicyService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public notifyToAddSystemService(Ljava/lang/String;Landroid/os/IBinder;)V
    .registers 3

    return-void
.end method

.method public onAdminAdded(I)V
    .registers 2

    return-void
.end method

.method public onAdminRemoved(I)V
    .registers 2

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public sendRCPPolicyChangeBroadcast(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 10

    .line 839
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.user_handle"

    .line 840
    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 841
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 842
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sendRCPPolicyChangedBroadcast , mAppName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , mPolicyType : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , mPersonaID : "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "KnoxMUMRCPPolicyService"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "knox-import-data"

    .line 844
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "policyName"

    const-string/jumbo v4, "syncerList"

    const-string/jumbo v5, "personaId"

    if-eqz v2, :cond_63

    .line 845
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 846
    invoke-virtual {p2, v5, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 847
    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 848
    invoke-virtual {p2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "policyChangedBundle"

    .line 849
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_80

    :cond_63
    const-string/jumbo p1, "knox-export-data"

    .line 850
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_80

    .line 851
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 852
    invoke-virtual {p2, v5, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 853
    invoke-virtual {p2, v4, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 854
    invoke-virtual {p2, v3, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "policyChangedBundleExport"

    .line 855
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 857
    :cond_80
    :goto_80
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-direct {p1, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method public sendRCPPolicyChangedBroadcast(I)V
    .registers 6

    .line 824
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "Notifications"

    .line 825
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.user_handle"

    .line 827
    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 828
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v3, "personaId"

    .line 829
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "syncerList"

    .line 830
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo p1, "policyName"

    const-string/jumbo v0, "knox-sanitize-data"

    .line 831
    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "policyChangedBundle"

    .line 832
    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 834
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public sendRCPPolicyChangedBroadcastToGearManager(Ljava/lang/String;I)V
    .registers 5

    .line 813
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "samsung.knox.intent.action.NOTIFICATION_POLICY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "personaId"

    .line 814
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo p2, "policy"

    .line 815
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 816
    iget-object p0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    const-string p1, "com.samsung.permission.READ_KNOX_NOTIFICATION"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public setAllowChangeDataSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Z)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    move-object/from16 v0, p3

    const-string v1, "KnoxMUMRCPPolicyService"

    const-string/jumbo v2, "setAllowChangeDataSyncPolicy"

    .line 322
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b5

    .line 325
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 328
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    const/4 v3, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_c8

    goto :goto_4f

    :sswitch_2c
    const-string/jumbo v4, "knox-export-data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_4f

    :cond_36
    const/4 v3, 0x2

    goto :goto_4f

    :sswitch_38
    const-string/jumbo v4, "knox-sanitize-data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_42

    goto :goto_4f

    :cond_42
    const/4 v3, 0x1

    goto :goto_4f

    :sswitch_44
    const-string/jumbo v4, "knox-import-data"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4e

    goto :goto_4f

    :cond_4e
    const/4 v3, 0x0

    :goto_4f
    packed-switch v3, :pswitch_data_d6

    const-string v3, ""

    goto :goto_5f

    :pswitch_55
    const-string v3, "exporting"

    goto :goto_5f

    :pswitch_58
    const-string/jumbo v3, "sanitizing"

    goto :goto_5f

    :pswitch_5c
    const-string/jumbo v3, "importing"

    .line 340
    :goto_5f
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    .line 343
    :try_start_66
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    const-string v10, "KnoxMUMRCPPolicyService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Admin "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v13, p1

    iget v12, v13, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " has "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p4, :cond_86

    const-string v12, "allowed"

    goto :goto_88

    :cond_86
    const-string v12, "disallowed"

    .line 345
    :goto_88
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " provider "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 347
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 342
    invoke-static/range {v6 .. v12}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V
    :try_end_ab
    .catchall {:try_start_66 .. :try_end_ab} :catchall_b0

    .line 349
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_14

    :catchall_b0
    move-exception v0

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 350
    throw v0

    :cond_b5
    move-object v13, p1

    .line 355
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v6

    const-string v3, "RCP_DATA"

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->setRCPSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    nop

    :sswitch_data_c8
    .sparse-switch
        0x4fd60b11 -> :sswitch_44
        0x5db49d0d -> :sswitch_38
        0x7b6b1c62 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_d6
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_58
        :pswitch_55
    .end packed-switch
.end method

.method public setNotificationSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "KnoxMUMRCPPolicyService"

    const-string/jumbo v1, "setNotificationSyncPolicy"

    .line 389
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "RCP_NOTIFICATION"

    move-object v2, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    .line 390
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->setRCPSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final setRCPSyncPolicy(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    const-string v6, "KnoxMUMRCPPolicyService"

    const-string/jumbo v7, "setRCPSyncPolicy"

    .line 132
    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    new-instance v7, Ljava/util/ArrayList;

    const-string v8, "com.samsung.android.knox.permission.KNOX_CONTAINER_RCP"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1, v7}, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->enforceSecurityPermission(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v3, :cond_22b

    .line 135
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_22b

    if-eqz v4, :cond_22b

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_22b

    if-eqz v5, :cond_22b

    .line 136
    invoke-virtual/range {p5 .. p5}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_42

    goto/16 :goto_22b

    :cond_42
    const/4 v9, 0x0

    const-string v10, ""

    .line 140
    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v3, v9}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 141
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5d

    const-string/jumbo v0, "setRCPSyncPolicy: bad arguments after filtering.."

    .line 142
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    .line 146
    :cond_5d
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 147
    iget v7, v7, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v10, "adminUid"

    invoke-virtual {v9, v10, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string/jumbo v7, "propertyName"

    .line 148
    invoke-virtual {v9, v7, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 151
    new-instance v10, Ljava/util/TreeSet;

    invoke-direct {v10, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    .line 152
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v10, v8

    :goto_82
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_19c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string/jumbo v11, "name"

    .line 153
    invoke-virtual {v9, v11, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v11, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v11, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I

    move-result v11

    const-string/jumbo v12, "propertyValue"

    if-lez v11, :cond_ae

    .line 158
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 159
    invoke-virtual {v11, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v12, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v12, v2, v11, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v11

    goto :goto_b7

    .line 163
    :cond_ae
    invoke-virtual {v9, v12, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v11, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v11, v2, v9}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v11

    :goto_b7
    if-nez v11, :cond_c1

    const-string v2, "Setting RCP data sync policy failed."

    .line 168
    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v10, v11

    goto/16 :goto_19c

    .line 172
    :cond_c1
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Array list populated with: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v12, "Notifications"

    .line 177
    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const-string v14, "false"

    if-eqz v12, :cond_f3

    const-string/jumbo v12, "knox-sanitize-data"

    invoke-virtual {v12, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f3

    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f3

    const/4 v12, 0x1

    goto :goto_f4

    :cond_f3
    move v12, v8

    :goto_f4
    const-string v15, "Contacts"

    .line 179
    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    const-string/jumbo v13, "knox-export-data"

    const-string/jumbo v8, "knox-import-data"

    if-eqz v15, :cond_116

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_10e

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_116

    :cond_10e
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_116

    const/4 v15, 0x1

    goto :goto_117

    :cond_116
    const/4 v15, 0x0

    :goto_117
    const-string v2, "Calendar"

    .line 181
    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12b

    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    :cond_12b
    invoke-virtual {v14, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_133

    const/4 v13, 0x1

    goto :goto_134

    :cond_133
    move v13, v15

    :goto_134
    if-nez v12, :cond_138

    if-eqz v13, :cond_196

    .line 184
    :cond_138
    iget-object v2, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "persona"

    invoke-virtual {v2, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/knox/SemPersonaManager;

    if-eqz v2, :cond_196

    .line 186
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "EDM:"

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 187
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v13

    if-eqz v12, :cond_176

    .line 192
    :try_start_15e
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":true"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v12, "knox-sanitize-data-lockscreen"

    .line 193
    invoke-virtual {v2, v10, v12, v8}, Lcom/samsung/android/knox/SemPersonaManager;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_18a

    .line 196
    :cond_176
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ":"

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 197
    :goto_18a
    invoke-virtual {v2, v10, v4, v8}, Lcom/samsung/android/knox/SemPersonaManager;->setRCPDataPolicy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_18d
    .catchall {:try_start_15e .. :try_end_18d} :catchall_191

    .line 199
    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_196

    :catchall_191
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 200
    throw v0

    :cond_196
    :goto_196
    move-object/from16 v2, p2

    move v10, v11

    const/4 v8, 0x0

    goto/16 :goto_82

    .line 206
    :cond_19c
    :goto_19c
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_22a

    .line 207
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 208
    iget v3, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v8, "android.intent.extra.user_handle"

    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v3, "samsung.knox.intent.action.RCP_POLICY_CHANGED"

    .line 209
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 211
    iget v8, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string/jumbo v9, "personaId"

    invoke-virtual {v3, v9, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v8, "syncerList"

    .line 212
    invoke-virtual {v3, v8, v7}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string/jumbo v8, "policyName"

    .line 213
    invoke-virtual {v3, v8, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "policyValue"

    .line 214
    invoke-virtual {v3, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "policyChangedBundle"

    .line 215
    invoke-virtual {v2, v8, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 217
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "set rcp policy : "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "arr : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "prop : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", set as "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 221
    new-instance v1, Landroid/os/UserHandle;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-direct {v1, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 222
    iget-object v0, v0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 223
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :cond_22a
    return v10

    :cond_22b
    :goto_22b
    const-string/jumbo v0, "setRCPSyncPolicy: bad arguments"

    .line 137
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public systemReady()V
    .registers 1

    return-void
.end method

.method public final updateClipboardShareValues()V
    .registers 7

    const-string v0, "KnoxMUMRCPPolicyService"

    const-string/jumbo v1, "updateClipboardShareValues()"

    .line 788
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "adminUid"

    const-string/jumbo v1, "propertyValue"

    .line 789
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    .line 793
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string/jumbo v2, "name"

    const-string v3, "Clipboard"

    .line 794
    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "propertyName"

    const-string/jumbo v5, "knox-import-data"

    .line 795
    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 797
    invoke-virtual {v5, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "knox-export-data"

    .line 798
    invoke-virtual {v5, v4, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iget-object v2, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "RCP_DATA"

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->providerList1:Ljava/util/List;

    .line 801
    iget-object v1, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v1, v3, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/container/KnoxMUMRCPPolicyService;->providerList2:Ljava/util/List;

    return-void
.end method
