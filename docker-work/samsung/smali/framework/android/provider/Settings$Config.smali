.class public final Landroid/provider/Settings$Config;
.super Landroid/provider/Settings$NameValueTable;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/Settings$Config$SyncDisabledMode;
    }
.end annotation


# static fields
.field public static final blacklist SYNC_DISABLED_MODE_NONE:I = 0x0

.field public static final blacklist SYNC_DISABLED_MODE_PERSISTENT:I = 0x1

.field public static final blacklist SYNC_DISABLED_MODE_UNTIL_REBOOT:I = 0x2

.field private static final blacklist sNameValueCache:Landroid/provider/Settings$NameValueCache;

.field private static final blacklist sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 11

    .line 23789
    new-instance v7, Landroid/provider/Settings$ContentProviderHolder;

    sget-object v0, Landroid/provider/DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v7, v0}, Landroid/provider/Settings$ContentProviderHolder;-><init>(Landroid/net/Uri;)V

    sput-object v7, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    .line 23793
    new-instance v10, Landroid/provider/Settings$NameValueCache;

    sget-object v1, Landroid/provider/DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    const-class v8, Landroid/provider/Settings$Config;

    const-string v2, "GET_config"

    const-string v3, "PUT_config"

    const-string v4, "DELETE_config"

    const-string v5, "LIST_config"

    const-string v6, "SET_ALL_config"

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/provider/Settings$NameValueCache;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/provider/Settings$ContentProviderHolder;Ljava/lang/Class;Landroid/provider/Settings$NameValueCache-IA;)V

    sput-object v10, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 23755
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static blacklist clearProviderForTest()V
    .registers 1

    .line 24034
    sget-object v0, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v0}, Landroid/provider/Settings$ContentProviderHolder;->clearProviderForTest()V

    .line 24035
    sget-object v0, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->clearGenerationTrackerForTest()V

    .line 24036
    return-void
.end method

.method private static blacklist createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "namespace"    # Ljava/lang/String;
    .param p1, "name"    # Ljava/lang/String;

    .line 24039
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24040
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24041
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Landroid/provider/Settings$Config;->createPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist createPrefix(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p0, "namespace"    # Ljava/lang/String;

    .line 24045
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24046
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static blacklist deleteString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 23922
    sget-object v0, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 23923
    invoke-static {p1, p2}, Landroid/provider/Settings$Config;->createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    .line 23922
    invoke-virtual {v0, p0, v1, v2}, Landroid/provider/Settings$NameValueCache;->deleteStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method static blacklist getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .line 23813
    sget-object v0, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v1

    invoke-virtual {v0, p0, p1, v1}, Landroid/provider/Settings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getStrings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
    .registers 12
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 23830
    .local p2, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 23831
    .local v0, "compositeNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 23832
    .local v2, "name":Ljava/lang/String;
    invoke-static {p1, v2}, Landroid/provider/Settings$Config;->createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23833
    .end local v2    # "name":Ljava/lang/String;
    goto :goto_d

    .line 23835
    :cond_21
    invoke-static {p1}, Landroid/provider/Settings$Config;->createPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 23836
    .local v1, "prefix":Ljava/lang/String;
    sget-object v2, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v2, p0, v1, v0}, Landroid/provider/Settings$NameValueCache;->getStringsForPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/List;)Landroid/util/ArrayMap;

    move-result-object v2

    .line 23838
    .local v2, "rawKeyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    .line 23839
    .local v3, "size":I
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    .line 23840
    .local v4, "substringLength":I
    new-instance v5, Landroid/util/ArrayMap;

    invoke-direct {v5, v3}, Landroid/util/ArrayMap;-><init>(I)V

    .line 23841
    .local v5, "keyValues":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_39
    if-ge v6, v3, :cond_51

    .line 23842
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 23843
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 23842
    invoke-virtual {v5, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23841
    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    .line 23845
    .end local v6    # "i":I
    :cond_51
    return-object v5
.end method

.method static blacklist getSyncDisabledMode(Landroid/content/ContentResolver;)I
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 23989
    :try_start_0
    sget-object v5, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 23990
    .local v5, "args":Landroid/os/Bundle;
    sget-object v1, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v1, p0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v0

    .line 23991
    .local v0, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    invoke-static {v1}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v1

    .line 23992
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GET_SYNC_DISABLED_MODE_config"

    const/4 v6, 0x0

    .line 23991
    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v6

    invoke-interface/range {v0 .. v5}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 23995
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "config_get_sync_disabled_mode_return"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_25} :catch_26

    return v2

    .line 23996
    .end local v0    # "cp":Landroid/content/IContentProvider;
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v5    # "args":Landroid/os/Bundle;
    :catch_26
    move-exception v0

    .line 23997
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t query sync disabled mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23999
    .end local v0    # "e":Landroid/os/RemoteException;
    const/4 v0, -0x1

    return v0
.end method

.method static blacklist putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 13
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "namespace"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .param p4, "makeDefault"    # Z

    .line 23870
    sget-object v0, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    invoke-static {p1, p2}, Landroid/provider/Settings$Config;->createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23871
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v6

    .line 23870
    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v7}, Landroid/provider/Settings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIZ)Z

    move-result v0

    return v0
