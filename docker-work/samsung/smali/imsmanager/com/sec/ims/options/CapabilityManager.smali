.class public Lcom/sec/ims/options/CapabilityManager;
.super Ljava/lang/Object;
.source "CapabilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;,
        Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;,
        Lcom/sec/ims/options/CapabilityManager$ConnectionListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG_BASE:Ljava/lang/String; = "CapabilityManager"


# instance fields
.field private LOG_TAG:Ljava/lang/String;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field mEventProxy:Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;

.field private mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

.field private mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

.field mNeedRegisterListener:Z

.field private mPhoneId:I

.field private mQueuedCapabilityListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/sec/ims/options/CapabilityListener;",
            ">;"
        }
    .end annotation
.end field

.field mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;


# direct methods
.method static bridge synthetic -$$Nest$fgetLOG_TAG(Lcom/sec/ims/options/CapabilityManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmListener(Lcom/sec/ims/options/CapabilityManager;)Lcom/sec/ims/options/CapabilityManager$ConnectionListener;
    .registers 1

    iget-object p0, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmQueuedCapabilityListener(Lcom/sec/ims/options/CapabilityManager;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Lcom/sec/ims/options/CapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmImsCapabilityService(Lcom/sec/ims/options/CapabilityManager;Lcom/sec/ims/options/ICapabilityService;)V
    .registers 2

    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    .line 41
    const-string v1, "CapabilityManager"

    iput-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    .line 45
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    .line 47
    iput-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    .line 48
    iput-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    .line 409
    iput-boolean v0, p0, Lcom/sec/ims/options/CapabilityManager;->mNeedRegisterListener:Z

    .line 411
    iput-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    .line 56
    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager;->mContext:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lcom/sec/ims/options/CapabilityManager;->init()V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneId"    # I

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    .line 41
    const-string v1, "CapabilityManager"

    iput-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    .line 43
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    .line 45
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    .line 47
    iput-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    .line 48
    iput-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    .line 409
    iput-boolean v0, p0, Lcom/sec/ims/options/CapabilityManager;->mNeedRegisterListener:Z

    .line 411
    iput-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    .line 67
    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager;->mContext:Landroid/content/Context;

    .line 68
    iput p2, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    .line 69
    invoke-direct {p0}, Lcom/sec/ims/options/CapabilityManager;->init()V

    .line 70
    return-void
.end method

.method private init()V
    .registers 3

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CapabilityManager["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] this: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lcom/sec/ims/options/CapabilityManager;->connect()V

    .line 76
    return-void
.end method


# virtual methods
.method public addFakeCapabilityInfo(Ljava/util/List;Z)V
    .registers 5
    .param p2, "feature"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 402
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_9

    .line 403
    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/ims/options/ICapabilityService;->addFakeCapabilityInfo(Ljava/util/List;ZI)V

    .line 405
    :cond_9
    return-void
.end method

.method public connect()V
    .registers 6

    .line 105
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_11

    .line 106
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Not recommended in main thread."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_11
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_1d

    .line 110
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Already connected."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void

    .line 113
    :cond_1d
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Connecting to CapabilityDiscoveryService..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v0, Lcom/sec/ims/options/CapabilityManager$1;

    invoke-direct {v0, p0}, Lcom/sec/ims/options/CapabilityManager$1;-><init>(Lcom/sec/ims/options/CapabilityManager;)V

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    .line 158
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.sec.imsservice"

    const-string v2, "com.sec.internal.ims.imsservice.CapabilityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 161
    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    sget-object v4, Lcom/sec/ims/extensions/ContextExt;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/sec/ims/extensions/ContextExt;->bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 163
    return-void
.end method

.method public disconnect()V
    .registers 5

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_a

    .line 171
    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    goto :goto_11

    .line 173
    :cond_a
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    if-eqz v0, :cond_11

    .line 174
    invoke-interface {v0}, Lcom/sec/ims/options/CapabilityManager$ConnectionListener;->onDisconnected()V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_11} :catch_12

    .line 179
    :cond_11
    :goto_11
    goto :goto_2b

    .line 177
    :catch_12
    move-exception v0

    .line 178
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disconnect: IllegalArgumentException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :goto_2b
    return-void
.end method

.method public getAllCapabilities()[Lcom/sec/ims/options/Capabilities;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_b

    .line 346
    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/ims/options/ICapabilityService;->getAllCapabilities(I)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 348
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCapabilities(Landroid/net/Uri;I)Lcom/sec/ims/options/Capabilities;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "refreshType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 214
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 215
    return-object v0

    .line 217
    :cond_4
    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v1, :cond_17

    .line 218
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/ims/util/ImsUri;->parse(Ljava/lang/String;)Lcom/sec/ims/util/ImsUri;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v1, v0, p2, v2}, Lcom/sec/ims/options/ICapabilityService;->getCapabilities(Lcom/sec/ims/util/ImsUri;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 221
    :cond_17
    return-object v0
.end method

.method public getCapabilitiesByContactId(Ljava/lang/String;I)[Lcom/sec/ims/options/Capabilities;
    .registers 5
    .param p1, "contactId"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 319
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_b

    .line 320
    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesByContactId(Ljava/lang/String;II)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 322
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCapabilitiesById(I)Lcom/sec/ims/options/Capabilities;
    .registers 4
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 301
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_b

    .line 302
    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesById(II)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 304
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCapabilitiesByNumber(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_b

    .line 236
    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesByNumber(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 238
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCapabilitiesWithDelay(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "refreshType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_b

    .line 254
    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesWithDelay(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 256
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCapabilitiesWithFeature(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "feature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_b

    .line 271
    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, v1}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesWithFeature(Ljava/lang/String;II)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 273
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCapabilitiesWithFeatureByUriList(Ljava/util/List;II)[Lcom/sec/ims/options/Capabilities;
    .registers 6
    .param p2, "refreshType"    # I
    .param p3, "feature"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sec/ims/util/ImsUri;",
            ">;II)[",
            "Lcom/sec/ims/options/Capabilities;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 286
    .local p1, "uris":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/util/ImsUri;>;"
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_b

    .line 287
    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/sec/ims/options/ICapabilityService;->getCapabilitiesWithFeatureByUriList(Ljava/util/List;III)[Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 289
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOwnCapabilities()Lcom/sec/ims/options/Capabilities;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_b

    .line 199
    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1}, Lcom/sec/ims/options/ICapabilityService;->getOwnCapabilities(I)Lcom/sec/ims/options/Capabilities;

    move-result-object v0

    return-object v0

    .line 201
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnected()Z
    .registers 2

    .line 188
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public registerListener(Lcom/sec/ims/options/CapabilityListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/sec/ims/options/CapabilityListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 359
    if-nez p1, :cond_3

    .line 360
    return-void

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerListener: listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-nez v0, :cond_2c

    .line 364
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "registerListener: not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 366
    return-void

    .line 369
    :cond_2c
    iget-object v1, p1, Lcom/sec/ims/options/CapabilityListener;->callback:Lcom/sec/ims/options/ICapabilityServiceEventListener;

    iget v2, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/sec/ims/options/ICapabilityService;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)Ljava/lang/String;

    move-result-object v0

    .line 370
    .local v0, "token":Ljava/lang/String;
    if-eqz v0, :cond_38

    .line 371
    iput-object v0, p1, Lcom/sec/ims/options/CapabilityListener;->mToken:Ljava/lang/String;

    .line 373
    :cond_38
    return-void
.end method

.method public registerListener(Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;)V
    .registers 5
    .param p1, "listener"    # Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 423
    if-eqz p1, :cond_24

    .line 424
    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    .line 425
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-nez v0, :cond_c

    .line 426
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/ims/options/CapabilityManager;->mNeedRegisterListener:Z

    .line 427
    return-void

    .line 430
    :cond_c
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mEventProxy:Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;

    if-nez v0, :cond_24

    .line 431
    new-instance v0, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;-><init>(Lcom/sec/ims/options/CapabilityManager;Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener-IA;)V

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mEventProxy:Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;

    .line 432
    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    iget v2, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v1, v0, v2}, Lcom/sec/ims/options/ICapabilityService;->registerListener(Lcom/sec/ims/options/ICapabilityServiceEventListener;I)Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, "token":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mEventProxy:Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;

    iput-object v0, v1, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;->mToken:Ljava/lang/String;

    .line 436
    .end local v0    # "token":Ljava/lang/String;
    :cond_24
    return-void
.end method

.method public setConnectionListener(Lcom/sec/ims/options/CapabilityManager$ConnectionListener;)V
    .registers 3
    .param p1, "listener"    # Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    .line 84
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    if-eq v0, p1, :cond_f

    invoke-virtual {p0}, Lcom/sec/ims/options/CapabilityManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 85
    invoke-interface {p1}, Lcom/sec/ims/options/CapabilityManager$ConnectionListener;->onConnected()V

    .line 88
    :cond_f
    iput-object p1, p0, Lcom/sec/ims/options/CapabilityManager;->mListener:Lcom/sec/ims/options/CapabilityManager$ConnectionListener;

    .line 89
    return-void
.end method

.method public setUserActivity(Z)V
    .registers 4
    .param p1, "isActive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 333
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v0, :cond_9

    .line 334
    iget v1, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, p1, v1}, Lcom/sec/ims/options/ICapabilityService;->setUserActivity(ZI)V

    .line 336
    :cond_9
    return-void
.end method

.method public unregisterListener(Lcom/sec/ims/options/CapabilityListener;)V
    .registers 5
    .param p1, "listener"    # Lcom/sec/ims/options/CapabilityListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 382
    if-nez p1, :cond_3

    .line 383
    return-void

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregisterListener: listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/sec/ims/options/CapabilityListener;->mToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-nez v0, :cond_2e

    .line 387
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->LOG_TAG:Ljava/lang/String;

    const-string v1, "unregisterListener: not connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    iget-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mQueuedCapabilityListener:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 389
    return-void

    .line 391
    :cond_2e
    iget-object v1, p1, Lcom/sec/ims/options/CapabilityListener;->mToken:Ljava/lang/String;

    iget v2, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v0, v1, v2}, Lcom/sec/ims/options/ICapabilityService;->unregisterListener(Ljava/lang/String;I)V

    .line 392
    return-void
.end method

.method public unregisterListener(Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;)V
    .registers 6
    .param p1, "listener"    # Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 447
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mRelay:Lcom/sec/ims/options/CapabilityManager$CapabilityEventRelay;

    .line 448
    iget-object v1, p0, Lcom/sec/ims/options/CapabilityManager;->mImsCapabilityService:Lcom/sec/ims/options/ICapabilityService;

    if-eqz v1, :cond_12

    .line 449
    iget-object v2, p0, Lcom/sec/ims/options/CapabilityManager;->mEventProxy:Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;

    iget-object v2, v2, Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;->mToken:Ljava/lang/String;

    iget v3, p0, Lcom/sec/ims/options/CapabilityManager;->mPhoneId:I

    invoke-interface {v1, v2, v3}, Lcom/sec/ims/options/ICapabilityService;->unregisterListener(Ljava/lang/String;I)V

    .line 450
    iput-object v0, p0, Lcom/sec/ims/options/CapabilityManager;->mEventProxy:Lcom/sec/ims/options/CapabilityManager$CapabilityServiceEventListener;

    .line 452
    :cond_12
    return-void
.end method
