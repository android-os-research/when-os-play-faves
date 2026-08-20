.class public Lcom/samsung/android/da/daagent/fwwrapper/AmWrapper;
.super Ljava/lang/Object;
.source "AmWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCallerPackage(Landroid/app/Activity;)Ljava/lang/String;
    .registers 2

    .line 75
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object p0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception p0

    .line 78
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    :goto_12
    return-object p0
.end method

.method public static getCallerUid(Landroid/app/Activity;)I
    .registers 2

    .line 94
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {v0, p0}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception p0

    .line 96
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, -0x1

    :goto_12
    return p0
.end method

.method public static isUserRunning(Landroid/content/Context;I)Z
    .registers 3

    const-string v0, "user"

    .line 27
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 31
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isUserRunning(I)Z

    move-result p0

    return p0
.end method

.method public static startActivityAsCaller(Landroid/app/Activity;Landroid/content/Intent;Landroid/os/Bundle;ZI)V
    .registers 5

    .line 112
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/app/Activity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    return-void
.end method

.method public static startActivityAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;I)V
    .registers 5

    .line 59
    :try_start_0
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_9

    goto :goto_d

    :catch_9
    move-exception p0

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d
    return-void
.end method

.method public static startUserInBackground(I)Z
    .registers 2

    .line 43
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

    .line 45
    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method
