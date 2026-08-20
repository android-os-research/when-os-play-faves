.class public final Lcom/android/server/knox/dar/DarUtil;
.super Ljava/lang/Object;
.source "DarUtil.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "DARUtil"

.field public static mIsDeviceOwnerEnabled:Z = false


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static credentialTypeToString(I)Ljava/lang/String;
    .registers 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_27

    const/4 v0, 0x1

    if-eq p0, v0, :cond_24

    const/4 v0, 0x3

    if-eq p0, v0, :cond_21

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1e

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1e
    const-string p0, "Password"

    return-object p0

    :cond_21
    const-string p0, "Pin"

    return-object p0

    :cond_24
    const-string p0, "Pattern"

    return-object p0

    :cond_27
    const-string p0, "None"

    return-object p0
.end method

.method public static getSafe(Lcom/android/internal/widget/LockscreenCredential;)Lcom/android/internal/widget/LockscreenCredential;
    .registers 1

    if-nez p0, :cond_6

    .line 84
    invoke-static {}, Lcom/android/internal/widget/LockscreenCredential;->createNone()Lcom/android/internal/widget/LockscreenCredential;

    move-result-object p0

    :cond_6
    return-object p0
.end method

.method public static isDaemonRunning(Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    const-string v1, "DARUtil"

    if-eqz p0, :cond_4d

    .line 118
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_4d

    .line 124
    :cond_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init.svc."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 126
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 128
    :try_start_22
    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_38

    .line 129
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2f

    goto :goto_38

    :cond_2f
    const-string/jumbo v1, "running"

    .line 132
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    move v0, p0

    goto :goto_45

    :cond_38
    :goto_38
    const-string/jumbo p0, "isDaemonRunning() - Service not found"

    .line 130
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_3e} :catch_41
    .catchall {:try_start_22 .. :try_end_3e} :catchall_3f

    goto :goto_45

    :catchall_3f
    move-exception p0

    goto :goto_49

    :catch_41
    move-exception p0

    .line 135
    :try_start_42
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3f

    .line 137
    :goto_45
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :goto_49
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 138
    throw p0

    :cond_4d
    :goto_4d
    const-string/jumbo p0, "isDaemonRunning() - Invalid service name"

    .line 119
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isDeviceOwnerUser(I)Z
    .registers 1

    if-nez p0, :cond_a

    .line 52
    invoke-static {}, Lcom/android/server/knox/dar/DarUtil;->isDoEnabled()Z

    move-result p0

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static isDoEnabled()Z
    .registers 2

    .line 46
    sget-boolean v0, Lcom/android/server/knox/dar/DarUtil;->mIsDeviceOwnerEnabled:Z

    if-nez v0, :cond_10

    const-string v0, "DARUtil"

    const-string v1, "Device owner status not updated yet..."

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 48
    invoke-static {v0}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v0

    :cond_10
    return v0
.end method

.method public static isEnterpriseUser(Landroid/content/pm/UserInfo;)Z
    .registers 5

    .line 56
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isSdpNotSupportedSecureFolder()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isDualAppProfile()Z

    move-result v0

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_1e
    iget v0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 57
    invoke-static {v0}, Lcom/android/server/knox/dar/DarUtil;->isDeviceOwnerUser(I)Z

    move-result v0

    if-eqz v0, :cond_28

    :cond_26
    const/4 v0, 0x1

    goto :goto_29

    :cond_28
    const/4 v0, 0x0

    :goto_29
    const-string v1, "DARUtil"

    if-nez v0, :cond_44

    .line 59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not an enterprise user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5b

    .line 61
    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "is enterprise user : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5b
    return v0
.end method

.method public static isFileBasedEncryption()Z
    .registers 4

    .line 91
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_4
    const-string/jumbo v2, "ro.crypto.type"

    .line 93
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_11} :catch_17
    .catchall {:try_start_4 .. :try_end_11} :catchall_15

    .line 97
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_1f

    :catchall_15
    move-exception v2

    goto :goto_20

    :catch_17
    move-exception v2

    .line 95
    :try_start_18
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_15

    .line 97
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 v2, 0x0

    :goto_1f
    return v2

    :goto_20
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 98
    throw v2
.end method

.method public static isLegacyContainerUser(Landroid/content/pm/UserInfo;)Z
    .registers 4

    .line 75
    invoke-virtual {p0}, Landroid/content/pm/UserInfo;->isSecureFolder()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Identified as legacy type container user : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DARUtil"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1e
    return v0
.end method

.method public static setDoEnabled(Z)V
    .registers 1

    .line 43
    sput-boolean p0, Lcom/android/server/knox/dar/DarUtil;->mIsDeviceOwnerEnabled:Z

    return-void
.end method

.method public static setSystemPropertyBoolean(Ljava/lang/String;Z)V
    .registers 4

    if-eqz p0, :cond_23

    .line 143
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_23

    .line 146
    :cond_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 148
    :try_start_d
    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_14} :catch_1a
    .catchall {:try_start_d .. :try_end_14} :catchall_18

    .line 152
    :goto_14
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_2a

    :catchall_18
    move-exception p0

    goto :goto_1f

    :catch_1a
    move-exception p0

    .line 150
    :try_start_1b
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_18

    goto :goto_14

    .line 152
    :goto_1f
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 153
    throw p0

    :cond_23
    :goto_23
    const-string p0, "DARUtil"

    const-string p1, "Invalid property"

    .line 144
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2a
    return-void
.end method

.method public static updateDeviceOwnerStatus(Z)V
    .registers 9

    const-string v0, "DARUtil"

    .line 26
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 28
    :try_start_7
    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isDoEnabled(I)Z

    move-result v4

    .line 29
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Knox device_owner property : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "ro.device_owner"

    .line 31
    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 32
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DPM device_owner property  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Extra factor               : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_54

    if-nez v5, :cond_54

    if-eqz p0, :cond_55

    :cond_54
    const/4 v3, 0x1

    .line 34
    :cond_55
    invoke-static {v3}, Lcom/android/server/knox/dar/DarUtil;->setDoEnabled(Z)V
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_58} :catch_5b
    .catchall {:try_start_7 .. :try_end_58} :catchall_59

    goto :goto_5f

    :catchall_59
    move-exception p0

    goto :goto_63

    :catch_5b
    move-exception p0

    .line 36
    :try_start_5c
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_59

    .line 38
    :goto_5f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_63
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 39
    throw p0
.end method
