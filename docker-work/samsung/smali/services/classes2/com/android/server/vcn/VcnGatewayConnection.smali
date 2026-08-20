.class public Lcom/android/server/vcn/VcnGatewayConnection;
.super Lcom/android/internal/util/StateMachine;
.source "VcnGatewayConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;,
        Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;,
        Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;,
        Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;,
        Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;,
        Lcom/android/server/vcn/VcnGatewayConnection$ConnectedStateBase;,
        Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;,
        Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;,
        Lcom/android/server/vcn/VcnGatewayConnection$ActiveBaseState;,
        Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;,
        Lcom/android/server/vcn/VcnGatewayConnection$BaseState;,
        Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventUnderlyingNetworkChangedInfo;,
        Lcom/android/server/vcn/VcnGatewayConnection$EventInfo;
    }
.end annotation


# static fields
.field public static final ARG_NOT_PRESENT:I = -0x80000000

.field public static final DISCONNECT_REASON_INTERNAL_ERROR:Ljava/lang/String; = "Uncaught exception: "

.field public static final DISCONNECT_REASON_NETWORK_AGENT_UNWANTED:Ljava/lang/String; = "NetworkAgent was unwanted"

.field public static final DISCONNECT_REASON_TEARDOWN:Ljava/lang/String; = "teardown() called on VcnTunnel"

.field public static final DISCONNECT_REASON_UNDERLYING_NETWORK_LOST:Ljava/lang/String; = "Underlying Network lost"

.field public static final DISCONNECT_REQUEST_ALARM:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final DUMMY_ADDR:Ljava/net/InetAddress;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final EVENT_DISCONNECT_REQUESTED:I = 0x7

.field public static final EVENT_IKE_CONNECTION_INFO_CHANGED:I = 0xc

.field public static final EVENT_MIGRATION_COMPLETED:I = 0xb

.field public static final EVENT_RETRY_TIMEOUT_EXPIRED:I = 0x2

.field public static final EVENT_SAFE_MODE_TIMEOUT_EXCEEDED:I = 0xa

.field public static final EVENT_SESSION_CLOSED:I = 0x4

.field public static final EVENT_SESSION_LOST:I = 0x3

.field public static final EVENT_SETUP_COMPLETED:I = 0x6

.field public static final EVENT_SUBSCRIPTIONS_CHANGED:I = 0x9

.field public static final EVENT_TEARDOWN_TIMEOUT_EXPIRED:I = 0x8

.field public static final EVENT_TRANSFORM_CREATED:I = 0x5

.field public static final EVENT_UNDERLYING_NETWORK_CHANGED:I = 0x1

