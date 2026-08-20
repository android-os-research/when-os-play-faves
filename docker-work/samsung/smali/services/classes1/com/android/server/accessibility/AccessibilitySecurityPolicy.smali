.class public Lcom/android/server/accessibility/AccessibilitySecurityPolicy;
.super Ljava/lang/Object;
.source "AccessibilitySecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;
    }
.end annotation


# static fields
.field public static final KEEP_SOURCE_EVENT_TYPES:I = 0x43b9bf

.field public static final LOG_TAG:Ljava/lang/String; = "AccessibilitySecurityPolicy"

.field public static final OWN_PROCESS_ID:I


# instance fields
.field public final mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

.field public mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public final mNonA11yCategoryServices:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

.field public mSendNonA11yToolNotificationEnabled:Z

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 65
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    sput v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->OWN_PROCESS_ID:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/accessibility/PolicyWarningUIController;Landroid/content/Context;Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;)V
    .registers 5

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    const/16 v0, -0x2710

    .line 107
    iput v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    .line 116
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 117
    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    .line 118
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo p3, "user"

    .line 119
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/UserManager;

    iput-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    const-string p3, "appops"

    .line 120
    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/AppOpsManager;

    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 121
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    return-void
.end method

.method public static checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .registers 10

    .line 468
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_c

    return-object v1

    .line 473
    :cond_c
    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->getUserHandleOf(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1e

    .line 476
    iget-object v4, v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v4, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v4

    goto :goto_1f

    :cond_1e
    move v4, v3

    .line 482
    :goto_1f
    invoke-static {p0, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->getManagedProfileId(Landroid/content/Context;I)I

    move-result p2

    const/16 v5, -0x2710

    if-eq p2, v5, :cond_4a

    .line 485
    invoke-static {p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->getUserHandleOf(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 484
    invoke-static {p0, v5}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;Landroid/os/UserHandle;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v5

    if-eqz v5, :cond_4b

    .line 490
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    move-result v6

    if-eqz v6, :cond_4b

    .line 492
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 491
    invoke-virtual {v0, p0}, Landroid/app/admin/DevicePolicyManager;->getParentProfileInstance(Landroid/content/pm/UserInfo;)Landroid/app/admin/DevicePolicyManager;

    move-result-object p0

    .line 493
    iget-object v0, v5, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/admin/DevicePolicyManager;->isInputMethodPermittedByAdmin(Landroid/content/ComponentName;Ljava/lang/String;I)Z

    move-result v3

    goto :goto_4b

    :cond_4a
    move-object v5, v1

    :cond_4b
    :goto_4b
    if-nez v4, :cond_52

    if-nez v3, :cond_52

    .line 498
    sget-object p0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->MULTIPLE_ENFORCED_ADMIN:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0

    :cond_52
    if-nez v4, :cond_55

    return-object v2

    :cond_55
    if-nez v3, :cond_58

    return-object v5

    :cond_58
    return-object v1
.end method

.method public static getManagedProfileId(Landroid/content/Context;I)I
    .registers 4

    .line 453
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 454
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    .line 455
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_10
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/UserInfo;

    .line 456
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    if-ne v1, p1, :cond_21

    goto :goto_10

    .line 459
    :cond_21
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 460
    iget p0, v0, Landroid/content/pm/UserInfo;->id:I

    return p0

    :cond_2a
    const/16 p0, -0x2710

    return p0
.end method

.method public static getUserHandleOf(I)Landroid/os/UserHandle;
    .registers 2

    const/16 v0, -0x2710

    if-ne p0, v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    .line 448
    :cond_6
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public canCaptureFingerprintGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .registers 2

    .line 381
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public canControlMagnification(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 2

    .line 357
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public canDispatchAccessibilityEventLocked(ILandroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6

    .line 168
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_20

    goto :goto_a

    :sswitch_9
    return v1

    :goto_a
    const/16 v2, 0x10

    if-eq v0, v2, :cond_1f

    const/16 v2, 0x1000

    if-eq v0, v2, :cond_1f

    const/16 v2, 0x2000

    if-eq v0, v2, :cond_1f

    .line 206
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getWindowId()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isRetrievalAllowingWindowLocked(II)Z

    move-result p0

    return p0

    :cond_1f
    return v1

    :sswitch_data_20
    .sparse-switch
        0x20 -> :sswitch_9
        0x40 -> :sswitch_9
        0x80 -> :sswitch_9
        0x100 -> :sswitch_9
        0x200 -> :sswitch_9
        0x400 -> :sswitch_9
        0x4000 -> :sswitch_9
        0x40000 -> :sswitch_9
        0x80000 -> :sswitch_9
        0x100000 -> :sswitch_9
        0x200000 -> :sswitch_9
        0x400000 -> :sswitch_9
        0x1000000 -> :sswitch_9
    .end sparse-switch
.end method

.method public canEnableDisableInputMethod(Ljava/lang/String;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .line 410
    invoke-virtual {p2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    .line 411
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 415
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getInputMethodListAsUser(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_31

    .line 417
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 418
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    goto :goto_32

    :cond_31
    const/4 v2, 0x0

    :goto_32
    if-eqz v2, :cond_4e

    .line 426
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    .line 433
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    .line 434
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 433
    invoke-static {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->checkIfInputMethodDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_4c

    const/4 p0, 0x1

    return p0

    :cond_4c
    const/4 p0, 0x0

    return p0

    .line 427
    :cond_4e
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "The input method is in a different package with the accessibility service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canGetAccessibilityNodeInfoLocked(ILcom/android/server/accessibility/AbstractAccessibilityServiceConnection;I)Z
    .registers 4

    .line 319
    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 320
    invoke-virtual {p0, p1, p3}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isRetrievalAllowingWindowLocked(II)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public canPerformGestures(Lcom/android/server/accessibility/AccessibilityServiceConnection;)Z
    .registers 2

    .line 369
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public canRegisterService(Landroid/content/pm/ServiceInfo;)Z
    .registers 13

    .line 674
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v1, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const-string v3, "Skipping accessibility service "

    const-string v4, "AccessibilitySecurityPolicy"

    if-nez v0, :cond_37

    .line 676
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v3, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": it does not require the permission "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 676
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 683
    :cond_37
    iget v0, p1, Landroid/content/pm/ServiceInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_62

    .line 684
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": the service is the external one and doesn\'t allow to register as an accessibility service "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 684
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 691
    :cond_62
    iget-object v0, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 692
    iget-object v5, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v8, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v6, "android:bind_accessibility_service"

    invoke-virtual/range {v5 .. v10}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_99

    .line 695
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": disallowed by AppOps"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 695
    invoke-static {v4, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_99
    const/4 p0, 0x1

    return p0
.end method

.method public canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 2

    .line 344
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result p0

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public canRetrieveWindowsLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 2

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->canRetrieveWindowContentLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z

    move-result p0

    if-eqz p0, :cond_c

    iget-boolean p0, p1, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->mRetrieveInteractiveWindows:Z

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return p0
.end method

.method public canTakeScreenshotLocked(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 2

    .line 394
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getCapabilities()I

    move-result p0

    and-int/lit16 p0, p0, 0x80

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public checkAccessibilityAccess(Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;)Z
    .registers 13

    .line 711
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 712
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v7, 0x1

    if-nez v0, :cond_14

    return v7

    .line 719
    :cond_14
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 720
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 721
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 722
    invoke-virtual {p1}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection;->getAttributionTag()Ljava/lang/String;

    move-result-object v5

    .line 725
    :try_start_26
    sget p1, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->OWN_PROCESS_ID:I

    const/4 v10, 0x0

    if-ne p1, v0, :cond_3c

    .line 726
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v2, "android:access_accessibility"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_34
    .catchall {:try_start_26 .. :try_end_34} :catchall_4d

    if-nez p0, :cond_37

    goto :goto_38

    :cond_37
    move v7, v10

    .line 735
    :goto_38
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    .line 731
    :cond_3c
    :try_start_3c
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppOpsManager:Landroid/app/AppOpsManager;

    const-string v2, "android:access_accessibility"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOp(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_45
    .catchall {:try_start_3c .. :try_end_45} :catchall_4d

    if-nez p0, :cond_48

    goto :goto_49

    :cond_48
    move v7, v10

    .line 735
    :goto_49
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :catchall_4d
    move-exception p0

    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 736
    throw p0
.end method

.method public computeValidReportedPackages(Ljava/lang/String;I)[Ljava/lang/String;
    .registers 6

    .line 273
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_b

    .line 275
    sget-object p0, Llibcore/util/EmptyArray;->STRING:[Ljava/lang/String;

    return-object p0

    :cond_b
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 280
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    if-eqz p0, :cond_3e

    .line 282
    invoke-virtual {p0, p2}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object p0

    if-eqz p0, :cond_3e

    .line 283
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3e

    .line 285
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/2addr p1, v0

    new-array p1, p1, [Ljava/lang/String;

    .line 286
    invoke-static {v1, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p2

    :goto_2f
    if-ge v2, p2, :cond_3d

    add-int v1, v0, v2

    .line 289
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, p1, v1

    move v2, v1

    goto :goto_2f

    :cond_3d
    return-object p1

    :cond_3e
    return-object v1
.end method

.method public enforceCallingOrSelfPermission(Ljava/lang/String;)V
    .registers 4

    .line 745
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_9

    return-void

    .line 747
    :cond_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Caller does not hold permission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 647
    sget v0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->OWN_PROCESS_ID:I

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    if-ne v0, v1, :cond_9

    return-void

    .line 650
    :cond_9
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    return-void

    .line 651
    :cond_10
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "You do not have "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " required to call "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from pid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public hasPermission(Ljava/lang/String;)Z
    .registers 2

    .line 664
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public isCallerInteractingAcrossUsers(I)Z
    .registers 4

    .line 578
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    .line 579
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-eq v0, v1, :cond_1b

    const/16 v0, 0x7d0

    if-eq p0, v0, :cond_1b

    const/4 p0, -0x2

    if-eq p1, p0, :cond_1b

    const/4 p0, -0x3

    if-ne p1, p0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 p0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 p0, 0x1

    :goto_1c
    return p0
.end method

.method public final isRetrievalAllowingWindowLocked(II)Z
    .registers 7

    .line 601
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_a

    return v2

    .line 605
    :cond_a
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    if-ne v0, v1, :cond_15

    return v2

    .line 609
    :cond_15
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x7d0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_25

    .line 610
    invoke-virtual {p0, p1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isShellAllowedToRetrieveWindowLocked(II)Z

    move-result v0

    if-nez v0, :cond_25

    return v3

    .line 614
    :cond_25
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->resolveParentWindowIdLocked(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 615
    invoke-virtual {v1, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getActiveWindowId(I)I

    move-result p1

    if-ne v0, p1, :cond_34

    return v2

    .line 618
    :cond_34
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {p0, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->findA11yWindowInfoByIdLocked(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object p0

    if-eqz p0, :cond_3d

    goto :goto_3e

    :cond_3d
    move v2, v3

    :goto_3e
    return v2
.end method

.method public final isShellAllowedToRetrieveWindowLocked(II)Z
    .registers 6

    .line 622
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 624
    :try_start_4
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    .line 625
    invoke-virtual {v2, p1, p2}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowTokenForUserAndWindowIdLocked(II)Landroid/os/IBinder;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_4 .. :try_end_a} :catchall_32

    const/4 p2, 0x0

    if-nez p1, :cond_11

    .line 636
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    .line 629
    :cond_11
    :try_start_11
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    invoke-virtual {v2, p1}, Lcom/android/server/accessibility/AccessibilityWindowManager;->getWindowOwnerUserId(Landroid/os/IBinder;)I

    move-result p1
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_32

    const/16 v2, -0x2710

    if-ne p1, v2, :cond_1f

    .line 636
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p2

    .line 633
    :cond_1f
    :try_start_1f
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    const-string/jumbo p2, "no_debugging_features"

    .line 634
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 633
    invoke-virtual {p0, p2, p1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_32

    xor-int/lit8 p0, p0, 0x1

    .line 636
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_32
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 637
    throw p0
.end method

.method public final isValidPackageForUid(Ljava/lang/String;I)Z
    .registers 8

    .line 586
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x0

    .line 590
    :try_start_5
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v3, 0x400000

    .line 591
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 590
    invoke-virtual {p0, p1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;II)I

    move-result p0
    :try_end_11
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_11} :catch_1d
    .catchall {:try_start_5 .. :try_end_11} :catchall_18

    if-ne p2, p0, :cond_14

    const/4 v2, 0x1

    .line 595
    :cond_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 596
    throw p0

    .line 595
    :catch_1d
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2
.end method

.method public onBoundServicesChangedLocked(ILjava/util/ArrayList;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/accessibility/AccessibilityServiceConnection;",
            ">;)V"
        }
    .end annotation

    .line 761
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    invoke-interface {v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v0

    if-eq v0, p1, :cond_9

    return-void

    .line 765
    :cond_9
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 766
    :goto_10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4b

    .line 767
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/accessibility/AccessibilityServiceConnection;

    .line 768
    invoke-virtual {v3}, Lcom/android/server/accessibility/AccessibilityServiceConnection;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v3

    .line 769
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    move-result-object v4

    .line 770
    invoke-virtual {v3}, Landroid/accessibilityservice/AccessibilityServiceInfo;->isAccessibilityTool()Z

    move-result v3

    if-nez v3, :cond_48

    .line 771
    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 772
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 773
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_48

    .line 775
    :cond_3f
    iget-boolean v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    if-eqz v3, :cond_48

    .line 776
    iget-object v3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    invoke-virtual {v3, p1, v4}, Lcom/android/server/accessibility/PolicyWarningUIController;->onNonA11yCategoryServiceBound(ILandroid/content/ComponentName;)V

    :cond_48
    :goto_48
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 782
    :cond_4b
    :goto_4b
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge v1, p2, :cond_63

    .line 783
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {p2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ComponentName;

    .line 784
    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/accessibility/PolicyWarningUIController;->onNonA11yCategoryServiceUnbound(ILandroid/content/ComponentName;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4b

    .line 786
    :cond_63
    iget-object p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 787
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    return-void
.end method

.method public onEnabledServicesChangedLocked(ILjava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 819
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    invoke-interface {v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v0

    if-eq v0, p1, :cond_9

    return-void

    .line 822
    :cond_9
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, p1, v0}, Lcom/android/server/accessibility/PolicyWarningUIController;->onEnabledServicesChanged(ILjava/util/Set;)V

    return-void
.end method

.method public onSwitchUserLocked(ILjava/util/Set;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    .line 798
    iget v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    if-ne v0, p1, :cond_5

    return-void

    .line 801
    :cond_5
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1, p2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/server/accessibility/PolicyWarningUIController;->onSwitchUser(ILjava/util/Set;)V

    const/4 p2, 0x0

    .line 804
    :goto_10
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge p2, v0, :cond_2a

    .line 805
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    iget v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    iget-object v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    .line 806
    invoke-virtual {v2, p2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    .line 805
    invoke-virtual {v0, v1, v2}, Lcom/android/server/accessibility/PolicyWarningUIController;->onNonA11yCategoryServiceUnbound(ILandroid/content/ComponentName;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_10

    .line 808
    :cond_2a
    iget-object p2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {p2}, Landroid/util/ArraySet;->clear()V

    .line 809
    iput p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    return-void
.end method

.method public resolveCallingUserIdEnforcingPermissionsLocked(I)I
    .registers 7

    .line 538
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 539
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    invoke-interface {v1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v1

    const/4 v2, -0x3

    const/4 v3, -0x2

    if-eqz v0, :cond_6d

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_6d

    const/16 v4, 0x7d0

    if-ne v0, v4, :cond_17

    goto :goto_6d

    .line 549
    :cond_17
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne v0, p1, :cond_22

    .line 551
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result p0

    return p0

    .line 553
    :cond_22
    invoke-virtual {p0, v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result v4

    if-ne v4, v1, :cond_2d

    if-eq p1, v3, :cond_2c

    if-ne p1, v2, :cond_2d

    :cond_2c
    return v1

    :cond_2d
    const-string v4, "android.permission.INTERACT_ACROSS_USERS"

    .line 558
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_62

    const-string v4, "android.permission.INTERACT_ACROSS_USERS_FULL"

    .line 559
    invoke-virtual {p0, v4}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->hasPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    goto :goto_62

    .line 560
    :cond_3e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Call from user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " as user "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " without permission INTERACT_ACROSS_USERS or INTERACT_ACROSS_USERS_FULL not allowed."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_62
    :goto_62
    if-eq p1, v3, :cond_6c

    if-ne p1, v2, :cond_67

    goto :goto_6c

    .line 568
    :cond_67
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result p0

    return p0

    :cond_6c
    :goto_6c
    return v1

    :cond_6d
    :goto_6d
    if-eq p1, v3, :cond_77

    if-ne p1, v2, :cond_72

    goto :goto_77

    .line 547
    :cond_72
    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->resolveProfileParentLocked(I)I

    move-result p0

    return p0

    :cond_77
    :goto_77
    return v1
.end method

.method public resolveProfileParentLocked(I)I
    .registers 4

    .line 514
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityUserManager:Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;

    invoke-interface {v0}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy$AccessibilityUserManager;->getCurrentUserIdLocked()I

    move-result v0

    if-eq p1, v0, :cond_29

    .line 515
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 517
    :try_start_c
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 519
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0
    :try_end_1c
    .catchall {:try_start_c .. :try_end_1c} :catchall_24

    .line 522
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :cond_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_29

    :catchall_24
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 523
    throw p0

    :cond_29
    :goto_29
    return p1
.end method

.method public resolveValidReportedPackageLocked(Ljava/lang/CharSequence;III)Ljava/lang/String;
    .registers 7

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    const/16 v1, 0x3e8

    if-ne p2, v1, :cond_d

    .line 229
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 232
    :cond_d
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 233
    invoke-static {p3, p2}, Landroid/os/UserHandle;->getUid(II)I

    move-result p2

    .line 234
    invoke-virtual {p0, v1, p2}, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->isValidPackageForUid(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_20

    .line 235
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 238
    :cond_20
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    if-eqz p3, :cond_33

    .line 239
    invoke-virtual {p3, p2}, Landroid/appwidget/AppWidgetManagerInternal;->getHostedWidgetPackages(I)Landroid/util/ArraySet;

    move-result-object p3

    .line 238
    invoke-static {p3, v1}, Lcom/android/internal/util/ArrayUtils;->contains(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_33

    .line 240
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 243
    :cond_33
    iget-object p3, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACT_AS_PACKAGE_FOR_ACCESSIBILITY"

    invoke-virtual {p3, v1, p4, p2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result p3

    if-nez p3, :cond_42

    .line 245
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 248
    :cond_42
    iget-object p0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    .line 249
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    return-object v0

    :cond_4f
    const/4 p1, 0x0

    .line 259
    aget-object p0, p0, p1

    return-object p0
.end method

.method public setAccessibilityWindowManager(Lcom/android/server/accessibility/AccessibilityWindowManager;)V
    .registers 2

    .line 148
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAccessibilityWindowManager:Lcom/android/server/accessibility/AccessibilityWindowManager;

    return-void
.end method

.method public setAppWidgetManager(Landroid/appwidget/AppWidgetManagerInternal;)V
    .registers 2

    .line 155
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mAppWidgetService:Landroid/appwidget/AppWidgetManagerInternal;

    return-void
.end method

.method public setSendingNonA11yToolNotificationLocked(Z)V
    .registers 5

    .line 129
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    if-ne p1, v0, :cond_5

    return-void

    .line 133
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mSendNonA11yToolNotificationEnabled:Z

    .line 134
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/PolicyWarningUIController;->enableSendingNonA11yToolNotification(Z)V

    if-eqz p1, :cond_29

    const/4 p1, 0x0

    .line 136
    :goto_f
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge p1, v0, :cond_29

    .line 137
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mNonA11yCategoryServices:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 138
    iget-object v1, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mPolicyWarningUIController:Lcom/android/server/accessibility/PolicyWarningUIController;

    iget v2, p0, Lcom/android/server/accessibility/AccessibilitySecurityPolicy;->mCurrentUserId:I

    invoke-virtual {v1, v2, v0}, Lcom/android/server/accessibility/PolicyWarningUIController;->onNonA11yCategoryServiceBound(ILandroid/content/ComponentName;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_f

    :cond_29
    return-void
.end method

.method public updateEventSourceLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 3

    .line 303
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p0

    const v0, 0x43b9bf

    and-int/2addr p0, v0

    if-nez p0, :cond_e

    const/4 p0, 0x0

    .line 304
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    :cond_e
    return-void
.end method
