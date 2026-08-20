.class public Lcom/android/server/pm/UnknownSourceAppManager$Helper;
.super Ljava/lang/Object;
.source "UnknownSourceAppManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/UnknownSourceAppManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Helper"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public suspendUnknownSourceAppsAsUser(Landroid/content/Context;[Ljava/lang/String;ZI)V
    .registers 13

    .line 164
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 165
    new-instance p0, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {p0}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    const v1, 0x1040e51

    .line 166
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/pm/SuspendDialogInfo$Builder;->setTitle(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object p0

    const v1, 0x1040e50

    .line 167
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object p0

    .line 168
    invoke-virtual {p0}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v5

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_25
    const-string/jumbo v6, "system"

    move-object v1, p2

    move v2, p3

    move v7, p4

    .line 171
    invoke-interface/range {v0 .. v7}, Landroid/content/pm/IPackageManager;->setPackagesSuspendedAsUser([Ljava/lang/String;ZLandroid/os/PersistableBundle;Landroid/os/PersistableBundle;Landroid/content/pm/SuspendDialogInfo;Ljava/lang/String;I)[Ljava/lang/String;
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2e} :catch_2f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_25 .. :try_end_2e} :catch_2f

    goto :goto_33

    :catch_2f
    move-exception p0

    .line 174
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_33
    return-void
.end method

.method public suspendUnknownSourceAppsForAllUsers(Landroid/content/Context;[Ljava/lang/String;Z)V
    .registers 6

    .line 156
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 157
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 158
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/pm/UnknownSourceAppManager$Helper;->suspendUnknownSourceAppsAsUser(Landroid/content/Context;[Ljava/lang/String;ZI)V

    goto :goto_10

    :cond_22
    return-void
.end method
