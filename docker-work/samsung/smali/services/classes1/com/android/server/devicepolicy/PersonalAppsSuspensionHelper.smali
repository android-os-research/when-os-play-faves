.class public final Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;
.super Ljava/lang/Object;
.source "PersonalAppsSuspensionHelper.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "DevicePolicyManager"

.field public static final PACKAGE_QUERY_FLAGS:I = 0xc0000


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public static forUser(Landroid/content/Context;I)Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;
    .registers 4

    .line 70
    new-instance v0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;)V
    .registers 6

    const-string v0, "PersonalAppsSuspensionHelper"

    .line 207
    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 210
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getCriticalPackages()Ljava/util/List;

    move-result-object v0

    const-string v1, "critical packages"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/List;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getSystemLauncherPackages()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "launcher packages"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/List;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getAccessibilityServices()Ljava/util/List;

    move-result-object v0

    const-string v1, "accessibility services"

    .line 212
    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/List;)V

    .line 214
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getInputMethodPackages()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "input method packages"

    invoke-static {p1, v1, v0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;Ljava/util/List;)V

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    .line 215
    iget-object v2, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "SMS package: %s\n"

    invoke-virtual {p1, v2, v1}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    new-array v0, v0, [Ljava/lang/Object;

    .line 216
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getSettingsPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Settings package: %s\n"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 218
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getPersonalAppsForSuspension()[Ljava/lang/String;

    move-result-object p0

    const-string v0, "Packages subject to suspension"

    .line 217
    invoke-static {p1, v0, p0}, Lcom/android/server/devicepolicy/DevicePolicyManagerService;->dumpApps(Landroid/util/IndentingPrintWriter;Ljava/lang/String;[Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public final getAccessibilityServices()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "accessibility"

    .line 147
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    goto :goto_e

    .line 149
    :cond_a
    invoke-static {v0}, Landroid/view/accessibility/IAccessibilityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/accessibility/IAccessibilityManager;

    move-result-object v0

    .line 150
    :goto_e
    new-instance v1, Landroid/view/accessibility/AccessibilityManager;

    iget-object p0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-direct {v1, p0, v0, v2}, Landroid/view/accessibility/AccessibilityManager;-><init>(Landroid/content/Context;Landroid/view/accessibility/IAccessibilityManager;I)V

    const/4 p0, -0x1

    .line 153
    :try_start_1a
    invoke-virtual {v1, p0}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_49

    .line 155
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->removeClient()Z

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2a
    :goto_2a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 161
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2a

    .line 163
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2a

    :cond_48
    return-object v0

    :catchall_49
    move-exception p0

    .line 155
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->removeClient()Z

    .line 156
    throw p0
.end method

.method public final getCriticalPackages()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object p0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1070103

    .line 193
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    .line 192
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final getInputMethodPackages()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 170
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->get()Lcom/android/server/inputmethod/InputMethodManagerInternal;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/server/inputmethod/InputMethodManagerInternal;->getEnabledInputMethodListAsUser(I)Ljava/util/List;

    move-result-object p0

    .line 172
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 173
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodInfo;

    .line 174
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_2b
    return-object v0
.end method

.method public getPersonalAppsForSuspension()[Ljava/lang/String;
    .registers 6

    .line 86
    iget-object v0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0xc0000

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 88
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 89
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 90
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 91
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v4

    if-nez v4, :cond_2b

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v3

    if-eqz v3, :cond_33

    :cond_2b
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 92
    invoke-virtual {p0, v3}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->hasLauncherIntent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 93
    :cond_33
    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 96
    :cond_39
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getCriticalPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 97
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getSystemLauncherPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 98
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getAccessibilityServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 99
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getInputMethodPackages()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 100
    iget-object v0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/Telephony$Sms;->getDefaultSmsPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->getSettingsPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 103
    iget-object p0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v0, 0x0

    new-array v2, v0, [Ljava/lang/String;

    .line 104
    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getUnsuspendablePackages([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 105
    array-length v2, p0

    move v3, v0

    :goto_76
    if-ge v3, v2, :cond_80

    aget-object v4, p0, v3

    .line 106
    invoke-interface {v1, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_76

    :cond_80
    const/4 p0, 0x4

    const-string v2, "DevicePolicyManager"

    .line 109
    invoke-static {v2, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_99

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const-string v3, ","

    .line 110
    invoke-static {v3, v1}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p0, v0

    const-string v3, "Packages subject to suspension: %s"

    invoke-static {v2, v3, p0}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_99
    new-array p0, v0, [Ljava/lang/String;

    .line 112
    invoke-interface {v1, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public final getSettingsPackageName()Ljava/lang/String;
    .registers 3

    .line 181
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.DEFAULT"

    .line 182
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 183
    iget-object p0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v1, 0xc0000

    .line 184
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_1b

    .line 186
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object p0

    :cond_1b
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSystemLauncherPackages()Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 117
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 118
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    iget-object v2, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v3, 0xc0000

    .line 120
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 121
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1d
    :goto_1d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_68

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 122
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "DevicePolicyManager"

    if-eqz v4, :cond_5e

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 123
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3a

    goto :goto_5e

    .line 127
    :cond_3a
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 129
    :try_start_3e
    iget-object v4, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 130
    invoke-virtual {v4, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 131
    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v8

    if-nez v8, :cond_50

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isUpdatedSystemApp()Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 132
    :cond_50
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_53
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3e .. :try_end_53} :catch_54

    goto :goto_1d

    :catch_54
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const-string v2, "Could not find application info for launcher app: %s"

    .line 135
    invoke-static {v7, v2, v4}, Lcom/android/server/utils/Slogf;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    :cond_5e
    :goto_5e
    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v5

    const-string v2, "Could not find package name for launcher app %s"

    .line 124
    invoke-static {v7, v2, v4}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1d

    :cond_68
    return-object v0
.end method

.method public final hasLauncherIntent(Ljava/lang/String;)Z
    .registers 4

    .line 197
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    .line 198
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    iget-object p0, p0, Lcom/android/server/devicepolicy/PersonalAppsSuspensionHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 p1, 0xc0000

    .line 201
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_21

    .line 202
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_21

    const/4 p0, 0x1

    goto :goto_22

    :cond_21
    const/4 p0, 0x0

    :goto_22
    return p0
.end method
