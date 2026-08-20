.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;
.super Ljava/lang/Object;
.source "KnoxVpnTetherAuthentication.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TetherAuthConnection"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .registers 5

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onBindingDied is reached for user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmBindUserId(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KnoxVpnTetherAuthentication"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmknoxVpnTetherAuthClientStatus(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onBindingDied callback has been recieved for tetherAuth client in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmBindUserId(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and for profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmProfileName(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " at "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 91
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6

    const-string p1, "KnoxVpnTetherAuthentication"

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected is reached for user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmBindUserId(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmknoxVpnTetherAuthClientStatus(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceConnected callback has been recieved for tetherAuth client in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmBindUserId(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and for profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmProfileName(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetsyncObject(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 101
    :try_start_5f
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fputmTetherAuthService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;)V
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_200

    .line 103
    :try_start_68
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmTetherAuthService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmtetherAuthDetails(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key-tether-auth-login-page"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setHtmlSignInPage(Ljava/lang/String;)V

    .line 104
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmTetherAuthService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmtetherAuthDetails(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "key-tether-auth-response-page"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setHtmlResponsePage(Ljava/lang/String;)V

    .line 106
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "key-tether-client-certificate-issuer-cn"

    .line 107
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmtetherAuthDetails(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "key-tether-client-certificate-issuer-cn"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "key-tether-client-certificate-issued-cn"

    .line 108
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmtetherAuthDetails(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "key-tether-client-certificate-issued-cn"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmTetherAuthService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setClientAuthDetails(Landroid/os/Bundle;)V

    .line 111
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmKnoxVpnHelper(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmProfileName(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "captivecert_pwd"

    invoke-virtual {p2, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->retrieveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 112
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmTetherAuthService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmtetherAuthDetails(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "key-tether-captive-portal-alias"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setCaptivePortalAlias(Ljava/lang/String;)Z

    .line 113
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmTetherAuthService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmtetherAuthDetails(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "key-tether-captive-portal-certificate"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setCaptivePortalCertificate([BLjava/lang/String;)I

    .line 115
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmKnoxVpnHelper(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmProfileName(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "cacert_pwd"

    invoke-virtual {p2, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->retrieveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 116
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmTetherAuthService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmtetherAuthDetails(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "key-tether-ca-alias"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setCaAlias(Ljava/lang/String;)Z

    .line 117
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmTetherAuthService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmtetherAuthDetails(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "key-tether-ca-certificate"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setCACertificate([BLjava/lang/String;)I

    .line 119
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmKnoxVpnHelper(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmProfileName(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "servercert_pwd"

    invoke-virtual {p2, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->retrieveProfileCredentials(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 120
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmTetherAuthService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmtetherAuthDetails(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "key-tether-user-alias"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setServerAlias(Ljava/lang/String;)Z

    .line 121
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmTetherAuthService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmtetherAuthDetails(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "key-tether-user-certificate"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->setServerCertificate([BLjava/lang/String;)I

    .line 124
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetisTetherAuthSuccessful(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Z

    move-result p2

    if-nez p2, :cond_1ed

    .line 125
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetvpnConfig(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmProfileName(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object p2

    if-eqz p2, :cond_1ed

    .line 127
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmKnoxVpnHelper(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInterfaceNameForUsbtethering()Ljava/lang/String;

    move-result-object v0

    .line 128
    invoke-virtual {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-virtual {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v2

    if-eqz v0, :cond_1ed

    if-eqz v1, :cond_1ed

    const/4 v1, 0x1

    if-ne v2, v1, :cond_1ed

    const-string v1, "KnoxVpnTetherAuthentication"

    const-string/jumbo v2, "start tether auth process after onServiceConnected event"

    .line 132
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmKnoxVpnHelper(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getIpAddressForUsbTetheringInterface()Ljava/util/List;

    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-virtual {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getPersonaId()I

    move-result p2

    invoke-virtual {v2, p2, v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->startTetherAuthProcess(ILjava/lang/String;Ljava/util/List;)V
    :try_end_1d1
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_1d1} :catch_1d2
    .catchall {:try_start_68 .. :try_end_1d1} :catchall_200

    goto :goto_1ed

    :catch_1d2
    move-exception p2

    :try_start_1d3
    const-string v0, "KnoxVpnTetherAuthentication"

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error happened during remote process communication with the application "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_1ed
    :goto_1ed
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmCountDownLatch(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p2

    if-eqz p2, :cond_1fe

    .line 144
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmCountDownLatch(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 146
    :cond_1fe
    monitor-exit p1

    return-void

    :catchall_200
    move-exception p0

    monitor-exit p1
    :try_end_202
    .catchall {:try_start_1d3 .. :try_end_202} :catchall_200

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5

    .line 83
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onServicedisconnected is reached for user "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmBindUserId(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KnoxVpnTetherAuthentication"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmknoxVpnTetherAuthClientStatus(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onServiceDisconnected callback has been recieved for tetherAuth client in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmBindUserId(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and for profile "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetmProfileName(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fputmTetherAuthService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;)V

    return-void
.end method
