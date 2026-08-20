.class public Lcom/att/iqi/libs/IQIServiceBroker;
.super Lcom/android/server/SystemService;
.source "IQIServiceBroker.java"

# interfaces
.implements Lcom/att/iqi/libs/IIQIServiceBrokerPub;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/libs/IQIServiceBroker$BinderService;
    }
.end annotation


# static fields
.field public static final CHANGE_IQI_STATE_ACTION:Ljava/lang/String; = "com.att.iqi.action.CHANGE_IQI_STATE"

.field public static final CHANGE_IQI_STATE_PERMISSION:Ljava/lang/String; = "com.att.iqi.permission.CHANGE_IQI_STATE"

.field public static final IQI_DEBUG_ACTION:Ljava/lang/String; = "com.att.iqi.action.ENABLE_IQI_DEBUG_LOG"

.field public static final IQI_DEBUG_EXTRA:Ljava/lang/String; = "com.att.iqi.extra.IQI_DEBUG"

.field public static final IQI_INSTALL_FAIL_STATUS_EXTRA:Ljava/lang/String; = "com.att.iqi.extra.INSTALL_FAIL_STATUS"

.field public static final IQI_INSTALL_FAIL_TIMES_EXTRA:Ljava/lang/String; = "com.att.iqi.extra.INSTALL_FAIL_TIMES"

.field public static final IQI_SERVICE_FORCE_STOPPED_ACTION:Ljava/lang/String; = "com.att.iqi.action.SERVICE_FORCE_STOPPED"

.field public static final IQI_STATE_EXTRA:Ljava/lang/String; = "com.att.iqi.extra.IQI_STATE"

.field public static final IQI_UPLOAD_COMPLETE_ACTION:Ljava/lang/String; = "com.att.iqi.action.UPLOAD_COMPLETE"

.field public static final MSG_CHECK_VALID:I = 0x2

.field public static final MSG_RESUME_PACKAGE:I = 0x6

.field public static final MSG_SIM_INVALID:I = 0x3

.field public static final MSG_SUSPEND_PACKAGE:I = 0x5

.field public static final MSG_TIMED_OUT_WAITING_PACKAGE_UPLOAD:I = 0x4

.field public static final MSG_TRY_CONNECTING:I = 0x1

.field public static final PACKAGE_NAME:Ljava/lang/String; = "com.att.iqi"

.field public static final PACKAGE_UPLOAD_WAIT_MS:J = 0x3a98L

.field public static final PERMISSION_TOGGLE_DEBUG_STATE:Ljava/lang/String; = "com.att.iqi.permission.TOGGLE_DEBUG_STATE"

.field public static final SERVICE_CONNECTION_WAIT_TIME_MS:J = 0xbb8L

.field public static final TAG:Ljava/lang/String; = "IQIServiceBroker"

.field public static final TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

.field public static final VALIDSIG:Ljava/lang/String; = "3082036b30820253a003020102020456485fc9300d06092a864886f70d01010b05003066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e736967687473301e170d3137303831373232333133365a170d3432303831313232333133365a3066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e73696768747330820122300d06092a864886f70d01010105000382010f003082010a0282010100a5a975410b93a85fda21c82c39f8e383254f81f13d56e496b084613243ff1f2e3f8707787ec47c24bc48c78ead30bbdeb75527d6c6525fe11bd5b214502e0f8a9dcc3722d18f51f03b54f53f3694fc08956df6c118cc1b5d627643027a317b86ce51ac6963266e60edd02d80d2f88dadbd785e019835f8850212325f90303d3f92df34bdc534220a84e1e5fb972b9cdd2031e98f7625cb1d4d48f7f388e1e757d6f1a1658a3ea5d14be131ac66780778878bc94b75493a70f9df1d0f3fddce55bed8af5b17d8a08e00a5575b75080a4b706bffe003bed28c31399f652abfb95f2cfb66fbd01648e2ab917c9442d0e1d02ad043c677ddaf8851d29e2ef755edd30203010001a321301f301d0603551d0e04160414eb81e16cd29453db8a35a27cea042b18e8261d9c300d06092a864886f70d01010b050003820101008443999475099358e466a683f4ee7adc0f2616496d127d263ca05fa327cbdda891502241165e7f43d8cfbe38ff9aa9a05af368712f6eef7959f6d7d83d93f2f7c0af45449edef2468fdade1e0968f2d5508f0e6fd09912436d5b9575b45534412c6b5b6633dbafdbf91c8ab0cfe71875e84d5cd2ccf1fef35e2eef2002b9ced555b806319fcc158579a8a5979e78f6fb3d83854141f7bdfcef8c9ce156d4d5d6aeec475b6c33ae197f6d6697b9f2543baca1af9e7ec1a13ab093b9cf9e1aa8f436ff04ede4a1f4e3ca6b3640f72c91f26d66368e86f9419dc0dcc630498dc387f98585d4bd04b8241249560860f5e0698590625945e37a55c4645d012dc50773"

