.class public Lcom/android/server/companion/virtual/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "VDM.PermissionUtils"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static validateCallingPackageName(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 10

    const-string/jumbo v0, "validatePackageName: App with package name "

    const-string v1, "VDM.PermissionUtils"

    .line 41
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 42
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    const/4 v5, 0x0

    .line 44
    :try_start_e
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 45
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {p0, p1, v6}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    if-eq p0, v2, :cond_42

    .line 47
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is UID "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " but caller is "

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_3e} :catch_49
    .catchall {:try_start_e .. :try_end_3e} :catchall_47

    .line 56
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :cond_42
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x1

    return p0

    :catchall_47
    move-exception p0

    goto :goto_64

    .line 52
    :catch_49
    :try_start_49
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_60
    .catchall {:try_start_49 .. :try_end_60} :catchall_47

    .line 56
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v5

    :goto_64
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 57
    throw p0
.end method
