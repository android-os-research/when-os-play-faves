.class public final Lcom/android/server/pm/PmHook;
.super Ljava/lang/Object;
.source "PmHook.java"


# static fields
.field public static final ACTION_INSTALL_FAILED:Ljava/lang/String; = "android.intent.action.PACKAGE_INSTALL_FAILED"

.field public static final TAG:Ljava/lang/String; = "PM_HOOK"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final auditLogInstallFail(Ljava/lang/String;I)V
    .registers 3

    const/4 v0, 0x1

    .line 73
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(Ljava/lang/String;IZ)V

    return-void
.end method

.method public static final auditLogInstallFail(Ljava/lang/String;IZ)V
    .registers 11

    .line 78
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Install Application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    if-eqz p2, :cond_1f

    const-string p0, ""

    goto :goto_20

    :cond_1f
    const/4 p0, 0x0

    :goto_20
    move-object v6, p0

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v4, "PackageManagerService"

    move v7, p1

    invoke-static/range {v0 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final beginInstallLog(Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 10

    .line 33
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 34
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 35
    invoke-interface {p0}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStateAppInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const-string p0, "Starting to install Application %s version %s"

    .line 34
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    const-string v4, "PackageManagerService"

    const-string v6, ""

    move v7, p1

    .line 32
    invoke-static/range {v0 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final enableDisableApplicationLog(Ljava/lang/String;Ljava/lang/String;II)V
    .registers 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    .line 87
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const-string v5, " has been disabled."

    const-string v6, " has been enabled."

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v1, :cond_68

    const-string v1, "Application "

    if-eq v2, v9, :cond_42

    if-nez v2, :cond_1a

    goto :goto_42

    :cond_1a
    if-eq v2, v8, :cond_1e

    if-ne v2, v7, :cond_c9

    :cond_1e
    const/4 v10, 0x5

    const/4 v11, 0x5

    const/4 v12, 0x1

    .line 102
    :try_start_21
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    const-string v14, "PackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string v16, ""

    move/from16 v17, p3

    .line 100
    invoke-static/range {v10 .. v17}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_c9

    :cond_42
    :goto_42
    const/16 v17, 0x5

    const/16 v18, 0x5

    const/16 v19, 0x1

    .line 94
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v20

    const-string v21, "PackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    const-string v23, ""

    move/from16 v24, p3

    .line 92
    invoke-static/range {v17 .. v24}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_67
    .catchall {:try_start_21 .. :try_end_67} :catchall_cd

    goto :goto_c9

    :cond_68
    const-string v10, "/"

    const-string v11, "Component "

    if-eq v2, v9, :cond_9e

    if-nez v2, :cond_71

    goto :goto_9e

    :cond_71
    if-eq v2, v8, :cond_75

    if-ne v2, v7, :cond_c9

    :cond_75
    const/4 v12, 0x5

    const/4 v13, 0x5

    const/4 v14, 0x1

    .line 120
    :try_start_78
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v15

    const-string v16, "PackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const-string v18, ""

    move/from16 v19, p3

    .line 118
    invoke-static/range {v12 .. v19}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_c9

    :cond_9e
    :goto_9e
    const/16 v19, 0x5

    const/16 v20, 0x5

    const/16 v21, 0x1

    .line 112
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v22

    const-string v23, "PackageManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    const-string v25, ""

    move/from16 v26, p3

    .line 110
    invoke-static/range {v19 .. v26}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c9
    .catchall {:try_start_78 .. :try_end_c9} :catchall_cd

    .line 127
    :cond_c9
    :goto_c9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_cd
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 128
    throw v0
.end method

.method public static final installFailLog(Landroid/content/Context;Landroid/content/pm/PackageInfoLite;I)V
    .registers 3

    .line 64
    iget-object p0, p1, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    invoke-static {p0, p2}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(Ljava/lang/String;I)V

    return-void
.end method

.method public static final installFailLog(Landroid/content/Context;Lcom/android/server/pm/parsing/pkg/AndroidPackage;I)V
    .registers 3

    .line 68
    invoke-interface {p1}, Lcom/android/server/pm/pkg/parsing/PkgWithoutStatePackageInfo;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/server/pm/PmHook;->auditLogInstallFail(Ljava/lang/String;I)V

    return-void
.end method

.method public static final installSuccesLog(Ljava/lang/String;I)V
    .registers 10

    .line 55
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Install Application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " succeeded"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    const-string v4, "PackageManagerService"

    const-string v6, ""

    move v7, p1

    .line 53
    invoke-static/range {v0 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final signatureVerificationFailure(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .line 22
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " failed"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " because of signature verification failure"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x3

    const/4 v1, 0x5

    const/4 v2, 0x0

    const-string v4, "PackageManagerService"

    const-string v6, ""

    move v7, p2

    .line 20
    invoke-static/range {v0 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static final uninstallLog(Ljava/lang/String;ZI)V
    .registers 11

    .line 43
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Uninstall Application "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_16

    const-string p0, " succeeded"

    goto :goto_18

    :cond_16
    const-string p0, " failed"

    .line 45
    :goto_18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x5

    const/4 v1, 0x5

    const/4 v2, 0x1

    const-string v4, "PackageManagerService"

    const-string v6, ""

    move v7, p2

    .line 41
    invoke-static/range {v0 .. v7}, Landroid/sec/enterprise/auditlog/AuditLog;->logAsUser(IIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
