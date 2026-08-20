.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;
.super Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IAuthenticationStatus$Stub;
.source "KnoxVpnTetherAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AuthStatusCallback"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)V
    .registers 2

    .line 151
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-direct {p0}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IAuthenticationStatus$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getStatus(I)V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fputisCallbackReceived(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;Z)V

    if-nez p1, :cond_2d

    .line 157
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fgetsyncObject(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 158
    :try_start_f
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$fputisTetherAuthSuccessful(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;Z)V
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_2a

    .line 160
    :try_start_14
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->stopTetheringAuthProcess(Z)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_1a} :catch_1b
    .catchall {:try_start_14 .. :try_end_1a} :catchall_2a

    goto :goto_23

    :catch_1b
    :try_start_1b
    const-string v0, "KnoxVpnTetherAuthentication"

    const-string/jumbo v1, "unknown error occured when tried to stop the tether auth process"

    .line 162
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :goto_23
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-static {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->-$$Nest$mapplyTetheringRulesForVpn(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)V

    .line 165
    monitor-exit p1

    goto :goto_2d

    :catchall_2a
    move-exception p0

    monitor-exit p1
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_2a

    throw p0

    :cond_2d
    :goto_2d
    return-void
.end method
