.class public final Lcom/android/server/LocalServices;
.super Ljava/lang/Object;
.source "LocalServices.java"


# static fields
.field private static final blacklist sLocalServiceObjects:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 35
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addService(Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 55
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "service":Ljava/lang/Object;, "TT;"
    sget-object v0, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 56
    :try_start_3
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    .line 59
    invoke-virtual {v0, p0, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 57
    :cond_e
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Overriding service registration"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .end local p1    # "service":Ljava/lang/Object;, "TT;"
    throw v1

    .line 60
    .restart local p0    # "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .restart local p1    # "service":Ljava/lang/Object;, "TT;"
    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method public static blacklist getService(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 46
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 47
    :try_start_3
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 48
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_9

    throw v1
.end method

.method public static blacklist removeServiceForTest(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 68
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lcom/android/server/LocalServices;->sLocalServiceObjects:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 69
    :try_start_3
    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    monitor-exit v0

    .line 71
    return-void

    .line 70
    :catchall_8
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v1
.end method
