.class public final Lcom/android/server/companion/PackageUtils;
.super Ljava/lang/Object;
.source "PackageUtils.java"


# static fields
.field public static final COMPANION_SERVICE_INTENT:Landroid/content/Intent;

.field public static final LOG_TAG:Ljava/lang/String; = "PackageUtils_CompanionDeviceManagerService"

.field public static final PROPERTY_PRIMARY_TAG:Ljava/lang/String; = "android.companion.PROPERTY_PRIMARY_COMPANION_DEVICE_SERVICE"


# direct methods
.method public static synthetic $r8$lambda$K3qcC6o1P0lT_5ZqsDWIJ_L3ZBs(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/server/companion/PackageUtils;->lambda$getCompanionServicesForUser$1(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$S5CeIB4h9BzuxuBUF_orUHuaclM(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/companion/PackageUtils;->lambda$getPackageInfo$0(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.companion.CompanionDeviceService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/companion/PackageUtils;->COMPANION_SERVICE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enforceUsesCompanionDeviceFeature(Landroid/content/Context;ILjava/lang/String;)V
    .registers 3

    .line 77
    invoke-static {p0, p1, p2}, Lcom/android/server/companion/PackageUtils;->getPackageInfo(Landroid/content/Context;ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    const-string p1, "android.software.companion_device_setup"

    .line 76
    invoke-static {p0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    return-void

    .line 81
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Must declare uses-feature android.software.companion_device_setup in manifest to use this API"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getCompanionServicesForUser(Landroid/content/Context;I)Ljava/util/Map;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 95
    sget-object v0, Lcom/android/server/companion/PackageUtils;->COMPANION_SERVICE_INTENT:Landroid/content/Intent;

    const-wide/16 v1, 0x0

    .line 96
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ResolveInfoFlags;->of(J)Landroid/content/pm/PackageManager$ResolveInfoFlags;

    move-result-object v1

    .line 95
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;Landroid/content/pm/PackageManager$ResolveInfoFlags;I)Ljava/util/List;

    move-result-object p1

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 100
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_74

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 101
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 103
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v3, "android.permission.BIND_COMPANION_DEVICE_SERVICE"

    .line 104
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    .line 106
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CompanionDeviceService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " must require android.permission.BIND_COMPANION_DEVICE_SERVICE"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CompanionDeviceManagerService"

    .line 106
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_19

    .line 114
    :cond_55
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    new-instance v3, Lcom/android/server/companion/PackageUtils$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/server/companion/PackageUtils$$ExternalSyntheticLambda0;-><init>()V

    .line 115
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/LinkedList;

    .line 118
    invoke-virtual {v1}, Landroid/content/pm/ServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    .line 120
    invoke-static {p0, v1}, Lcom/android/server/companion/PackageUtils;->isPrimaryCompanionDeviceService(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 122
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_19

    .line 124
    :cond_70
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_19

    :cond_74
    return-object v0
.end method

.method public static getPackageInfo(Landroid/content/Context;ILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 5

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v0, 0x5000

    .line 62
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    .line 63
    new-instance v1, Lcom/android/server/companion/PackageUtils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p2, v0, p1}, Lcom/android/server/companion/PackageUtils$$ExternalSyntheticLambda1;-><init>(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageInfo;

    return-object p0
.end method

.method public static isPrimaryCompanionDeviceService(Landroid/content/pm/PackageManager;Landroid/content/ComponentName;)Z
    .registers 3

    :try_start_0
    const-string v0, "android.companion.PROPERTY_PRIMARY_COMPANION_DEVICE_SERVICE"

    .line 134
    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->getProperty(Ljava/lang/String;Landroid/content/ComponentName;)Landroid/content/pm/PackageManager$Property;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result p0
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic lambda$getCompanionServicesForUser$1(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 116
    new-instance p0, Ljava/util/LinkedList;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    return-object p0
.end method

.method public static synthetic lambda$getPackageInfo$0(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 68
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to get PackageInfo for package "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PackageUtils_CompanionDeviceManagerService"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method
