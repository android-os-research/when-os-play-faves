.class public Lcom/samsung/android/server/packagefeature/util/PackageSpecialManagementList;
.super Ljava/util/ArrayList;
.source "PackageSpecialManagementList.java"

# interfaces
.implements Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;",
        "Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeature;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {p1, p0}, Lcom/samsung/android/server/packagefeature/PackageFeature;->registerCallback(Lcom/samsung/android/server/packagefeature/PackageFeatureCallback;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 44
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_e

    .line 45
    monitor-enter p0

    .line 46
    :try_start_5
    invoke-super {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_b
    move-exception p1

    .line 47
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_b

    throw p1

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 61
    monitor-enter p0

    .line 62
    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 63
    monitor-exit p0

    return-void

    .line 65
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " size="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    sget-boolean p2, Lcom/samsung/android/rune/CoreRune;->SAFE_DEBUG:Z

    if-eqz p2, :cond_69

    .line 68
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_40
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_69

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_40

    .line 72
    :cond_69
    monitor-exit p0

    return-void

    :catchall_6b
    move-exception p1

    monitor-exit p0
    :try_end_6d
    .catchall {:try_start_1 .. :try_end_6d} :catchall_6b

    throw p1
.end method

.method public onPackageFeatureDataChanged(Lcom/samsung/android/server/packagefeature/PackageFeatureData;)V
    .registers 2

    .line 54
    monitor-enter p0

    .line 55
    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 56
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 57
    monitor-exit p0

    return-void

    :catchall_d
    move-exception p1

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_d

    throw p1
.end method
