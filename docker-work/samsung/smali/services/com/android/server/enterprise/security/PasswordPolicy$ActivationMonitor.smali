.class public Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/license/IActivationKlmElmObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/security/PasswordPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ActivationMonitor"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/security/PasswordPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V
    .registers 3

    .line 3526
    iput-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3527
    invoke-virtual {p0}, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->getLicenseService()V

    .line 3528
    invoke-static {p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmLicenseService(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 3529
    invoke-static {p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmLicenseService(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->addElmKlmObserver(Lcom/android/server/enterprise/license/IActivationKlmElmObserver;)V

    :cond_15
    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;-><init>(Lcom/android/server/enterprise/security/PasswordPolicy;)V

    return-void
.end method


# virtual methods
.method public final getLicenseService()V
    .registers 2

    .line 3534
    iget-object v0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmLicenseService(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object v0

    if-nez v0, :cond_15

    .line 3535
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    const-string v0, "enterprise_license_policy"

    invoke-static {v0}, Lcom/android/server/enterprise/EnterpriseService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    invoke-static {p0, v0}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fputmLicenseService(Lcom/android/server/enterprise/security/PasswordPolicy;Lcom/android/server/enterprise/license/EnterpriseLicenseService;)V

    :cond_15
    return-void
.end method

.method public final isDeviceOwnerPackage(Ljava/lang/String;)Z
    .registers 2

    .line 3540
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p0}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmDpm(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object p0

    if-eqz p1, :cond_1a

    if-eqz p0, :cond_1a

    .line 3541
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method public onUpdateElm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 6

    const-string v0, "PasswordPolicy"

    const-string/jumbo v1, "onUpdateElm is called"

    .line 3565
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3567
    :try_start_8
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmPersonaManagerAdapter(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 3568
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object p2

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->ELM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-ne p2, v1, :cond_71

    .line 3569
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmLicenseService(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object p2

    if-eqz p2, :cond_71

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->isDeviceOwnerPackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_71

    .line 3570
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmLicenseService(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object p2

    const-string v1, "com.samsung.android.knox.permission.KNOX_APP_MGMT"

    invoke-virtual {p2, p1, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 3571
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpdateElm - isServiceAvailable : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_71

    .line 3572
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmUserManager(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    move-result p1

    if-nez p1, :cond_71

    .line 3573
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p0, v2, v2, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$msetAdminLockEnabledSystemUI(Lcom/android/server/enterprise/security/PasswordPolicy;IZZ)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_69} :catch_6a

    goto :goto_71

    :catch_6a
    move-exception p0

    const-string/jumbo p1, "onUpdateElm() failed "

    .line 3579
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_71
    :goto_71
    return-void
.end method

.method public onUpdateKlm(Ljava/lang/String;Lcom/samsung/android/knox/license/LicenseResult;)V
    .registers 6

    const-string v0, "PasswordPolicy"

    const-string/jumbo v1, "onUpdateKlm is called"

    .line 3545
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3547
    :try_start_8
    iget-object v1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmPersonaManagerAdapter(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/server/enterprise/adapter/IPersonaManagerAdapter;->isDoEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_71

    .line 3548
    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_71

    invoke-virtual {p2}, Lcom/samsung/android/knox/license/LicenseResult;->getType()Lcom/samsung/android/knox/license/LicenseResult$Type;

    move-result-object p2

    sget-object v1, Lcom/samsung/android/knox/license/LicenseResult$Type;->KLM_VALIDATION:Lcom/samsung/android/knox/license/LicenseResult$Type;

    if-ne p2, v1, :cond_71

    .line 3549
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmLicenseService(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object p2

    if-eqz p2, :cond_71

    invoke-virtual {p0, p1}, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->isDeviceOwnerPackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_71

    .line 3550
    iget-object p2, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p2}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmLicenseService(Lcom/android/server/enterprise/security/PasswordPolicy;)Lcom/android/server/enterprise/license/EnterpriseLicenseService;

    move-result-object p2

    const-string v1, "com.samsung.android.knox.permission.KNOX_CONTAINER"

    invoke-virtual {p2, p1, v1}, Lcom/android/server/enterprise/license/EnterpriseLicenseService;->isServiceAvailable(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 3551
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUpdateKlm - isServiceAvailable : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_71

    .line 3552
    iget-object p1, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p1}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$fgetmUserManager(Lcom/android/server/enterprise/security/PasswordPolicy;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdminLocked()Z

    move-result p1

    if-nez p1, :cond_71

    .line 3553
    iget-object p0, p0, Lcom/android/server/enterprise/security/PasswordPolicy$ActivationMonitor;->this$0:Lcom/android/server/enterprise/security/PasswordPolicy;

    invoke-static {p0, v2, v2, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->-$$Nest$msetAdminLockEnabledSystemUI(Lcom/android/server/enterprise/security/PasswordPolicy;IZZ)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_69} :catch_6a

    goto :goto_71

    :catch_6a
    move-exception p0

    const-string/jumbo p1, "onUpdateKlm() failed "

    .line 3559
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_71
    :goto_71
    return-void
.end method
