.class public Lcom/samsung/android/securefolder/fwwrapper/UserManagerWrapper;
.super Ljava/lang/Object;
.source "UserManagerWrapper.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createProfileForUser(Landroid/os/UserManager;Ljava/lang/String;I[Ljava/lang/String;)I
    .registers 10

    const-string v2, "android.os.usertype.profile.MANAGED"

    const v3, 0x10020060

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    .line 114
    invoke-virtual/range {v0 .. v5}, Landroid/os/UserManager;->createProfileForUser(Ljava/lang/String;Ljava/lang/String;II[Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 116
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    goto :goto_13

    :cond_12
    const/4 p0, -0x1

    :goto_13
    return p0
.end method

.method public static getExistContainerName(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "user"

    .line 46
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const/4 v1, 0x1

    .line 47
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    .line 48
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 49
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v2

    if-eqz v2, :cond_16

    .line 50
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_16

    .line 54
    :cond_33
    iget-object v1, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_16

    .line 56
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_3b
    return-object v0
.end method

.method public static getInitializedSecureFolderId(Landroid/content/Context;)I
    .registers 4

    const-string v0, "user"

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    const/4 v0, 0x1

    .line 27
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, -0x1

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 30
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 31
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v1

    .line 32
    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v2, 0x96

    if-gt v2, v1, :cond_12

    const/16 v2, 0xa0

    if-lt v2, v1, :cond_12

    move v0, v1

    goto :goto_12

    :cond_42
    return v0
.end method

.method public static isInitiailized(Landroid/content/Context;I)Z
    .registers 2

    .line 90
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 92
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p0

    .line 94
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result p0

    return p0
.end method

.method public static isManagedProfile(Landroid/os/UserManager;I)Z
    .registers 2

    .line 121
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result p0

    return p0
.end method

.method public static removePartialUser(Landroid/content/Context;)V
    .registers 8

    const-string v0, "user"

    .line 67
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    const/4 v1, 0x0

    .line 68
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 70
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_11
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "UserManagerWrapper"

    if-eqz v2, :cond_77

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 71
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    invoke-virtual {v4}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v4

    .line 75
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isInitialized()Z

    move-result v2

    if-nez v2, :cond_11

    :cond_4d
    const/16 v2, 0x96

    if-lt v4, v2, :cond_11

    const/16 v2, 0xa0

    if-gt v4, v2, :cond_11

    const/4 v1, 0x1

    .line 78
    invoke-static {p0, v4}, Lcom/samsung/android/securefolder/fwwrapper/UserManagerWrapper;->removeUser(Landroid/content/Context;I)Z

    move-result v2

    .line 79
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove securefolder user. containerId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ret="

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_77
    if-nez v1, :cond_7e

    const-string p0, "removePartialUser skipped, not found partial user"

    .line 85
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7e
    return-void
.end method

.method public static removeUser(Landroid/content/Context;I)Z
    .registers 3

    .line 17
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 18
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->removeUser(I)Z

    move-result p0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Remove user. result = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UserManagerWrapper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public static setUserEnabled(Landroid/content/Context;I)V
    .registers 2

    .line 100
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 102
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->setUserEnabled(I)V

    return-void
.end method
