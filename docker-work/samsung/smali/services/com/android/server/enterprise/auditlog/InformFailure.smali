.class public Lcom/android/server/enterprise/auditlog/InformFailure;
.super Ljava/lang/Object;
.source "InformFailure.java"


# static fields
.field public static mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/auditlog/InformFailure;
    .registers 2

    const-class v0, Lcom/android/server/enterprise/auditlog/InformFailure;

    monitor-enter v0

    .line 50
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/auditlog/InformFailure;->mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;

    if-nez v1, :cond_e

    .line 51
    new-instance v1, Lcom/android/server/enterprise/auditlog/InformFailure;

    invoke-direct {v1}, Lcom/android/server/enterprise/auditlog/InformFailure;-><init>()V

    sput-object v1, Lcom/android/server/enterprise/auditlog/InformFailure;->mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;

    .line 53
    :cond_e
    sget-object v1, Lcom/android/server/enterprise/auditlog/InformFailure;->mInformFailure:Lcom/android/server/enterprise/auditlog/InformFailure;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized broadcastFailure(Ljava/lang/Exception;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 60
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.LOG_EXCEPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "AUDIT_LOG_EXCEPTION"

    .line 61
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_16

    .line 63
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    :cond_16
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_28

    .line 66
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 67
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 68
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 70
    :cond_28
    monitor-exit p0

    return-void

    :catchall_2a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized broadcastFailure(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    monitor-enter p0

    .line 73
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.knox.intent.action.LOG_EXCEPTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "AUDIT_LOG_EXCEPTION"

    .line 74
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_12

    .line 76
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    :cond_12
    iget-object p1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_24

    .line 79
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p1

    .line 80
    iget-object v1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.knox.permission.KNOX_AUDIT_LOG"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 81
    invoke-static {p1, p2}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 83
    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setContext(Landroid/content/Context;)V
    .registers 2

    monitor-enter p0

    .line 86
    :try_start_1
    iput-object p1, p0, Lcom/android/server/enterprise/auditlog/InformFailure;->mContext:Landroid/content/Context;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 87
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method