.field public static final sDummyPublicBroker:Lcom/att/iqi/libs/IIQIServiceBrokerPub;

.field public static sInstance:Lcom/att/iqi/libs/IQIServiceBroker;


# instance fields
.field public mApplicationEnabled:Z

.field public mConnection:Landroid/content/ServiceConnection;

.field public final mContext:Landroid/content/Context;

.field public mDebugReceiver:Landroid/content/BroadcastReceiver;

.field public mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

.field public mInitialServiceConnect:Z

.field public mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

.field public mLastServiceEnabled:Z

.field public final mMessageDispatcher:Landroid/os/Handler;

.field public final mMetricQueryCallbackList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/att/iqi/IMetricQueryCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public final mMetricSourcingCallbackList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Lcom/att/iqi/IMetricSourcingCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field public mPackageSuspended:Z

.field public final mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Lcom/att/iqi/IProfileChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field public mRetryCount:I

.field public mServicePublished:Z

.field public mServiceState:I
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mServiceStateChangeList:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/att/iqi/IServiceStateChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field public final mServiceStubForFailure:Lcom/att/iqi/IIQIService;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public mStateChangeReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field public final mSubListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field public mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;)Lcom/att/iqi/IIQIService;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMessageDispatcher(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricQueryCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMetricSourcingCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmProfileChangeCallbackList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/os/RemoteCallbackList;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServiceStateChangeList(Lcom/att/iqi/libs/IQIServiceBroker;)Landroid/util/ArraySet;
    .registers 1

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmImplementingBinderInterface(Lcom/att/iqi/libs/IQIServiceBroker;Lcom/att/iqi/IIQIService;)V
    .registers 2

    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPackageSuspended(Lcom/att/iqi/libs/IQIServiceBroker;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mPackageSuspended:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRetryCount(Lcom/att/iqi/libs/IQIServiceBroker;I)V
    .registers 2

    iput p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mappEnabled(Lcom/att/iqi/libs/IQIServiceBroker;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->appEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mdisablePackage(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->disablePackage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetIBinderAsIInterface(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->getIBinderAsIInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mmaybeIsValidKeyCode(Lcom/att/iqi/libs/IQIServiceBroker;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->maybeIsValidKeyCode(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnotifyServiceState(Lcom/att/iqi/libs/IQIServiceBroker;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->notifyServiceState(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mregisterReceivers(Lcom/att/iqi/libs/IQIServiceBroker;Z)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->registerReceivers(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresumePackage(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->resumePackage(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mshouldConnect(Lcom/att/iqi/libs/IQIServiceBroker;)Z
    .registers 1

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->shouldConnect()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$msuspendPackage(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->suspendPackage()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtryConnecting(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/att/iqi/libs/IQIServiceBroker;->tryConnecting(Landroid/os/Bundle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$munregisterReceivers(Lcom/att/iqi/libs/IQIServiceBroker;)V
    .registers 1

    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->unregisterReceivers()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTARGET_IMPLEMENTATION_COMPONENT()Landroid/content/ComponentName;
    .registers 1

    sget-object v0, Lcom/att/iqi/libs/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$smdumpHelp(Ljava/io/PrintWriter;)V
    .registers 1

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smprintArtifactsVersion(Ljava/io/PrintWriter;)V
    .registers 1

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->printArtifactsVersion(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smprintConciergeVersion(Ljava/io/PrintWriter;)V
    .registers 1

    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->printConciergeVersion(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 3

    .line 113
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.att.iqi"

    const-string v2, "com.att.iqi.service.IQService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/att/iqi/libs/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    .line 143
    new-instance v0, Lcom/att/iqi/libs/IQIServiceBroker$1;

    invoke-direct {v0}, Lcom/att/iqi/libs/IQIServiceBroker$1;-><init>()V

    sput-object v0, Lcom/att/iqi/libs/IQIServiceBroker;->sDummyPublicBroker:Lcom/att/iqi/libs/IIQIServiceBrokerPub;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    .line 216
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 125
    iput v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    const/4 v1, 0x1

    .line 126
    iput v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    .line 130
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    .line 132
    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    .line 134
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    .line 137
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    .line 141
    iput-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mPackageSuspended:Z

    .line 150
    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$2;

    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$2;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 171
    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$3;

    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$3;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

    .line 190
    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$4;

    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$4;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$5;

    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$5;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    .line 226
    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$6;

    invoke-static {}, Lcom/att/iqi/libs/WorkerThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/att/iqi/libs/IQIServiceBroker$6;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    .line 288
    new-instance v2, Lcom/att/iqi/IIQIService$Default;

    invoke-direct {v2}, Lcom/att/iqi/IIQIService$Default;-><init>()V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStubForFailure:Lcom/att/iqi/IIQIService;

    .line 821
    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$8;

    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$8;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    .line 926
    new-instance v2, Lcom/att/iqi/libs/IQIServiceBroker$10;

    invoke-direct {v2, p0}, Lcom/att/iqi/libs/IQIServiceBroker$10;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    iput-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mSubListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 217
    sput-object p0, Lcom/att/iqi/libs/IQIServiceBroker;->sInstance:Lcom/att/iqi/libs/IQIServiceBroker;

    .line 218
    iput-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    .line 219
    invoke-static {}, Lcom/att/iqi/libs/PreferenceStore;->getInstance()Lcom/att/iqi/libs/PreferenceStore;

    move-result-object p1

    const-string v2, "log_enabled"

    .line 220
    invoke-virtual {p1, v2, v0}, Lcom/att/iqi/libs/PreferenceStore;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->enableLogging(Z)V

    const-string/jumbo v0, "service_state"

    .line 221
    invoke-virtual {p1, v0, v1}, Lcom/att/iqi/libs/PreferenceStore;->getInteger(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    .line 222
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->registerPackageMonitor()V

    .line 223
    invoke-virtual {p0, v1}, Lcom/att/iqi/libs/IQIServiceBroker;->registerReceivers(Z)V

    return-void
.end method

.method public static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2

    const-string v0, "IQIServiceBroker dump options:"

    .line 963
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -h: print this help"

    .line 964
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    --concierge: print IQIConcierge version"

    .line 965
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "    -v: print the version of all artifacts"

    .line 966
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static getPublicInterface()Lcom/att/iqi/libs/IIQIServiceBrokerPub;
    .registers 1

    .line 276
    sget-object v0, Lcom/att/iqi/libs/IQIServiceBroker;->sInstance:Lcom/att/iqi/libs/IQIServiceBroker;

    if-nez v0, :cond_6

    sget-object v0, Lcom/att/iqi/libs/IQIServiceBroker;->sDummyPublicBroker:Lcom/att/iqi/libs/IIQIServiceBrokerPub;

    :cond_6
    return-object v0
.end method

.method public static printArtifactsVersion(Ljava/io/PrintWriter;)V
    .registers 1

    .line 974
    invoke-static {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->printConciergeVersion(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static printConciergeVersion(Ljava/io/PrintWriter;)V
    .registers 3

    .line 970
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IQIConcierge version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/att/iqi/libs/IQIConcierge;->getVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final appEnabled()Z
    .registers 5

    .line 733
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 735
    monitor-enter p0

    .line 736
    :try_start_9
    iget-boolean v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mPackageSuspended:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_10

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_73

    return v2

    .line 739
    :cond_10
    :try_start_10
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_6f

    .line 741
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_6f

    .line 743
    iget-boolean v1, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    iput-boolean v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mApplicationEnabled:Z

    .line 744
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 745
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Application "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    iget-boolean v3, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mApplicationEnabled:Z

    if-eqz v3, :cond_39

    const-string v3, "enabled"

    goto :goto_3b

    :cond_39
    const-string v3, "disabled"

    :goto_3b
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    invoke-static {v1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V
    :try_end_45
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_10 .. :try_end_45} :catch_46
    .catchall {:try_start_10 .. :try_end_45} :catchall_73

    goto :goto_6f

    :catch_46
    move-exception v1

    .line 751
    :try_start_47
    iput-boolean v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mApplicationEnabled:Z

    .line 752
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v2

    if-eqz v2, :cond_6f

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cannot find application information for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 753
    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 757
    :cond_6f
    :goto_6f
    monitor-exit p0
    :try_end_70
    .catchall {:try_start_47 .. :try_end_70} :catchall_73

    .line 758
    iget-boolean p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mApplicationEnabled:Z

    return p0

    :catchall_73
    move-exception v0

    .line 757
    :try_start_74
    monitor-exit p0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    throw v0
.end method

.method public checkPkgValidity()Z
    .registers 9
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 689
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 692
    monitor-enter p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 694
    :try_start_b
    iget-object v3, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_ba

    const/high16 v4, 0x8000000

    .line 696
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 698
    iget-object v3, v3, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    if-eqz v3, :cond_ba

    .line 700
    invoke-virtual {v3}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object v3

    array-length v4, v3

    move v5, v2

    move v6, v5

    :goto_24
    if-ge v5, v4, :cond_52

    aget-object v6, v3, v5

    .line 701
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "3082036b30820253a003020102020456485fc9300d06092a864886f70d01010b05003066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e736967687473301e170d3137303831373232333133365a170d3432303831313232333133365a3066310b3009060355040613025553310b3009060355040813024341311230100603550407130953756e6e7976616c65310d300b060355040a0c04415426543111300f060355040b13084269672044617461311430120603550403130b695120496e73696768747330820122300d06092a864886f70d01010105000382010f003082010a0282010100a5a975410b93a85fda21c82c39f8e383254f81f13d56e496b084613243ff1f2e3f8707787ec47c24bc48c78ead30bbdeb75527d6c6525fe11bd5b214502e0f8a9dcc3722d18f51f03b54f53f3694fc08956df6c118cc1b5d627643027a317b86ce51ac6963266e60edd02d80d2f88dadbd785e019835f8850212325f90303d3f92df34bdc534220a84e1e5fb972b9cdd2031e98f7625cb1d4d48f7f388e1e757d6f1a1658a3ea5d14be131ac66780778878bc94b75493a70f9df1d0f3fddce55bed8af5b17d8a08e00a5575b75080a4b706bffe003bed28c31399f652abfb95f2cfb66fbd01648e2ab917c9442d0e1d02ad043c677ddaf8851d29e2ef755edd30203010001a321301f301d0603551d0e04160414eb81e16cd29453db8a35a27cea042b18e8261d9c300d06092a864886f70d01010b050003820101008443999475099358e466a683f4ee7adc0f2616496d127d263ca05fa327cbdda891502241165e7f43d8cfbe38ff9aa9a05af368712f6eef7959f6d7d83d93f2f7c0af45449edef2468fdade1e0968f2d5508f0e6fd09912436d5b9575b45534412c6b5b6633dbafdbf91c8ab0cfe71875e84d5cd2ccf1fef35e2eef2002b9ced555b806319fcc158579a8a5979e78f6fb3d83854141f7bdfcef8c9ce156d4d5d6aeec475b6c33ae197f6d6697b9f2543baca1af9e7ec1a13ab093b9cf9e1aa8f436ff04ede4a1f4e3ca6b3640f72c91f26d66368e86f9419dc0dcc630498dc387f98585d4bd04b8241249560860f5e0698590625945e37a55c4645d012dc50773"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    .line 702
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v6

    if-eqz v6, :cond_3f

    const-string v6, "Valid signature"

    invoke-static {v6}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 703
    :cond_3f
    iput v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    add-int/lit8 v5, v5, 0x1

    move v6, v1

    goto :goto_24

    .line 706
    :cond_45
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v3

    if-eqz v3, :cond_50

    const-string v3, "Bad signature"

    invoke-static {v3}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V
    :try_end_50
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_50} :catch_56
    .catchall {:try_start_b .. :try_end_50} :catchall_54

    .line 707
    :cond_50
    :try_start_50
    monitor-exit p0

    return v2

    .line 710
    :cond_52
    monitor-exit p0

    return v6

    :catchall_54
    move-exception v0

    goto :goto_bc

    :catch_56
    move-exception v3

    .line 714
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v4

    if-eqz v4, :cond_7d

    .line 715
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot find package information for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 716
    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 715
    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 718
    :cond_7d
    iget v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    const/16 v3, 0xa

    if-ge v0, v3, :cond_af

    add-int/2addr v0, v1

    .line 719
    iput v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    .line 720
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_a2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retry check package, attempt # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 721
    :cond_a2
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 722
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v3, 0xbb8

    .line 721
    invoke-virtual {v0, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_ba

    .line 725
    :cond_af
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_ba

    const-string v0, "Retried several times already, give up"

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 728
    :cond_ba
    :goto_ba
    monitor-exit p0

    return v2

    :goto_bc
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_50 .. :try_end_bd} :catchall_54

    throw v0
.end method

.method public final disablePackage()V
    .registers 4

    .line 574
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.att.iqi"

    const/4 v1, 0x3

    const/4 v2, 0x0

    .line 575
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 577
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p0

    if-eqz p0, :cond_19

    const-string/jumbo p0, "package has been disabled"

    invoke-static {p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    :cond_19
    return-void
.end method

.method public final getBrokeredService()Lcom/att/iqi/IIQIService;
    .registers 7
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 651
    monitor-enter p0

    .line 652
    :try_start_1
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-eqz v0, :cond_7

    .line 653
    monitor-exit p0

    return-object v0

    .line 657
    :cond_7
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->shouldConnect()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStubForFailure:Lcom/att/iqi/IIQIService;

    monitor-exit p0

    return-object v0

    .line 660
    :cond_11
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    const/4 v1, 0x2

    .line 661
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 660
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 663
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_54

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    :goto_22
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_45

    .line 667
    :try_start_28
    invoke-virtual {p0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_2c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_54

    goto :goto_38

    :catch_2c
    move-exception v2

    .line 669
    :try_start_2d
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v3

    if-eqz v3, :cond_38

    const-string v3, "Connection wait interrupted"

    invoke-static {v3, v2}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 671
    :cond_38
    :goto_38
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-eqz v2, :cond_3e

    .line 673
    monitor-exit p0

    return-object v2

    .line 676
    :cond_3e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long v2, v0, v2

    goto :goto_22

    .line 678
    :cond_45
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_50

    const-string v0, "Timed out waiting for service connection, returning stub"

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 679
    :cond_50
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStubForFailure:Lcom/att/iqi/IIQIService;

    monitor-exit p0

    return-object v0

    :catchall_54
    move-exception v0

    .line 680
    monitor-exit p0
    :try_end_56
    .catchall {:try_start_2d .. :try_end_56} :catchall_54

    throw v0
.end method

.method public final getIBinderAsIInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;
    .registers 2

    .line 905
    invoke-static {p1}, Lcom/att/iqi/IIQIService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/att/iqi/IIQIService;

    move-result-object p0

    return-object p0
.end method

.method public final getServiceComponent()Landroid/content/ComponentName;
    .registers 1

    .line 684
    sget-object p0, Lcom/att/iqi/libs/IQIServiceBroker;->TARGET_IMPLEMENTATION_COMPONENT:Landroid/content/ComponentName;

    return-object p0
.end method

.method public final maybeIsValidKeyCode(Ljava/lang/String;)Z
    .registers 2

    .line 200
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_10

    const-string p0, "^[#]+\\*23[\\d\\*#]+#$"

    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public final notifyServiceState(Z)V
    .registers 5

    .line 625
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyServiceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 628
    :cond_1a
    iget-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mLastServiceEnabled:Z

    if-eq p1, v0, :cond_2e

    if-eqz p1, :cond_27

    .line 629
    iget-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mInitialServiceConnect:Z

    if-eqz v0, :cond_27

    .line 630
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->restoreCallbacks()V

    :cond_27
    if-eqz p1, :cond_2c

    const/4 v0, 0x1

    .line 633
    iput-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mInitialServiceConnect:Z

    .line 635
    :cond_2c
    iput-boolean p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mLastServiceEnabled:Z

    .line 638
    :cond_2e
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    monitor-enter v0

    .line 639
    :try_start_31
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceStateChangeList:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_37
    :goto_37
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_54

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/att/iqi/IServiceStateChangeCallback;
    :try_end_43
    .catchall {:try_start_31 .. :try_end_43} :catchall_56

    .line 641
    :try_start_43
    invoke-interface {v1, p1}, Lcom/att/iqi/IServiceStateChangeCallback;->onServiceChange(Z)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_46} :catch_47
    .catchall {:try_start_43 .. :try_end_46} :catchall_56

    goto :goto_37

    :catch_47
    move-exception v1

    .line 643
    :try_start_48
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "notifyServiceState failed"

    invoke-static {v2, v1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_37

    .line 646
    :cond_54
    monitor-exit v0

    return-void

    :catchall_56
    move-exception p0

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_48 .. :try_end_58} :catchall_56

    throw p0
.end method

.method public onBootPhase(I)V
    .registers 3

    .line 610
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x258

    if-ne p1, v0, :cond_32

    .line 612
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_12

    const-string p1, "Third party apps ready"

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 614
    :cond_12
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    const/4 v0, 0x2

    .line 615
    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 614
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 617
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/att/iqi/libs/IQIConcierge;->init(Landroid/content/Context;)V

    .line 619
    iget-object p1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    if-eqz p1, :cond_32

    .line 620
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mSubListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p1, p0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    :cond_32
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 281
    new-instance v0, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;

    invoke-direct {v0, p0}, Lcom/att/iqi/libs/IQIServiceBroker$BinderService;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    const-string v1, "iqi"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const/4 v0, 0x1

    .line 282
    iput-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServicePublished:Z

    return-void
.end method

.method public postMessage(ILandroid/os/Bundle;)V
    .registers 3

    if-nez p2, :cond_8

    .line 295
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_11

    .line 297
    :cond_8
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_11
    return-void
.end method

.method public final registerPackageMonitor()V
    .registers 4

    .line 909
    new-instance v0, Lcom/att/iqi/libs/IQIServiceBroker$9;

    invoke-direct {v0, p0}, Lcom/att/iqi/libs/IQIServiceBroker$9;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    .line 923
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    return-void
.end method

.method public final registerReceivers(Z)V
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 942
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "com.att.iqi.action.CHANGE_IQI_STATE"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 943
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mStateChangeReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.att.iqi.permission.CHANGE_IQI_STATE"

    invoke-virtual {v1, v2, p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 946
    :cond_13
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.NEW_OUTGOING_CALL"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 947
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 949
    new-instance p1, Landroid/content/IntentFilter;

    const-string v1, "com.att.iqi.action.ENABLE_IQI_DEBUG_LOG"

    invoke-direct {p1, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 950
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    const-string v3, "com.att.iqi.permission.TOGGLE_DEBUG_STATE"

    invoke-virtual {v1, v2, p1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 952
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 953
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final restoreCallbacks()V
    .registers 10

    .line 863
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_c9

    .line 864
    :try_start_3
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_b
    if-ge v3, v1, :cond_4d

    .line 866
    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    move v5, v2

    :goto_1a
    if-ge v5, v4, :cond_3f

    .line 868
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v6

    new-instance v7, Lcom/att/iqi/lib/Metric$ID;

    iget-object v8, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    .line 869
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/att/iqi/lib/Metric$ID;-><init>(I)V

    iget-object v8, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    .line 870
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/att/iqi/IMetricQueryCallback;

    .line 868
    invoke-interface {v6, v7, v8}, Lcom/att/iqi/IIQIService;->registerMetricQueryCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricQueryCallback;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1a

    .line 872
    :cond_3f
    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricQueryCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 874
    :cond_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_3 .. :try_end_4e} :catchall_c6

    .line 876
    :try_start_4e
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v0
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_c9

    .line 877
    :try_start_51
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    move v3, v2

    :goto_58
    if-ge v3, v1, :cond_6c

    .line 879
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v4

    iget-object v5, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    .line 880
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/att/iqi/IProfileChangedCallback;

    .line 879
    invoke-interface {v4, v5}, Lcom/att/iqi/IIQIService;->registerProfileChangedCallback(Lcom/att/iqi/IProfileChangedCallback;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_58

    .line 882
    :cond_6c
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mProfileChangeCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 883
    monitor-exit v0
    :try_end_72
    .catchall {:try_start_51 .. :try_end_72} :catchall_c3

    .line 885
    :try_start_72
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_c9

    .line 886
    :try_start_75
    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v3, v2

    :goto_7c
    if-ge v3, v1, :cond_be

    .line 888
    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v4

    move v5, v2

    :goto_8b
    if-ge v5, v4, :cond_b0

    .line 890
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object v6

    new-instance v7, Lcom/att/iqi/lib/Metric$ID;

    iget-object v8, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    .line 891
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-direct {v7, v8}, Lcom/att/iqi/lib/Metric$ID;-><init>(I)V

    iget-object v8, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    .line 892
    invoke-virtual {v8, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/RemoteCallbackList;

    invoke-virtual {v8, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v8

    check-cast v8, Lcom/att/iqi/IMetricSourcingCallback;

    .line 890
    invoke-interface {v6, v7, v8}, Lcom/att/iqi/IIQIService;->registerMetricSourcingCallback(Lcom/att/iqi/lib/Metric$ID;Lcom/att/iqi/IMetricSourcingCallback;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8b

    .line 894
    :cond_b0
    iget-object v4, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMetricSourcingCallbackList:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7c

    .line 896
    :cond_be
    monitor-exit v0

    goto :goto_d5

    :catchall_c0
    move-exception p0

    monitor-exit v0
    :try_end_c2
    .catchall {:try_start_75 .. :try_end_c2} :catchall_c0

    :try_start_c2
    throw p0
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_c3} :catch_c9

    :catchall_c3
    move-exception p0

    .line 883
    :try_start_c4
    monitor-exit v0
    :try_end_c5
    .catchall {:try_start_c4 .. :try_end_c5} :catchall_c3

    :try_start_c5
    throw p0
    :try_end_c6
    .catch Ljava/lang/Exception; {:try_start_c5 .. :try_end_c6} :catch_c9

    :catchall_c6
    move-exception p0

    .line 874
    :try_start_c7
    monitor-exit v0
    :try_end_c8
    .catchall {:try_start_c7 .. :try_end_c8} :catchall_c6

    :try_start_c8
    throw p0
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c8 .. :try_end_c9} :catch_c9

    :catch_c9
    move-exception p0

    .line 898
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_d5

    const-string v0, "Remote exception in restoreCallbacks"

    .line 899
    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d5
    :goto_d5
    return-void
.end method

.method public final resumePackage(Landroid/os/Bundle;)V
    .registers 3

    .line 602
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Resuming service broker..."

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    :cond_b
    const/4 v0, 0x0

    .line 603
    iput-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mPackageSuspended:Z

    .line 604
    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    const/4 v0, 0x1

    .line 605
    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 604
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final shouldConnect()Z
    .registers 3

    .line 762
    monitor-enter p0

    .line 763
    :try_start_1
    iget v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServiceState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_15

    iget-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mServicePublished:Z

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mApplicationEnabled:Z

    if-eqz v0, :cond_15

    .line 764
    invoke-static {}, Lcom/att/iqi/libs/IQIConcierge;->isServiceBindingAllowed()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    monitor-exit p0

    return v1

    :catchall_18
    move-exception v0

    .line 765
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method public final suspendPackage()V
    .registers 5

    .line 582
    :try_start_0
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/att/iqi/libs/IQIServiceBroker$7;

    invoke-direct {v1, p0}, Lcom/att/iqi/libs/IQIServiceBroker$7;-><init>(Lcom/att/iqi/libs/IQIServiceBroker;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.att.iqi.action.SERVICE_FORCE_STOPPED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 594
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "Attempting to force stop the app to suspend the service..."

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 595
    :cond_1c
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getBrokeredService()Lcom/att/iqi/IIQIService;

    move-result-object p0

    invoke-interface {p0}, Lcom/att/iqi/IIQIService;->forceStopService()V
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_30

    :catch_24
    move-exception p0

    .line 597
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_30

    const-string v0, "Failed to force stop service"

    invoke-static {v0, p0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_30
    :goto_30
    return-void
.end method

.method public final tryConnecting(Landroid/os/Bundle;)V
    .registers 8

    .line 769
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Connecting to implementation"

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 770
    :cond_b
    monitor-enter p0

    .line 771
    :try_start_c
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-eqz v0, :cond_1d

    .line 772
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_1b

    const-string p1, "Already connected"

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 773
    :cond_1b
    monitor-exit p0

    return-void

    .line 775
    :cond_1d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 776
    invoke-virtual {p0}, Lcom/att/iqi/libs/IQIServiceBroker;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_35

    .line 778
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_33

    const-string p1, "No implementation service found"

    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 779
    :cond_33
    monitor-exit p0

    return-void

    .line 781
    :cond_35
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 782
    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 785
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/att/iqi/libs/IQIConcierge;->loadBridgeLibrary(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_44
    .catchall {:try_start_c .. :try_end_44} :catchall_c5

    .line 787
    :try_start_44
    iget-object v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v5, 0x1

    invoke-virtual {v2, v0, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_c3

    .line 789
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_6b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to bind to implementation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;)V

    .line 790
    :cond_6b
    iget v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    const/16 v2, 0xa

    if-ge v0, v2, :cond_9c

    add-int/2addr v0, v5

    .line 791
    iput v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    .line 792
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_90

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry reconnecting, attempt # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mRetryCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 793
    :cond_90
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mMessageDispatcher:Landroid/os/Handler;

    .line 794
    invoke-virtual {v0, v5, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v2, 0xbb8

    .line 793
    invoke-virtual {v0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_c3

    .line 797
    :cond_9c
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result p1

    if-eqz p1, :cond_c3

    const-string p1, "Retried several times already, give up connecting"

    .line 798
    invoke-static {p1}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V
    :try_end_a7
    .catch Ljava/lang/SecurityException; {:try_start_44 .. :try_end_a7} :catch_a8
    .catchall {:try_start_44 .. :try_end_a7} :catchall_c5

    goto :goto_c3

    :catch_a8
    move-exception p1

    .line 803
    :try_start_a9
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_c3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Forbidden to bind to implementation "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/att/iqi/libs/LogUtil;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 805
    :cond_c3
    :goto_c3
    monitor-exit p0

    return-void

    :catchall_c5
    move-exception p1

    monitor-exit p0
    :try_end_c7
    .catchall {:try_start_a9 .. :try_end_c7} :catchall_c5

    throw p1
.end method

.method public final tryDisconnecting()V
    .registers 3

    .line 809
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "Disconnecting from implementation"

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logw(Ljava/lang/String;)V

    .line 810
    :cond_b
    monitor-enter p0

    .line 811
    :try_start_c
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    if-nez v0, :cond_1d

    .line 812
    invoke-static {}, Lcom/att/iqi/libs/LogUtil;->canLog()Z

    move-result v0

    if-eqz v0, :cond_1b

    const-string v0, "Already disconnected"

    invoke-static {v0}, Lcom/att/iqi/libs/LogUtil;->logd(Ljava/lang/String;)V

    .line 813
    :cond_1b
    monitor-exit p0

    return-void

    .line 815
    :cond_1d
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 816
    invoke-virtual {p0, v0}, Lcom/att/iqi/libs/IQIServiceBroker;->notifyServiceState(Z)V

    const/4 v0, 0x0

    .line 817
    iput-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mImplementingBinderInterface:Lcom/att/iqi/IIQIService;

    .line 818
    monitor-exit p0

    return-void

    :catchall_2d
    move-exception v0

    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_c .. :try_end_2f} :catchall_2d

    throw v0
.end method

.method public final unregisterReceivers()V
    .registers 3

    .line 957
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mKeyCodeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 958
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mDebugReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 959
    iget-object v0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/att/iqi/libs/IQIServiceBroker;->mUserUnlockedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
