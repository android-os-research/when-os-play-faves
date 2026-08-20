.class public Landroid/database/ContentObservable;
.super Landroid/database/Observable;
.source "ContentObservable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/database/Observable<",
        "Landroid/database/ContentObserver;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Landroid/database/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist dispatchChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 50
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/database/ContentObservable;->dispatchChange(ZLandroid/net/Uri;)V

    .line 51
    return-void
.end method

.method public whitelist dispatchChange(ZLandroid/net/Uri;)V
    .registers 7
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 67
    iget-object v0, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-object v1, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_21

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/ContentObserver;

    .line 69
    .local v2, "observer":Landroid/database/ContentObserver;
    if-eqz p1, :cond_1d

    invoke-virtual {v2}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 70
    :cond_1d
    invoke-virtual {v2, p1, p2}, Landroid/database/ContentObserver;->dispatchChange(ZLandroid/net/Uri;)V

    .line 72
    .end local v2    # "observer":Landroid/database/ContentObserver;
    :cond_20
    goto :goto_9

    .line 73
    :cond_21
    monitor-exit v0

    .line 74
    return-void

    .line 73
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public whitelist notifyChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    iget-object v0, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    monitor-enter v0

    .line 86
    :try_start_3
    iget-object v1, p0, Landroid/database/ContentObservable;->mObservers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/ContentObserver;

    .line 87
    .local v2, "observer":Landroid/database/ContentObserver;
    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 88
    .end local v2    # "observer":Landroid/database/ContentObserver;
    goto :goto_9

    .line 89
    :cond_1a
    monitor-exit v0

    .line 90
    return-void

    .line 89
    :catchall_1c
    move-exception v1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public whitelist registerObserver(Landroid/database/ContentObserver;)V
    .registers 2
    .param p1, "observer"    # Landroid/database/ContentObserver;

    .line 32
    invoke-super {p0, p1}, Landroid/database/Observable;->registerObserver(Ljava/lang/Object;)V

    .line 33
    return-void
.end method

.method public bridge synthetic whitelist registerObserver(Ljava/lang/Object;)V
    .registers 2

    .line 26
    check-cast p1, Landroid/database/ContentObserver;

    invoke-virtual {p0, p1}, Landroid/database/ContentObservable;->registerObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
