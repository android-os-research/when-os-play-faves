.class public Lcom/samsung/android/da/daagent/fwwrapper/UmWrapper;
.super Ljava/lang/Object;
.source "UmWrapper.java"


# static fields
.field public static ACTION_USER_REMOVED:Ljava/lang/String; = "android.intent.action.USER_REMOVED"

.field public static EXTRA_USER_HANDLE:Ljava/lang/String; = "android.intent.extra.user_handle"

.field public static SEM_USER_NULL:I = -0x2710

.field public static SEM_USER_OWNER:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DA_UmWrapper"

.field public static USER_TYPE_PROFILE_CLONE:Ljava/lang/String; = "android.os.usertype.profile.CLONE"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDualApppProfile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Parcelable;
    .registers 5

    .line 40
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 41
    invoke-virtual {p0}, Landroid/os/UserManager;->getPrimaryUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    .line 43
    sget-object v1, Lcom/samsung/android/da/daagent/fwwrapper/UmWrapper;->USER_TYPE_PROFILE_CLONE:Ljava/lang/String;

    const v2, 0x20001000

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/UserManager;->createProfileForUser(Ljava/lang/String;Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object p0

    const-string p1, "DA_UmWrapper"

    if-eqz p0, :cond_37

    .line 46
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 47
    sget-object v1, Lcom/samsung/android/da/daagent/fwwrapper/DaWrapper;->DA_PROFILE_ID_PROPERTY_NAME:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/da/daagent/fwwrapper/UtilsWrapper;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Create dual app profile succeeded. id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3c

    :cond_37
    const-string v0, "Create dual app profile failed."

    .line 50
    invoke-static {p1, v0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3c
    return-object p0
.end method

.method public static getProfileParent(Landroid/content/Context;I)Landroid/content/pm/UserInfo;
    .registers 2

    .line 109
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 110
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static getUserHandle(I)Landroid/os/UserHandle;
    .registers 2

    .line 79
    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public static getUserId(I)I
    .registers 1

    .line 89
    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    return p0
.end method

.method public static getUserInfo(Landroid/content/Context;I)Landroid/os/Parcelable;
    .registers 2

    .line 99
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 100
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method public static removeUser(Landroid/content/Context;I)Z
    .registers 3

    .line 65
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 66
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUser(I)Z

    move-result p0

    .line 68
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remove user. result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DA_UmWrapper"

    invoke-static {v0, p1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static sendBroadcastProfileAddedIntent(Landroid/content/Context;I)V
    .registers 5

    .line 149
    invoke-static {p0, p1}, Lcom/samsung/android/da/daagent/fwwrapper/UmWrapper;->getProfileParent(Landroid/content/Context;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 151
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGED_PROFILE_ADDED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 152
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string p1, "android.intent.extra.USER"

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 p1, 0x50000000

    .line 153
    invoke-virtual {v1, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    new-instance p1, Landroid/os/UserHandle;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p1, v0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v1, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_26
    return-void
.end method

.method public static writeDualAppProfileId(Landroid/content/Context;)Z
    .registers 6

    .line 120
    sget v0, Lcom/samsung/android/da/daagent/fwwrapper/UmWrapper;->SEM_USER_NULL:I

    .line 122
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object p0

    .line 124
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 125
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    sget v4, Lcom/samsung/android/da/daagent/fwwrapper/DaWrapper;->MIN_DUALAPP_ID:I

    if-lt v1, v4, :cond_e

    sget v4, Lcom/samsung/android/da/daagent/fwwrapper/DaWrapper;->MAX_DUALAPP_ID:I

    if-gt v1, v4, :cond_e

    move v0, v1

    move p0, v2

    goto :goto_2a

    :cond_29
    move p0, v3

    :goto_2a
    const-string v1, "DA_UmWrapper"

    if-eqz p0, :cond_4c

    .line 132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found DA Profile. Id = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    sget-object p0, Lcom/samsung/android/da/daagent/fwwrapper/DaWrapper;->DA_PROFILE_ID_PROPERTY_NAME:Ljava/lang/String;

    .line 134
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 133
    invoke-static {p0, v0}, Lcom/samsung/android/da/daagent/fwwrapper/UtilsWrapper;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4c
    const-string p0, "Can not found DA Profile. Id"

    .line 137
    invoke-static {v1, p0}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    sget-object p0, Lcom/samsung/android/da/daagent/fwwrapper/DaWrapper;->DA_PROFILE_ID_PROPERTY_NAME:Ljava/lang/String;

    const-string v0, ""

    invoke-static {p0, v0}, Lcom/samsung/android/da/daagent/fwwrapper/UtilsWrapper;->setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method
