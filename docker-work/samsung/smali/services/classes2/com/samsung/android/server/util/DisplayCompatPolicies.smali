.class public Lcom/samsung/android/server/util/DisplayCompatPolicies;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "DisplayCompatPolicies.java"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/util/DisplayCompatPolicies$LazyHolder;,
        Lcom/samsung/android/server/util/DisplayCompatPolicies$DisplayCompatPolicy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 130
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->DISPLAY_COMPAT:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/server/util/DisplayCompatPolicies-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/samsung/android/server/util/DisplayCompatPolicies;-><init>()V

    return-void
.end method

.method public static getDisplayCompatPolicies()Lcom/samsung/android/server/util/DisplayCompatPolicies;
    .registers 1

    .line 77
    sget-object v0, Lcom/samsung/android/server/util/DisplayCompatPolicies$LazyHolder;->sDisplayCompatPolicies:Lcom/samsung/android/server/util/DisplayCompatPolicies;

    return-object v0
.end method

.method public static getSizeChangesSupported(I)I
    .registers 2

    .line 81
    invoke-static {p0}, Lcom/samsung/android/server/util/DisplayCompatPolicies;->isForcedResizeableByMetaData(I)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x2

    return p0

    .line 84
    :cond_8
    invoke-static {p0}, Lcom/samsung/android/server/util/DisplayCompatPolicies;->isForcedResizeable(I)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 p0, 0x3

    return p0

    .line 87
    :cond_10
    invoke-static {p0}, Lcom/samsung/android/server/util/DisplayCompatPolicies;->isForcedUnresizeable(I)Z

    move-result p0

    if-eqz p0, :cond_18

    const/4 p0, 0x1

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method

.method public static isForcedResizeable(I)Z
    .registers 3

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_b

    if-eq p0, v0, :cond_b

    const/4 v1, 0x6

    if-ne p0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_b
    return v0
.end method

.method public static isForcedResizeableByMetaData(I)Z
    .registers 2

    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public static isForcedUnresizeable(I)Z
    .registers 2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_9

    const/4 v0, 0x2

    if-ne p0, v0, :cond_7

    goto :goto_9

    :cond_7
    const/4 p0, 0x0

    goto :goto_a

    :cond_9
    :goto_9
    const/4 p0, 0x1

    :goto_a
    return p0
.end method

.method public static policyToString(I)Ljava/lang/String;
    .registers 1

    packed-switch p0, :pswitch_data_1e

    .line 125
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_8
    const-string p0, "FORCED_RESIZEABLE_BY_MULTI_WINDOW_ALLOW_LIST"

    return-object p0

    :pswitch_b
    const-string p0, "EXCLUDE_BY_META_DATA"

    return-object p0

    :pswitch_e
    const-string p0, "FORCED_UNRESIZEABLE_BY_BLOCK_LIST"

    return-object p0

    :pswitch_11
    const-string p0, "FORCED_RESIZEABLE_BY_ALLOW_LIST"

    return-object p0

    :pswitch_14
    const-string p0, "FORCED_UNRESIZEABLE_BY_USER_SETTING"

    return-object p0

    :pswitch_17
    const-string p0, "FORCED_RESIZEABLE_BY_USER_SETTING"

    return-object p0

    :pswitch_1a
    const-string p0, "NONE"

    return-object p0

    nop

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
    .end packed-switch
.end method


# virtual methods
.method public getPolicy(Ljava/lang/String;)I
    .registers 2

    .line 134
    monitor-enter p0

    .line 135
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_e

    .line 136
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    monitor-exit p0

    return p1

    :catchall_11
    move-exception p1

    .line 137
    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_11

    throw p1
.end method

.method public onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .registers 7

    .line 142
    monitor-enter p0

    .line 143
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 144
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 145
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "w"

    .line 147
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    const/4 v0, 0x3

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_36
    const-string v2, "b"

    .line 151
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_47

    const/4 v0, 0x4

    .line 152
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_47
    const-string v2, "PackageFeature"

    .line 155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UnknownDisplayCompatPolicy: packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 158
    :cond_66
    monitor-exit p0

    return-void

    :catchall_68
    move-exception p1

    monitor-exit p0
    :try_end_6a
    .catchall {:try_start_1 .. :try_end_6a} :catchall_68

    throw p1
.end method
