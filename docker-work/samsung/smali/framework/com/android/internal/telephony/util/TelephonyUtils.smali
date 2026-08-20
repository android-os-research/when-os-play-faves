.class public final Lcom/android/internal/telephony/util/TelephonyUtils;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# static fields
.field public static final blacklist DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

.field public static blacklist IS_DEBUGGABLE:Z

.field public static blacklist IS_USER:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 44
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string/jumbo v1, "user"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_USER:Z

    .line 45
    const-string/jumbo v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_17

    move v1, v2

    :cond_17
    sput-boolean v1, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    .line 47
    new-instance v0, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroid/app/PendingIntent$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/util/TelephonyUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 55
    const-string v0, "android.permission.DUMP"

    invoke-virtual {p0, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_42

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 58
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " due to missing android.permission.DUMP permission"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 60
    const/4 v0, 0x0

    return v0

    .line 62
    :cond_42
    const/4 v0, 0x1

    return v0
.end method

.method public static blacklist dataStateToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "state"    # I

    .line 183
    packed-switch p0, :pswitch_data_30

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 188
    :pswitch_1d
    const-string v0, "DISCONNECTING"

    return-object v0

    .line 187
    :pswitch_20
    const-string v0, "SUSPENDED"

    return-object v0

    .line 186
    :pswitch_23
    const-string v0, "CONNECTED"

    return-object v0

    .line 185
    :pswitch_26
    const-string v0, "CONNECTING"

    return-object v0

    .line 184
    :pswitch_29
    const-string v0, "DISCONNECTED"

    return-object v0

    .line 189
    :pswitch_2c
    const-string v0, "UNKNOWN"

    return-object v0

    nop

    :pswitch_data_30
    .packed-switch -0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
    .end packed-switch
.end method

.method public static blacklist emptyIfNull(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "str"    # Ljava/lang/String;

    .line 68
    if-nez p0, :cond_5

    const-string v0, ""

    goto :goto_6

    :cond_5
    move-object v0, p0

    :goto_6
    return-object v0
.end method

.method public static blacklist emptyIfNull(Ljava/util/List;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 73
    .local p0, "cur":Ljava/util/List;, "Ljava/util/List<TT;>;"
    if-nez p0, :cond_7

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_8

    :cond_7
    move-object v0, p0

    :goto_8
    return-object v0
.end method

.method public static blacklist filterValues(Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 7
    .param p0, "bundle"    # Landroid/os/Bundle;

    .line 146
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 147
    .local v0, "ret":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 148
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 149
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/lang/Integer;

    if-nez v4, :cond_d

    instance-of v4, v3, Ljava/lang/Long;

    if-nez v4, :cond_d

    instance-of v4, v3, Ljava/lang/Double;

    if-nez v4, :cond_d

    instance-of v4, v3, Ljava/lang/String;

    if-nez v4, :cond_d

    instance-of v4, v3, [I

    if-nez v4, :cond_d

    instance-of v4, v3, [J

    if-nez v4, :cond_d

    instance-of v4, v3, [D

    if-nez v4, :cond_d

    instance-of v4, v3, [Ljava/lang/String;

    if-nez v4, :cond_d

    instance-of v4, v3, Landroid/os/PersistableBundle;

    if-nez v4, :cond_d

    if-eqz v3, :cond_d

    instance-of v4, v3, Ljava/lang/Boolean;

    if-nez v4, :cond_d

    instance-of v4, v3, [Z

    if-eqz v4, :cond_4c

    .line 155
    goto :goto_d

    .line 157
    :cond_4c
    instance-of v4, v3, Landroid/os/Bundle;

    if-eqz v4, :cond_5b

    .line 158
    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    invoke-static {v4}, Lcom/android/internal/telephony/util/TelephonyUtils;->filterValues(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 159
    goto :goto_d

    .line 161
    :cond_5b
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 162
    goto :goto_d

    .line 164
    :cond_6c
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 165
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    goto :goto_d

    .line 166
    :cond_70
    return-object v0
.end method

.method public static blacklist getComponentInfo(Landroid/content/pm/ResolveInfo;)Landroid/content/pm/ComponentInfo;
    .registers 3
    .param p0, "resolveInfo"    # Landroid/content/pm/ResolveInfo;

    .line 81
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_7

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    return-object v0

    .line 82
    :cond_7
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object v0

    .line 83
    :cond_e
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    return-object v0

    .line 84
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing ComponentInfo!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic blacklist lambda$runWithCleanCallingIdentity$0(Ljava/lang/Runnable;)V
    .registers 1
    .param p0, "action"    # Ljava/lang/Runnable;

    .line 116
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static blacklist runWithCleanCallingIdentity(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 134
    .local p0, "action":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<TT;>;"
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 136
    .local v0, "callingIdentity":J
    :try_start_4
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_c

    .line 138
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 136
    return-object v2

    .line 138
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 139
    throw v2
.end method

.method public static blacklist runWithCleanCallingIdentity(Ljava/lang/Runnable;)V
    .registers 4
    .param p0, "action"    # Ljava/lang/Runnable;

    .line 96
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 98
    .local v0, "callingIdentity":J
    :try_start_4
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_c

    .line 100
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    nop

    .line 102
    return-void

    .line 100
    :catchall_c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 101
    throw v2
.end method

.method public static blacklist runWithCleanCallingIdentity(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .registers 3
    .param p0, "action"    # Ljava/lang/Runnable;
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 114
    if-eqz p0, :cond_10

    .line 115
    if-eqz p1, :cond_d

    .line 116
    new-instance v0, Lcom/android/internal/telephony/util/TelephonyUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/util/TelephonyUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_10

    .line 118
    :cond_d
    invoke-static {p0}, Lcom/android/internal/telephony/util/TelephonyUtils;->runWithCleanCallingIdentity(Ljava/lang/Runnable;)V

    .line 121
    :cond_10
    :goto_10
    return-void
.end method

.method public static blacklist waitUntilReady(Ljava/util/concurrent/CountDownLatch;J)V
    .registers 4
    .param p0, "latch"    # Ljava/util/concurrent/CountDownLatch;
    .param p1, "timeoutMs"    # J

    .line 172
    :try_start_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, p1, p2, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_5} :catch_6

    .line 174
    goto :goto_7

    .line 173
    :catch_6
    move-exception v0

    .line 175
    :goto_7
    return-void
.end method
