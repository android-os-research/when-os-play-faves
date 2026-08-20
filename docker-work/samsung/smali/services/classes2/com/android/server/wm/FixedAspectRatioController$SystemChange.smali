.class Lcom/android/server/wm/FixedAspectRatioController$SystemChange;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "FixedAspectRatioController.java"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FixedAspectRatioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemChange"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        ">;",
        "Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;"
    }
.end annotation


# static fields
.field public static final DEFAULT_RATIO:F


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 138
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_TABLET_MIN_ASPECT_RATIO_MODE:Z

    if-eqz v0, :cond_8

    const v0, 0x400aaaab

    goto :goto_a

    :cond_8
    const/high16 v0, -0x40800000    # -1.0f

    .line 139
    :goto_a
    sput v0, Lcom/android/server/wm/FixedAspectRatioController$SystemChange;->DEFAULT_RATIO:F

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 141
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 142
    sget-object v0, Lcom/samsung/android/server/packagefeature/PackageFeature;->FIXED_ASPECT_RATIO:Lcom/samsung/android/server/packagefeature/PackageFeature;

    invoke-virtual {v0, p0}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/FixedAspectRatioController$SystemChange-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/wm/FixedAspectRatioController$SystemChange;-><init>()V

    return-void
.end method


# virtual methods
.method public getAspectRatio(Ljava/lang/String;)F
    .registers 2

    .line 146
    monitor-enter p0

    .line 147
    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    if-eqz p1, :cond_e

    .line 148
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_10

    :cond_e
    const/high16 p1, -0x40800000    # -1.0f

    :goto_10
    monitor-exit p0

    return p1

    :catchall_12
    move-exception p1

    .line 149
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_12

    throw p1
.end method

.method public onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .registers 8

    .line 154
    monitor-enter p0

    .line 155
    :try_start_1
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 156
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 157
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 158
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 159
    sget-object v2, Lcom/samsung/android/server/packagefeature/PackageFeatureData;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_36

    .line 160
    sget v0, Lcom/android/server/wm/FixedAspectRatioController$SystemChange;->DEFAULT_RATIO:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_35
    .catchall {:try_start_1 .. :try_end_35} :catchall_7e

    goto :goto_c

    :cond_36
    :try_start_36
    const-string v2, ":"

    .line 164
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 165
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x1

    .line 166
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    div-float/2addr v3, v2

    .line 167
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_52} :catch_53
    .catchall {:try_start_36 .. :try_end_52} :catchall_7e

    goto :goto_c

    :catch_53
    move-exception v2

    :try_start_54
    const-string v3, "PackageSettingsManager"

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fail to fixed aspect ratio, packageName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", value="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    sget v0, Lcom/android/server/wm/FixedAspectRatioController$SystemChange;->DEFAULT_RATIO:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    .line 174
    :cond_7c
    monitor-exit p0

    return-void

    :catchall_7e
    move-exception p1

    monitor-exit p0
    :try_end_80
    .catchall {:try_start_54 .. :try_end_80} :catchall_7e

    throw p1
.end method
