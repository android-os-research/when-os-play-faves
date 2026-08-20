.class public Lcom/android/server/location/injector/SystemUserInfoHelper;
.super Lcom/android/server/location/injector/UserInfoHelper;
.source "SystemUserInfoHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "SystemUserInfoHelper"


# instance fields
.field public mActivityManager:Landroid/app/IActivityManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public mActivityManagerInternal:Landroid/app/ActivityManagerInternal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public mUserManager:Landroid/os/UserManager;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 57
    invoke-direct {p0}, Lcom/android/server/location/injector/UserInfoHelper;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 8

    .line 161
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getRunningUserIds()[I

    move-result-object p1

    .line 162
    array-length p3, p1

    const/4 v0, 0x1

    if-le p3, v0, :cond_21

    .line 163
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "running users: u"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 166
    :cond_21
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p1

    if-nez p1, :cond_28

    return-void

    .line 171
    :cond_28
    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->getCurrentProfileIds()[I

    move-result-object p1

    .line 172
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "current users: u"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    if-eqz p0, :cond_80

    .line 176
    array-length p3, p1

    const/4 v0, 0x0

    :goto_4c
    if-ge v0, p3, :cond_80

    aget v1, p1, v0

    .line 178
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    const-string/jumbo v3, "no_share_location"

    .line 177
    invoke-virtual {p0, v3, v2}, Landroid/os/UserManager;->hasUserRestrictionForUser(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_7d

    .line 179
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "u"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " restricted"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p2}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_7d
    add-int/lit8 v0, v0, 0x1

    goto :goto_4c

    :cond_80
    return-void
.end method

.method public final getActivityManager()Landroid/app/IActivityManager;
    .registers 2

    .line 74
    monitor-enter p0

    .line 75
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v0, :cond_b

    .line 76
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 78
    :cond_b
    monitor-exit p0
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_f

    .line 80
    iget-object p0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManager:Landroid/app/IActivityManager;

    return-object p0

    :catchall_f
    move-exception v0

    .line 78
    :try_start_10
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    throw v0
.end method

.method public final getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .registers 2

    .line 63
    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    if-nez v0, :cond_f

    .line 65
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 67
    :cond_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_13

    .line 69
    iget-object p0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    return-object p0

    :catchall_13
    move-exception v0

    .line 67
    :try_start_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v0
.end method

.method public getCurrentUserId()I
    .registers 3

    .line 128
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 130
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 132
    :try_start_a
    invoke-virtual {p0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 134
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 135
    throw p0

    :cond_17
    const/16 p0, -0x2710

    return p0
.end method

.method public getProfileIds(I)[I
    .registers 4

    .line 143
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 146
    :goto_9
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 148
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 150
    :try_start_10
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object p0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_18

    .line 152
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_18
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    throw p0
.end method

.method public getRunningUserIds()[I
    .registers 3

    .line 96
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object p0

    if-eqz p0, :cond_1e

    .line 98
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 100
    :try_start_a
    invoke-interface {p0}, Landroid/app/IActivityManager;->getRunningUserIds()[I

    move-result-object p0
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_e} :catch_14
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 104
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_12
    move-exception p0

    goto :goto_1a

    :catch_14
    move-exception p0

    .line 102
    :try_start_15
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_12

    .line 104
    :goto_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 105
    throw p0

    :cond_1e
    const/4 p0, 0x0

    new-array p0, p0, [I

    return-object p0
.end method

.method public final getUserManager()Landroid/os/UserManager;
    .registers 3

    .line 85
    monitor-enter p0

    .line 86
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManager:Landroid/os/UserManager;

    if-nez v0, :cond_11

    .line 87
    iget-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManager:Landroid/os/UserManager;

    .line 89
    :cond_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_15

    .line 91
    iget-object p0, p0, Lcom/android/server/location/injector/SystemUserInfoHelper;->mUserManager:Landroid/os/UserManager;

    return-object p0

    :catchall_15
    move-exception v0

    .line 89
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    throw v0
.end method

.method public isCurrentUserId(I)Z
    .registers 4

    .line 113
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManagerInternal()Landroid/app/ActivityManagerInternal;

    move-result-object p0

    if-eqz p0, :cond_17

    .line 115
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 117
    :try_start_a
    invoke-virtual {p0, p1}, Landroid/app/ActivityManagerInternal;->isCurrentProfile(I)Z

    move-result p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    .line 119
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_12
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 120
    throw p0

    :cond_17
    const/4 p0, 0x0

    return p0
.end method

.method public registerUidObserver(Landroid/app/IUidObserver;)V
    .registers 6

    const-string v0, "SystemUserInfoHelper"

    .line 191
    :try_start_2
    invoke-virtual {p0}, Lcom/android/server/location/injector/SystemUserInfoHelper;->getActivityManager()Landroid/app/IActivityManager;

    move-result-object p0

    const/4 v1, 0x3

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-interface {p0, p1, v1, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V

    const-string p0, "Success to registerUidObserver"

    .line 194
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_11} :catch_12

    goto :goto_2b

    :catch_12
    move-exception p0

    .line 196
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to registerUidObserver, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2b
    return-void
.end method
