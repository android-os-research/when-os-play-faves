.class public abstract Lcom/android/server/location/injector/UserInfoHelper;
.super Ljava/lang/Object;
.source "UserInfoHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/injector/UserInfoHelper$UserListener;
    }
.end annotation


# instance fields
.field public final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/injector/UserInfoHelper$UserListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/injector/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-void
.end method


# virtual methods
.method public final addListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V
    .registers 2

    .line 72
    iget-object p0, p0, Lcom/android/server/location/injector/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final dispatchOnCurrentUserChanged(II)V
    .registers 9

    .line 104
    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/UserInfoHelper;->getProfileIds(I)[I

    move-result-object v0

    .line 105
    invoke-virtual {p0, p2}, Lcom/android/server/location/injector/UserInfoHelper;->getProfileIds(I)[I

    move-result-object v1

    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "current user changed from u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LocationManagerService"

    .line 107
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    sget-object v2, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog;->logUserSwitched(II)V

    .line 112
    iget-object p1, p0, Lcom/android/server/location/injector/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_39
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_52

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 113
    array-length v4, v0

    :goto_48
    if-ge v2, v4, :cond_39

    aget v5, v0, v2

    .line 114
    invoke-interface {p2, v5, v3}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_48

    .line 118
    :cond_52
    iget-object p0, p0, Lcom/android/server/location/injector/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_58
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_70

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    .line 119
    array-length p2, v1

    move v0, v2

    :goto_66
    if-ge v0, p2, :cond_58

    aget v4, v1, v0

    .line 120
    invoke-interface {p1, v4, v3}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_66

    :cond_70
    return-void
.end method

.method public final dispatchOnUserStarted(I)V
    .registers 4

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " started"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object p0, p0, Lcom/android/server/location/injector/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    const/4 v1, 0x2

    .line 88
    invoke-interface {v0, p1, v1}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    goto :goto_22

    :cond_33
    return-void
.end method

.method public final dispatchOnUserStopped(I)V
    .registers 4

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "u"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " stopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocationManagerService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p0, p0, Lcom/android/server/location/injector/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_22
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/injector/UserInfoHelper$UserListener;

    const/4 v1, 0x3

    .line 98
    invoke-interface {v0, p1, v1}, Lcom/android/server/location/injector/UserInfoHelper$UserListener;->onUserChanged(II)V

    goto :goto_22

    :cond_33
    return-void
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getCurrentUserId()I
.end method

.method public abstract getProfileIds(I)[I
.end method

.method public abstract getRunningUserIds()[I
.end method

.method public abstract isCurrentUserId(I)Z
.end method

.method public registerUidObserver(Landroid/app/IUidObserver;)V
    .registers 2

    return-void
.end method

.method public final removeListener(Lcom/android/server/location/injector/UserInfoHelper$UserListener;)V
    .registers 2

    .line 79
    iget-object p0, p0, Lcom/android/server/location/injector/UserInfoHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
