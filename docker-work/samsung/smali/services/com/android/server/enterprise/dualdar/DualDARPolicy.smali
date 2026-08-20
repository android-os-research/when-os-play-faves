.class public Lcom/android/server/enterprise/dualdar/DualDARPolicy;
.super Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;
.source "DualDARPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;
.implements Lcom/android/server/enterprise/EnterpriseContainerSubscriber;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;
    }
.end annotation


# static fields
.field public static final DATALOCK_TIMEOUT:Ljava/lang/String; = "datalock_timeout"

.field public static final DA_SCHEMA_VERSION:I = 0x1

.field public static final DE_ACCESS_RESTRICTION:Ljava/lang/String; = "de_access_restriction"

.field public static final DUAL_DAR_POLICY_SERVICE:Ljava/lang/String; = "DualDARPolicy"

.field public static final ERROR_FAILURE_IN_SETTING_DATA_LOCK_TIMEOUT:I = -0x1

.field public static final ERROR_FAILURE_IN_SETTING_DE_RESTRICTION:I = -0x3

.field public static final ERROR_FAILURE_IN_SETTING_WHITELIST_PACKAGES:I = -0x2

.field public static final ERROR_NONE:I = 0x0

.field public static final IS_USER_DEVICE:Z

.field public static final KEY_CONFIG_CLIENT_LOCATION:Ljava/lang/String; = "dualdar-config-client-location"

.field public static final KEY_CONFIG_CLIENT_PACKAGE:Ljava/lang/String; = "dualdar-config-client-package"

.field public static final KEY_CONFIG_CLIENT_SIGNATURE:Ljava/lang/String; = "dualdar-config-client-signature"

.field public static final KEY_CONFIG_DATA_LOCK_TIMEOUT:Ljava/lang/String; = "dualdar-config-datalock-timeout"

.field public static final KEY_CONFIG_DE_RESTRICTION:Ljava/lang/String; = "dualdar-config-de-restriction"

.field public static final KEY_CONFIG_WHITELISTED_DATA_LOCK_STATE_PACKAGES:Ljava/lang/String; = "dualdar-config-datalock-whitelistpackages"

.field public static final KEY_DUAL_DAR_CONFIG:Ljava/lang/String; = "dualdar-config"

.field public static final LOG_DUALDAR_KA_TAG:Ljava/lang/String; = "DualDARPolicy:DualDARAnalytics"

.field public static final MIN_DATA_LOCK_TIMEOUT:J = 0xea60L

.field public static final MIN_DATA_LOCK_TIMEOUT_MANAGED_DEVICE:J = 0x493e0L

.field public static final TAG:Ljava/lang/String; = "DualDARPolicy"

.field public static final WHITELISTED_APPS:Ljava/lang/String; = "whitelisted_apps"


# instance fields
.field public context:Landroid/content/Context;

.field public dualDarConfigCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field public edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

.field public edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

.field public final mInjector:Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

.field public mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;


