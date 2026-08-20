.class public Lcom/android/server/pm/pkg/component/ComponentMutateUtils;
.super Ljava/lang/Object;
.source "ComponentMutateUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addStateFrom(Lcom/android/server/pm/pkg/component/ParsedProcess;Lcom/android/server/pm/pkg/component/ParsedProcess;)V
    .registers 2

    .line 96
    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedProcessImpl;->addStateFrom(Lcom/android/server/pm/pkg/component/ParsedProcess;)V

    return-void
.end method

.method public static setAuthority(Lcom/android/server/pm/pkg/component/ParsedProvider;Ljava/lang/String;)V
    .registers 2

    .line 72
    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setAuthority(Ljava/lang/String;)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    return-void
.end method

.method public static setDirectBootAware(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V
    .registers 2

    .line 64
    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setDirectBootAware(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    return-void
.end method

.method public static setEnabled(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V
    .registers 2

    .line 54
    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setEnabled(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    return-void
.end method

.method public static setExactFlags(Lcom/android/server/pm/pkg/component/ParsedComponent;I)V
    .registers 2

    .line 50
    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setFlags(I)Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    return-void
.end method

.method public static setExported(Lcom/android/server/pm/pkg/component/ParsedMainComponent;Z)V
    .registers 2

    .line 68
    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;->setExported(Z)Lcom/android/server/pm/pkg/component/ParsedMainComponentImpl;

    return-void
.end method

.method public static setMaxAspectRatio(Lcom/android/server/pm/pkg/component/ParsedActivity;IF)V
    .registers 3

    .line 32
    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setMaxAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    return-void
.end method

.method public static setMinAspectRatio(Lcom/android/server/pm/pkg/component/ParsedActivity;IF)V
    .registers 3

    .line 37
    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setMinAspectRatio(IF)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    return-void
.end method

.method public static setPackageName(Lcom/android/server/pm/pkg/component/ParsedComponent;Ljava/lang/String;)V
    .registers 2

    .line 59
    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedComponentImpl;->setPackageName(Ljava/lang/String;)V

    return-void
.end method

.method public static setParsedPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermission;Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)V
    .registers 2

    .line 86
    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setParsedPermissionGroup(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    return-void
.end method

.method public static setPriority(Lcom/android/server/pm/pkg/component/ParsedPermissionGroup;I)V
    .registers 2

    .line 91
    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;->setPriority(I)Lcom/android/server/pm/pkg/component/ParsedPermissionGroupImpl;

    return-void
.end method

.method public static setProtectionLevel(Lcom/android/server/pm/pkg/component/ParsedPermission;I)V
    .registers 2

    .line 81
    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;->setProtectionLevel(I)Lcom/android/server/pm/pkg/component/ParsedPermissionImpl;

    return-void
.end method

.method public static setResizeMode(Lcom/android/server/pm/pkg/component/ParsedActivity;I)V
    .registers 2

    .line 46
    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setResizeMode(I)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    return-void
.end method

.method public static setSupportsSizeChanges(Lcom/android/server/pm/pkg/component/ParsedActivity;Z)V
    .registers 2

    .line 42
    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedActivityImpl;->setSupportsSizeChanges(Z)Lcom/android/server/pm/pkg/component/ParsedActivityImpl;

    return-void
.end method

.method public static setSyncable(Lcom/android/server/pm/pkg/component/ParsedProvider;Z)V
    .registers 2

    .line 76
    check-cast p0, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/pkg/component/ParsedProviderImpl;->setSyncable(Z)Lcom/android/server/pm/pkg/component/ParsedProviderImpl;

    return-void
.end method
