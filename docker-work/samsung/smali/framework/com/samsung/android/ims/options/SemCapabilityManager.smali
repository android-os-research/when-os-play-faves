.class public Lcom/samsung/android/ims/options/SemCapabilityManager;
.super Ljava/lang/Object;
.source "SemCapabilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;,
        Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;
    }
.end annotation


# static fields
.field private static final blacklist INTENT_ACTION_IMSSERVICE_RESTART:Ljava/lang/String; = "com.sec.ims.imsmanager.RESTART"


# instance fields
.field private blacklist LOG_TAG:Ljava/lang/String;

.field private final blacklist LOG_TAG_BASE:Ljava/lang/String;

.field private blacklist mConnection:Landroid/content/ServiceConnection;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

.field private blacklist mListener:Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

.field private blacklist mPhoneId:I

.field private blacklist mQueuedCapabilityListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/samsung/android/ims/options/SemCapabilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mRestartReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mServiceDeath:Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetLOG_TAG(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmImsCapabilityService(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemImsCapabilityService;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mListener:Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmQueuedCapabilityListener(Lcom/samsung/android/ims/options/SemCapabilityManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmServiceDeath(Lcom/samsung/android/ims/options/SemCapabilityManager;)Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mServiceDeath:Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmConnection(Lcom/samsung/android/ims/options/SemCapabilityManager;Landroid/content/ServiceConnection;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmImsCapabilityService(Lcom/samsung/android/ims/options/SemCapabilityManager;Lcom/samsung/android/ims/options/SemImsCapabilityService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/content/Context;Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;
    .param p3, "phoneId"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string/jumbo v0, "semCapabilityManager"

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG_BASE:Ljava/lang/String;

    .line 43
    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    .line 44
    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    .line 48
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    .line 50
    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mListener:Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    .line 52
    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    .line 53
    new-instance v1, Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;-><init>(Lcom/samsung/android/ims/options/SemCapabilityManager;Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient-IA;)V

    iput-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mServiceDeath:Lcom/samsung/android/ims/options/SemCapabilityManager$SemCapabilityManagerRecipient;

    .line 67
    iput-object p1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mContext:Landroid/content/Context;

    .line 68
    iput-object p2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mListener:Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    .line 69
    iput p3, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->init()V

    .line 71
    return-void
.end method

.method private blacklist init()V
    .registers 4

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "semCapabilityManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    .line 76
    new-instance v0, Lcom/samsung/android/ims/options/SemCapabilityManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/options/SemCapabilityManager$1;-><init>(Lcom/samsung/android/ims/options/SemCapabilityManager;)V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 88
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 89
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "com.sec.ims.imsmanager.RESTART"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/ims/options/SemCapabilityManager;->connect()V

    .line 93
    return-void
.end method


# virtual methods
.method public whitelist connect()V
    .registers 6

    .line 121
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 122
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Not recommended in main thread."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_11
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-eqz v0, :cond_1d

    .line 126
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Already connected."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void

    .line 129
    :cond_1d
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Connecting to SemCapabilityDiscoveryService..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v0, Lcom/samsung/android/ims/options/SemCapabilityManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/ims/options/SemCapabilityManager$2;-><init>(Lcom/samsung/android/ims/options/SemCapabilityManager;)V

    iput-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    .line 170
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 171
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.SemCapabilityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    iget-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Lcom/samsung/android/ims/extensions/SemContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/samsung/android/ims/extensions/SemContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 175
    return-void
.end method

.method public whitelist disconnect()V
    .registers 5

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 183
    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 184
    iput-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mRestartReceiver:Landroid/content/BroadcastReceiver;

    .line 187
    :cond_c
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_15

    .line 188
    iget-object v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 191
    :cond_15
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mListener:Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;

    if-eqz v0, :cond_1c

    .line 192
    invoke-interface {v0}, Lcom/samsung/android/ims/options/SemCapabilityManager$ConnectionListener;->onDisconnected()V

    .line 194
    :cond_1c
    iput-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;
    :try_end_1e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 197
    goto :goto_38

    .line 195
    :catch_1f
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect: IllegalArgumentException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_38
    return-void
.end method

.method public whitelist getCapabilities(Landroid/net/Uri;I)Lcom/samsung/android/ims/options/SemCapabilities;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "refreshType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 234
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 235
    return-object v0

    .line 237
    :cond_4
    iget-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-eqz v1, :cond_13

    .line 238
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    invoke-interface {v1, v0, p2, v2}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->getCapabilities(Ljava/lang/String;II)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v0

    return-object v0

    .line 240
    :cond_13
    return-object v0
.end method

.method public whitelist getCapabilitiesByContactId(Ljava/lang/String;I)[Lcom/samsung/android/ims/options/SemCapabilities;
    .registers 5
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-eqz v0, :cond_b

    .line 276
    iget v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v0

    return-object v0

    .line 278
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getCapabilitiesByNumber(Ljava/lang/String;IZ)Lcom/samsung/android/ims/options/SemCapabilities;
    .registers 6
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .param p3, "delay"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-eqz v0, :cond_b

    .line 257
    iget v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->getCapabilitiesByNumber(Ljava/lang/String;IZI)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v0

    return-object v0

    .line 259
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist getOwnCapabilities()Lcom/samsung/android/ims/options/SemCapabilities;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 217
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-eqz v0, :cond_b

    .line 218
    iget v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->getOwnCapabilities(I)Lcom/samsung/android/ims/options/SemCapabilities;

    move-result-object v0

    return-object v0

    .line 220
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist isConnected()Z
    .registers 2

    .line 206
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public whitelist registerListener(Lcom/samsung/android/ims/options/SemCapabilityListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/ims/options/SemCapabilityListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 289
    if-eqz p1, :cond_46

    invoke-virtual {p1}, Lcom/samsung/android/ims/options/SemCapabilityListener;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_46

    .line 292
    :cond_d
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerListener: listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-nez v0, :cond_38

    .line 294
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "registerListener: not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 296
    return-void

    .line 299
    :cond_38
    iget-object v1, p1, Lcom/samsung/android/ims/options/SemCapabilityListener;->callback:Lcom/samsung/android/ims/options/SemCapabilityListener$SemCapabilityServiceEventListenerDelegate;

    iget v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->registerListener(Lcom/samsung/android/ims/options/SemCapabilityServiceEventListener;I)Ljava/lang/String;

    move-result-object v0

    .line 300
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_45

    .line 301
    invoke-virtual {p1, v0}, Lcom/samsung/android/ims/options/SemCapabilityListener;->setToken(Ljava/lang/String;)V

    .line 303
    :cond_45
    return-void

    .line 290
    .end local v0    # "token":Ljava/lang/String;
    :cond_46
    :goto_46
    return-void
.end method

.method public whitelist unregisterListener(Lcom/samsung/android/ims/options/SemCapabilityListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/samsung/android/ims/options/SemCapabilityListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 312
    if-nez p1, :cond_3

    .line 313
    return-void

    .line 315
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterListener: listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    if-nez v0, :cond_2e

    .line 317
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string/jumbo v1, "unregisterListener: not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 319
    return-void

    .line 321
    :cond_2e
    invoke-virtual {p1}, Lcom/samsung/android/ims/options/SemCapabilityListener;->getToken()Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mImsCapabilityService:Lcom/samsung/android/ims/options/SemImsCapabilityService;

    iget v2, p0, Lcom/samsung/android/ims/options/SemCapabilityManager;->mPhoneId:I

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/ims/options/SemImsCapabilityService;->unregisterListener(Ljava/lang/String;I)V

    .line 323
    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/samsung/android/ims/options/SemCapabilityListener;->setToken(Ljava/lang/String;)V

    .line 324
    return-void
.end method
