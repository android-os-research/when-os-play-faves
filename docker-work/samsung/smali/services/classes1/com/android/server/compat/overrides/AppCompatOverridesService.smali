.class public final Lcom/android/server/compat/overrides/AppCompatOverridesService;
.super Ljava/lang/Object;
.source "AppCompatOverridesService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;,
        Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;,
        Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;
    }
.end annotation


# static fields
.field public static final SUPPORTED_NAMESPACES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "AppCompatOverridesService"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mDeviceConfigListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;",
            ">;"
        }
    .end annotation
.end field

.field public final mOverridesParser:Lcom/android/server/compat/overrides/AppCompatOverridesParser;

.field public final mPackageManager:Landroid/content/pm/PackageManager;

.field public final mPackageReceiver:Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;

.field public final mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

.field public final mSupportedNamespaces:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$maddAllPackageOverrides(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->addAllPackageOverrides(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyAllOverrides(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->applyAllOverrides(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyOverrides(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/provider/DeviceConfig$Properties;Ljava/util/Set;Ljava/util/Map;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->applyOverrides(Landroid/provider/DeviceConfig$Properties;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetOverridesToRemove(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getOverridesToRemove(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misInstalledForAnyUser(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->isInstalledForAnyUser(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mremoveAllPackageOverrides(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->removeAllPackageOverrides(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveOverrides(Lcom/android/server/compat/overrides/AppCompatOverridesService;Ljava/util/Map;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->removeOverrides(Ljava/util/Map;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smgetOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;
    .registers 1

    invoke-static {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "app_compat_overrides"

    .line 74
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->SUPPORTED_NAMESPACES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string/jumbo v0, "platform_compat"

    .line 87
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/android/internal/compat/IPlatformCompat$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/compat/IPlatformCompat;

    move-result-object v0

    sget-object v1, Lcom/android/server/compat/overrides/AppCompatOverridesService;->SUPPORTED_NAMESPACES:Ljava/util/List;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;-><init>(Landroid/content/Context;Lcom/android/internal/compat/IPlatformCompat;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/compat/IPlatformCompat;Ljava/util/List;)V
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/internal/compat/IPlatformCompat;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 95
    iput-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    .line 96
    iput-object p3, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mSupportedNamespaces:Ljava/util/List;

    .line 97
    new-instance p2, Lcom/android/server/compat/overrides/AppCompatOverridesParser;

    invoke-direct {p2, v0}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mOverridesParser:Lcom/android/server/compat/overrides/AppCompatOverridesParser;

    .line 98
    new-instance p2, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;

    const/4 v0, 0x0

    invoke-direct {p2, p0, p1, v0}, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;-><init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver-IA;)V

    iput-object p2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPackageReceiver:Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;

    .line 99
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mDeviceConfigListeners:Ljava/util/List;

    .line 100
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 101
    iget-object p3, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mDeviceConfigListeners:Ljava/util/List;

    new-instance v1, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;

    iget-object v2, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2, p2, v0}, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;-><init>(Lcom/android/server/compat/overrides/AppCompatOverridesService;Landroid/content/Context;Ljava/lang/String;Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener-IA;)V

    invoke-interface {p3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_29

    :cond_42
    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/android/server/compat/overrides/AppCompatOverridesService-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static getOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "owned_change_ids"

    const-string v1, ""

    .line 265
    invoke-static {p0, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 264
    invoke-static {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->parseOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final addAllPackageOverrides(Ljava/lang/String;)V
    .registers 12

    .line 197
    invoke-virtual {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 202
    :cond_7
    iget-object v1, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mSupportedNamespaces:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 205
    invoke-static {v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v3

    .line 206
    iget-object v4, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mOverridesParser:Lcom/android/server/compat/overrides/AppCompatOverridesParser;

    const-string v5, ""

    .line 207
    invoke-static {v2, p1, v5}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 208
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 209
    invoke-virtual {p0, v2, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getOverridesToRemove(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;

    move-result-object v2

    .line 210
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    .line 209
    invoke-interface {v2, p1, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/util/Set;

    move-object v6, p1

    .line 206
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->parsePackageOverrides(Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->putPackageOverrides(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_d

    :cond_41
    return-void
.end method

.method public final applyAllOverrides(Ljava/lang/String;Ljava/util/Set;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 139
    invoke-static {p1, v0}, Landroid/provider/DeviceConfig;->getProperties(Ljava/lang/String;[Ljava/lang/String;)Landroid/provider/DeviceConfig$Properties;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->applyOverrides(Landroid/provider/DeviceConfig$Properties;Ljava/util/Set;Ljava/util/Map;)V

    return-void
.end method

.method public final applyOverrides(Landroid/provider/DeviceConfig$Properties;Ljava/util/Set;Ljava/util/Map;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/provider/DeviceConfig$Properties;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 154
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    const-string/jumbo v1, "owned_change_ids"

    .line 155
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string/jumbo v1, "remove_overrides"

    .line 156
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 157
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 158
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 160
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_23
    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_99

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 162
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    .line 161
    invoke-interface {p3, v3, v4}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Ljava/util/Set;

    .line 164
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v4

    .line 165
    invoke-virtual {p0, v3}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    if-eqz v5, :cond_57

    .line 168
    iget-object v4, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mOverridesParser:Lcom/android/server/compat/overrides/AppCompatOverridesParser;

    const-string v6, ""

    .line 169
    invoke-virtual {p1, v3, v6}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 170
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    move-object v5, v6

    move-object v6, v3

    move-object v9, v10

    .line 168
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->parsePackageOverrides(Ljava/lang/String;Ljava/lang/String;JLjava/util/Set;)Ljava/util/Map;

    move-result-object v4

    .line 172
    :cond_57
    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_65

    .line 173
    new-instance v5, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {v5, v4}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    invoke-interface {v1, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_65
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 178
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6e
    :goto_6e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_8a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    .line 179
    invoke-interface {v4, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6e

    invoke-interface {v10, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6e

    .line 180
    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    .line 183
    :cond_8a
    invoke-interface {v5}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_23

    .line 184
    new-instance v4, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    invoke-direct {v4, v5}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;-><init>(Ljava/util/Set;)V

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    .line 189
    :cond_99
    invoke-virtual {p0, v1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->putAllPackageOverrides(Ljava/util/Map;)V

    .line 190
    invoke-virtual {p0, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->removeAllPackageOverrides(Ljava/util/Map;)V

    return-void
.end method

.method public finalize()V
    .registers 1

    .line 107
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->unregisterDeviceConfigListeners()V

    .line 108
    invoke-virtual {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->unregisterPackageReceiver()V

    return-void
.end method

.method public final getOverridesToRemove(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 254
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mOverridesParser:Lcom/android/server/compat/overrides/AppCompatOverridesParser;

    const-string/jumbo v0, "remove_overrides"

    const-string v1, ""

    .line 255
    invoke-static {p1, v0, v1}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/android/server/compat/overrides/AppCompatOverridesParser;->parseRemoveOverrides(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public final getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;
    .registers 3

    .line 329
    :try_start_0
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPackageManager:Landroid/content/pm/PackageManager;

    const/high16 v0, 0x400000

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 331
    iget-wide p0, p0, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_e} :catch_f

    return-object p0

    :catch_f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isInstalledForAnyUser(Ljava/lang/String;)Z
    .registers 2

    .line 323
    invoke-virtual {p0, p1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getVersionCodeOrNull(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public final putAllPackageOverrides(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/compat/CompatibilityOverrideConfig;",
            ">;)V"
        }
    .end annotation

    .line 270
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 273
    :cond_7
    new-instance v0, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;

    invoke-direct {v0, p1}, Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;-><init>(Ljava/util/Map;)V

    .line 276
    :try_start_c
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {p0, v0}, Lcom/android/internal/compat/IPlatformCompat;->putAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesByPackageConfig;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception p0

    const-string p1, "AppCompatOverridesService"

    const-string v0, "Failed to call IPlatformCompat#putAllOverridesOnReleaseBuilds"

    .line 278
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    return-void
.end method

.method public final putPackageOverrides(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Landroid/app/compat/PackageOverride;",
            ">;)V"
        }
    .end annotation

    .line 284
    invoke-interface {p2}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 287
    :cond_7
    new-instance v0, Lcom/android/internal/compat/CompatibilityOverrideConfig;

    invoke-direct {v0, p2}, Lcom/android/internal/compat/CompatibilityOverrideConfig;-><init>(Ljava/util/Map;)V

    .line 289
    :try_start_c
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {p0, v0, p1}, Lcom/android/internal/compat/IPlatformCompat;->putOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverrideConfig;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception p0

    const-string p1, "AppCompatOverridesService"

    const-string p2, "Failed to call IPlatformCompat#putOverridesOnReleaseBuilds"

    .line 291
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    return-void
.end method

.method public registerDeviceConfigListeners()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 113
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mDeviceConfigListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;

    .line 114
    invoke-static {v0}, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->-$$Nest$mregister(Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public registerPackageReceiver()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 126
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPackageReceiver:Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;

    invoke-static {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->-$$Nest$mregister(Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;)V

    return-void
.end method

.method public final removeAllPackageOverrides(Ljava/lang/String;)V
    .registers 5

    .line 221
    iget-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mSupportedNamespaces:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ""

    .line 222
    invoke-static {v1, p1, v2}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_6

    .line 228
    :cond_1f
    invoke-static {v1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->getOwnedChangeIds(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->removePackageOverrides(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_6

    :cond_27
    return-void
.end method

.method public final removeAllPackageOverrides(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;",
            ">;)V"
        }
    .end annotation

    .line 297
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 300
    :cond_7
    new-instance v0, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;

    invoke-direct {v0, p1}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;-><init>(Ljava/util/Map;)V

    .line 303
    :try_start_c
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {p0, v0}, Lcom/android/internal/compat/IPlatformCompat;->removeAllOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveByPackageConfig;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception p0

    const-string p1, "AppCompatOverridesService"

    const-string v0, "Failed to call IPlatformCompat#removeAllOverridesOnReleaseBuilds"

    .line 305
    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    return-void
.end method

.method public final removeOverrides(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 237
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 240
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 241
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    .line 242
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-direct {v3, v1}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;-><init>(Ljava/util/Set;)V

    .line 241
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 244
    :cond_2e
    invoke-virtual {p0, v0}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->removeAllPackageOverrides(Ljava/util/Map;)V

    return-void
.end method

.method public final removePackageOverrides(Ljava/lang/String;Ljava/util/Set;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 310
    invoke-interface {p2}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 313
    :cond_7
    new-instance v0, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;

    invoke-direct {v0, p2}, Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;-><init>(Ljava/util/Set;)V

    .line 316
    :try_start_c
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPlatformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {p0, v0, p1}, Lcom/android/internal/compat/IPlatformCompat;->removeOverridesOnReleaseBuilds(Lcom/android/internal/compat/CompatibilityOverridesToRemoveConfig;Ljava/lang/String;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_12

    goto :goto_1a

    :catch_12
    move-exception p0

    const-string p1, "AppCompatOverridesService"

    const-string p2, "Failed to call IPlatformCompat#removeOverridesOnReleaseBuilds"

    .line 318
    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1a
    return-void
.end method

.method public final unregisterDeviceConfigListeners()V
    .registers 2

    .line 119
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mDeviceConfigListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;

    .line 120
    invoke-static {v0}, Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;->-$$Nest$munregister(Lcom/android/server/compat/overrides/AppCompatOverridesService$DeviceConfigListener;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method public final unregisterPackageReceiver()V
    .registers 1

    .line 130
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService;->mPackageReceiver:Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;

    invoke-static {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;->-$$Nest$munregister(Lcom/android/server/compat/overrides/AppCompatOverridesService$PackageReceiver;)V

    return-void
.end method
