.class public Lcom/android/server/notification/ConditionProviders;
.super Lcom/android/server/notification/ManagedServices;
.source "ConditionProviders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/ConditionProviders$Callback;,
        Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    }
.end annotation


# static fields
.field public static final TAG_ENABLED_DND_APPS:Ljava/lang/String; = "dnd_apps"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field public mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

.field public final mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/notification/ConditionProviders$ConditionRecord;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemConditionProviderNames:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mSystemConditionProviders:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/notification/SystemConditionProviderService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V
    .registers 5

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    .line 55
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    .line 57
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    .line 63
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "system.condition.providers"

    const p3, 0x1070125

    invoke-static {p1, p2, p3}, Lcom/android/server/notification/PropConfig;->getStringArray(Landroid/content/Context;Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    const/4 p1, 0x0

    .line 66
    iput p1, p0, Lcom/android/server/notification/ManagedServices;->mApprovalLevel:I

    return-void
.end method

.method public static provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_a

    .line 445
    :cond_4
    iget-object p0, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    invoke-static {p0}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object p0

    :goto_a
    return-object p0
.end method

.method public static provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;
    .registers 1

    if-nez p0, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 449
    :cond_4
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast p0, Landroid/service/notification/IConditionProvider;

    :goto_8
    return-object p0
.end method

.method public static varargs safeSet([Ljava/lang/Object;)Landroid/util/ArraySet;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Landroid/util/ArraySet<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 416
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    if-eqz p0, :cond_19

    .line 417
    array-length v1, p0

    if-nez v1, :cond_b

    goto :goto_19

    .line 418
    :cond_b
    array-length v1, p0

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_19

    .line 420
    aget-object v3, p0, v2

    if-eqz v3, :cond_16

    .line 422
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_19
    :goto_19
    return-object v0
.end method


# virtual methods
.method public addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V
    .registers 5

    .line 78
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 79
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/server/notification/SystemConditionProviderService;->attachBase(Landroid/content/Context;)V

    .line 80
    invoke-virtual {p1}, Lcom/android/server/notification/SystemConditionProviderService;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    const/4 v1, 0x0

    const/16 v2, 0x3e8

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/android/server/notification/ManagedServices;->registerSystemService(Landroid/os/IInterface;Landroid/content/ComponentName;II)V

    return-void
.end method

.method public asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 172
    invoke-static {p1}, Landroid/service/notification/IConditionProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/IConditionProvider;

    move-result-object p0

    return-object p0
.end method

.method public checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .registers 3

    .line 273
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_3
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_9
    move-exception p0

    .line 275
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw p0
.end method

.method public checkType(Landroid/os/IInterface;)Z
    .registers 2

    .line 177
    instance-of p0, p1, Landroid/service/notification/IConditionProvider;

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V
    .registers 8

    .line 151
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    .line 152
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    :try_start_6
    const-string v1, "    mRecords("

    .line 153
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, "):"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 154
    :goto_1b
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_56

    .line 155
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    if-eqz p2, :cond_36

    .line 156
    iget-object v4, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->matches(Landroid/content/ComponentName;)Z

    move-result v4

    if-nez v4, :cond_36

    goto :goto_53

    :cond_36
    const-string v4, "      "

    .line 157
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 158
    iget-object v3, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-static {v3}, Lcom/android/server/notification/CountdownConditionProvider;->tryParseDescription(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_53

    const-string v4, "        ("

    .line 160
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, ")"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_53
    :goto_53
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 163
    :cond_56
    monitor-exit v0
    :try_end_57
    .catchall {:try_start_6 .. :try_end_57} :catchall_78

    const-string v0, "    mSystemConditionProviders: "

    .line 164
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 165
    :goto_61
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v1, v0, :cond_77

    .line 166
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/SystemConditionProviderService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/SystemConditionProviderService;->dump(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :cond_77
    return-void

    :catchall_78
    move-exception p0

    .line 163
    :try_start_79
    monitor-exit v0
    :try_end_7a
    .catchall {:try_start_79 .. :try_end_7a} :catchall_78

    throw p0
.end method

.method public ensureFilters(Landroid/content/pm/ServiceInfo;I)V
    .registers 3

    return-void
.end method

.method public ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V
    .registers 6

    .line 359
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 361
    :try_start_4
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object p1

    .line 362
    iget-object p2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez p2, :cond_12

    .line 364
    invoke-virtual {p0, p3}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p0

    iput-object p0, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 366
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_4 .. :try_end_16} :catchall_14

    throw p0
.end method

.method public findCondition(Landroid/content/ComponentName;Landroid/net/Uri;)Landroid/service/notification/Condition;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    if-nez p2, :cond_6

    goto :goto_17

    .line 351
    :cond_6
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 352
    :try_start_a
    invoke-virtual {p0, p2, p1, v2}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 353
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    :cond_12
    monitor-exit v1

    return-object v0

    :catchall_14
    move-exception p0

    .line 354
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_14

    throw p0

    :cond_17
    :goto_17
    return-object v0
.end method

.method public findConditionProvider(Landroid/content/ComponentName;)Landroid/service/notification/IConditionProvider;
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 341
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 342
    iget-object v2, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 343
    invoke-static {v1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object p0

    return-object p0

    :cond_25
    return-object v0
.end method

.method public getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .registers 2

    .line 137
    new-instance p0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    const-string v0, "condition provider"

    .line 138
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    const-string v0, "android.service.notification.ConditionProviderService"

    .line 139
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    const-string v0, "dnd_apps"

    .line 141
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    const-string v0, "enabled_notification_listeners"

    .line 142
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->secondarySettingName:Ljava/lang/String;

    const-string v0, "android.permission.BIND_CONDITION_PROVIDER_SERVICE"

    .line 143
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    const-string v0, "android.settings.ACTION_CONDITION_PROVIDER_SETTINGS"

    .line 144
    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    const v0, 0x10402e9

    .line 145
    iput v0, p0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    return-object p0
.end method

.method public final getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;
    .registers 9

    const/4 v0, 0x0

    if-eqz p1, :cond_38

    if-nez p2, :cond_6

    goto :goto_38

    .line 301
    :cond_6
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_d
    if-ge v2, v1, :cond_2b

    .line 303
    iget-object v3, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 304
    iget-object v4, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v4, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    iget-object v4, v3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, p2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_28

    return-object v3

    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_2b
    if-eqz p3, :cond_38

    .line 309
    new-instance p3, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    invoke-direct {p3, p1, p2, v0}, Lcom/android/server/notification/ConditionProviders$ConditionRecord;-><init>(Landroid/net/Uri;Landroid/content/ComponentName;Lcom/android/server/notification/ConditionProviders$ConditionRecord-IA;)V

    .line 310
    iget-object p0, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p3

    :cond_38
    :goto_38
    return-object v0
.end method

.method public getRequiredPermission()Ljava/lang/String;
    .registers 1

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemProviders()Ljava/lang/Iterable;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lcom/android/server/notification/SystemConditionProviderService;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    return-object p0
.end method

.method public isSystemProviderEnabled(Ljava/lang/String;)Z
    .registers 2

    .line 74
    iget-object p0, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviderNames:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isValidEntry(Ljava/lang/String;I)Z
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public loadDefaultsFromConfig()V
    .registers 4

    .line 220
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104031c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2a

    const-string v1, ":"

    .line 223
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 224
    :goto_16
    array-length v2, v0

    if-ge v1, v2, :cond_2a

    .line 225
    aget-object v2, v0, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_27

    .line 228
    :cond_22
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/android/server/notification/ManagedServices;->addDefaultComponentOrPackage(Ljava/lang/String;)V

    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_2a
    return-void
.end method

.method public notifyConditions(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V
    .registers 11

    .line 317
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v1, :cond_36

    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyConditions pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " info="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " conditions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_28

    const/4 v3, 0x0

    goto :goto_2c

    .line 319
    :cond_28
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_2c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_36
    invoke-virtual {p0, p1, p3}, Lcom/android/server/notification/ConditionProviders;->removeDuplicateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;

    move-result-object p1

    if-eqz p1, :cond_6a

    .line 321
    array-length p3, p1

    if-nez p3, :cond_40

    goto :goto_6a

    .line 322
    :cond_40
    array-length p3, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_43
    if-ge v2, p3, :cond_57

    .line 324
    aget-object v3, p1, v2

    .line 325
    iget-object v4, v3, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    iget-object v5, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    const/4 v6, 0x1

    invoke-virtual {p0, v4, v5, v6}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v4

    .line 326
    iput-object p2, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->info:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 327
    iput-object v3, v4, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->condition:Landroid/service/notification/Condition;

    add-int/lit8 v2, v2, 0x1

    goto :goto_43

    .line 329
    :cond_57
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_6c

    .line 330
    array-length p2, p1

    :goto_59
    if-ge v1, p2, :cond_69

    .line 332
    aget-object p3, p1, v1

    .line 333
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz v0, :cond_66

    .line 334
    iget-object v2, p3, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    invoke-interface {v0, v2, p3}, Lcom/android/server/notification/ConditionProviders$Callback;->onConditionChanged(Landroid/net/Uri;Landroid/service/notification/Condition;)V

    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_59

    :cond_69
    return-void

    .line 321
    :cond_6a
    :goto_6a
    :try_start_6a
    monitor-exit v0

    return-void

    :catchall_6c
    move-exception p0

    .line 329
    monitor-exit v0
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_6c

    throw p0
.end method

.method public onBootPhaseAppsCanStart()V
    .registers 3

    .line 182
    invoke-super {p0}, Lcom/android/server/notification/ManagedServices;->onBootPhaseAppsCanStart()V

    const/4 v0, 0x0

    .line 183
    :goto_4
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 184
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mSystemConditionProviders:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/SystemConditionProviderService;

    invoke-virtual {v1}, Lcom/android/server/notification/SystemConditionProviderService;->onBootComplete()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 186
    :cond_1a
    iget-object p0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz p0, :cond_21

    .line 187
    invoke-interface {p0}, Lcom/android/server/notification/ConditionProviders$Callback;->onBootComplete()V

    :cond_21
    return-void
.end method

.method public onPackagesChanged(Z[Ljava/lang/String;[I)V
    .registers 13

    if-eqz p1, :cond_33

    .line 246
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v0

    if-eqz p2, :cond_33

    .line 248
    array-length v1, p2

    if-lez v1, :cond_33

    .line 249
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v1, :cond_33

    aget-object v4, p2, v3

    .line 251
    :try_start_12
    invoke-interface {v0, v4}, Landroid/app/INotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    .line 252
    invoke-interface {v0, v4, v2}, Landroid/app/INotificationManager;->setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_18} :catch_19

    goto :goto_30

    :catch_19
    move-exception v5

    .line 254
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clean up rules for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_30
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 259
    :cond_33
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/notification/ManagedServices;->onPackagesChanged(Z[Ljava/lang/String;[I)V

    return-void
.end method

.method public onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 6

    .line 201
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    .line 203
    :try_start_4
    invoke-interface {v0}, Landroid/service/notification/IConditionProvider;->onConnected()V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_1f

    :catch_8
    move-exception v0

    .line 205
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t connect to service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 208
    :goto_1f
    iget-object p0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz p0, :cond_28

    .line 209
    iget-object p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-interface {p0, p1}, Lcom/android/server/notification/ConditionProviders$Callback;->onServiceAdded(Landroid/content/ComponentName;)V

    :cond_28
    return-void
.end method

.method public onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 236
    :cond_3
    iget-object v0, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_b
    if-ltz v0, :cond_28

    .line 237
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    .line 238
    iget-object v1, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    goto :goto_25

    .line 239
    :cond_20
    iget-object v1, p0, Lcom/android/server/notification/ConditionProviders;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_25
    add-int/lit8 v0, v0, -0x1

    goto :goto_b

    :cond_28
    return-void
.end method

.method public onUserSwitched(I)V
    .registers 2

    .line 193
    invoke-super {p0, p1}, Lcom/android/server/notification/ManagedServices;->onUserSwitched(I)V

    .line 194
    iget-object p0, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    if-eqz p0, :cond_a

    .line 195
    invoke-interface {p0}, Lcom/android/server/notification/ConditionProviders$Callback;->onUserSwitched()V

    :cond_a
    return-void
.end method

.method public final removeDuplicateConditions(Ljava/lang/String;[Landroid/service/notification/Condition;)[Landroid/service/notification/Condition;
    .registers 12

    const/4 v0, 0x0

    if-eqz p2, :cond_64

    .line 279
    array-length v1, p2

    if-nez v1, :cond_7

    goto :goto_64

    .line 280
    :cond_7
    array-length v1, p2

    .line 281
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2, v1}, Landroid/util/ArrayMap;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_f
    if-ge v4, v1, :cond_42

    .line 283
    aget-object v5, p2, v4

    iget-object v5, v5, Landroid/service/notification/Condition;->id:Landroid/net/Uri;

    .line 284
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 285
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring condition from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " for duplicate id: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3f

    .line 288
    :cond_3a
    aget-object v6, p2, v4

    invoke-virtual {v2, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3f
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 290
    :cond_42
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result p0

    if-nez p0, :cond_49

    return-object v0

    .line 291
    :cond_49
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result p0

    if-ne p0, v1, :cond_50

    return-object p2

    .line 292
    :cond_50
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result p0

    new-array p1, p0, [Landroid/service/notification/Condition;

    :goto_56
    if-ge v3, p0, :cond_63

    .line 294
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/service/notification/Condition;

    aput-object p2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_56

    :cond_63
    return-object p1

    :cond_64
    :goto_64
    return-object v0
.end method

.method public resetComponents(Ljava/lang/String;I)Landroid/util/ArrayMap;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Boolean;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ComponentName;",
            ">;>;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ConditionProviders;->resetPackage(Ljava/lang/String;I)Z

    .line 92
    new-instance p0, Landroid/util/ArrayMap;

    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 93
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    new-instance p2, Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public resetPackage(Ljava/lang/String;I)Z
    .registers 10

    .line 102
    invoke-super {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v0

    .line 103
    invoke-super {p0, p1}, Lcom/android/server/notification/ManagedServices;->isDefaultComponentOrPackage(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v0, :cond_3d

    if-eqz v1, :cond_3d

    .line 105
    invoke-virtual {p0, p1, p2, v2, v2}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    .line 107
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    monitor-enter v3

    .line 108
    :try_start_13
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArrayMap;

    if-eqz v4, :cond_38

    .line 110
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/ArraySet;

    if-eqz v4, :cond_38

    .line 112
    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 113
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    .line 114
    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 118
    :cond_38
    monitor-exit v3

    goto :goto_3d

    :catchall_3a
    move-exception p0

    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_13 .. :try_end_3c} :catchall_3a

    throw p0

    :cond_3d
    :goto_3d
    const/4 v3, 0x0

    if-eqz v0, :cond_45

    if-nez v1, :cond_45

    .line 122
    invoke-virtual {p0, p1, p2, v2, v3}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)V

    :cond_45
    if-nez v0, :cond_4a

    if-eqz v1, :cond_4a

    goto :goto_4b

    :cond_4a
    move v2, v3

    :goto_4b
    return v2
.end method

.method public setCallback(Lcom/android/server/notification/ConditionProviders$Callback;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/android/server/notification/ConditionProviders;->mCallback:Lcom/android/server/notification/ConditionProviders$Callback;

    return-void
.end method

.method public subscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;Z)Z
    .registers 7

    .line 371
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 372
    :try_start_4
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v2

    if-nez v2, :cond_2a

    .line 374
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to subscribe to "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    monitor-exit v0

    return v1

    .line 377
    :cond_2a
    iget-boolean p1, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    if-eqz p1, :cond_33

    if-eqz p3, :cond_33

    const/4 p0, 0x1

    .line 378
    monitor-exit v0

    return p0

    .line 380
    :cond_33
    invoke-virtual {p0, v2}, Lcom/android/server/notification/ConditionProviders;->subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 381
    iget-boolean p0, v2, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    monitor-exit v0

    return p0

    :catchall_3a
    move-exception p0

    .line 382
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_4 .. :try_end_3c} :catchall_3a

    throw p0
.end method

.method public final subscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .registers 7

    .line 398
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscribeLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_1b
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_65

    .line 403
    :try_start_22
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Subscribing to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iget-object v2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v0, v2}, Landroid/service/notification/IConditionProvider;->onSubscribe(Landroid/net/Uri;)V

    const/4 v2, 0x1

    .line 405
    iput-boolean v2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z
    :try_end_4c
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_4c} :catch_4d

    goto :goto_65

    :catch_4d
    move-exception v2

    .line 407
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error subscribing to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_66

    :cond_65
    :goto_65
    move-object v2, v1

    :goto_66
    if-eqz p1, :cond_6a

    .line 411
    iget-object v1, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    :cond_6a
    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceSubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    return-void
.end method

.method public unsubscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)V
    .registers 6

    .line 386
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mMutex:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 387
    :try_start_4
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/server/notification/ConditionProviders;->getRecordLocked(Landroid/net/Uri;Landroid/content/ComponentName;Z)Lcom/android/server/notification/ConditionProviders$ConditionRecord;

    move-result-object v1

    if-nez v1, :cond_2a

    .line 389
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to unsubscribe to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    monitor-exit v0

    return-void

    .line 392
    :cond_2a
    iget-boolean p1, v1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    if-nez p1, :cond_30

    monitor-exit v0

    return-void

    .line 393
    :cond_30
    invoke-virtual {p0, v1}, Lcom/android/server/notification/ConditionProviders;->unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V

    .line 394
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_4 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public final unsubscribeLocked(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)V
    .registers 7

    .line 429
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unsubscribeLocked "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_1b
    invoke-static {p1}, Lcom/android/server/notification/ConditionProviders;->provider(Lcom/android/server/notification/ConditionProviders$ConditionRecord;)Landroid/service/notification/IConditionProvider;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_44

    .line 434
    :try_start_22
    iget-object v2, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    invoke-interface {v0, v2}, Landroid/service/notification/IConditionProvider;->onUnsubscribe(Landroid/net/Uri;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_27} :catch_29

    move-object v2, v1

    goto :goto_40

    :catch_29
    move-exception v2

    .line 436
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error unsubscribing to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_40
    const/4 p0, 0x0

    .line 439
    iput-boolean p0, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->subscribed:Z

    goto :goto_45

    :cond_44
    move-object v2, v1

    :goto_45
    if-eqz p1, :cond_49

    .line 441
    iget-object v1, p1, Lcom/android/server/notification/ConditionProviders$ConditionRecord;->id:Landroid/net/Uri;

    :cond_49
    invoke-static {v1, v0, v2}, Lcom/android/server/notification/ZenLog;->traceUnsubscribe(Landroid/net/Uri;Landroid/service/notification/IConditionProvider;Landroid/os/RemoteException;)V

    return-void
.end method

.method public writeDefaults(Landroid/util/TypedXmlSerializer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, ":"

    .line 130
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    invoke-static {v1, p0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    const-string v2, "defaults"

    .line 131
    invoke-interface {p1, v1, v2, p0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 132
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method
