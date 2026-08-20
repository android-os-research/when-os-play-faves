.class Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;
.super Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;
.source "DualDarClientManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ddar/DualDarClientManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DualDARClientAgentService"
.end annotation


# instance fields
.field private greylist mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;


# direct methods
.method private constructor greylist <init>(Lcom/samsung/android/knox/ddar/IDualDARClient;)V
    .registers 2

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    return-void
.end method

.method public synthetic constructor greylist <init>(Lcom/samsung/android/knox/ddar/IDualDARClient;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;-><init>(Lcom/samsung/android/knox/ddar/IDualDARClient;)V

    return-void
.end method


# virtual methods
.method public greylist onMessage(ILjava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 15

    const-string p1, "dual_dar_response"

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v1, "ORIGINATING_SECURE_CLIENT_ID"

    .line 3
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 4
    :try_start_19
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    sparse-switch v3, :sswitch_data_1ce

    goto/16 :goto_97

    :sswitch_24
    const-string v3, "CLEAR_RESET_PASSWORD_TOKEN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_97

    const/4 p2, 0x7

    goto/16 :goto_98

    :sswitch_2f
    const-string v3, "ON_PASSWORD2_AUTH"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_97

    const/4 p2, 0x4

    goto/16 :goto_98

    :sswitch_3a
    const-string v3, "ON_BRINGUP"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_97

    move p2, v2

    goto :goto_98

    :sswitch_44
    const-string v3, "ON_DEVICE_OWNER_PROVISIONING"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_97

    move p2, v4

    goto :goto_98

    :sswitch_4e
    const-string v3, "ON_WORKSPACE_CREATION"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_97

    const/4 p2, 0x2

    goto :goto_98

    :sswitch_58
    const-string v3, "ON_DATA_LOCK_STATE_CHANGE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_97

    const/16 p2, 0xa

    goto :goto_98

    :sswitch_63
    const-string v3, "RESET_PASSWORD_WITH_TOKEN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_97

    const/16 p2, 0x8

    goto :goto_98

    :sswitch_6e
    const-string v3, "IS_SUPPORTED"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_97

    const/16 p2, 0x9

    goto :goto_98

    :sswitch_79
    const-string v3, "ON_PASSWORD2_CHANGE"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_97

    const/4 p2, 0x5

    goto :goto_98

    :sswitch_83
    const-string v3, "SET_RESET_PASSWORD_TOKEN"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_97

    const/4 p2, 0x6

    goto :goto_98

    :sswitch_8d
    const-string v3, "ON_WORKSPACE_DESTROY"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_93
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_93} :catch_1bf

    if-eqz p2, :cond_97

    const/4 p2, 0x3

    goto :goto_98

    :cond_97
    :goto_97
    move p2, v5

    :goto_98
    const-string v3, "RESET_PASSWORD_TOKEN"

    const-string v6, "NEW_PASSWORD"

    const-string v7, "EXISTING_PASSWORD"

    const-string v8, "RESET_PASSWORD_TOKEN_HANDLE"

    const-string v9, "user_id"

    packed-switch p2, :pswitch_data_1fc

    goto/16 :goto_1cd

    .line 5
    :pswitch_a7
    :try_start_a7
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    const-string v1, "is_data_locked"

    .line 6
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p3

    .line 7
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2, p3}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDataLockStateChange(IZ)V

    .line 8
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1cd

    :pswitch_bb
    const-string p2, "FEATURE"

    .line 9
    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 10
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2}, Lcom/samsung/android/knox/ddar/IDualDARClient;->isSupported(I)Z

    move-result p0

    .line 11
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 12
    invoke-virtual {v0, v9, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1cd

    .line 13
    :pswitch_cf
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 14
    iget-object v4, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v10

    .line 15
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 16
    iget-object v4, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v4, v1, p3}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object p3

    .line 17
    iget-object v3, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    move v4, p2

    move-object v5, v10

    move-object v8, p3

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onResetPasswordWithToken(I[BJ[B)Z

    move-result p0

    .line 18
    invoke-static {v10}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 19
    invoke-static {p3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 20
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 21
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1cd

    .line 22
    :pswitch_102
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 23
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 24
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2, v5, v6}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onClearResetPasswordToken(IJ)V

    .line 25
    invoke-virtual {v0, p1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 26
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1cd

    .line 27
    :pswitch_117
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 28
    iget-object v4, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v10

    .line 29
    invoke-virtual {p3, v8}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 30
    iget-object v4, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v4, v1, p3}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object p3

    .line 31
    iget-object v3, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    move v4, p2

    move-object v5, v10

    move-object v8, p3

    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onSetResetPasswordToken(I[BJ[B)Z

    move-result p0

    .line 32
    invoke-static {v10}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 33
    invoke-static {p3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 34
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 35
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto/16 :goto_1cd

    .line 36
    :pswitch_14a
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 37
    iget-object v3, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object v3

    .line 38
    iget-object v4, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {p3, v6}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v4, v1, p3}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object p3

    .line 39
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2, v3, p3}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onPasswordChange(I[B[B)Z

    move-result p0

    .line 40
    invoke-static {v3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 41
    invoke-static {p3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 42
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 43
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1cd

    .line 44
    :pswitch_175
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 45
    iget-object v3, p0, Lcom/samsung/android/knox/dar/ddar/proxy/IProxyAgentService;->mSecureClientForInAPI:Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;

    invoke-virtual {p3, v7}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object p3

    invoke-virtual {v3, v1, p3}, Lcom/samsung/android/knox/dar/ddar/securesession/SecureClient;->decryptMessageFrom(Ljava/lang/String;[B)[B

    move-result-object p3

    .line 46
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2, p3}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onPasswordAuth(I[B)Z

    move-result p0

    .line 47
    invoke-static {p3}, Lcom/samsung/android/knox/dar/ddar/securesession/Wiper;->wipe([B)V

    .line 48
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1cd

    .line 50
    :pswitch_193
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 51
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDualDARDestroyForUser(I)Z

    move-result p0

    .line 52
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1cd

    .line 54
    :pswitch_1a4
    invoke-virtual {p3, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 55
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0, p2}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onDualDARSetupForUser(I)Z

    move-result p0

    .line 56
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {v0, v9, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1cd

    .line 58
    :pswitch_1b5
    iget-object p0, p0, Lcom/samsung/android/knox/ddar/DualDarClientManager$DualDARClientAgentService;->mDualDARClient:Lcom/samsung/android/knox/ddar/IDualDARClient;

    invoke-interface {p0}, Lcom/samsung/android/knox/ddar/IDualDARClient;->onClientBringup()Z

    move-result p0

    .line 59
    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_1be
    .catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_1be} :catch_1bf

    goto :goto_1cd

    :catch_1bf
    move-exception p0

    const-string p2, "DualDarClientManager"

    const-string p3, "Failed to decrypt function params or complete the function invocation"

    .line 60
    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 62
    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :goto_1cd
    return-object v0

    :sswitch_data_1ce
    .sparse-switch
        -0x6b189c50 -> :sswitch_8d
        -0x5bcb73de -> :sswitch_83
        -0x43c5e5a8 -> :sswitch_79
        -0x3c070447 -> :sswitch_6e
        -0x40f8dcc -> :sswitch_63
        0x156556dd -> :sswitch_58
        0x36e621c9 -> :sswitch_4e
        0x481c6342 -> :sswitch_44
        0x4f85492d -> :sswitch_3a
        0x54a37250 -> :sswitch_2f
        0x60847f17 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_1fc
    .packed-switch 0x0
        :pswitch_1b5
        :pswitch_1a4
        :pswitch_1a4
        :pswitch_193
        :pswitch_175
        :pswitch_14a
        :pswitch_117
        :pswitch_102
        :pswitch_cf
        :pswitch_bb
        :pswitch_a7
    .end packed-switch
.end method
