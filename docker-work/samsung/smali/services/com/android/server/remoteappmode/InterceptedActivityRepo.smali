.class public Lcom/android/server/remoteappmode/InterceptedActivityRepo;
.super Ljava/lang/Object;
.source "InterceptedActivityRepo.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "[RAMS] InterceptedActivityRepo"

.field public static final maxSize:I = 0xa


# instance fields
.field public mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/remoteappmode/InterceptedActivityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mLock:Ljava/lang/Object;

    .line 18
    new-instance v0, Lcom/android/server/remoteappmode/InterceptedActivityRepo$1;

    invoke-direct {v0, p0}, Lcom/android/server/remoteappmode/InterceptedActivityRepo$1;-><init>(Lcom/android/server/remoteappmode/InterceptedActivityRepo;)V

    iput-object v0, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_3
    iget-object p0, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->clear()V

    .line 66
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p0

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p0
.end method

.method public get(Landroid/content/Intent;)Lcom/android/server/remoteappmode/InterceptedActivityInfo;
    .registers 5

    .line 39
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    .line 42
    iget-object v0, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 43
    :try_start_b
    iget-object v1, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 44
    iget-object p0, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/remoteappmode/InterceptedActivityInfo;

    goto :goto_25

    :cond_24
    const/4 p0, 0x0

    .line 46
    :goto_25
    monitor-exit v0

    return-object p0

    :catchall_27
    move-exception p0

    monitor-exit v0
    :try_end_29
    .catchall {:try_start_b .. :try_end_29} :catchall_27

    throw p0
.end method

.method public put(Landroid/content/Intent;Lcom/android/server/remoteappmode/InterceptedActivityInfo;)V
    .registers 7

    .line 27
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "[RAMS] InterceptedActivityRepo"

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mInterceptedActivityInfoMap.put - hashcode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object p1, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 32
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "[RAMS] InterceptedActivityRepo"

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mInterceptedActivityInfoMap size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    monitor-exit p1

    return-void

    :catchall_56
    move-exception p0

    monitor-exit p1
    :try_end_58
    .catchall {:try_start_2e .. :try_end_58} :catchall_56

    throw p0
.end method

.method public remove(Landroid/content/Intent;)V
    .registers 6

    .line 52
    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "[RAMS] InterceptedActivityRepo"

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mInterceptedActivityInfoMap.remove - hashcode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", intent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p1, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 57
    :try_start_2e
    iget-object v1, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "[RAMS] InterceptedActivityRepo"

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mInterceptedActivityInfoMap size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/remoteappmode/InterceptedActivityRepo;->mInterceptedActivityInfoMap:Ljava/util/LinkedHashMap;

    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/remoteappmode/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    monitor-exit p1

    return-void

    :catchall_56
    move-exception p0

    monitor-exit p1
    :try_end_58
    .catchall {:try_start_2e .. :try_end_58} :catchall_56

    throw p0
.end method
