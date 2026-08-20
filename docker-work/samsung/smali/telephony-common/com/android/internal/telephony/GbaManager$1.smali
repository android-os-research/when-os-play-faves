.class Lcom/android/internal/telephony/GbaManager$1;
.super Landroid/telephony/IBootstrapAuthenticationCallback$Stub;
.source "GbaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/GbaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/GbaManager;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/GbaManager;)V
    .registers 2

    .line 263
    iput-object p1, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-direct {p0}, Landroid/telephony/IBootstrapAuthenticationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onAuthenticationFailure(II)V
    .registers 6

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAuthenticationFailure: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 290
    invoke-static {v0, v1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {v0}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/GbaManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 295
    :try_start_29
    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {v1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/GbaManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/IBootstrapAuthenticationCallback;

    .line 296
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_8a

    if-eqz v1, :cond_89

    .line 299
    :try_start_38
    invoke-interface {v1, p1, p2}, Landroid/telephony/IBootstrapAuthenticationCallback;->onAuthenticationFailure(II)V

    .line 300
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {v0}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmRcsStats(Lcom/android/internal/telephony/GbaManager;)Lcom/android/internal/telephony/metrics/RcsStats;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {v1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/GbaManager;)I

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/android/internal/telephony/metrics/RcsStats;->onGbaFailureEvent(II)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_4a} :catch_4b

    goto :goto_62

    :catch_4b
    move-exception p2

    .line 302
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V

    .line 304
    :goto_62
    iget-object p2, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p2}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/GbaManager;)Landroid/util/SparseArray;

    move-result-object p2

    monitor-enter p2

    .line 305
    :try_start_69
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {v0}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/GbaManager;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 306
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/GbaManager;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_84

    .line 307
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mreleaseServiceAsNeeded(Lcom/android/internal/telephony/GbaManager;I)V

    .line 309
    :cond_84
    monitor-exit p2

    goto :goto_89

    :catchall_86
    move-exception p0

    monitor-exit p2
    :try_end_88
    .catchall {:try_start_69 .. :try_end_88} :catchall_86

    throw p0

    :cond_89
    :goto_89
    return-void

    :catchall_8a
    move-exception p0

    .line 296
    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw p0
.end method

.method public blacklist onKeysAvailable(I[BLjava/lang/String;)V
    .registers 7

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeysAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mlogv(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {v0}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/GbaManager;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 270
    :try_start_29
    iget-object v1, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {v1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/GbaManager;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/IBootstrapAuthenticationCallback;

    .line 271
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_8a

    if-eqz v1, :cond_89

    .line 274
    :try_start_38
    invoke-interface {v1, p1, p2, p3}, Landroid/telephony/IBootstrapAuthenticationCallback;->onKeysAvailable(I[BLjava/lang/String;)V

    .line 275
    iget-object p2, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p2}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmRcsStats(Lcom/android/internal/telephony/GbaManager;)Lcom/android/internal/telephony/metrics/RcsStats;

    move-result-object p2

    iget-object p3, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p3}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmSubId(Lcom/android/internal/telephony/GbaManager;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/android/internal/telephony/metrics/RcsStats;->onGbaSuccessEvent(I)V
    :try_end_4a
    .catch Landroid/os/RemoteException; {:try_start_38 .. :try_end_4a} :catch_4b

    goto :goto_62

    :catch_4b
    move-exception p2

    .line 277
    iget-object p3, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RemoteException "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mlogd(Lcom/android/internal/telephony/GbaManager;Ljava/lang/String;)V

    .line 279
    :goto_62
    iget-object p2, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p2}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/GbaManager;)Landroid/util/SparseArray;

    move-result-object p2

    monitor-enter p2

    .line 280
    :try_start_69
    iget-object p3, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p3}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/GbaManager;)Landroid/util/SparseArray;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 281
    iget-object p1, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    invoke-static {p1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$fgetmCallbacks(Lcom/android/internal/telephony/GbaManager;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-nez p1, :cond_84

    .line 282
    iget-object p0, p0, Lcom/android/internal/telephony/GbaManager$1;->this$0:Lcom/android/internal/telephony/GbaManager;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/GbaManager;->-$$Nest$mreleaseServiceAsNeeded(Lcom/android/internal/telephony/GbaManager;I)V

    .line 284
    :cond_84
    monitor-exit p2

    goto :goto_89

    :catchall_86
    move-exception p0

    monitor-exit p2
    :try_end_88
    .catchall {:try_start_69 .. :try_end_88} :catchall_86

    throw p0

    :cond_89
    :goto_89
    return-void

    :catchall_8a
    move-exception p0

    .line 271
    :try_start_8b
    monitor-exit v0
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw p0
.end method
