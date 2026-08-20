.class public final Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;
.super Ljava/lang/Object;
.source "KnoxVpnTetherAuthentication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;,
        Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;
    }
.end annotation


# static fields
.field public static final SERVICE_CONNECTION_TIMEOUT:J = 0x1b58L

.field public static final TAG:Ljava/lang/String; = "KnoxVpnTetherAuthentication"

.field public static mContext:Landroid/content/Context;

.field public static mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;


# instance fields
.field public volatile isCallbackReceived:Z

.field public volatile isTetherAuthSuccessful:Z

.field public volatile mBindUserId:I

.field public mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field public mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

.field public mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

.field public mProfileName:Ljava/lang/String;

.field public mTetherAuthConnectionList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;",
            ">;"
        }
    .end annotation
.end field

.field public mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

.field public mknoxVpnTetherAuthClientStatus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mtetherAuthDetails:Landroid/os/Bundle;

.field public syncObject:Ljava/lang/Object;

.field public final vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;


# direct methods
.method public static bridge synthetic -$$Nest$fgetisTetherAuthSuccessful(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isTetherAuthSuccessful:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmBindUserId(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)I
    .registers 1

    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCountDownLatch(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/util/concurrent/CountDownLatch;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmKnoxVpnHelper(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProfileName(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTetherAuthService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmknoxVpnTetherAuthClientStatus(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mknoxVpnTetherAuthClientStatus:Ljava/util/List;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmtetherAuthDetails(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Landroid/os/Bundle;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetsyncObject(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->syncObject:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetvpnConfig(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputisCallbackReceived(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isCallbackReceived:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputisTetherAuthSuccessful(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isTetherAuthSuccessful:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTetherAuthService(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapplyTetheringRulesForVpn(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->applyTetheringRulesForVpn()V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mknoxVpnTetherAuthClientStatus:Ljava/util/List;

    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    .line 57
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 58
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 59
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    const/4 v1, -0x1

    .line 60
    iput v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    .line 61
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    .line 62
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 63
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->syncObject:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isTetherAuthSuccessful:Z

    .line 65
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    const/4 v0, 0x1

    .line 66
    iput-boolean v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isCallbackReceived:Z

    .line 69
    sput-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mContext:Landroid/content/Context;

    .line 70
    invoke-static {p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    .line 71
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->getInstance()Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    .line 72
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->syncObject:Ljava/lang/Object;

    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    monitor-enter v0

    .line 175
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    if-nez v1, :cond_e

    .line 176
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;

    .line 178
    :cond_e
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnTetherAuthentication:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;
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
.method public final applyTetheringRulesForVpn()V
    .registers 10

    const-string v0, "KnoxVpnTetherAuthentication"

    .line 334
    :try_start_2
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->vpnConfig:Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileConfig;->getProfileEntry(Ljava/lang/String;)Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;

    move-result-object v1

    if-nez v1, :cond_d

    return-void

    .line 337
    :cond_d
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v2}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getInterfaceNameForUsbtethering()Ljava/lang/String;

    move-result-object v7

    .line 338
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceName()Ljava/lang/String;

    move-result-object v4

    .line 339
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getActivateState()I

    move-result v2

    .line 340
    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/profile/VpnProfileInfo;->getInterfaceType()I

    move-result v5

    if-eqz v7, :cond_67

    const/4 v1, 0x1

    if-nez v4, :cond_31

    if-ne v2, v1, :cond_31

    const-string v1, "Applying rules to drop tether packets after tether auth successful due to vpn down"

    .line 343
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {p0, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesForDroppingTetherPackets(Ljava/lang/String;)V

    goto :goto_67

    :cond_31
    if-eqz v4, :cond_67

    if-ne v2, v1, :cond_67

    const-string v1, "Applying vpn tethering rules after tether auth successful"

    .line 346
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->getVpnManagerService()Landroid/net/IVpnManager;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/net/IVpnManager;->getDnsServerListForInterface(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 348
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    invoke-virtual {v1, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getNetworkPartWithMask(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 349
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesForUsbTethering(Ljava/lang/String;I[Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4d} :catch_4e

    goto :goto_67

    :catch_4e
    move-exception p0

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Apply tether rules after successful auth failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_67
    :goto_67
    return-void
.end method

.method public bindTetherAuthService(Ljava/lang/String;I)V
    .registers 8

    .line 229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding to the tetherAuth service in user after tether auth package install "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KnoxVpnTetherAuthentication"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    if-nez v0, :cond_1b

    return-void

    .line 232
    :cond_1b
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    .line 233
    iput p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    .line 234
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unbinding previous service before binding again for the user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :try_start_44
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_57
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_57} :catch_58

    goto :goto_5e

    :catch_58
    const-string/jumbo p1, "unbinding failed since the service is already unbinded or not existing"

    .line 239
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :goto_5e
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_69
    new-instance p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)V

    .line 245
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.samsung.knox.vpn.tether.auth_knoxtetheringauthenticationservice"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.samsung.knox.vpn.tether.auth"

    const-string v2, "com.samsung.knox.vpn.tether.auth.TetherAuthService"

    .line 246
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 248
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mContext:Landroid/content/Context;

    const v2, 0x40000005    # 2.0000012f

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, p2, p1, v2, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_c6

    .line 251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Binding to the tetherAuth service in user "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is successful"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :try_start_b4
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v0, 0x1b58

    .line 255
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_c6
    .catch Ljava/lang/InterruptedException; {:try_start_b4 .. :try_end_c6} :catch_c6

    :catch_c6
    :cond_c6
    return-void
.end method

.method public bindTetherAuthService(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 9

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding to the tetherAuth service in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KnoxVpnTetherAuthentication"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iput-object p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mtetherAuthDetails:Landroid/os/Bundle;

    .line 191
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mProfileName:Ljava/lang/String;

    .line 192
    iput p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    .line 193
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_66

    .line 194
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unbinding previous service before binding again for the user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :try_start_41
    sget-object p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/ServiceConnection;

    invoke-virtual {p1, p2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_54} :catch_55

    goto :goto_5b

    :catch_55
    const-string/jumbo p1, "unbinding failed since the service is already unbinded or not existing"

    .line 198
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_5b
    iget-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    :cond_66
    new-instance p1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;

    invoke-direct {p1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$TetherAuthConnection;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)V

    .line 204
    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.samsung.knox.vpn.tether.auth_knoxtetheringauthenticationservice"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p3, "com.samsung.knox.vpn.tether.auth"

    const-string v0, "com.samsung.knox.vpn.tether.auth.TetherAuthService"

    .line 205
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    sget-object p3, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mContext:Landroid/content/Context;

    const v0, 0x40000005    # 2.0000012f

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p3, p2, p1, v0, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_c1

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " is successful"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :try_start_af
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 p2, 0x1b58

    .line 214
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p2, p3, v0}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    const/4 p1, 0x0

    .line 215
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;
    :try_end_c1
    .catch Ljava/lang/InterruptedException; {:try_start_af .. :try_end_c1} :catch_c1

    :catch_c1
    :cond_c1
    return-void
.end method

.method public getBindedUserId()I
    .registers 1

    .line 371
    iget p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    return p0
.end method

.method public getKnoxVpnTetherAuthClientStatus()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 367
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mknoxVpnTetherAuthClientStatus:Ljava/util/List;

    return-object p0
.end method

.method public getTetherAuthStatus()Z
    .registers 1

    .line 363
    iget-boolean p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isTetherAuthSuccessful:Z

    return p0
.end method

.method public final getVpnManagerService()Landroid/net/IVpnManager;
    .registers 1

    const-string/jumbo p0, "vpn_management"

    .line 76
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    invoke-static {p0}, Landroid/net/IVpnManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IVpnManager;

    move-result-object p0

    return-object p0
.end method

.method public startTetherAuthProcess(ILjava/lang/String;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    if-eqz v1, :cond_20

    .line 303
    new-instance v2, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;

    invoke-direct {v2, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication$AuthStatusCallback;-><init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;)V

    invoke-interface {v1, v2}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->startAuthenticationProcess(Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IAuthenticationStatus;)Landroid/os/Bundle;

    move-result-object v1

    .line 304
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mKnoxVpnHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;

    const-string v3, "com.samsung.knox.vpn.tether.auth"

    invoke-virtual {v2, p1, v3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnHelper;->getUIDForPackage(ILjava/lang/String;)I

    move-result p1

    .line 305
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v2, p1, p2, p3, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->addRulesTetherAuth(ILjava/lang/String;Ljava/util/List;Landroid/os/Bundle;)V

    const/4 p1, 0x0

    .line 306
    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isCallbackReceived:Z

    .line 308
    :cond_20
    monitor-exit v0

    return-void

    :catchall_22
    move-exception p0

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_22

    throw p0
.end method

.method public stopTetheringAuthProcess(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 317
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    .line 318
    :try_start_3
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    if-eqz v1, :cond_2c

    .line 319
    invoke-interface {v1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->stopAuthenticationProcess()I

    move-result v1

    const-string v2, "KnoxVpnTetherAuthentication"

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopAuthenticationProcess result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesTetherAuth()V

    if-eqz p1, :cond_2c

    const/4 p1, 0x0

    .line 323
    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isTetherAuthSuccessful:Z

    .line 325
    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method public unbindTetherAuthService(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->syncObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    const-string v1, "KnoxVpnTetherAuthentication"

    .line 272
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start unbinding tetherAuth service in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_95

    .line 274
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    if-eqz v1, :cond_49

    .line 275
    invoke-interface {v1}, Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;->stopAuthenticationProcess()I

    move-result v1

    const-string v2, "KnoxVpnTetherAuthentication"

    .line 276
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopAuthenticationProcess before unbind and result is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_49
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const-string v1, "KnoxVpnTetherAuthentication"

    .line 279
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unbinding tetherAuth service in user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthConnectionList:Ljava/util/HashMap;

    iget v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mBindUserId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "KnoxVpnTetherAuthentication"

    const-string/jumbo v2, "start removing tether auth firewall rules during unbinding"

    .line 281
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    iget-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mFirewallHelper:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;

    invoke-virtual {v1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnFirewallHelper;->removeRulesTetherAuth()V

    const/4 v1, 0x0

    .line 283
    iput-object v1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->mTetherAuthService:Lcom/samsung/android/knox/net/vpn/serviceprovider/tethering/IKnoxVpnTetherAuthInterface;

    if-eqz p1, :cond_95

    const/4 p1, 0x0

    .line 285
    iput-boolean p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnTetherAuthentication;->isTetherAuthSuccessful:Z

    .line 287
    :cond_95
    monitor-exit v0

    return-void

    :catchall_97
    move-exception p0

    monitor-exit v0
    :try_end_99
    .catchall {:try_start_3 .. :try_end_99} :catchall_97

    throw p0
.end method