.field public static final MERGED_CAPABILITIES:[I

.field public static final NETWORK_INFO_EXTRA_INFO:Ljava/lang/String; = "VCN"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final NETWORK_INFO_NETWORK_TYPE_STRING:Ljava/lang/String; = "MOBILE"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final NETWORK_LOSS_DISCONNECT_TIMEOUT_SECONDS:I = 0x1e
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final RETRY_TIMEOUT_ALARM:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final SAFEMODE_TIMEOUT_SECONDS:I = 0x1e
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final SAFEMODE_TIMEOUT_SECONDS_TEST_MODE:I = 0xa

.field public static final TAG:Ljava/lang/String;

.field public static final TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final TEARDOWN_TIMEOUT_SECONDS:I = 0x5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public static final TOKEN_ALL:I = -0x80000000


# instance fields
.field public mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

.field public final mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public final mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public final mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

.field public final mConnectivityManager:Landroid/net/ConnectivityManager;

.field public mCurrentToken:I

.field public final mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

.field public mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

.field public final mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public final mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public mFailedAttempts:I

.field public final mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

.field public mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

.field public mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

.field public final mIpSecManager:Landroid/net/IpSecManager;

.field public mIsInSafeMode:Z

.field public final mIsMobileDataEnabled:Z

.field public mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

.field public mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

.field public mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

.field public mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field public final mRetryTimeoutState:Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation
.end field

.field public mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field public final mSubscriptionGroup:Landroid/os/ParcelUuid;

.field public mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

.field public mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

.field public mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

.field public final mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

.field public final mUnderlyingNetworkControllerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

.field public final mVcnContext:Lcom/android/server/vcn/VcnContext;

.field public final mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;


# direct methods
.method public static synthetic $r8$lambda$mX1zM6slIyhK-7U4wqV__cfYc08(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/os/Message;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->lambda$createScheduledAlarm$0(Landroid/os/Message;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectionConfig(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/vcn/VcnGatewayConnectionConfig;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmConnectivityManager(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ConnectivityManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentToken(Lcom/android/server/vcn/VcnGatewayConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeps(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmFailedAttempts(Lcom/android/server/vcn/VcnGatewayConnection;)I
    .registers 1

    iget p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmGatewayStatusCallback(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIkeConnectionInfo(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/ipsec/ike/IkeSessionConnectionInfo;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIpSecManager(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIpSecManager:Landroid/net/IpSecManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsMobileDataEnabled(Lcom/android/server/vcn/VcnGatewayConnection;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsMobileDataEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsQuitting(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/util/OneWayBoolean;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;)Landroid/net/IpSecManager$IpSecTunnelInterface;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVcnContext(Lcom/android/server/vcn/VcnGatewayConnection;)Lcom/android/server/vcn/VcnContext;
    .registers 1

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmChildConfig(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mChildConfig:Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFailedAttempts(Lcom/android/server/vcn/VcnGatewayConnection;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIkeConnectionInfo(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIkeSession(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmIsInSafeMode(Lcom/android/server/vcn/VcnGatewayConnection;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSafeModeTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/internal/util/WakeupMessage;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTunnelIface(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/net/IpSecManager$IpSecTunnelInterface;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUnderlying(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelDisconnectRequestAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelDisconnectRequestAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelRetryTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelRetryTimeoutAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelSafeModeAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelSafeModeAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mcancelTeardownTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelTeardownTimeoutAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mchildOpened(Lcom/android/server/vcn/VcnGatewayConnection;ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->childOpened(ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mchildTransformCreated(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;I)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->childTransformCreated(ILandroid/net/IpSecTransform;I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mikeConnectionInfoChanged(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->ikeConnectionInfoChanged(ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogDbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogInfo(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogVdbg(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mlogWtf(Lcom/android/server/vcn/VcnGatewayConnection;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmaybeReleaseWakeLock(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->maybeReleaseWakeLock()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmigrationCompleted(Lcom/android/server/vcn/VcnGatewayConnection;ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->migrationCompleted(ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendMessageAndAcquireWakeLock(Lcom/android/server/vcn/VcnGatewayConnection;II)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msendMessageAndAcquireWakeLock(Lcom/android/server/vcn/VcnGatewayConnection;IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V
    .registers 4

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msessionClosed(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionClosed(ILjava/lang/Exception;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msessionLost(Lcom/android/server/vcn/VcnGatewayConnection;ILjava/lang/Exception;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionLost(ILjava/lang/Exception;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetDisconnectRequestAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->setDisconnectRequestAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetRetryTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->setRetryTimeoutAlarm(J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTeardownTimeoutAlarm(Lcom/android/server/vcn/VcnGatewayConnection;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->setTeardownTimeoutAlarm()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 166
    const-class v0, Lcom/android/server/vcn/VcnGatewayConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    const-string v1, "192.0.2.0"

    .line 177
    invoke-static {v1}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DUMMY_ADDR:Ljava/net/InetAddress;

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_TEARDOWN_TIMEOUT_ALARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_DISCONNECT_REQUEST_ALARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

    .line 186
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_RETRY_TIMEOUT_ALARM"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->RETRY_TIMEOUT_ALARM:Ljava/lang/String;

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_SAFEMODE_TIMEOUT_ALARM"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 191
    fill-array-data v0, :array_66

    sput-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    return-void

    nop

    :array_66
    .array-data 4
        0xb
        0x12
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;Z)V
    .registers 15

    .line 707
    new-instance v7, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    invoke-direct {v7}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/vcn/VcnGatewayConnection;-><init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;ZLcom/android/server/vcn/VcnGatewayConnection$Dependencies;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/vcn/VcnContext;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;ZLcom/android/server/vcn/VcnGatewayConnection$Dependencies;)V
    .registers 24
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v4, p2

    move-object/from16 v1, p3

    move-object/from16 v3, p4

    move-object/from16 v2, p5

    move-object/from16 v5, p7

    .line 726
    sget-object v6, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    const-string v8, "Missing vcnContext"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v0, v6, v8}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 549
    new-instance v8, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState-IA;)V

    iput-object v8, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectedState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectedState;

    .line 553
    new-instance v10, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    invoke-direct {v10, v0, v9}, Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState-IA;)V

    iput-object v10, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectingState:Lcom/android/server/vcn/VcnGatewayConnection$DisconnectingState;

    .line 557
    new-instance v11, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    invoke-direct {v11, v0, v9}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState-IA;)V

    iput-object v11, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectingState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectingState;

    .line 561
    new-instance v12, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    invoke-direct {v12, v0}, Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    iput-object v12, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectedState:Lcom/android/server/vcn/VcnGatewayConnection$ConnectedState;

    .line 565
    new-instance v13, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

    invoke-direct {v13, v0}, Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;)V

    iput-object v13, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutState:Lcom/android/server/vcn/VcnGatewayConnection$RetryTimeoutState;

    .line 586
    iput-object v9, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    .line 615
    new-instance v14, Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-direct {v14}, Lcom/android/server/vcn/util/OneWayBoolean;-><init>()V

    iput-object v14, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    const/4 v14, 0x0

    .line 624
    iput-boolean v14, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    const/4 v15, -0x1

    .line 646
    iput v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 654
    iput v14, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    .line 727
    iput-object v7, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    const-string v15, "Missing subscriptionGroup"

    .line 728
    invoke-static {v4, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v15, v4

    check-cast v15, Landroid/os/ParcelUuid;

    iput-object v4, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    const-string v15, "Missing connectionConfig"

    .line 729
    invoke-static {v3, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v15, v3

    check-cast v15, Landroid/net/vcn/VcnGatewayConnectionConfig;

    iput-object v3, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    const-string v15, "Missing gatewayStatusCallback"

    .line 731
    invoke-static {v2, v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    iput-object v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    move/from16 v2, p6

    .line 732
    iput-boolean v2, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsMobileDataEnabled:Z

    const-string v2, "Missing deps"

    .line 733
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v5, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    const-string v2, "Missing snapshot"

    .line 735
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 737
    new-instance v15, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

    invoke-direct {v15, v0, v9}, Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback-IA;)V

    iput-object v15, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkControllerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

    .line 740
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2, v6}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newWakeLock(Landroid/content/Context;ILjava/lang/String;)Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    .line 742
    iget-object v6, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    move-object/from16 v1, p7

    move-object/from16 v2, p1

    move-object v5, v6

    move-object v6, v15

    .line 743
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newUnderlyingNetworkController(Lcom/android/server/vcn/VcnContext;Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/os/ParcelUuid;Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;)Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    .line 749
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/net/IpSecManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpSecManager;

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mIpSecManager:Landroid/net/IpSecManager;

    .line 750
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/vcn/VcnContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, v0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 752
    invoke-virtual {v0, v8}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 753
    invoke-virtual {v0, v10}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 754
    invoke-virtual {v0, v11}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 755
    invoke-virtual {v0, v12}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 756
    invoke-virtual {v0, v13}, Lcom/android/internal/util/StateMachine;->addState(Lcom/android/internal/util/State;)V

    .line 758
    invoke-virtual {v0, v8}, Lcom/android/internal/util/StateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    .line 759
    invoke-virtual {v0, v14}, Lcom/android/internal/util/StateMachine;->setDbg(Z)V

    .line 760
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/util/StateMachine;->start()V

    return-void
.end method

.method public static buildNetworkCapabilities(Landroid/net/vcn/VcnGatewayConnectionConfig;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Z)Landroid/net/NetworkCapabilities;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2092
    new-instance v0, Landroid/net/NetworkCapabilities$Builder;

    invoke-direct {v0}, Landroid/net/NetworkCapabilities$Builder;-><init>()V

    const/4 v1, 0x0

    .line 2094
    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities$Builder;->addTransportType(I)Landroid/net/NetworkCapabilities$Builder;

    const/16 v2, 0x1c

    .line 2095
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    const/16 v2, 0x14

    .line 2096
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    const/16 v2, 0x15

    .line 2097
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2100
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_20
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez p2, :cond_3a

    const/16 v3, 0xc

    if-eq v2, v3, :cond_20

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3a

    goto :goto_20

    .line 2107
    :cond_3a
    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_20

    :cond_3e
    if-eqz p1, :cond_f4

    .line 2111
    iget-object p0, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 2114
    sget-object p2, Lcom/android/server/vcn/VcnGatewayConnection;->MERGED_CAPABILITIES:[I

    array-length v2, p2

    move v3, v1

    :goto_46
    if-ge v3, v2, :cond_56

    aget v4, p2, v3

    .line 2115
    invoke-virtual {p0, v4}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 2116
    invoke-virtual {v0, v4}, Landroid/net/NetworkCapabilities$Builder;->addCapability(I)Landroid/net/NetworkCapabilities$Builder;

    :cond_53
    add-int/lit8 v3, v3, 0x1

    goto :goto_46

    .line 2121
    :cond_56
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getAdministratorUids()[I

    move-result-object p2

    .line 2122
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    .line 2125
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_7f

    .line 2127
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v2

    .line 2126
    invoke-static {p2, v2}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v2

    if-gez v2, :cond_7f

    .line 2128
    array-length v2, p2

    add-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    .line 2129
    array-length v2, p2

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getOwnerUid()I

    move-result v4

    aput v4, p2, v2

    .line 2130
    invoke-static {p2}, Ljava/util/Arrays;->sort([I)V

    .line 2136
    :cond_7f
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/NetworkCapabilities$Builder;->setOwnerUid(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2137
    array-length v2, p2

    add-int/2addr v2, v3

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p2

    .line 2138
    array-length v2, p2

    sub-int/2addr v2, v3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    aput v4, p2, v2

    .line 2139
    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities$Builder;->setAdministratorUids([I)Landroid/net/NetworkCapabilities$Builder;

    .line 2141
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities$Builder;->setLinkUpstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2142
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities$Builder;->setLinkDownstreamBandwidthKbps(I)Landroid/net/NetworkCapabilities$Builder;

    .line 2145
    invoke-virtual {p0, v3}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    if-eqz p2, :cond_c2

    .line 2146
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p2

    instance-of p2, p2, Landroid/net/wifi/WifiInfo;

    if-eqz p2, :cond_c2

    .line 2147
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getTransportInfo()Landroid/net/TransportInfo;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiInfo;

    .line 2148
    new-instance p2, Landroid/net/vcn/VcnTransportInfo;

    invoke-direct {p2, p0}, Landroid/net/vcn/VcnTransportInfo;-><init>(Landroid/net/wifi/WifiInfo;)V

    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_ea

    .line 2149
    :cond_c2
    invoke-virtual {p0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result p2

    if-eqz p2, :cond_e3

    .line 2150
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object p2

    instance-of p2, p2, Landroid/net/TelephonyNetworkSpecifier;

    if-eqz p2, :cond_e3

    .line 2152
    invoke-virtual {p0}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object p0

    check-cast p0, Landroid/net/TelephonyNetworkSpecifier;

    .line 2153
    new-instance p2, Landroid/net/vcn/VcnTransportInfo;

    invoke-virtual {p0}, Landroid/net/TelephonyNetworkSpecifier;->getSubscriptionId()I

    move-result p0

    invoke-direct {p2, p0}, Landroid/net/vcn/VcnTransportInfo;-><init>(I)V

    invoke-virtual {v0, p2}, Landroid/net/NetworkCapabilities$Builder;->setTransportInfo(Landroid/net/TransportInfo;)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_ea

    .line 2155
    :cond_e3
    sget-object p0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    const-string p2, "Unknown transport type or missing TransportInfo/NetworkSpecifier for non-null underlying network"

    invoke-static {p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2160
    :goto_ea
    iget-object p0, p1, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->network:Landroid/net/Network;

    invoke-static {p0}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/net/NetworkCapabilities$Builder;->setUnderlyingNetworks(Ljava/util/List;)Landroid/net/NetworkCapabilities$Builder;

    goto :goto_100

    .line 2162
    :cond_f4
    sget-object p0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p2, "No underlying network while building network capabilities"

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2168
    :goto_100
    invoke-virtual {v0}, Landroid/net/NetworkCapabilities$Builder;->build()Landroid/net/NetworkCapabilities;

    move-result-object p0

    return-object p0
.end method

.method public static isIkeAuthFailure(Ljava/lang/Exception;)Z
    .registers 3

    .line 1198
    instance-of v0, p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 1202
    :cond_6
    check-cast p0, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;

    invoke-virtual {p0}, Landroid/net/ipsec/ike/exceptions/IkeProtocolException;->getErrorType()I

    move-result p0

    const/16 v0, 0x18

    if-ne p0, v0, :cond_11

    const/4 v1, 0x1

    :cond_11
    return v1
.end method

.method private synthetic lambda$createScheduledAlarm$0(Landroid/os/Message;)V
    .registers 2

    .line 1039
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(Landroid/os/Message;)V

    return-void
.end method


# virtual methods
.method public final acquireWakeLock()V
    .registers 3

    .line 874
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 876
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {v0}, Lcom/android/server/vcn/util/OneWayBoolean;->getValue()Z

    move-result v0

    if-nez v0, :cond_28

    .line 877
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->acquire()V

    .line 879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wakelock acquired: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method public final buildChildParams()Landroid/net/ipsec/ike/ChildSessionParams;
    .registers 1

    .line 2489
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object p0

    return-object p0
.end method

.method public buildConnectedLinkProperties(Landroid/net/vcn/VcnGatewayConnectionConfig;Landroid/net/IpSecManager$IpSecTunnelInterface;Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)Landroid/net/LinkProperties;
    .registers 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2179
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v0

    .line 2180
    new-instance v1, Landroid/net/LinkProperties;

    invoke-direct {v1}, Landroid/net/LinkProperties;-><init>()V

    .line 2182
    invoke-virtual {p2}, Landroid/net/IpSecManager$IpSecTunnelInterface;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 2183
    invoke-virtual {p3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->getInternalAddresses()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_18
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/LinkAddress;

    .line 2184
    invoke-virtual {v1, v2}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_18

    .line 2186
    :cond_28
    invoke-virtual {p3}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;->getInternalDnsServers()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_30
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_40

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/net/InetAddress;

    .line 2187
    invoke-virtual {v1, p3}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_30

    .line 2190
    :cond_40
    new-instance p2, Landroid/net/RouteInfo;

    new-instance p3, Landroid/net/IpPrefix;

    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    const/4 v3, 0x0

    invoke-direct {p3, v2, v3}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    invoke-direct {p2, p3, v2, v2, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v1, p2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 2192
    new-instance p2, Landroid/net/RouteInfo;

    new-instance p3, Landroid/net/IpPrefix;

    sget-object v5, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-direct {p3, v5, v3}, Landroid/net/IpPrefix;-><init>(Ljava/net/InetAddress;I)V

    invoke-direct {p2, p3, v2, v2, v4}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;I)V

    invoke-virtual {v1, p2}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    if-eqz p4, :cond_86

    .line 2197
    iget-object p2, p4, Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;->linkProperties:Landroid/net/LinkProperties;

    .line 2199
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getTcpBufferSizes()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Landroid/net/LinkProperties;->setTcpBufferSizes(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getMtu()I

    move-result p3

    if-nez p3, :cond_84

    .line 2205
    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_84

    .line 2206
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    invoke-virtual {p2}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->getUnderlyingIfaceMtu(Ljava/lang/String;)I

    move-result p0

    move v3, p0

    goto :goto_92

    :cond_84
    move v3, p3

    goto :goto_92

    .line 2209
    :cond_86
    sget-object p0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-direct {p2}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p3, "No underlying network while building link properties"

    invoke-static {p0, p3, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2216
    :goto_92
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getTunnelModeChildSessionParams()Landroid/net/ipsec/ike/TunnelModeChildSessionParams;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/ipsec/ike/TunnelModeChildSessionParams;->getSaProposals()Ljava/util/List;

    move-result-object p0

    .line 2217
    invoke-virtual {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getMaxMtu()I

    move-result p1

    .line 2219
    invoke-virtual {p5}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;->getLocalAddress()Ljava/net/InetAddress;

    move-result-object p2

    instance-of p2, p2, Ljava/net/Inet4Address;

    .line 2215
    invoke-static {p0, p1, v3, p2}, Lcom/android/server/vcn/util/MtuUtils;->getMtu(Ljava/util/List;IIZ)I

    move-result p0

    .line 2214
    invoke-virtual {v1, p0}, Landroid/net/LinkProperties;->setMtu(I)V

    return-object v1
.end method

.method public final buildIkeParams(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;
    .registers 3

    .line 2480
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 2481
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object p0

    .line 2482
    new-instance v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 2483
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeTunnelConnectionParams;->getIkeSessionParams()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>(Landroid/net/ipsec/ike/IkeSessionParams;)V

    .line 2484
    invoke-virtual {v0, p1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNetwork(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 2485
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->build()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object p0

    return-object p0
.end method

.method public buildIkeSession(Landroid/net/Network;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2494
    iget v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    .line 2496
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    .line 2498
    invoke-virtual {p0, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->buildIkeParams(Landroid/net/Network;)Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v3

    .line 2499
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->buildChildParams()Landroid/net/ipsec/ike/ChildSessionParams;

    move-result-object v4

    new-instance v5, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;

    invoke-direct {v5, p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$IkeSessionCallbackImpl;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V

    new-instance v6, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;

    invoke-direct {v6, p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionCallback;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;I)V

    .line 2496
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newIkeSession(Lcom/android/server/vcn/VcnContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/ipsec/ike/ChildSessionParams;Landroid/net/ipsec/ike/IkeSessionCallback;Landroid/net/ipsec/ike/ChildSessionCallback;)Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    move-result-object p0

    return-object p0
.end method

.method public final cancelDisconnectRequestAlarm()V
    .registers 5

    .line 1101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling alarm to disconnect due to underlying network loss; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1106
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_20

    .line 1107
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const/4 v0, 0x0

    .line 1108
    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    :cond_20
    const/4 v0, 0x7

    .line 1112
    new-instance v1, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    const/4 v2, 0x0

    const-string v3, "Underlying Network lost"

    invoke-direct {v1, v3, v2}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final cancelRetryTimeoutAlarm()V
    .registers 3

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel retry alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1136
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_20

    .line 1137
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const/4 v0, 0x0

    .line 1138
    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    :cond_20
    const/4 v0, 0x2

    .line 1141
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(I)V

    return-void
.end method

.method public final cancelSafeModeAlarm()V
    .registers 3

    .line 1164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancel safe mode alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1166
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_20

    .line 1167
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const/4 v0, 0x0

    .line 1168
    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    :cond_20
    const/16 v0, 0xa

    .line 1171
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(I)V

    return-void
.end method

.method public final cancelTeardownTimeoutAlarm()V
    .registers 3

    .line 1064
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cancelling teardown timeout alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1066
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_20

    .line 1067
    invoke-virtual {v0}, Lcom/android/internal/util/WakeupMessage;->cancel()V

    const/4 v0, 0x0

    .line 1068
    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    :cond_20
    const/16 v0, 0x8

    .line 1072
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(I)V

    return-void
.end method

.method public final childOpened(ILcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V
    .registers 4

    .line 1281
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;

    invoke-direct {v0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventSetupCompletedInfo;-><init>(Lcom/android/server/vcn/VcnGatewayConnection$VcnChildSessionConfiguration;)V

    const/4 p2, 0x6

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method public final childTransformCreated(ILandroid/net/IpSecTransform;I)V
    .registers 5

    .line 1274
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;

    invoke-direct {v0, p3, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventTransformCreatedInfo;-><init>(ILandroid/net/IpSecTransform;)V

    const/4 p2, 0x5

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method public final createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;
    .registers 9

    .line 1021
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1023
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    const-string p2, "Attempted to schedule alarm after StateMachine has quit"

    invoke-virtual {p0, p2, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->logWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0

    .line 1034
    :cond_12
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    new-instance v3, Lcom/android/server/vcn/VcnGatewayConnection$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/vcn/VcnGatewayConnection;Landroid/os/Message;)V

    .line 1035
    invoke-virtual {v1, v2, v0, p1, v3}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->newWakeupMessage(Lcom/android/server/vcn/VcnContext;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/Runnable;)Lcom/android/internal/util/WakeupMessage;

    move-result-object p1

    .line 1040
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDeps:Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection$Dependencies;->getElapsedRealTime()J

    move-result-wide v0

    add-long/2addr v0, p3

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/WakeupMessage;->schedule(J)V

    return-object p1
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 5

    .line 2393
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VcnGatewayConnection ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2394
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 2396
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2398
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_35

    move-object v1, v2

    goto :goto_41

    .line 2400
    :cond_35
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getCurrentState()Lcom/android/internal/util/IState;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :goto_41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2396
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2401
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsQuitting: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {v1}, Lcom/android/server/vcn/util/OneWayBoolean;->getValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2402
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsInSafeMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2403
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mFailedAttempts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mFailedAttempts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2405
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetworkAgent.getNetwork(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2407
    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    if-nez v1, :cond_b6

    goto :goto_ba

    :cond_b6
    invoke-virtual {v1}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->getNetwork()Landroid/net/Network;

    move-result-object v2

    :goto_ba
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2405
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2408
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2410
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-virtual {p0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 2411
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 2413
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public getIkeConnectionInfo()Landroid/net/ipsec/ike/IkeSessionConnectionInfo;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2438
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeConnectionInfo:Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    return-object p0
.end method

.method public getIkeSession()Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2453
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-object p0
.end method

.method public getLogPrefix()Ljava/lang/String;
    .registers 4

    .line 2320
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSubscriptionGroup:Landroid/os/ParcelUuid;

    .line 2321
    invoke-static {v1}, Lcom/android/server/vcn/util/LogUtils;->getHashedSubscriptionGroup(Landroid/os/ParcelUuid;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 2323
    invoke-virtual {v2}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2325
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ") "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNetworkAgent()Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2463
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-object p0
.end method

.method public final getTagLogPrefix()Ljava/lang/String;
    .registers 3

    .line 2330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUnderlyingNetwork()Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2428
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-object p0
.end method

.method public getUnderlyingNetworkControllerCallback()Lcom/android/server/vcn/routeselection/UnderlyingNetworkController$UnderlyingNetworkControllerCallback;
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2423
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkControllerCallback:Lcom/android/server/vcn/VcnGatewayConnection$VcnUnderlyingNetworkControllerCallback;

    return-object p0
.end method

.method public final ikeConnectionInfoChanged(ILandroid/net/ipsec/ike/IkeSessionConnectionInfo;)V
    .registers 4

    .line 1247
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;

    invoke-direct {v0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventIkeConnectionInfoChangedInfo;-><init>(Landroid/net/ipsec/ike/IkeSessionConnectionInfo;)V

    const/16 p2, 0xc

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method public isInSafeMode()Z
    .registers 2

    .line 766
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 768
    iget-boolean p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsInSafeMode:Z

    return p0
.end method

.method public isQuitting()Z
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2443
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {p0}, Lcom/android/server/vcn/util/OneWayBoolean;->getValue()Z

    move-result p0

    return p0
.end method

.method public final logDbg(Ljava/lang/String;)V
    .registers 4

    .line 2340
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final logDbg(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 2344
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final logErr(Ljava/lang/String;)V
    .registers 5

    .line 2368
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2369
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERR ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logErr(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 2373
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2374
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ERR ] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logInfo(Ljava/lang/String;)V
    .registers 5

    .line 2348
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2349
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INFO] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 2353
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2354
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[INFO] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logVdbg(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public final logWarn(Ljava/lang/String;)V
    .registers 5

    .line 2358
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARN] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6

    .line 2363
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2364
    sget-object v0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[WARN] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getTagLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logWtf(Ljava/lang/String;)V
    .registers 4

    .line 2378
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2379
    sget-object p0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WTF ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5

    .line 2383
    sget-object v0, Lcom/android/server/vcn/VcnGatewayConnection;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->getLogPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2384
    sget-object p0, Lcom/android/server/VcnManagementService;->LOCAL_LOG:Landroid/util/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WTF ] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final maybeReleaseWakeLock()V
    .registers 2

    .line 898
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 899
    invoke-virtual {v0}, Landroid/os/Handler;->hasMessagesOrCallbacks()Z

    move-result v0

    if-nez v0, :cond_f

    .line 900
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->releaseWakeLock()V

    :cond_f
    return-void
.end method

.method public final migrationCompleted(ILandroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V
    .registers 5

    .line 1266
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;

    invoke-direct {v0, p2, p3}, Lcom/android/server/vcn/VcnGatewayConnection$EventMigrationCompletedInfo;-><init>(Landroid/net/IpSecTransform;Landroid/net/IpSecTransform;)V

    const/16 p2, 0xb

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method public final notifyStatusCallbackForSessionClosed(Ljava/lang/Exception;)V
    .registers 6

    .line 1211
    invoke-static {p1}, Lcom/android/server/vcn/VcnGatewayConnection;->isIkeAuthFailure(Ljava/lang/Exception;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    .line 1213
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1214
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_5c

    .line 1215
    :cond_14
    instance-of v0, p1, Landroid/net/ipsec/ike/exceptions/IkeInternalException;

    if-eqz v0, :cond_30

    .line 1216
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    if-eqz v0, :cond_30

    const/4 v0, 0x2

    .line 1218
    const-class v1, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1219
    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_5c

    :cond_30
    const/4 v0, 0x0

    .line 1222
    const-class v1, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1223
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " with message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1227
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1230
    :goto_5c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered error; code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", exceptionClass="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", exceptionMessage="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    .line 1238
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 1239
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object p0

    .line 1238
    invoke-interface {v2, p0, v0, v1, p1}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onQuitting()V
    .registers 3

    const-string v0, "Quitting VcnGatewayConnection"

    .line 784
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logInfo(Ljava/lang/String;)V

    .line 786
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    const-string v0, "NetworkAgent was non-null in onQuitting"

    .line 787
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 788
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;->unregister()V

    .line 789
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    .line 792
    :cond_16
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    if-eqz v0, :cond_26

    const-string v0, "IkeSession was non-null in onQuitting"

    .line 793
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 794
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;->kill()V

    .line 795
    iput-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    .line 799
    :cond_26
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    if-eqz v0, :cond_2d

    .line 800
    invoke-virtual {v0}, Landroid/net/IpSecManager$IpSecTunnelInterface;->close()V

    .line 803
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->releaseWakeLock()V

    .line 805
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelTeardownTimeoutAlarm()V

    .line 806
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelDisconnectRequestAlarm()V

    .line 807
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelRetryTimeoutAlarm()V

    .line 808
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->cancelSafeModeAlarm()V

    .line 810
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-virtual {v0}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->teardown()V

    .line 812
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    invoke-interface {p0}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onQuit()V

    return-void
.end method

.method public final releaseWakeLock()V
    .registers 3

    .line 884
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 886
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;->release()V

    .line 888
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wakelock released: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mWakeLock:Lcom/android/server/vcn/VcnGatewayConnection$VcnWakeLock;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    return-void
.end method

.method public final removeEqualMessages(I)V
    .registers 3

    const/4 v0, 0x0

    .line 999
    invoke-virtual {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->removeEqualMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public final removeEqualMessages(ILjava/lang/Object;)V
    .registers 4

    .line 1011
    invoke-virtual {p0}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1013
    invoke-virtual {v0, p1, p2}, Landroid/os/Handler;->removeEqualMessages(ILjava/lang/Object;)V

    .line 1016
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->maybeReleaseWakeLock()V

    return-void
.end method

.method public sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V
    .registers 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2473
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    const/4 p1, 0x7

    const/high16 p2, -0x80000000

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method public sendMessage(I)V
    .registers 3

    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    .line 906
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 909
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    return-void
.end method

.method public sendMessage(II)V
    .registers 4

    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    .line 922
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 925
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public sendMessage(III)V
    .registers 5

    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    .line 930
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 933
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/util/StateMachine;->sendMessage(III)V

    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)V
    .registers 6

    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    .line 938
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 941
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .registers 4

    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    .line 914
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 917
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public sendMessage(Landroid/os/Message;)V
    .registers 3

    const-string/jumbo v0, "sendMessage should not be used in VcnGatewayConnection. See sendMessageAndAcquireWakeLock()"

    .line 946
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    .line 949
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final sendMessageAndAcquireWakeLock(II)V
    .registers 3

    .line 961
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    .line 962
    invoke-super {p0, p1, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(II)V

    return-void
.end method

.method public final sendMessageAndAcquireWakeLock(IIILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V
    .registers 5

    .line 979
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    .line 980
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public final sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V
    .registers 5

    .line 970
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    const/high16 v0, -0x80000000

    .line 971
    invoke-super {p0, p1, p2, v0, p3}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void
.end method

.method public final sendMessageAndAcquireWakeLock(Landroid/os/Message;)V
    .registers 2

    .line 988
    invoke-virtual {p0}, Lcom/android/server/vcn/VcnGatewayConnection;->acquireWakeLock()V

    .line 989
    invoke-super {p0, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method public final sessionClosed(ILjava/lang/Exception;)V
    .registers 3

    if-eqz p2, :cond_5

    .line 1255
    invoke-virtual {p0, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->notifyStatusCallbackForSessionClosed(Ljava/lang/Exception;)V

    .line 1260
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionLostWithoutCallback(ILjava/lang/Exception;)V

    const/4 p2, 0x4

    .line 1261
    invoke-virtual {p0, p2, p1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    return-void
.end method

.method public final sessionLost(ILjava/lang/Exception;)V
    .registers 9

    if-eqz p2, :cond_39

    .line 1184
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mGatewayStatusCallback:Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;

    iget-object v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mConnectionConfig:Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 1185
    invoke-virtual {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getGatewayConnectionName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-class v3, Ljava/lang/RuntimeException;

    .line 1187
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1189
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " with message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1184
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/vcn/Vcn$VcnGatewayStatusCallback;->onGatewayConnectionError(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 1194
    :cond_39
    invoke-virtual {p0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->sessionLostWithoutCallback(ILjava/lang/Exception;)V

    return-void
.end method

.method public final sessionLostWithoutCallback(ILjava/lang/Exception;)V
    .registers 4

    .line 1175
    new-instance v0, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;

    invoke-direct {v0, p2}, Lcom/android/server/vcn/VcnGatewayConnection$EventSessionLostInfo;-><init>(Ljava/lang/Exception;)V

    const/4 p2, 0x3

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(IILcom/android/server/vcn/VcnGatewayConnection$EventInfo;)V

    return-void
.end method

.method public final setDisconnectRequestAlarm()V
    .registers 6

    .line 1076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting alarm to disconnect due to underlying network loss; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    const/4 v0, 0x7

    const/high16 v1, -0x80000000

    .line 1086
    new-instance v2, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;

    const-string v3, "Underlying Network lost"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/android/server/vcn/VcnGatewayConnection$EventDisconnectRequestedInfo;-><init>(Ljava/lang/String;Z)V

    .line 1087
    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/android/internal/util/StateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1093
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->DISCONNECT_REQUEST_ALARM:Ljava/lang/String;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    .line 1097
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1094
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mDisconnectRequestAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method public setIkeSession(Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2458
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIkeSession:Lcom/android/server/vcn/VcnGatewayConnection$VcnIkeSession;

    return-void
.end method

.method public setNetworkAgent(Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2468
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mNetworkAgent:Lcom/android/server/vcn/VcnGatewayConnection$VcnNetworkAgent;

    return-void
.end method

.method public setQuitting()V
    .registers 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2448
    iget-object p0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mIsQuitting:Lcom/android/server/vcn/util/OneWayBoolean;

    invoke-virtual {p0}, Lcom/android/server/vcn/util/OneWayBoolean;->setTrue()V

    return-void
.end method

.method public final setRetryTimeoutAlarm(J)V
    .registers 5

    .line 1119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting retry alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_30

    .line 1124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRetryTimeoutAlarm should be null before being set; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    :cond_30
    const/4 v0, 0x2

    .line 1129
    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 1130
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->RETRY_TIMEOUT_ALARM:Ljava/lang/String;

    invoke-virtual {p0, v1, v0, p1, p2}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mRetryTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method public setSafeModeAlarm()V
    .registers 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 1146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting safe mode alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1149
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_1b

    return-void

    :cond_1b
    const/16 v0, 0xa

    const/high16 v1, -0x80000000

    .line 1153
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 1154
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->SAFEMODE_TIMEOUT_ALARM:Ljava/lang/String;

    .line 1158
    iget-object v2, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v2}, Lcom/android/server/vcn/VcnContext;->isInTestMode()Z

    move-result v2

    if-eqz v2, :cond_36

    .line 1159
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    goto :goto_3e

    .line 1160
    :cond_36
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1155
    :goto_3e
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mSafeModeTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method public final setTeardownTimeoutAlarm()V
    .registers 6

    .line 1045
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting teardown timeout alarm; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logVdbg(Ljava/lang/String;)V

    .line 1049
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    if-eqz v0, :cond_30

    .line 1050
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTeardownTimeoutAlarm should be null before being set; mCurrentToken: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logWtf(Ljava/lang/String;)V

    :cond_30
    const/16 v0, 0x8

    .line 1055
    iget v1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mCurrentToken:I

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/util/StateMachine;->obtainMessage(II)Landroid/os/Message;

    move-result-object v0

    .line 1056
    sget-object v1, Lcom/android/server/vcn/VcnGatewayConnection;->TEARDOWN_TIMEOUT_ALARM:Ljava/lang/String;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x5

    .line 1060
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 1057
    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/android/server/vcn/VcnGatewayConnection;->createScheduledAlarm(Ljava/lang/String;Landroid/os/Message;J)Lcom/android/internal/util/WakeupMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTeardownTimeoutAlarm:Lcom/android/internal/util/WakeupMessage;

    return-void
.end method

.method public setTunnelInterface(Landroid/net/IpSecManager$IpSecTunnelInterface;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2418
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mTunnelIface:Landroid/net/IpSecManager$IpSecTunnelInterface;

    return-void
.end method

.method public setUnderlyingNetwork(Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;)V
    .registers 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
        visibility = .enum Lcom/android/internal/annotations/VisibleForTesting$Visibility;->PRIVATE:Lcom/android/internal/annotations/VisibleForTesting$Visibility;
    .end annotation

    .line 2433
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlying:Lcom/android/server/vcn/routeselection/UnderlyingNetworkRecord;

    return-void
.end method

.method public teardownAsynchronously()V
    .registers 3

    const-string v0, "Triggering async teardown"

    .line 777
    invoke-virtual {p0, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->logDbg(Ljava/lang/String;)V

    const-string/jumbo v0, "teardown() called on VcnTunnel"

    const/4 v1, 0x1

    .line 778
    invoke-virtual {p0, v0, v1}, Lcom/android/server/vcn/VcnGatewayConnection;->sendDisconnectRequestedAndAcquireWakelock(Ljava/lang/String;Z)V

    return-void
.end method

.method public updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V
    .registers 3

    const-string v0, "Missing snapshot"

    .line 822
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 823
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mVcnContext:Lcom/android/server/vcn/VcnContext;

    invoke-virtual {v0}, Lcom/android/server/vcn/VcnContext;->ensureRunningOnLooperThread()V

    .line 825
    iput-object p1, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mLastSnapshot:Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;

    .line 826
    iget-object v0, p0, Lcom/android/server/vcn/VcnGatewayConnection;->mUnderlyingNetworkController:Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;

    invoke-virtual {v0, p1}, Lcom/android/server/vcn/routeselection/UnderlyingNetworkController;->updateSubscriptionSnapshot(Lcom/android/server/vcn/TelephonySubscriptionTracker$TelephonySubscriptionSnapshot;)V

    const/16 p1, 0x9

    const/high16 v0, -0x80000000

    .line 828
    invoke-virtual {p0, p1, v0}, Lcom/android/server/vcn/VcnGatewayConnection;->sendMessageAndAcquireWakeLock(II)V

    return-void
.end method
