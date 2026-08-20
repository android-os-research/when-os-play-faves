.class public Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;
.super Ljava/lang/Object;
.source "EdgeLightingPolicyRepository.java"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "EdgeLightingPolicyRepository"


# instance fields
.field public mRepository:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/edge/EdgeLightingPolicyInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 20
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v0

    .line 35
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    .line 36
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "-EdgeLightingPolicyInfo("

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ") start"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter p1

    .line 60
    :try_start_1c
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 61
    :goto_26
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_51

    .line 62
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 63
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    invoke-virtual {p3}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    :cond_51
    const-string p0, ""

    .line 65
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    monitor-exit p1

    return-void

    :catchall_58
    move-exception p0

    monitor-exit p1
    :try_end_5a
    .catchall {:try_start_1c .. :try_end_5a} :catchall_58

    throw p0
.end method

.method public getPolicyInfoWithComponentName(Landroid/content/ComponentName;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v0

    .line 47
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    monitor-exit v0

    return-object p0

    :catchall_11
    move-exception p0

    .line 48
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public getPolicyInfoWithPackageName(Ljava/lang/String;)Lcom/samsung/android/edge/EdgeLightingPolicyInfo;
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v0

    .line 41
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;

    monitor-exit v0

    return-object p0

    :catchall_d
    move-exception p0

    .line 42
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_d

    throw p0
.end method

.method public size()I
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v0

    .line 53
    :try_start_3
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_b
    move-exception p0

    .line 54
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_b

    throw p0
.end method

.method public updatePolicy(Lcom/samsung/android/edge/EdgeLightingPolicyInfo;)V
    .registers 5

    .line 25
    sget-boolean v0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->DEBUG:Z

    if-eqz v0, :cond_1f

    const-string v0, "EdgeLightingPolicyRepository"

    .line 26
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePolicy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    :cond_1f
    iget-object v0, p0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    monitor-enter v0

    .line 29
    :try_start_22
    iget-object p0, p0, Lcom/android/server/notification/edgelighting/policy/EdgeLightingPolicyRepository;->mRepository:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/samsung/android/edge/EdgeLightingPolicyInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    monitor-exit v0

    return-void

    :catchall_2b
    move-exception p0

    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_22 .. :try_end_2d} :catchall_2b

    throw p0
.end method