.end method

.method public static blacklist registerMonitorCallback(Landroid/content/ContentResolver;Landroid/os/RemoteCallback;)V
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "callback"    # Landroid/os/RemoteCallback;

    .line 24013
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v0

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Config;->registerMonitorCallbackAsUser(Landroid/content/ContentResolver;ILandroid/os/RemoteCallback;)V

    .line 24014
    return-void
.end method

.method private static blacklist registerMonitorCallbackAsUser(Landroid/content/ContentResolver;ILandroid/os/RemoteCallback;)V
    .registers 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "userHandle"    # I
    .param p2, "callback"    # Landroid/os/RemoteCallback;

    .line 24020
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 24021
    .local v0, "arg":Landroid/os/Bundle;
    const-string v1, "_user"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 24022
    const-string v1, "_monitor_callback_key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 24023
    sget-object v2, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v2, p0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 24024
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-static {v2}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v2

    .line 24025
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, "REGISTER_MONITOR_CALLBACK_config"

    const/4 v6, 0x0

    .line 24024
    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2e

    .line 24029
    nop

    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    goto :goto_36

    .line 24027
    :catch_2e
    move-exception v0

    .line 24028
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Settings"

    const-string v2, "Can\'t register config monitor callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24030
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_36
    return-void
.end method

.method static blacklist resetToDefaults(Landroid/content/ContentResolver;ILjava/lang/String;)V
    .registers 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "resetMode"    # I
    .param p2, "namespace"    # Ljava/lang/String;

    .line 23944
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23945
    .local v0, "arg":Landroid/os/Bundle;
    const-string v1, "_user"

    invoke-virtual {p0}, Landroid/content/ContentResolver;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23946
    const-string v1, "_reset_mode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23947
    if-eqz p2, :cond_1e

    .line 23948
    const-string v1, "_prefix"

    invoke-static {p2}, Landroid/provider/Settings$Config;->createPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23950
    :cond_1e
    sget-object v2, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v2, p0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 23951
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-static {v2}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v2

    .line 23952
    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RESET_config"

    const/4 v6, 0x0

    .line 23951
    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3b} :catch_3d

    .line 23955
    nop

    .end local v0    # "arg":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    goto :goto_58

    .line 23953
    :catch_3d
    move-exception v0

    .line 23954
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t reset to defaults for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23956
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_58
    return-void
.end method

.method public static blacklist setStrings(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/Map;)Z
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "namespace"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/DeviceConfig$BadConfigException;
        }
    .end annotation

    .line 23890
    .local p2, "keyValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 23891
    .local v0, "compositeKeyValueMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 23892
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 23893
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/provider/Settings$Config;->createCompositeName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 23892
    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23894
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_15

    .line 23895
    :cond_36
    sget-object v1, Landroid/provider/Settings$Config;->sNameValueCache:Landroid/provider/Settings$NameValueCache;

    .line 23896
    invoke-static {p1}, Landroid/provider/Settings$Config;->createPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 23895
    invoke-virtual {v1, p0, v2, v0}, Landroid/provider/Settings$NameValueCache;->setStringsForPrefix(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v1

    .line 23897
    .local v1, "result":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_44

    .line 23898
    return v2

    .line 23899
    :cond_44
    const/4 v2, 0x2

    if-ne v1, v2, :cond_49

    .line 23900
    const/4 v2, 0x0

    return v2

    .line 23903
    :cond_49
    new-instance v2, Landroid/provider/DeviceConfig$BadConfigException;

    invoke-direct {v2}, Landroid/provider/DeviceConfig$BadConfigException;-><init>()V

    throw v2
.end method

.method static blacklist setSyncDisabledMode(Landroid/content/ContentResolver;I)V
    .registers 9
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "disableSyncMode"    # I

    .line 23969
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 23970
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "_disabled_mode"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 23971
    sget-object v2, Landroid/provider/Settings$Config;->sProviderHolder:Landroid/provider/Settings$ContentProviderHolder;

    invoke-virtual {v2, p0}, Landroid/provider/Settings$ContentProviderHolder;->getProvider(Landroid/content/ContentResolver;)Landroid/content/IContentProvider;

    move-result-object v1

    .line 23972
    .local v1, "cp":Landroid/content/IContentProvider;
    invoke-virtual {p0}, Landroid/content/ContentResolver;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    invoke-static {v2}, Landroid/provider/Settings$ContentProviderHolder;->-$$Nest$fgetmUri(Landroid/provider/Settings$ContentProviderHolder;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    const-string v5, "SET_SYNC_DISABLED_MODE_config"

    const/4 v6, 0x0

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Landroid/content/IContentProvider;->call(Landroid/content/AttributionSource;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_27} :catch_29

    .line 23976
    nop

    .end local v0    # "args":Landroid/os/Bundle;
    .end local v1    # "cp":Landroid/content/IContentProvider;
    goto :goto_44

    .line 23974
    :catch_29
    move-exception v0

    .line 23975
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set sync disabled mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/provider/DeviceConfig;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Settings"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23977
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_44
    return-void
.end method
