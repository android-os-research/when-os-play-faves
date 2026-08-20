.class public final Lcom/android/server/rollback/WatchdogRollbackLogger;
.super Ljava/lang/Object;
.source "WatchdogRollbackLogger.java"


# static fields
.field public static final LOGGING_PARENT_KEY:Ljava/lang/String; = "android.content.pm.LOGGING_PARENT"

.field public static final TAG:Ljava/lang/String; = "WatchdogRollbackLogger"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogPackage(Landroid/content/Context;Landroid/content/pm/VersionedPackage;)Landroid/content/pm/VersionedPackage;
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 90
    invoke-virtual {p1}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/rollback/WatchdogRollbackLogger;->getLoggingParentName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_c

    return-object v0

    .line 95
    :cond_c
    :try_start_c
    new-instance v1, Landroid/content/pm/VersionedPackage;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v2, 0x0

    .line 96
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-direct {v1, p1, v2, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;J)V
    :try_end_1e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_1e} :catch_1f

    return-object v1

    :catch_1f
    return-object v0
.end method

.method public static getLogPackages(Landroid/content/Context;Ljava/util/List;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 111
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 112
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    new-instance v2, Landroid/content/pm/VersionedPackage;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    invoke-static {p0, v2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->getLogPackage(Landroid/content/Context;Landroid/content/pm/VersionedPackage;)Landroid/content/pm/VersionedPackage;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_23
    return-object v0
.end method

.method public static getLoggingParentName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v0, 0x40000080    # 2.0000305f

    const/4 v1, 0x0

    .line 67
    :try_start_8
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 68
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_13

    return-object v1

    :cond_13
    const-string v0, "android.content.pm.LOGGING_PARENT"

    .line 71
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1a

    return-object p0

    :catch_1a
    move-exception p0

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to discover logging parent package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WatchdogRollbackLogger"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method public static logApexdRevert(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 176
    invoke-static {p0, p1}, Lcom/android/server/rollback/WatchdogRollbackLogger;->getLogPackages(Landroid/content/Context;Ljava/util/List;)Ljava/util/Set;

    move-result-object p0

    .line 177
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/VersionedPackage;

    const/4 v0, 0x2

    const/4 v1, 0x5

    .line 178
    invoke-static {p1, v0, v1, p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    goto :goto_8

    :cond_1a
    return-void
.end method

.method public static logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V
    .registers 13

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Watchdog event occurred with type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/rollback/WatchdogRollbackLogger;->rollbackTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " logPackage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " rollbackReason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-static {p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->rollbackReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failedPackageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "WatchdogRollbackLogger"

    .line 195
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p0, :cond_4c

    const/16 v2, 0x93

    .line 203
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 204
    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->getVersionCode()I

    move-result v5

    new-array v8, v0, [B

    move v3, p1

    move v6, p2

    move-object v7, p3

    .line 200
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IILjava/lang/String;[B)V

    goto :goto_59

    :cond_4c
    const/16 v2, 0x93

    const/4 v5, 0x0

    new-array v8, v0, [B

    const-string v4, ""

    move v3, p1

    move v6, p2

    move-object v7, p3

    .line 211
    invoke-static/range {v2 .. v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;IILjava/lang/String;[B)V

    .line 221
    :goto_59
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logTestProperties(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    return-void
.end method

.method public static logRollbackStatusOnBoot(Landroid/content/Context;ILjava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/rollback/RollbackInfo;",
            ">;)V"
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager;->getPackageInstaller()Landroid/content/pm/PackageInstaller;

    move-result-object p0

    .line 124
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/rollback/RollbackInfo;

    .line 125
    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getRollbackId()I

    move-result v2

    if-ne p1, v2, :cond_c

    goto :goto_21

    :cond_20
    move-object v0, v1

    :goto_21
    const-string p3, "WatchdogRollbackLogger"

    if-nez v0, :cond_3b

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "rollback info not found for last staged rollback: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 139
    :cond_3b
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_63

    .line 140
    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getPackages()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_49
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/rollback/PackageRollbackInfo;

    .line 141
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    .line 142
    invoke-virtual {v2}, Landroid/content/rollback/PackageRollbackInfo;->getVersionRolledBackFrom()Landroid/content/pm/VersionedPackage;

    move-result-object v1

    .line 148
    :cond_63
    invoke-virtual {v0}, Landroid/content/rollback/RollbackInfo;->getCommittedSessionId()I

    move-result p1

    .line 149
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageInstaller;->getSessionInfo(I)Landroid/content/pm/PackageInstaller$SessionInfo;

    move-result-object p0

    if-nez p0, :cond_82

    .line 151
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "On boot completed, could not load session id "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 155
    :cond_82
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionApplied()Z

    move-result p1

    const-string p2, ""

    const/4 p3, 0x0

    if-eqz p1, :cond_90

    const/4 p0, 0x2

    .line 156
    invoke-static {v1, p0, p3, p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    goto :goto_9a

    .line 159
    :cond_90
    invoke-virtual {p0}, Landroid/content/pm/PackageInstaller$SessionInfo;->isStagedSessionFailed()Z

    move-result p0

    if-eqz p0, :cond_9a

    const/4 p0, 0x3

    .line 160
    invoke-static {v1, p0, p3, p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->logEvent(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V

    :cond_9a
    :goto_9a
    return-void
.end method

.method public static logTestProperties(Landroid/content/pm/VersionedPackage;IILjava/lang/String;)V
    .registers 6

    const-string/jumbo v0, "persist.sys.rollbacktest.enabled"

    const/4 v1, 0x0

    .line 240
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    .line 243
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "persist.sys.rollbacktest."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/rollback/WatchdogRollbackLogger;->rollbackTypeToString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    .line 244
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".logPackage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz p0, :cond_41

    invoke-virtual {p0}, Landroid/content/pm/VersionedPackage;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_43

    :cond_41
    const-string p0, ""

    :goto_43
    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".rollbackReason"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Lcom/android/server/rollback/WatchdogRollbackLogger;->rollbackReasonToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".failedPackageName"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static mapFailureReasonToMetric(I)I
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_e

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const/4 v0, 0x4

    if-eq p0, v0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    return v0
.end method

.method public static rollbackReasonToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1b

    const/4 v0, 0x3

    if-eq p0, v0, :cond_18

    const/4 v0, 0x4

    if-eq p0, v0, :cond_15

    const/4 v0, 0x5

    if-eq p0, v0, :cond_12

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_12
    const-string p0, "REASON_NATIVE_CRASH_DURING_BOOT"

    return-object p0

    :cond_15
    const-string p0, "REASON_APP_NOT_RESPONDING"

    return-object p0

    :cond_18
    const-string p0, "REASON_APP_CRASH"

    return-object p0

    :cond_1b
    const-string p0, "REASON_EXPLICIT_HEALTH_CHECK"

    return-object p0

    :cond_1e
    const-string p0, "REASON_NATIVE_CRASH"

    return-object p0
.end method

.method public static rollbackTypeToString(I)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_18

    const/4 v0, 0x2

    if-eq p0, v0, :cond_15

    const/4 v0, 0x3

    if-eq p0, v0, :cond_12

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_f
    const-string p0, "ROLLBACK_BOOT_TRIGGERED"

    return-object p0

    :cond_12
    const-string p0, "ROLLBACK_FAILURE"

    return-object p0

    :cond_15
    const-string p0, "ROLLBACK_SUCCESS"

    return-object p0

    :cond_18
    const-string p0, "ROLLBACK_INITIATE"

    return-object p0
.end method
