.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;
.super Ljava/lang/Object;
.source "KnoxVpnPacProcessor.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KnoxVpnPacConnection"
.end annotation


# instance fields
.field public profile:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;ILjava/lang/String;)V
    .registers 4

    .line 114
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    iput p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    .line 116
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized onBindingDied(Landroid/content/ComponentName;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string p1, "KnoxVpnPacProcessor"

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindingDied is reached for user and trying to bind again "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$fgetmKnoxVpnProxyClientStatus(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindingDied callback has been recieved for the proxy client in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and for profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_1 .. :try_end_52} :catchall_54

    .line 141
    monitor-exit p0

    return-void

    :catchall_54
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 12

    monitor-enter p0

    :try_start_1
    const-string p1, "KnoxVpnPacProcessor"

    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected is reached for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$fgetmKnoxVpnProxyClientStatus(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected callback has been recieved for the proxy client in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and for profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    invoke-static {p2}, Lcom/android/net/IProxyService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/net/IProxyService;

    move-result-object p1

    if-nez p1, :cond_61

    const-string p1, "KnoxVpnPacProcessor"

    const-string p2, "Got a null IBinder reference, aborting..."

    .line 149
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_135

    .line 150
    monitor-exit p0

    return-void

    .line 152
    :cond_61
    :try_start_61
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    invoke-static {p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$mhasProxyService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;I)Z

    move-result p2

    if-eqz p2, :cond_86

    const-string p1, "KnoxVpnPacProcessor"

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onServiceConnected:Binder object already exists for the user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_84
    .catchall {:try_start_61 .. :try_end_84} :catchall_135

    .line 154
    monitor-exit p0

    return-void

    :cond_86
    :try_start_86
    const-string p2, "KnoxVpnPacProcessor"

    const-string/jumbo v0, "onServiceConnected:After onservice disconnect for unknown reason or for the first onservice connect"

    .line 156
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    invoke-static {p2, v0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$msetProxyService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;ILjava/lang/Object;)V

    .line 160
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$mgetVpnConfigInstance(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object p2

    if-eqz p2, :cond_133

    .line 161
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$fgetmVpnConfig(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_ab
    :goto_ab
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_133

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 162
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$mgetConfiguredUser(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;)I

    move-result v2

    iget v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    if-eq v2, v3, :cond_c6

    goto :goto_ab

    .line 166
    :cond_c6
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_ce

    goto :goto_ab

    .line 169
    :cond_ce
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPacurl()Landroid/net/Uri;

    move-result-object v4

    .line 171
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProxyServer()Ljava/lang/String;

    move-result-object v5

    .line 172
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getNetId()I

    move-result v0

    .line 173
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;
    :try_end_e0
    .catchall {:try_start_86 .. :try_end_e0} :catchall_135

    if-eq v4, v6, :cond_11e

    .line 175
    :try_start_e2
    invoke-interface {p1, v1}, Lcom/android/net/IProxyService;->startPacSystemForKnoxProfile(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "KnoxVpnPacProcessor"

    .line 176
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pac support for the profile"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is started since the service is connected and the result is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_10e

    if-eqz v2, :cond_10e

    .line 179
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-virtual {v5, v1, v2, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setCurrentProxyScript(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_10e
    .catch Landroid/os/RemoteException; {:try_start_e2 .. :try_end_10e} :catch_10e
    .catchall {:try_start_e2 .. :try_end_10e} :catchall_135

    .line 185
    :catch_10e
    :cond_10e
    :try_start_10e
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-static {v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$mstartProxyServerForKnoxProfile(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;)I

    .line 186
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-virtual {v4, v1, v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setMiscValueForPacProfile(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 187
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-static {v0, v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$msendPacServiceStatus(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;ILjava/lang/String;)V

    goto :goto_ab

    .line 188
    :cond_11e
    sget-object v4, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnConstants;->DEFAULT_PROXY_SERVER:Ljava/lang/String;

    if-eq v5, v4, :cond_ab

    .line 189
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-static {v4, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$mstartProxyServerForKnoxProfile(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;Ljava/lang/String;)I

    .line 190
    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-virtual {v4, v1, v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->setMiscValueForPacProfile(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 191
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-static {v0, v3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$msendPacServiceStatus(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;ILjava/lang/String;)V
    :try_end_131
    .catchall {:try_start_10e .. :try_end_131} :catchall_135

    goto/16 :goto_ab

    .line 196
    :cond_133
    monitor-exit p0

    return-void

    :catchall_135
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string p1, "KnoxVpnPacProcessor"

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServicedisconnected is reached for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$fgetmKnoxVpnProxyClientStatus(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceDisconnected callback has been recieved for the proxy client in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and for profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$smgetDownloadStatus()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 125
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$smgetCurrentRetryStatus()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 126
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$smgetDownloadThread()Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 127
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$mgetVpnConfigInstance(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object p1

    if-eqz p1, :cond_94

    .line 128
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$fgetmVpnConfig(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntries()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_94

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    .line 129
    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getProfileName()Ljava/lang/String;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$msendPacServiceStatus(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;ILjava/lang/String;)V

    goto :goto_7d

    .line 133
    :cond_94
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    invoke-static {p1, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->-$$Nest$mremovePacInterface(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;I)V

    .line 134
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->profile:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor$KnoxVpnPacConnection;->userId:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnPacProcessor;->bindProxyService(Ljava/lang/String;I)V
    :try_end_a4
    .catchall {:try_start_1 .. :try_end_a4} :catchall_a6

    .line 135
    monitor-exit p0

    return-void

    :catchall_a6
    move-exception p1

    monitor-exit p0

    throw p1
.end method
