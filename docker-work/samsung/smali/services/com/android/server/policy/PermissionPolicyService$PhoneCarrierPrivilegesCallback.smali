.class public final Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;
.super Ljava/lang/Object;
.source "PermissionPolicyService.java"

# interfaces
.implements Landroid/telephony/TelephonyManager$CarrierPrivilegesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PermissionPolicyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PhoneCarrierPrivilegesCallback"
.end annotation


# instance fields
.field public mPhoneId:I

.field public final synthetic this$0:Lcom/android/server/policy/PermissionPolicyService;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PermissionPolicyService;I)V
    .registers 3

    .line 494
    iput-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput p2, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->mPhoneId:I

    return-void
.end method


# virtual methods
.method public onCarrierPrivilegesChanged(Ljava/util/Set;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 501
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p1}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$minitTelephonyManagerIfNeeded(Lcom/android/server/policy/PermissionPolicyService;)V

    .line 502
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p1}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmTelephonyManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    if-nez p1, :cond_17

    .line 503
    invoke-static {}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Cannot grant default permissions to Carrier Service app. TelephonyManager is null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 508
    :cond_17
    iget-object p1, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {p1}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmTelephonyManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget p2, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->mPhoneId:I

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getCarrierServicePackageNameForLogicalSlot(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_26

    return-void

    .line 513
    :cond_26
    const-class p2, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/UserManagerInternal;

    invoke-virtual {p2}, Lcom/android/server/pm/UserManagerInternal;->getUserIds()[I

    move-result-object p2

    .line 514
    iget-object v0, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v0}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmContext(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/permission/LegacyPermissionManager;

    .line 515
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/permission/LegacyPermissionManager;

    const/4 v1, 0x0

    move v2, v1

    .line 516
    :goto_42
    array-length v3, p2

    if-ge v2, v3, :cond_58

    .line 518
    :try_start_45
    iget-object v3, p0, Lcom/android/server/policy/PermissionPolicyService$PhoneCarrierPrivilegesCallback;->this$0:Lcom/android/server/policy/PermissionPolicyService;

    invoke-static {v3}, Lcom/android/server/policy/PermissionPolicyService;->-$$Nest$fgetmPackageManager(Lcom/android/server/policy/PermissionPolicyService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    aget v4, p2, v2

    invoke-virtual {v3, p1, v1, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 519
    aget v3, p2, v2

    invoke-virtual {v0, p1, v3}, Landroid/permission/LegacyPermissionManager;->grantDefaultPermissionsToCarrierServiceApp(Ljava/lang/String;I)V
    :try_end_55
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_45 .. :try_end_55} :catch_55

    :catch_55
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    :cond_58
    return-void
.end method
