.class public final Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;
.super Ljava/lang/Object;
.source "DevicePolicyManagerService.java"

# interfaces
.implements Landroid/app/role/OnRoleHoldersChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DevicePolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DevicePolicyManagementRoleObserver"
.end annotation


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mRm:Landroid/app/role/RoleManager;

.field public final synthetic this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;


# direct methods
.method public static synthetic $r8$lambda$HNZK7u3AJaLV9O9y0-bLF4GFxww(Ljava/lang/Boolean;)V
    .registers 1

    invoke-static {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->lambda$onRoleHoldersChanged$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Context;)V
    .registers 3

    .line 20928
    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20929
    iput-object p2, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mContext:Landroid/content/Context;

    .line 20930
    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    .line 20931
    const-class p1, Landroid/app/role/RoleManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    iput-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mRm:Landroid/app/role/RoleManager;

    return-void
.end method

.method public static synthetic lambda$onRoleHoldersChanged$0(Ljava/lang/Boolean;)V
    .registers 1

    return-void
.end method


# virtual methods
.method public final getDefaultRoleHolderPackageName()Ljava/lang/String;
    .registers 2

    .line 21012
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDefaultRoleHolderPackageNameAndSignature()[Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    const/4 v0, 0x0

    .line 21016
    aget-object p0, p0, v0

    return-object p0
.end method

.method public final getDefaultRoleHolderPackageNameAndSignature()[Ljava/lang/String;
    .registers 3

    .line 21028
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mContext:Landroid/content/Context;

    const v0, 0x104003d

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 21030
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 p0, 0x0

    return-object p0

    :cond_11
    const-string v0, ":"

    .line 21033
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 21034
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public final getDefaultRoleHolderPackageSignature()Ljava/lang/String;
    .registers 3

    .line 21020
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDefaultRoleHolderPackageNameAndSignature()[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 21021
    array-length v0, p0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    goto :goto_f

    :cond_b
    const/4 v0, 0x1

    .line 21024
    aget-object p0, p0, v0

    return-object p0

    :cond_f
    :goto_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getRoleHolder()Ljava/lang/String;
    .registers 2

    .line 20979
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mgetDevicePolicyManagementRoleHolderPackageName(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final hasSigningCertificate(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_34

    if-nez p2, :cond_6

    goto :goto_34

    .line 21001
    :cond_6
    :try_start_6
    new-instance v1, Landroid/content/pm/Signature;

    invoke-direct {v1, p2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p2
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_f} :catch_1d

    .line 21006
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->mInjector:Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;

    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Injector;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x1

    .line 21007
    invoke-virtual {p0, p1, p2, v0}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result p0

    return p0

    :catch_1d
    move-exception p0

    .line 21003
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot parse signing certificate: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DevicePolicyManager"

    invoke-static {p2, p1, p0}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_34
    :goto_34
    return v0
.end method

.method public final isDefaultRoleHolder(Ljava/lang/String;)Z
    .registers 4

    .line 20984
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDefaultRoleHolderPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_1a

    if-nez v0, :cond_a

    goto :goto_1a

    .line 20988
    :cond_a
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    return v1

    .line 20992
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getDefaultRoleHolderPackageSignature()Ljava/lang/String;

    move-result-object v0

    .line 20991
    invoke-virtual {p0, p1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->hasSigningCertificate(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1a
    :goto_1a
    return v1
.end method

.method public onRoleHoldersChanged(Ljava/lang/String;Landroid/os/UserHandle;)V
    .registers 10

    const-string v0, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    .line 20940
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 20943
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->getRoleHolder()Ljava/lang/String;

    move-result-object v2

    .line 20944
    invoke-virtual {p0, v2}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->isDefaultRoleHolder(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "DevicePolicyManager"

    if-eqz p1, :cond_1c

    const-string/jumbo p0, "onRoleHoldersChanged: Default role holder is set, returning early"

    .line 20945
    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1c
    if-nez v2, :cond_25

    const-string/jumbo p0, "onRoleHoldersChanged: New role holder is null, returning early"

    .line 20950
    invoke-static {v0, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 20954
    :cond_25
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    invoke-static {p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$mshouldAllowBypassingDevicePolicyManagementRoleQualificationInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 20955
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onRoleHoldersChanged: Updating current role holder to "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20957
    iget-object p0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 p1, 0x1

    invoke-static {p0, v2, p1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msetBypassDevicePolicyManagementRoleQualificationStateInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Z)V

    return-void

    .line 20961
    :cond_49
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->getUserData(I)Lcom/android/server/devicepolicy/DevicePolicyData;

    move-result-object p1

    .line 20962
    iget-object p1, p1, Lcom/android/server/devicepolicy/DevicePolicyData;->mCurrentRoleHolder:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_83

    .line 20963
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onRoleHoldersChanged: You can\'t set a different role holder, role is getting revoked from "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/server/utils/Slogf;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20966
    iget-object p1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->this$0:Lcom/android/server/devicepolicy/DevicePolicyManagerService;

    const/4 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->-$$Nest$msetBypassDevicePolicyManagementRoleQualificationStateInternal(Lcom/android/server/devicepolicy/DevicePolicyManagerService;Ljava/lang/String;Z)V

    .line 20968
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mRm:Landroid/app/role/RoleManager;

    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v6, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver$$ExternalSyntheticLambda0;-><init>()V

    const-string v1, "android.app.role.DEVICE_POLICY_MANAGEMENT"

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Landroid/app/role/RoleManager;->removeRoleHolderAsUser(Ljava/lang/String;Ljava/lang/String;ILandroid/os/UserHandle;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    :cond_83
    return-void
.end method

.method public register()V
    .registers 4

    .line 20935
    iget-object v0, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mRm:Landroid/app/role/RoleManager;

    iget-object v1, p0, Lcom/android/server/devicepolicy/DevicePolicyManagerService$DevicePolicyManagementRoleObserver;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    return-void
.end method