# direct methods
.method public static synthetic $r8$lambda$ZzPJ0YyPqNxtQvF_0AXRr9PR6bo(Lcom/android/server/enterprise/dualdar/DualDARPolicy;ILjava/lang/String;[BI)Ljava/lang/Boolean;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->lambda$resetPasswordWithTokenForInner$0(ILjava/lang/String;[BI)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    const-string/jumbo v0, "ro.product_ship"

    const/4 v1, 0x1

    .line 189
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->IS_USER_DEVICE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 211
    new-instance v0, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    invoke-direct {v0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;-><init>(Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;)V
    .registers 3

    .line 214
    invoke-direct {p0}, Lcom/samsung/android/knox/ddar/IDualDARPolicy$Stub;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mInjector:Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    .line 216
    iget-object v0, p1, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->context:Landroid/content/Context;

    .line 217
    invoke-virtual {p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->getEdmStorageProvider()Lcom/android/server/enterprise/storage/EdmStorageProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const/4 p1, 0x0

    .line 218
    iput-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 219
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    .line 220
    new-instance p1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    .line 221
    new-instance p1, Lcom/samsung/android/knox/dar/VirtualLockUtils;

    invoke-direct {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    return-void
.end method

.method private synthetic lambda$resetPasswordWithTokenForInner$0(ILjava/lang/String;[BI)Ljava/lang/Boolean;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 521
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mInjector:Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    invoke-virtual {v1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 522
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const-string v1, "DualDARPolicy"

    const/4 v2, 0x0

    if-nez v0, :cond_1f

    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo p1, "resetPasswordWithTokenForInner : Not permitted while device insecure"

    .line 523
    invoke-static {v1, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 524
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_1f
    if-eqz p2, :cond_22

    goto :goto_24

    :cond_22
    const-string p2, ""

    .line 527
    :goto_24
    invoke-static {p2}, Landroid/app/admin/PasswordMetrics;->isNumericOnly(Ljava/lang/String;)Z

    move-result v0

    .line 529
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object p1

    .line 530
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3d

    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo p1, "resetPasswordWithTokenForInner : Not permitted for empty password"

    .line 531
    invoke-static {v1, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 532
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_3d
    if-eqz p1, :cond_6a

    .line 536
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 535
    invoke-static {p1, v2, v0, v3}, Landroid/app/admin/PasswordMetrics;->validatePassword(Landroid/app/admin/PasswordMetrics;IZ[B)Ljava/util/List;

    move-result-object p1

    .line 537
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 538
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to reset password due to constraint violation: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    .line 538
    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 540
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    .line 543
    :cond_6a
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    invoke-virtual {p0, p2, p3, p4}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->resetPasswordWithToken(Ljava/lang/String;[BI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public clearPolicy(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 375
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 376
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->clearPolicyInternal(II)Z

    move-result p0

    return p0
.end method

.method public final clearPolicyInternal(II)Z
    .registers 7

    const-string v0, "DualDARPolicy"

    const/4 v1, 0x0

    .line 381
    :try_start_3
    iget-object v2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "DUAL_DAR"

    invoke-virtual {v2, v3, p1, p2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->removeByAdmin(Ljava/lang/String;II)Z

    move-result p1

    .line 382
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "clearPolicy policy passed? : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_2a} :catch_2b

    return p1

    :catch_2b
    move-exception p0

    .line 386
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Exception while clearing policy, "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-static {v0, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 387
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method public clearResetPasswordTokenForInner(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    .line 487
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDAROnDOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "clearResetPasswordTokenForInner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARPolicy"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 490
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 491
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    move-result p1

    if-gez p1, :cond_2e

    return v1

    .line 495
    :cond_2e
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->clearResetPasswordToken(I)Z

    move-result p0

    return p0
.end method

.method public final doAuditLog(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)V
    .registers 14

    .line 615
    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 617
    invoke-static {v6}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    .line 618
    invoke-static {v6}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARType(I)I

    move-result p1

    .line 619
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getWhitelistPkgesFromConfig(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    .line 621
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Admin created DualDAR with configuration, Type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",  Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 622
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getDualDarVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",  Lock Timeout :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "dualdar-config-datalock-timeout"

    .line 623
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ",  Device Encryption storage access restriction: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "dualdar-config-de-restriction"

    .line 624
    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, ",  Whitelisted Packages: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    const-string v10, "DualDARPolicy:DualDARAnalytics"

    .line 621
    invoke-static {v10, v1, v9}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 631
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Admin created DualDAR with configuration,  Type : "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getDualDarVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    invoke-virtual {p2, v4}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    invoke-virtual {p2, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x1

    const-string v4, "DualDARPolicy"

    move v3, v9

    .line 627
    invoke-static/range {v0 .. v6}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final enforceDualDAROnDOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 2

    .line 973
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    .line 975
    iget p1, p0, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 977
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result p1

    if-eqz p1, :cond_d

    return-object p0

    .line 979
    :cond_d
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "This API works only with managed device (DO enabled)"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;
    .registers 4

    .line 968
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.samsung.android.knox.permission.KNOX_DUAL_DAR"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 969
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 968
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->enforceActiveAdminPermissionByContext(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p0

    return-object p0
.end method

.method public final flatten(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 914
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    .line 915
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 918
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    .line 920
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_f

    const-string v2, ", "

    .line 921
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f

    .line 924
    :cond_2c
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final flattenPackages(Ljava/util/List;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 928
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_25

    .line 930
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/AppIdentity;

    .line 931
    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_21

    .line 933
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 935
    :cond_21
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 938
    :cond_25
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flatten(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final flattenSignatures(Ljava/util/List;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 942
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_30

    .line 944
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/knox/AppIdentity;

    .line 945
    invoke-virtual {v1}, Lcom/samsung/android/knox/AppIdentity;->getSignature()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_22

    .line 947
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_24

    :cond_22
    const-string v1, ""

    .line 951
    :goto_24
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2c

    const-string v1, "-"

    .line 954
    :cond_2c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 957
    :cond_30
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flatten(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getClientAndProfileOwnerApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/knox/ContextInfo;",
            "Ljava/util/List<",
            "Lcom/samsung/android/knox/AppIdentity;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 796
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_1b

    .line 798
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 799
    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {v2, v0, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1b
    const-string v0, "com.samsung.android.knox.permission.KNOX_KPU_INTERNAL"

    .line 802
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    .line 805
    :try_start_22
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    const-wide/16 v4, 0x0

    iget v6, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 806
    invoke-interface {v3, v0, v4, v5, v6}, Landroid/content/pm/IPackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v2
    :try_end_32
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_32} :catch_33

    goto :goto_51

    :catch_33
    move-exception v0

    .line 808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException in getClientAndProfileOwnerApps while checking permissions "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "DualDARPolicy"

    invoke-static {v4, v0, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_51
    if-eqz v2, :cond_73

    .line 812
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_57
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 813
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {p3, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 814
    new-instance v3, Lcom/samsung/android/knox/AppIdentity;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v2, v1}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 819
    :cond_73
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfigFromDb(II)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_96

    const-string p1, "dualdar-config-client-package"

    .line 821
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "dualdar-config-client-signature"

    .line 822
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p1, :cond_96

    .line 824
    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 825
    new-instance p3, Lcom/samsung/android/knox/AppIdentity;

    invoke-direct {p3, p1, p0}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_96
    return-void
.end method

.method public getClientInfo(I)Ljava/lang/String;
    .registers 4

    .line 365
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 366
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    const-string p1, "dualdar-config-client-package"

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_2d

    :cond_2b
    const-string p0, ""

    :goto_2d
    return-object p0
.end method

.method public getConfig(I)Landroid/os/Bundle;
    .registers 2

    .line 233
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfigInternal(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public getConfig(Lcom/samsung/android/knox/ContextInfo;)Landroid/os/Bundle;
    .registers 2

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 226
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfigInternal(I)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getConfigFromDb(II)Landroid/os/Bundle;
    .registers 14

    const-string v0, "DUAL_DAR"

    const-string v1, "DualDARPolicy"

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 242
    :try_start_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getConfigFromDb adminId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " userId : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v1, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 243
    iget-object v4, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "dataLockTimeOut"

    invoke-virtual {v4, p1, p2, v0, v5}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_55

    .line 247
    invoke-static {p2}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v4

    if-eqz v4, :cond_3e

    const-string v4, "getConfig : DualDAR at DO case."

    new-array v5, v3, [Ljava/lang/Object;

    .line 248
    invoke-static {v1, v4, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v4, "-1"

    goto :goto_55

    .line 252
    :cond_3e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getConfig : DualDAR not enabled for: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v3, [Ljava/lang/Object;

    invoke-static {v1, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v2

    .line 257
    :cond_55
    :goto_55
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_59} :catch_ac

    const/4 v6, 0x1

    .line 260
    :try_start_5a
    iget-object v7, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "deRestriction"

    invoke-virtual {v7, p1, p2, v0, v8}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getInt(IILjava/lang/String;Ljava/lang/String;)I

    move-result v7
    :try_end_62
    .catch Lcom/android/server/enterprise/storage/SettingNotFoundException; {:try_start_5a .. :try_end_62} :catch_63
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_62} :catch_ac

    goto :goto_6b

    :catch_63
    :try_start_63
    const-string v7, "Unable to read deRestriction field"

    new-array v8, v3, [Ljava/lang/Object;

    .line 263
    invoke-static {v1, v7, v8}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    move v7, v6

    .line 271
    :goto_6b
    invoke-static {p2}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    move-result v8
    :try_end_6f
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6f} :catch_ac

    const-string v9, ""

    if-nez v8, :cond_84

    .line 272
    :try_start_73
    iget-object v8, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "clientAppPackageName"

    invoke-virtual {v8, p1, p2, v0, v9}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 275
    iget-object v8, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v10, "clientAppSignature"

    invoke-virtual {v8, p1, p2, v0, v10}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_85

    :cond_84
    move-object v0, v9

    .line 280
    :goto_85
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v10, "dualdar-config-client-package"

    .line 281
    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "dualdar-config-client-signature"

    .line 282
    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dualdar-config-de-restriction"

    if-lez v7, :cond_99

    goto :goto_9a

    :cond_99
    move v6, v3

    .line 283
    :goto_9a
    invoke-virtual {v8, v0, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v0, "dualdar-config-datalock-timeout"

    .line 284
    invoke-virtual {v8, v0, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "dualdar-config-datalock-whitelistpackages"

    .line 286
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getWhitelistedAppsFromStorage(II)[Lcom/samsung/android/knox/AppIdentity;

    move-result-object p0

    .line 285
    invoke-virtual {v8, v0, p0}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_ab} :catch_ac

    return-object v8

    :catch_ac
    move-exception p0

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "getConfigFromDb has an exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v3, [Ljava/lang/Object;

    invoke-static {v1, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 290
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v2
.end method

.method public final getConfigInternal(I)Landroid/os/Bundle;
    .registers 2

    .line 237
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Bundle;

    return-object p0
.end method

.method public final getDualDarVersion()Ljava/lang/String;
    .registers 1

    .line 643
    invoke-static {}, Lcom/samsung/android/knox/ddar/DualDARPolicy;->getDualDARVersion()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const-string p0, ""

    :cond_8
    return-object p0
.end method

.method public final getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;
    .registers 2

    .line 961
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    if-nez v0, :cond_c

    .line 962
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mInjector:Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;

    invoke-virtual {v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy$Injector;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    .line 964
    :cond_c
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edm:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-object p0
.end method

.method public final getPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;
    .registers 5

    .line 566
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockSettingsInternal;

    if-eqz v0, :cond_21

    .line 569
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 572
    :try_start_e
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    move-result p0

    .line 573
    invoke-virtual {v0, p0}, Lcom/android/internal/widget/LockSettingsInternal;->getUserPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1c

    .line 575
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2c

    :catchall_1c
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 576
    throw p0

    :cond_21
    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "DualDARPolicy"

    const-string v0, "Couldn\'t access service"

    .line 579
    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, 0x0

    :goto_2c
    return-object p0
.end method

.method public getPasswordMinimumLengthForInner(Lcom/samsung/android/knox/ContextInfo;)I
    .registers 2

    .line 444
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->hasMinimumNumericQuality()Z

    move-result p1

    if-nez p1, :cond_8

    const/4 p0, 0x0

    return p0

    .line 446
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getPasswordMinimumLengthForInnerInternal()I

    move-result p0

    return p0
.end method

.method public final getPasswordMinimumLengthForInnerInternal()I
    .registers 4

    .line 552
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v0, "DUAL_DAR"

    const-string/jumbo v1, "innerPasswordMinLen"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_1f

    .line 555
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_14

    goto :goto_1f

    .line 560
    :cond_14
    invoke-static {p0}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "DualDARPolicy"

    const-string v2, "Unable to read field"

    .line 556
    invoke-static {v1, v2, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return p0
.end method

.method public final getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;
    .registers 8

    .line 586
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->context:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "DualDARPolicy"

    if-nez v0, :cond_18

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "Couldn\'t access service"

    .line 589
    invoke-static {v3, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v1

    .line 593
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getPasswordMinimumLengthForInnerInternal()I

    move-result p0

    .line 596
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 598
    :try_start_20
    invoke-virtual {v0, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object p1
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_3f

    .line 600
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    if-nez p1, :cond_31

    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "Failed to dpm.getPasswordMinimumMetrics()"

    .line 604
    invoke-static {v3, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return-object v1

    :cond_31
    const/16 v0, 0x100

    const/4 v1, 0x4

    .line 608
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    iput p0, p1, Landroid/app/admin/PasswordMetrics;->length:I

    return-object p1

    :catchall_3f
    move-exception p0

    .line 600
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 601
    throw p0
.end method

.method public final getWhitelistPkgesFromConfig(Landroid/os/Bundle;)Ljava/lang/String;
    .registers 6

    .line 652
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "dualdar-config-datalock-whitelistpackages"

    .line 653
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_28

    .line 654
    array-length v1, p1

    if-lez v1, :cond_28

    const/4 v1, 0x0

    .line 655
    :goto_11
    array-length v2, p1

    if-ge v1, v2, :cond_28

    .line 656
    aget-object v2, p1, v1

    check-cast v2, Lcom/samsung/android/knox/AppIdentity;

    .line 657
    invoke-virtual {p0, v2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->validPackageName(Lcom/samsung/android/knox/AppIdentity;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 658
    invoke-virtual {v2}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 662
    :cond_28
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flatten(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getWhitelistedAppsFromStorage(II)[Lcom/samsung/android/knox/AppIdentity;
    .registers 8

    .line 296
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "DUAL_DAR"

    const-string/jumbo v2, "whiteListPkgsForDataLockState"

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->unFlattenPackages(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 297
    iget-object v2, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string/jumbo v3, "whiteListPkgSignaturesForDataLockState"

    invoke-virtual {v2, p1, p2, v1, v3}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getString(IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->unFlattenSignatures(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 299
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    move v1, p2

    .line 300
    :goto_23
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 301
    new-instance v2, Lcom/samsung/android/knox/AppIdentity;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/knox/AppIdentity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_40
    new-array p0, p2, [Lcom/samsung/android/knox/AppIdentity;

    .line 304
    invoke-interface {p1, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/samsung/android/knox/AppIdentity;

    return-object p0
.end method

.method public final hasMinimumNumericQuality()Z
    .registers 2

    .line 548
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getEDM()Lcom/samsung/android/knox/EnterpriseDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPasswordQuality()I

    move-result p0

    const/high16 v0, 0x20000

    if-lt p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public isActivePasswordSufficientForInner(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 6

    .line 450
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDAROnDOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 452
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 454
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getPasswordMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object v0

    .line 455
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getPasswordMinimumMetrics(I)Landroid/app/admin/PasswordMetrics;

    move-result-object p0

    const-string p1, "DualDARPolicy"

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    if-nez p0, :cond_1a

    goto :goto_3f

    .line 463
    :cond_1a
    invoke-static {p0, v1, v0}, Landroid/app/admin/PasswordMetrics;->validatePasswordMetrics(Landroid/app/admin/PasswordMetrics;ILandroid/app/admin/PasswordMetrics;)Ljava/util/List;

    move-result-object p0

    .line 465
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3c

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Password validation errors: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, p0, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_3c
    xor-int/lit8 p0, v0, 0x1

    return p0

    :cond_3f
    :goto_3f
    new-array p0, v1, [Ljava/lang/Object;

    const-string v0, "Invalid metrics"

    .line 458
    invoke-static {p1, v0, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1
.end method

.method public isResetPasswordTokenActiveForInner(Lcom/samsung/android/knox/ContextInfo;)Z
    .registers 3

    .line 499
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDAROnDOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 501
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 502
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    move-result p1

    if-gez p1, :cond_14

    const/4 p0, 0x0

    return p0

    .line 506
    :cond_14
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isResetPasswordTokenActive(I)Z

    move-result p0

    return p0
.end method

.method public final logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V
    .registers 9

    .line 837
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    .line 838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "logDualDarAnalytics, userID"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", event: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "DualDARPolicy:DualDARAnalytics"

    invoke-static {v2, p1, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string p1, "datalock_timeout"

    .line 841
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string v1, "Payload / "

    const/4 v3, 0x1

    const-string v4, "KNOX_DUALDAR"

    if-eqz p1, :cond_75

    .line 852
    new-instance p0, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string p1, "DATALOCK_TIMEOUT"

    invoke-direct {p0, v4, v3, p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "dualdar-config-datalock-timeout"

    .line 853
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide p1

    const-string p3, "datalckTmoutV"

    .line 854
    invoke-virtual {p0, p3, p1, p2}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;J)V

    .line 855
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT : DATALOCK_TIMEOUT TIME: "

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 856
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v2, p1, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 857
    invoke-static {p0}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    goto :goto_e5

    :cond_75
    const-string/jumbo p1, "whitelisted_apps"

    .line 859
    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c1

    .line 870
    new-instance p1, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;

    const-string p3, "WHITELISTED_APPS"

    invoke-direct {p1, v4, v3, p3}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 874
    invoke-virtual {p0, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getWhitelistPkgesFromConfig(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p2, "wPkgLst"

    .line 876
    invoke-virtual {p1, p2, p0}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "EVENT:WHITELISTED_APPS, WhiteListed Packages: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 878
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p2, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 879
    invoke-static {p1}, Lcom/samsung/android/knox/analytics/KnoxAnalytics;->log(Lcom/samsung/android/knox/analytics/KnoxAnalyticsData;)V

    goto :goto_e5

    :cond_c1
    const-string p0, "de_access_restriction"

    .line 880
    invoke-virtual {p3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e5

    const-string p0, "dualdar-config-de-restriction"

    .line 882
    invoke-virtual {p2, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    .line 883
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "DE Restriction Value: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v0, [Ljava/lang/Object;

    invoke-static {v2, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :cond_e5
    :goto_e5
    return-void
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

.method public onContainerCreation(II)V
    .registers 3

    return-void
.end method

.method public onContainerRemoved(II)V
    .registers 3

    .line 1041
    invoke-virtual {p0, p2, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->clearPolicyInternal(II)Z

    return-void
.end method

.method public onPreAdminRemoval(I)V
    .registers 2

    return-void
.end method

.method public onPreContainerRemoval(II)V
    .registers 3

    return-void
.end method

.method public final refreshConfig(I)V
    .registers 3

    .line 996
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->getMUMContainerOwnerUid(I)I

    move-result v0

    .line 997
    invoke-virtual {p0, v0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->refreshConfig(II)V

    return-void
.end method

.method public final refreshConfig(II)V
    .registers 7

    .line 1001
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshConfig adminId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARPolicy"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1002
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getConfigFromDb(II)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_39

    new-array v0, v1, [Ljava/lang/Object;

    const-string/jumbo v1, "refreshConfig cache"

    .line 1004
    invoke-static {v3, v1, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 1005
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->dualDarConfigCache:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    return-void
.end method

.method public resetPasswordWithTokenForInner(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;[B)Z
    .registers 14

    .line 510
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDAROnDOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetPasswordWithTokenForInner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARPolicy"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 513
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 514
    iget-object p1, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {p1, v6}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    move-result v9

    if-gez v9, :cond_46

    .line 516
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "resetPasswordWithTokenForInner: Invalid inner auth user : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v1

    .line 520
    :cond_46
    new-instance p1, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;

    move-object v4, p1

    move-object v5, p0

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/enterprise/dualdar/DualDARPolicy$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/enterprise/dualdar/DualDARPolicy;ILjava/lang/String;[BI)V

    invoke-static {p1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public setClientInfo(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setClientInfo called, clientPkgName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARPolicy"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 309
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 313
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v2}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    move-result v2

    if-nez v2, :cond_75

    if-eqz p2, :cond_75

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "setClientInfo called, pkgName not null"

    .line 314
    invoke-static {v3, v4, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v2, "clientAppPackageName"

    .line 315
    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_45

    new-array v2, v1, [Ljava/lang/Object;

    const-string/jumbo v4, "setClientInfo called, pkgSignature not null"

    .line 317
    invoke-static {v3, v4, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v2, "clientAppSignature"

    .line 318
    invoke-virtual {v0, v2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    :cond_45
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setClientInfo CallerUid : "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ContainerId = "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, p3, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 322
    iget-object p3, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v5, "DUAL_DAR"

    invoke-virtual {p3, v2, v4, v5, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result p3

    goto :goto_76

    :cond_75
    const/4 p3, 0x1

    :goto_76
    if-eqz p3, :cond_ab

    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, "Add client app and PO pkgs to whitelist"

    .line 327
    invoke-static {v3, v0, p3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 329
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->setDefaultWhitelistedApps(Lcom/samsung/android/knox/ContextInfo;)V

    .line 330
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Force refresh the in-memory cache, callerUid = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mContainerId = "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {v3, p3, v0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 333
    iget p3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p3, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->refreshConfig(II)V

    .line 338
    :cond_ab
    iget p3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {p3}, Lcom/samsung/android/knox/SemPersonaManager;->isDualDARNativeCrypto(I)Z

    move-result p3

    if-eqz p3, :cond_b9

    .line 340
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getDualDarVersion()Ljava/lang/String;

    move-result-object p4

    const-string p2, "Samsung"

    .line 346
    :cond_b9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Final Logging Crypto: pkg Name :"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", clientVersion: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p3, v1, [Ljava/lang/Object;

    const-string v0, "DualDARPolicy:DualDARAnalytics"

    invoke-static {v0, p0, p3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 v1, 0x5

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 353
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Admin created DualDAR with Third Party Client Package: "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", client library version: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v5, "DualDARPolicy"

    .line 349
    invoke-static/range {v1 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public setConfig(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .registers 8

    .line 393
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDARPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 394
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    .line 395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setConfig : callingUid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARPolicy"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 397
    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDarDualEncryptionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_43

    .line 398
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setConfig : DualDAR not enabled for: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v3, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const/4 p0, -0x1

    return p0

    :cond_43
    const-string v0, "dualdar-config-datalock-whitelistpackages"

    .line 403
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 404
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->setWhitelistPackagesForDataLockedState(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    move-result v0

    goto :goto_51

    :cond_50
    move v0, v1

    :goto_51
    const-string v2, "dualdar-config-datalock-timeout"

    .line 408
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5e

    .line 409
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->setDataLockTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    move-result v2

    goto :goto_5f

    :cond_5e
    move v2, v1

    :goto_5f
    const-string v3, "dualdar-config-de-restriction"

    .line 413
    invoke-virtual {p2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6c

    .line 414
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->setDeRestriction(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I

    move-result v3

    goto :goto_6d

    :cond_6c
    move v3, v1

    :goto_6d
    if-eqz v0, :cond_73

    if-eqz v2, :cond_73

    if-nez v3, :cond_78

    .line 418
    :cond_73
    iget v4, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {p0, v4}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->refreshConfig(I)V

    .line 421
    :cond_78
    invoke-virtual {p0, p1, p2}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->doAuditLog(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)V

    if-nez v0, :cond_82

    if-nez v2, :cond_82

    if-nez v3, :cond_82

    goto :goto_8b

    :cond_82
    if-eqz v0, :cond_86

    move v1, v0

    goto :goto_8b

    :cond_86
    if-eqz v2, :cond_8a

    move v1, v2

    goto :goto_8b

    :cond_8a
    move v1, v3

    :goto_8b
    return v1
.end method

.method public final setDataLockTimeout(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .registers 15

    const-string v0, "dualdar-config-datalock-timeout"

    .line 764
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 765
    iget v2, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-static {v2}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result v2

    if-eqz v2, :cond_12

    const-wide/32 v2, 0x493e0

    goto :goto_15

    :cond_12
    const-wide/32 v2, 0xea60

    .line 767
    :goto_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDataLockTimeout called, dataLockTimeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    const-string v7, "DualDARPolicy"

    invoke-static {v7, v4, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    cmp-long v4, v0, v2

    const/4 v6, -0x1

    const-wide v8, 0x7fffffffffffffffL

    if-ltz v4, :cond_3d

    cmp-long v4, v0, v8

    if-ltz v4, :cond_43

    :cond_3d
    const-wide/16 v10, -0x1

    cmp-long v4, v0, v10

    if-nez v4, :cond_86

    .line 769
    :cond_43
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 770
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "dataLockTimeOut"

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v4, "DUAL_DAR"

    invoke-virtual {v0, v1, v3, v4, v2}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_7a

    new-array v1, v5, [Ljava/lang/Object;

    const-string/jumbo v2, "successfully changed datalock timeout"

    .line 774
    invoke-static {v7, v2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v1, "datalock_timeout"

    .line 775
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_81

    :cond_7a
    new-array p0, v5, [Ljava/lang/Object;

    const-string p1, "failed to write new datalock timeout to persistent storage"

    .line 777
    invoke-static {v7, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_81
    if-eqz v0, :cond_84

    goto :goto_85

    :cond_84
    move v5, v6

    :goto_85
    return v5

    .line 781
    :cond_86
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "setDataLockTimeout Invalid datalock timeout. It should be in range ["

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "] ms"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v5, [Ljava/lang/Object;

    invoke-static {v7, p0, p1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    return v6
.end method

.method public final setDeRestriction(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .registers 10

    const-string v0, "dualdar-config-de-restriction"

    .line 667
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDeRestriction called, deRestriction: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "DualDARPolicy"

    invoke-static {v4, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 670
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 671
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "deRestriction"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 672
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v3, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v5, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v6, "DUAL_DAR"

    invoke-virtual {v0, v3, v5, v6, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_49

    new-array v1, v2, [Ljava/lang/Object;

    const-string v3, "Successfully changed DE restriction config"

    .line 675
    invoke-static {v4, v3, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string v1, "de_access_restriction"

    .line 677
    invoke-virtual {p0, p1, p2, v1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_50

    :cond_49
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "Failed to write new DE restriction config"

    .line 679
    invoke-static {v4, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_50
    if-eqz v0, :cond_53

    goto :goto_54

    :cond_53
    const/4 v2, -0x3

    :goto_54
    return v2
.end method

.method public final setDefaultWhitelistedApps(Lcom/samsung/android/knox/ContextInfo;)V
    .registers 8

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 686
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 687
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getClientAndProfileOwnerApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)V

    .line 689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultWhitelistedApps called, whitelistAppCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "DualDARPolicy"

    invoke-static {v4, v1, v3}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 690
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 691
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flattenPackages(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "whiteListPkgsForDataLockState"

    invoke-virtual {v1, v5, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flattenSignatures(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "whiteListPkgSignaturesForDataLockState"

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v0, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v3, "DUAL_DAR"

    invoke-virtual {p0, v0, p1, v3, v1}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    if-eqz p0, :cond_5b

    new-array p0, v2, [Ljava/lang/Object;

    const-string/jumbo p1, "successfully added whitelist packages"

    .line 696
    invoke-static {v4, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_62

    :cond_5b
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "failed to write new whitelist packages to persistent storage"

    .line 698
    invoke-static {v4, p1, p0}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_62
    return-void
.end method

.method public setPasswordMinimumLengthForInner(Lcom/samsung/android/knox/ContextInfo;I)Z
    .registers 5

    .line 428
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDAROnDOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 430
    invoke-virtual {p0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->hasMinimumNumericQuality()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 436
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 437
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v1, "innerPasswordMinLen"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 439
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget p2, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v1, "DUAL_DAR"

    invoke-virtual {p0, p2, p1, v1, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    return p0

    .line 431
    :cond_26
    new-instance p0, Ljava/lang/IllegalStateException;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    const/high16 v0, 0x20000

    .line 433
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p1, p2

    const-string/jumbo p2, "password quality should be at least %d for setPasswordMinimumLengthForInner"

    .line 431
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setResetPasswordTokenForInner(Lcom/samsung/android/knox/ContextInfo;[B)Z
    .registers 7

    .line 475
    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->enforceDualDAROnDOPermission(Lcom/samsung/android/knox/ContextInfo;)Lcom/samsung/android/knox/ContextInfo;

    move-result-object p1

    .line 476
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setResetPasswordTokenForInner: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "DualDARPolicy"

    invoke-static {v3, v0, v2}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 478
    iget p1, p1, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p1

    .line 479
    iget-object v0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    move-result p1

    if-gez p1, :cond_2f

    return v1

    .line 483
    :cond_2f
    iget-object p0, p0, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->mVirtualLockUtils:Lcom/samsung/android/knox/dar/VirtualLockUtils;

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->setResetPasswordToken([BI)Z

    move-result p0

    return p0
.end method

.method public final setWhitelistPackagesForDataLockedState(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;)I
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 703
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 704
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 705
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 706
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 707
    invoke-virtual {v1, v2, v6, v7}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getClientAndProfileOwnerApps(Lcom/samsung/android/knox/ContextInfo;Ljava/util/List;Ljava/util/List;)V

    const-string v0, "dualdar-config-datalock-whitelistpackages"

    .line 709
    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_4d

    .line 710
    array-length v9, v0

    if-lez v9, :cond_4d

    const/4 v9, 0x0

    .line 711
    :goto_29
    array-length v10, v0

    if-ge v9, v10, :cond_4d

    .line 712
    aget-object v10, v0, v9

    check-cast v10, Lcom/samsung/android/knox/AppIdentity;

    .line 713
    invoke-virtual {v1, v10}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->validPackageName(Lcom/samsung/android/knox/AppIdentity;)Z

    move-result v11

    if-eqz v11, :cond_4a

    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_4a

    .line 714
    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    invoke-virtual {v10}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4a
    add-int/lit8 v9, v9, 0x1

    goto :goto_29

    .line 720
    :cond_4d
    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v9, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v1, v0, v9}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->getWhitelistedAppsFromStorage(II)[Lcom/samsung/android/knox/AppIdentity;

    move-result-object v9

    .line 721
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    const-string v12, "DualDARPolicy"

    if-eqz v9, :cond_e0

    .line 722
    array-length v0, v9

    if-eqz v0, :cond_e0

    .line 723
    array-length v13, v9

    const/4 v14, 0x0

    :goto_62
    if-ge v14, v13, :cond_e0

    aget-object v15, v9, v14

    .line 724
    iget v0, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v15}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/pm/PersonaServiceHelper;->isSystemApp(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    goto :goto_d1

    .line 727
    :cond_73
    invoke-virtual {v15}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 728
    invoke-virtual {v15}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d1

    .line 735
    :try_start_87
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {v15}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v8
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8f} :catch_a1

    move-object/from16 v16, v5

    :try_start_91
    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_91 .. :try_end_93} :catch_9f

    move-object/from16 v18, v7

    move-object/from16 v17, v9

    const/4 v7, 0x0

    const/4 v9, 0x0

    :try_start_99
    invoke-interface {v0, v8, v9, v7, v5}, Landroid/app/IActivityManager;->clearApplicationUserData(Ljava/lang/String;ZLandroid/content/pm/IPackageDataObserver;I)Z
    :try_end_9c
    .catch Ljava/lang/Exception; {:try_start_99 .. :try_end_9c} :catch_9d

    goto :goto_d7

    :catch_9d
    move-exception v0

    goto :goto_a8

    :catch_9f
    move-exception v0

    goto :goto_a4

    :catch_a1
    move-exception v0

    move-object/from16 v16, v5

    :goto_a4
    move-object/from16 v18, v7

    move-object/from16 v17, v9

    .line 737
    :goto_a8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 738
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception in clearing user data for: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " installed in: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v12, v0, v7}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_d7

    :cond_d1
    :goto_d1
    move-object/from16 v16, v5

    move-object/from16 v18, v7

    move-object/from16 v17, v9

    :goto_d7
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v16

    move-object/from16 v9, v17

    move-object/from16 v7, v18

    goto :goto_62

    .line 743
    :cond_e0
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 746
    invoke-interface {v4, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setWhitelistPackagesForDataLockedState called, whitelistAppCount: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v12, v0, v6}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 749
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 750
    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flattenPackages(Ljava/util/List;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "whiteListPkgsForDataLockState"

    invoke-virtual {v0, v6, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    invoke-virtual {v1, v4}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->flattenSignatures(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "whiteListPkgSignaturesForDataLockState"

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    iget-object v4, v1, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->edmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget v5, v2, Lcom/samsung/android/knox/ContextInfo;->mCallerUid:I

    iget v6, v2, Lcom/samsung/android/knox/ContextInfo;->mContainerId:I

    const-string v7, "DUAL_DAR"

    invoke-virtual {v4, v5, v6, v7, v0}, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->putValues(IILjava/lang/String;Landroid/content/ContentValues;)Z

    move-result v0

    if-eqz v0, :cond_139

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string/jumbo v6, "successfully changed whitelist packages for datalock state"

    .line 755
    invoke-static {v12, v6, v5}, Lcom/android/server/knox/dar/ddar/DDLog;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    const-string/jumbo v5, "whitelisted_apps"

    .line 756
    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->logDualDarAnalytics(Lcom/samsung/android/knox/ContextInfo;Landroid/os/Bundle;Ljava/lang/String;)V

    goto :goto_141

    :cond_139
    const/4 v4, 0x0

    new-array v1, v4, [Ljava/lang/Object;

    const-string v2, "failed to write new whitelist packages to persistent storage"

    .line 758
    invoke-static {v12, v2, v1}, Lcom/android/server/knox/dar/ddar/DDLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    :goto_141
    if-eqz v0, :cond_145

    move v8, v4

    goto :goto_146

    :cond_145
    const/4 v8, -0x2

    :goto_146
    return v8
.end method

.method public systemReady()V
    .registers 3

    .line 987
    invoke-static {}, Lcom/android/server/pm/PersonaServiceHelper;->getDualDARUser()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_a

    .line 990
    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/dualdar/DualDARPolicy;->refreshConfig(I)V

    :cond_a
    return-void
.end method

.method public final unFlattenPackages(Ljava/lang/String;)Ljava/util/List;
    .registers 4
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

    .line 888
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_26

    .line 889
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_26

    .line 890
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", "

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    :goto_14
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_26

    .line 892
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_26
    return-object p0
.end method

.method public final unFlattenSignatures(Ljava/lang/String;)Ljava/util/List;
    .registers 4
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

    .line 899
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_30

    .line 900
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_30

    .line 901
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ", "

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    :goto_14
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_30

    .line 903
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "-"

    .line 904
    invoke-virtual {p1, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_2c

    const-string p1, ""

    .line 907
    :cond_2c
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_14

    :cond_30
    return-object p0
.end method

.method public final validPackageName(Lcom/samsung/android/knox/AppIdentity;)Z
    .registers 2

    if-eqz p1, :cond_15

    .line 788
    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_15

    invoke-virtual {p1}, Lcom/samsung/android/knox/AppIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p0, 0x1

    return p0

    :cond_15
    :goto_15
    const/4 p0, 0x0

    return p0
.end method
