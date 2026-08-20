.class public Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnVersion;
.super Ljava/lang/Object;
.source "KnoxVpnVersion.java"


# static fields
.field public static final KNOX_VPN_NUMBER:Ljava/lang/String; = "6"

.field public static final KNOX_VPN_VERSION:Ljava/lang/String; = "2.3.0"

.field public static final PROP_KNOX_VPN_VERSION:Ljava/lang/String; = "net.knoxvpn.version"

.field public static final TAG:Ljava/lang/String; = "KnoxVpnVersion"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNumber()Ljava/lang/String;
    .registers 1

    const-string v0, "6"

    return-object v0
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "2.3.0"

    return-object v0
.end method

.method public static getVersionByKnox()Ljava/lang/String;
    .registers 2

    .line 57
    invoke-static {}, Lcom/samsung/android/knox/EdmConstants;->getEnterpriseKnoxSdkVersion()Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;

    move-result-object v0

    .line 58
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnVersion$1;->$SwitchMap$com$samsung$android$knox$EdmConstants$EnterpriseKnoxSdkVersion:[I

    invoke-virtual {v0}, Lcom/samsung/android/knox/EdmConstants$EnterpriseKnoxSdkVersion;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const-string v1, "2.2.0"

    packed-switch v0, :pswitch_data_22

    goto :goto_20

    :pswitch_12
    const-string v1, "2.4.0"

    goto :goto_20

    :pswitch_15
    const-string v1, "2.3.0"

    goto :goto_20

    :pswitch_18
    const-string v1, "2.2.4"

    goto :goto_20

    :pswitch_1b
    const-string v1, "2.2.3"

    goto :goto_20

    :pswitch_1e
    const-string v1, "2.2.2"

    :goto_20
    :pswitch_20
    return-object v1

    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_20
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
        :pswitch_15
        :pswitch_12
    .end packed-switch
.end method

.method public static writeVersionInProperties()V
    .registers 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "writeVersionInProperties : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnVersion;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxVpnVersion"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnVersion;->getVersionByKnox()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "net.knoxvpn.version"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
