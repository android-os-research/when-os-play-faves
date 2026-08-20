.class public Lcom/android/server/SystemConfigService$1;
.super Landroid/os/ISystemConfig$Stub;
.source "SystemConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/SystemConfigService;


# direct methods
.method public static synthetic $r8$lambda$-cZ8QlQqejR442wItU3mfLow1cM(Ljava/util/Map$Entry;)Ljava/util/List;
    .registers 1

    invoke-static {p0}, Lcom/android/server/SystemConfigService$1;->lambda$getDisabledUntilUsedPreinstalledCarrierAssociatedApps$1(Ljava/util/Map$Entry;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$_Qae-FmJJofks6U8k-ivdhANRFo(Landroid/os/CarrierAssociatedAppEntry;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/server/SystemConfigService$1;->lambda$getDisabledUntilUsedPreinstalledCarrierAssociatedApps$0(Landroid/os/CarrierAssociatedAppEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/SystemConfigService;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    invoke-direct {p0}, Landroid/os/ISystemConfig$Stub;-><init>()V

    return-void
.end method

.method public static synthetic lambda$getDisabledUntilUsedPreinstalledCarrierAssociatedApps$0(Landroid/os/CarrierAssociatedAppEntry;)Ljava/lang/String;
    .registers 1

    .line 61
    iget-object p0, p0, Landroid/os/CarrierAssociatedAppEntry;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic lambda$getDisabledUntilUsedPreinstalledCarrierAssociatedApps$1(Ljava/util/Map$Entry;)Ljava/util/List;
    .registers 2

    .line 61
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 62
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object p0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    invoke-static {p0}, Lcom/android/server/SystemConfigService;->-$$Nest$fgetmContext(Lcom/android/server/SystemConfigService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.READ_CARRIER_APP_INFO"

    const-string v1, "getDisabledUntilUsedPreInstalledCarrierApps requires READ_CARRIER_APP_INFO"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance p0, Ljava/util/ArrayList;

    .line 49
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierApps()Landroid/util/ArraySet;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p0
.end method

.method public getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;
    .registers 3

    .line 67
    iget-object p0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    invoke-static {p0}, Lcom/android/server/SystemConfigService;->-$$Nest$fgetmContext(Lcom/android/server/SystemConfigService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.READ_CARRIER_APP_INFO"

    const-string v1, "getDisabledUntilUsedPreInstalledCarrierAssociatedAppEntries requires READ_CARRIER_APP_INFO"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    .line 71
    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Ljava/util/Map;
    .registers 3

    .line 54
    iget-object p0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    invoke-static {p0}, Lcom/android/server/SystemConfigService;->-$$Nest$fgetmContext(Lcom/android/server/SystemConfigService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.READ_CARRIER_APP_INFO"

    const-string v1, "getDisabledUntilUsedPreInstalledCarrierAssociatedApps requires READ_CARRIER_APP_INFO"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda1;-><init>()V

    new-instance v1, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/SystemConfigService$1$$ExternalSyntheticLambda2;-><init>()V

    .line 59
    invoke-static {v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    return-object p0
.end method

.method public getEnabledComponentOverrides(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .line 92
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object p0

    .line 93
    invoke-virtual {p0, p1}, Lcom/android/server/SystemConfig;->getComponentsEnabledStates(Ljava/lang/String;)Landroid/util/ArrayMap;

    move-result-object p0

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3e

    .line 96
    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_17
    :goto_17
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 97
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 98
    new-instance v2, Landroid/content/ComponentName;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_3e
    return-object v0
.end method

.method public getSystemPermissionUids(Ljava/lang/String;)[I
    .registers 5

    .line 76
    iget-object p0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    invoke-static {p0}, Lcom/android/server/SystemConfigService;->-$$Nest$fgetmContext(Lcom/android/server/SystemConfigService;)Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.GET_RUNTIME_PERMISSIONS"

    const-string/jumbo v1, "getSystemPermissionUids requires GET_RUNTIME_PERMISSIONS"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getSystemPermissions()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x0

    .line 81
    :goto_1c
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3e

    .line 82
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    if-eqz v2, :cond_3b

    .line 83
    invoke-virtual {v2, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 84
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3b
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 87
    :cond_3e
    invoke-static {p0}, Lcom/android/internal/util/ArrayUtils;->convertToIntArray(Ljava/util/List;)[I

    move-result-object p0

    return-object p0
.end method
