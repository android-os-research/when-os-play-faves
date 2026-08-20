.class public abstract Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;
.super Landroid/database/ContentObserver;
.source "SystemSettingsHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/injector/SystemSettingsHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ObservingSetting"
.end annotation


# instance fields
.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field public mRegistered:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2

    .line 430
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 431
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .registers 2

    .line 449
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public declared-synchronized isRegistered()Z
    .registers 2

    monitor-enter p0

    .line 435
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onChange(ZLandroid/net/Uri;I)V
    .registers 5

    .line 459
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "location setting changed [u"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "]: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LocationManagerService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_25
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_35

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    .line 463
    invoke-interface {p1, p3}, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;->onSettingChanged(I)V

    goto :goto_25

    :cond_35
    return-void
.end method

.method public onChangedByNsflp()V
    .registers 3

    const-string v0, "LocationManagerService"

    const-string/jumbo v1, "location setting is changed by nsflp"

    .line 469
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;

    const/4 v1, -0x1

    .line 472
    invoke-interface {v0, v1}, Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;->onSettingChanged(I)V

    goto :goto_e

    :cond_1f
    return-void
.end method

.method public declared-synchronized register(Landroid/content/Context;Landroid/net/Uri;)V
    .registers 5

    monitor-enter p0

    .line 439
    :try_start_1
    iget-boolean v0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mRegistered:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_15

    if-eqz v0, :cond_7

    .line 440
    monitor-exit p0

    return-void

    .line 443
    :cond_7
    :try_start_7
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 p1, 0x1

    .line 445
    iput-boolean p1, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mRegistered:Z
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_15

    .line 446
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeListener(Lcom/android/server/location/injector/SettingsHelper$UserSettingChangedListener;)V
    .registers 2

    .line 453
    iget-object p0, p0, Lcom/android/server/location/injector/SystemSettingsHelper$ObservingSetting;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
