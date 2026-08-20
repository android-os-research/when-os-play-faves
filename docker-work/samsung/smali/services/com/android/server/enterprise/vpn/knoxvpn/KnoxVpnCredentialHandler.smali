.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
.super Ljava/lang/Object;
.source "KnoxVpnCredentialHandler.java"


# static fields
.field public static final DBG:Z = true

.field public static final TAG:Ljava/lang/String; = "KnoxVpnCredentialHandler"

.field public static final USER_ID:I

.field public static mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    monitor-enter v0

    .line 62
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    if-nez v1, :cond_e

    .line 63
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;

    .line 65
    :cond_e
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->mInstance:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public deleteCredentialsFromKeystore(Ljava/lang/String;)V
    .registers 4

    .line 116
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 118
    :try_start_4
    invoke-static {p1}, Landroid/security/LegacyVpnProfileStore;->remove(Ljava/lang/String;)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_d
    .catchall {:try_start_4 .. :try_end_7} :catchall_b

    .line 123
    :goto_7
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_19

    :catchall_b
    move-exception p0

    goto :goto_1a

    :catch_d
    move-exception p0

    .line 120
    :try_start_e
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, "KnoxVpnCredentialHandler"

    const-string p1, "Exception occured while trying to delete the info from keystore"

    .line 121
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_b

    goto :goto_7

    :goto_19
    return-void

    .line 123
    :goto_1a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 124
    throw p0
.end method

.method public retrieveCredentialsFromKeystore(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 97
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "retrieveCredentialsFromKeystore alias retrieved is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KnoxVpnCredentialHandler"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    const/4 p0, 0x0

    .line 101
    :try_start_1c
    invoke-static {p1}, Landroid/security/LegacyVpnProfileStore;->get(Ljava/lang/String;)[B

    move-result-object p1

    if-eqz p1, :cond_28

    .line 103
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p1}, Ljava/lang/String;-><init>([B)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_27} :catch_2e
    .catchall {:try_start_1c .. :try_end_27} :catchall_2c

    move-object p0, v3

    .line 109
    :cond_28
    :goto_28
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_38

    :catchall_2c
    move-exception p0

    goto :goto_4e

    :catch_2e
    move-exception p1

    :try_start_2f
    const-string v3, "Exception occured while trying to retrieve the info from keystore"

    .line 106
    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_37
    .catchall {:try_start_2f .. :try_end_37} :catchall_2c

    goto :goto_28

    .line 111
    :goto_38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "retrieveCredentialsFromKeystore key retrieved is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    .line 109
    :goto_4e
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 110
    throw p0
.end method

.method public final storeCredentials(Ljava/lang/String;[B)Z
    .registers 4

    const/4 p0, 0x0

    if-eqz p2, :cond_13

    .line 87
    :try_start_3
    invoke-static {p1, p2}, Landroid/security/LegacyVpnProfileStore;->put(Ljava/lang/String;[B)Z

    move-result p0
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_7} :catch_8

    goto :goto_13

    :catch_8
    move-exception p1

    const-string p2, "KnoxVpnCredentialHandler"

    const-string v0, "Exception occured while trying to store the info inside keystore"

    .line 90
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_13
    return p0
.end method

.method public storeCredentialsInKeystore(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    .line 70
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 72
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    if-eqz v2, :cond_36

    .line 74
    invoke-virtual {p0, p1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnCredentialHandler;->storeCredentials(Ljava/lang/String;[B)Z

    move-result p0

    const-string v2, "KnoxVpnCredentialHandler"

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "storeCredentialsInKeystore status key is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " for alias "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for key "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_35
    .catchall {:try_start_4 .. :try_end_35} :catchall_3b

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    .line 78
    :goto_37
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_3b
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 79
    throw p0
.end method
