.class public Lcom/samsung/android/securefolder/fwwrapper/AmWrapper;
.super Ljava/lang/Object;
.source "AmWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;II)Z
    .registers 6

    .line 32
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static createPackageContextAsUser(Landroid/content/Context;Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    .registers 4

    .line 43
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static forceStopPackageAsUser(Landroid/app/ActivityManager;Ljava/lang/String;I)V
    .registers 3

    .line 60
    invoke-virtual {p0, p1, p2}, Landroid/app/ActivityManager;->forceStopPackageAsUser(Ljava/lang/String;I)V

    return-void
.end method

.method public static startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 5

    .line 24
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    return-void
.end method

.method public static startActivityForResultAsUser(Landroid/app/Activity;Landroid/content/Intent;II)V
    .registers 5

    .line 20
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public static startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 3

    .line 65
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0, p1}, Landroid/app/IActivityManager;->startConfirmDeviceCredentialIntent(Landroid/content/Intent;Landroid/os/Bundle;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p0

    .line 67
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    return-void
.end method

.method public static startForegroundServiceAsUser(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/ComponentName;
    .registers 4

    .line 37
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startForegroundServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;I)Landroid/content/ComponentName;
    .registers 4

    .line 28
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static startUserInBackground(I)Z
    .registers 2

    .line 52
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->startUserInBackground(I)Z

    move-result p0
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_8} :catch_9

    return p0

    :catch_9
    move-exception p0

    .line 54
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
