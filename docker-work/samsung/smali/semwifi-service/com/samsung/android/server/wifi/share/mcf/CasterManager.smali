.class Lcom/samsung/android/server/wifi/share/mcf/CasterManager;
.super Ljava/lang/Object;
.source "CasterManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;,
        Lcom/samsung/android/server/wifi/share/mcf/CasterManager$DeviceData;,
        Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;
    }
.end annotation


# static fields
.field private static final AUTHENTICATION_CASE:I = 0x0

.field private static final AUTH_TYPE_ONE_WAY:I = 0x0

.field static final AUTH_TYPE_TWO_WAY:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final DELAY_ADVERTISE:I = 0x2

.field private static final DEVICE_NAME_ME:Ljava/lang/String; = "-ME---"

.field private static final SEND_ADVERTISE_DIRECT:I = 0x0

.field private static final SEND_PASSWORD_CASE:I = 0x1

.field static final STOP_ADVERTISE:I = 0x1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final mFlagShowDataLog:Z = true

.field private static mHasMultipleConfigKey:Z

.field private static mIsAuthAdvertiseTriggered:Z

.field private static mIsSendPasswordAdvertiseTriggered:Z

.field private static final mLock:Ljava/lang/Object;

.field private static mMultipleConfigKeyJsonObject:Lorg/json/JSONObject;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

.field private mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

.field private final mCasterCallback:Lcom/samsung/android/mcf/CasterCallback;

.field private mContentsByteForQos:[B

.field private mIsNetworkEnabled:Z

.field private mIsPasswordLowLatency:Z

.field private mIsRegisteredAdvData:Z

.field private mIsScanTriggered:Z

.field private mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

.field private final mPassMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

.field private mPasswordCasterStartAt:J

.field private final mPasswordRequestedDevices:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;",
            ">;"
        }
    .end annotation
.end field

.field private final mPasswordRequestingDevices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mQosMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

.field private mSharedPasswordData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallback(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMcfCaster(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)Lcom/samsung/android/mcf/McfCaster;
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsNetworkEnabled(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsNetworkEnabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mclosePasswordSession(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->closePasswordSession(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetContactInfo(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->getContactInfo(Lcom/samsung/android/mcf/McfDevice;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetRequestData(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->getRequestData(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$misMatchedSharedData(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isMatchedSharedData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowPasswordConfirmPopup(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;Ljava/lang/String;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->showPasswordConfirmPopup(Lcom/samsung/android/mcf/McfDevice;Ljava/lang/String;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartAuthentication(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->startAuthentication(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetmHasMultipleConfigKey()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mHasMultipleConfigKey:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsAuthAdvertiseTriggered()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsAuthAdvertiseTriggered:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsSendPasswordAdvertiseTriggered()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsSendPasswordAdvertiseTriggered:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetmMultipleConfigKeyJsonObject()Lorg/json/JSONObject;
    .registers 1

    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMultipleConfigKeyJsonObject:Lorg/json/JSONObject;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmIsAuthAdvertiseTriggered(Z)V
    .registers 1

    sput-boolean p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsAuthAdvertiseTriggered:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmIsSendPasswordAdvertiseTriggered(Z)V
    .registers 1

    sput-boolean p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsSendPasswordAdvertiseTriggered:Z

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 67
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mLock:Ljava/lang/Object;

    .line 81
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMultipleConfigKeyJsonObject:Lorg/json/JSONObject;

    return-void
.end method

.method constructor <init>(Landroid/os/Looper;)V
    .registers 3

    .line 88
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    invoke-direct {v0, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;-><init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;)V

    return-void
.end method

.method constructor <init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "WifiProfileShare.McfCast"

    .line 51
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->TAG:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    .line 379
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$1;-><init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mCasterCallback:Lcom/samsung/android/mcf/CasterCallback;

    .line 390
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$2;-><init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mQosMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    .line 529
    new-instance v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$3;-><init>(Lcom/samsung/android/server/wifi/share/mcf/CasterManager;)V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPassMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    const/4 v0, 0x0

    .line 93
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mSharedPasswordData:Ljava/util/List;

    .line 94
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    return-void
.end method

.method private closePasswordSession(Ljava/lang/String;Z)V
    .registers 8

    .line 413
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 414
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 415
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;

    if-eqz v1, :cond_32

    const-string v2, "WifiProfileShare.McfCast"

    .line 417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " closePasswordSession, close popup"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    iget-object v1, v1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->contactKey:Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;->onSessionClosed(Ljava/lang/String;)V

    .line 421
    :cond_32
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_70

    .line 422
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->removeMessages(I)V

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    .line 423
    invoke-direct {p0, v2, v1, v3, v4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    if-eqz p2, :cond_70

    .line 424
    iget-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_70

    .line 425
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string p0, "WifiProfileShare.McfCast"

    .line 426
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " PasswordRequestingDevice list, because caster received bye advertise from subscriber!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_70
    monitor-exit v0

    return-void

    :catchall_72
    move-exception p0

    monitor-exit v0
    :try_end_74
    .catchall {:try_start_3 .. :try_end_74} :catchall_72

    throw p0
.end method

.method private getContactInfo(Lcom/samsung/android/mcf/McfDevice;)Ljava/lang/String;
    .registers 2

    .line 495
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getContactKey()[B

    move-result-object p0

    if-nez p0, :cond_22

    .line 497
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not exit contact key"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiProfileShare.McfCast"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 500
    :cond_22
    invoke-static {p0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->byteArrayToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRequestData(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 307
    :cond_4
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 308
    :try_start_7
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_27

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;

    .line 309
    iget-object v3, v2, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->contactKey:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 310
    monitor-exit v1

    return-object v2

    .line 313
    :cond_27
    monitor-exit v1

    return-object v0

    :catchall_29
    move-exception p0

    monitor-exit v1
    :try_end_2b
    .catchall {:try_start_7 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method private isMatchedSharedData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)Lcom/samsung/android/server/wifi/share/mcf/McfData;
    .registers 6

    .line 433
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    .line 434
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mSharedPasswordData:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 435
    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->matches(Lcom/samsung/android/server/wifi/share/mcf/McfData;)Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {v0, p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->maybeRoaming(Lcom/samsung/android/server/wifi/share/mcf/McfData;)Z

    move-result v1

    if-nez v1, :cond_30

    .line 436
    invoke-virtual {v0}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 437
    :cond_30
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " wants Wi-Fi profile"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WifiProfileShare.McfCast"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_47
    const/4 p0, 0x0

    return-object p0
.end method

.method private isNetworkEnable()Z
    .registers 3

    .line 157
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    if-eqz v0, :cond_b

    const/4 v1, 0x1

    .line 158
    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/McfCaster;->isNetworkEnabled(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsNetworkEnabled:Z

    .line 160
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-ME--- mIsNetworkEnabled :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsNetworkEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.McfCast"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsNetworkEnabled:Z

    return p0
.end method

.method private isOpened()Z
    .registers 1

    .line 153
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method private makeJsonObjectForMultipleConfigKey(Ljava/util/List;J)Lorg/json/JSONObject;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;J)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 275
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move v1, v0

    :goto_b
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    add-int/lit8 v3, v1, 0x1

    if-nez v1, :cond_26

    .line 278
    sget-object p0, Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;->AUTHENTICATION:Lcom/samsung/android/server/wifi/share/mcf/AdvertiseState;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0, v0, p2, p3}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getPasswordJsonData(Ljava/lang/String;ZJ)Lorg/json/JSONObject;

    move-result-object p0

    goto :goto_37

    :cond_26
    :try_start_26
    const-string v1, "configKey_hotspot"

    .line 282
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_2f} :catch_30

    goto :goto_37

    :catch_30
    const-string v1, "WifiProfileShare.McfCast"

    const-string v2, "JSONException occured"

    .line 284
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_37
    move v1, v3

    goto :goto_b

    :cond_39
    return-object p0
.end method

.method private sendAdvertiseMessage(IIJ)V
    .registers 6

    .line 483
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 484
    iput p1, v0, Landroid/os/Message;->what:I

    .line 485
    iput p2, v0, Landroid/os/Message;->arg1:I

    const-wide/16 p1, 0x0

    cmp-long p1, p3, p1

    if-eqz p1, :cond_15

    .line 488
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    invoke-virtual {p0, v0, p3, p4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1a

    .line 490
    :cond_15
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    invoke-virtual {p0, v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->sendMessage(Landroid/os/Message;)Z

    :goto_1a
    return-void
.end method

.method private showPasswordConfirmPopup(Lcom/samsung/android/mcf/McfDevice;Ljava/lang/String;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .registers 9

    .line 505
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_1d

    const-string p0, "WifiProfileShare.McfCast"

    .line 507
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " user data is null"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 510
    :cond_1d
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 511
    :try_start_20
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 512
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->isInContact()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_47

    const-string p0, "WifiProfileShare.McfCast"

    .line 513
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " may not be friend (unauthorized)"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    monitor-exit v1

    return-void

    .line 517
    :cond_47
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_67

    const-string p0, "WifiProfileShare.McfCast"

    .line 518
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " skip already requested"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    monitor-exit v1

    return-void

    .line 521
    :cond_67
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    new-instance v3, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;

    .line 522
    invoke-virtual {p3}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, p2, v4, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/mcf/McfDevice;)V

    .line 521
    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    monitor-exit v1
    :try_end_76
    .catchall {:try_start_20 .. :try_end_76} :catchall_9a

    const-string p1, "WifiProfileShare.McfCast"

    .line 524
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " showPasswordConfirmPopup"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " contact:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    invoke-interface {p0, p3, p2}, Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;->onPasswordRequested(Lcom/samsung/android/server/wifi/share/mcf/McfData;Ljava/lang/String;)V

    return-void

    :catchall_9a
    move-exception p0

    .line 523
    :try_start_9b
    monitor-exit v1
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw p0
.end method

.method private startAuthentication(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .registers 15

    .line 445
    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_1d

    const-string p0, "WifiProfileShare.McfCast"

    .line 447
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " skip to start authentication, no data"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 450
    :cond_1d
    sget-object v1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 451
    :try_start_20
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const-string p0, "WifiProfileShare.McfCast"

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " found requester but already confirmed"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    monitor-exit v1

    return-void

    .line 455
    :cond_40
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_60

    const-string p0, "WifiProfileShare.McfCast"

    .line 456
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " found requester but already triggered"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    monitor-exit v1

    return-void

    .line 459
    :cond_60
    monitor-exit v1
    :try_end_61
    .catchall {:try_start_20 .. :try_end_61} :catchall_ca

    .line 461
    sget-boolean v2, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsSendPasswordAdvertiseTriggered:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_83

    const-string v2, "WifiProfileShare.McfCast"

    const-string v5, "startAuthentication,  now send password advertising ! 3 seconds wait & start Advertise"

    .line 462
    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v6, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    iget-wide v9, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordCasterStartAt:J

    const/4 v11, 0x1

    move-object v7, p1

    move-object v8, p2

    invoke-virtual/range {v6 .. v11}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->setDeviceData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;JZ)V

    const-wide/16 p1, 0xbb8

    .line 464
    invoke-direct {p0, v4, v4, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    const-wide/16 p1, 0x4650

    .line 465
    invoke-direct {p0, v3, v4, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    goto :goto_a9

    .line 466
    :cond_83
    sget-boolean v2, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsAuthAdvertiseTriggered:Z

    if-eqz v2, :cond_95

    const-string p1, "WifiProfileShare.McfCast"

    const-string p2, "-ME--- startAuthentication already triggered advertise, delay advertise time"

    .line 467
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->sendEmptyMessage(I)Z

    goto :goto_a9

    .line 470
    :cond_95
    iget-object v5, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    iget-wide v8, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordCasterStartAt:J

    const/4 v10, 0x1

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v5 .. v10}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->setDeviceData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;JZ)V

    const-wide/16 p1, 0x0

    .line 471
    invoke-direct {p0, v4, v4, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    const-wide/16 p1, 0x3a98

    .line 472
    invoke-direct {p0, v3, v4, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    :goto_a9
    const-string p1, "WifiProfileShare.McfCast"

    .line 475
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " found new requester, start authentication"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    monitor-enter v1

    .line 478
    :try_start_c0
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 479
    monitor-exit v1

    return-void

    :catchall_c7
    move-exception p0

    monitor-exit v1
    :try_end_c9
    .catchall {:try_start_c0 .. :try_end_c9} :catchall_c7

    throw p0

    :catchall_ca
    move-exception p0

    .line 459
    :try_start_cb
    monitor-exit v1
    :try_end_cc
    .catchall {:try_start_cb .. :try_end_cc} :catchall_ca

    throw p0
.end method


# virtual methods
.method clearUserRequestPasswordHistory()V
    .registers 6

    .line 369
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 370
    :try_start_3
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 371
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->removeMessages(I)V

    const/4 v1, 0x0

    const-wide/16 v3, 0x0

    .line 372
    invoke-direct {p0, v2, v1, v3, v4}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    .line 374
    :cond_17
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 375
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestedDevices:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    .line 376
    monitor-exit v0

    return-void

    :catchall_23
    move-exception p0

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw p0
.end method

.method closeCaster(Lcom/samsung/android/mcf/McfAdapter;)V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    if-nez v0, :cond_c

    const-string p0, "WifiProfileShare.McfCast"

    const-string p1, "-ME--- closeCaster, already closed"

    .line 115
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 118
    :cond_c
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->stopAll()V

    .line 119
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsNetworkEnabled:Z

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 120
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsNetworkEnabled:Z

    :cond_16
    if-eqz p1, :cond_21

    const/4 v0, 0x4

    .line 124
    :try_start_19
    invoke-virtual {p1, v0}, Lcom/samsung/android/mcf/McfAdapter;->closeCaster(I)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p1

    .line 126
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_21
    :goto_21
    const/4 p1, 0x0

    .line 129
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    return-void
.end method

.method isBleActivated()Z
    .registers 2

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->isNetworkEnable()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method isEnabledQoSSharing()Z
    .registers 1

    .line 193
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsRegisteredAdvData:Z

    return p0
.end method

.method isEnabledSharingPassword()Z
    .registers 1

    .line 300
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsScanTriggered:Z

    return p0
.end method

.method isLowLatencyForPasswordShare()Z
    .registers 1

    .line 230
    iget-boolean p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsPasswordLowLatency:Z

    return p0
.end method

.method openCaster(Lcom/samsung/android/mcf/McfAdapter;)V
    .registers 5

    const-string v0, "WifiProfileShare.McfCast"

    if-nez p1, :cond_a

    const-string p0, "-ME--- openCaster, adapter is null"

    .line 99
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/4 v1, 0x4

    .line 103
    :try_start_b
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mCasterCallback:Lcom/samsung/android/mcf/CasterCallback;

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/mcf/McfAdapter;->getCaster(ILcom/samsung/android/mcf/CasterCallback;)Lcom/samsung/android/mcf/McfCaster;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    .line 104
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    invoke-virtual {v1, p1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->setMcfCaster(Lcom/samsung/android/mcf/McfCaster;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception p1

    .line 106
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 108
    :goto_1d
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    if-nez p0, :cond_26

    const-string p0, "-ME--- openCaster, failed to open caster"

    .line 109
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_26
    return-void
.end method

.method sendPasswordData(ZLjava/lang/String;)V
    .registers 11

    .line 318
    invoke-direct {p0, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->getRequestData(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;

    move-result-object v0

    const-string v1, "WifiProfileShare.McfCast"

    if-nez v0, :cond_1d

    .line 320
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-ME--- sendPasswordData failed, can not found requester "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1d
    const/4 p2, 0x0

    if-eqz p1, :cond_42

    .line 328
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mSharedPasswordData:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_26
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/server/wifi/share/mcf/McfData;

    .line 329
    invoke-virtual {v2}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getConfigKey()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_26

    .line 330
    iget-object v4, v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->configKey:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    move-object p2, v2

    goto :goto_48

    .line 336
    :cond_42
    iget-object p1, v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->configKey:Ljava/lang/String;

    invoke-static {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfDataFactory;->createPasswordCancelData(Ljava/lang/String;)Lcom/samsung/android/server/wifi/share/mcf/McfData;

    move-result-object p2

    :cond_48
    :goto_48
    move-object v4, p2

    .line 339
    iget-object v3, v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$RequestData;->mcfDevice:Lcom/samsung/android/mcf/McfDevice;

    if-nez v3, :cond_53

    const-string p0, "-ME--- sendPasswordData failed, target device is null"

    .line 341
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_53
    if-nez v4, :cond_6e

    .line 345
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/samsung/android/mcf/McfDevice;->getDeviceID()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sendPasswordData failed, not exist shared data"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 350
    :cond_6e
    iget-object v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    iget-wide v5, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordCasterStartAt:J

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->setDeviceData(Lcom/samsung/android/mcf/McfDevice;Lcom/samsung/android/server/wifi/share/mcf/McfData;JZ)V

    .line 351
    sget-boolean p1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsSendPasswordAdvertiseTriggered:Z

    const-wide/16 v2, 0x3e8

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_91

    const-string p1, "sendPassword,  send password advertise already started! delay start"

    .line 352
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->delayRestartAuthAdvertiseForMultipleSendPassword(Z)V

    .line 354
    invoke-direct {p0, p2, v0, v2, v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    const-wide/16 p1, 0x7d0

    .line 355
    invoke-direct {p0, v0, v0, p1, p2}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    goto :goto_af

    .line 357
    :cond_91
    sget-boolean p1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsAuthAdvertiseTriggered:Z

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_a4

    const-string p1, "sendPassword,  auth advertise already started ! stop auth advertise!"

    .line 358
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iget-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mAdvertiseHandler:Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager$AdvertiseHandler;->setRestartAuthAdvertise(Z)V

    .line 360
    invoke-direct {p0, v0, p2, v4, v5}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    :cond_a4
    const-string p1, "sendPassword,  start send password advertise ! "

    .line 362
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-direct {p0, p2, v0, v4, v5}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    .line 364
    invoke-direct {p0, v0, v0, v2, v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->sendAdvertiseMessage(IIJ)V

    :goto_af
    return-void
.end method

.method setScanMode(Z)V
    .registers 2

    .line 226
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsPasswordLowLatency:Z

    return-void
.end method

.method startScanForPassword(Ljava/util/List;Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;",
            "Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;",
            ")V"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-ME--- startScanForPassword pwdData size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIsPasswordLowLatency : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsPasswordLowLatency:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.McfCast"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    if-eqz v0, :cond_6a

    .line 237
    iput-object p2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mCallback:Lcom/samsung/android/server/wifi/share/mcf/ICasterCallback;

    .line 238
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mSharedPasswordData:Ljava/util/List;

    .line 239
    new-instance p2, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    invoke-direct {p2}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;-><init>()V

    const/4 v0, 0x0

    .line 240
    invoke-virtual {p2, v0}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setTimeout(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    move-result-object p2

    const/4 v1, 0x4

    const/4 v2, 0x1

    .line 241
    invoke-virtual {p2, v1, v2, v0}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setScanData(IZZ)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    move-result-object p2

    .line 242
    iget-boolean v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsPasswordLowLatency:Z

    if-eqz v1, :cond_44

    const/4 v1, 0x3

    .line 243
    invoke-virtual {p2, v1}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setScanMode(I)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    .line 245
    :cond_44
    iput-boolean v2, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsScanTriggered:Z

    .line 246
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    invoke-virtual {p2}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfScanData;

    move-result-object p2

    iget-object v3, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPassMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    invoke-interface {v1, p2, v3}, Lcom/samsung/android/mcf/McfCaster;->startScan(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    .line 247
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordCasterStartAt:J

    .line 249
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v2, :cond_68

    .line 250
    sput-boolean v2, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mHasMultipleConfigKey:Z

    .line 251
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordCasterStartAt:J

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->makeJsonObjectForMultipleConfigKey(Ljava/util/List;J)Lorg/json/JSONObject;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMultipleConfigKeyJsonObject:Lorg/json/JSONObject;

    goto :goto_6a

    .line 253
    :cond_68
    sput-boolean v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mHasMultipleConfigKey:Z

    :cond_6a
    :goto_6a
    return-void
.end method

.method startScanForQoS(Lcom/samsung/android/server/wifi/share/mcf/McfData;)V
    .registers 6

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-ME--- startScanForQoS qosData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.McfCast"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4a

    .line 170
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    if-eqz v0, :cond_4a

    .line 171
    invoke-virtual {p1}, Lcom/samsung/android/server/wifi/share/mcf/McfData;->getByteArrayForSharing()[B

    move-result-object p1

    .line 172
    new-instance v0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;-><init>()V

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 173
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setAdvertiseData(IZZ)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    move-result-object v0

    .line 174
    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setByteContent([B)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    move-result-object p1

    .line 175
    invoke-virtual {p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfAdvertiseData;

    move-result-object p1

    .line 176
    new-instance v0, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;-><init>()V

    .line 177
    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->setScanData(IZZ)Lcom/samsung/android/mcf/discovery/McfScanData$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {v0}, Lcom/samsung/android/mcf/discovery/McfScanData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfScanData;

    move-result-object v0

    .line 179
    iput-boolean v3, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsRegisteredAdvData:Z

    .line 180
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mQosMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    invoke-interface {v1, v0, p1, p0}, Lcom/samsung/android/mcf/McfCaster;->registerAdvertiseData(Lcom/samsung/android/mcf/discovery/McfScanData;Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    :cond_4a
    return-void
.end method

.method stopAll()V
    .registers 5

    .line 133
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    if-nez v0, :cond_c

    const-string p0, "WifiProfileShare.McfCast"

    const-string v0, "-ME--- closeCaster, already closed"

    .line 134
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 137
    :cond_c
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsScanTriggered:Z

    if-eqz v0, :cond_13

    .line 138
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->stopScanForPassword()V

    .line 140
    :cond_13
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsRegisteredAdvData:Z

    if-eqz v0, :cond_1a

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->stopScanForQoS()V

    .line 143
    :cond_1a
    sget-object v0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_1d
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 145
    invoke-direct {p0, v2, v3}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->closePasswordSession(Ljava/lang/String;Z)V

    goto :goto_23

    .line 147
    :cond_34
    iget-object v1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordRequestingDevices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 148
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_3e

    const/4 v0, 0x0

    .line 149
    iput-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mContentsByteForQos:[B

    return-void

    :catchall_3e
    move-exception p0

    .line 148
    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p0
.end method

.method stopScanForPassword()V
    .registers 3

    const-string v0, "WifiProfileShare.McfCast"

    const-string v1, "-ME--- stopScan"

    .line 292
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 293
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsScanTriggered:Z

    .line 294
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    if-eqz v0, :cond_13

    .line 295
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPassMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    invoke-interface {v0, p0}, Lcom/samsung/android/mcf/McfCaster;->stopScan(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    :cond_13
    return-void
.end method

.method stopScanForQoS()V
    .registers 3

    const-string v0, "WifiProfileShare.McfCast"

    const-string v1, "-ME--- unregisterPilotScan !!"

    .line 185
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsRegisteredAdvData:Z

    .line 187
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    if-eqz v0, :cond_13

    .line 188
    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mQosMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    invoke-interface {v0, p0}, Lcom/samsung/android/mcf/McfCaster;->unregisterAdvertiseData(Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    :cond_13
    return-void
.end method

.method updatePasswordDate(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/server/wifi/share/mcf/McfData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_39

    .line 259
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_39

    .line 260
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-ME--- updatePasswordDate pwdData size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiProfileShare.McfCast"

    .line 260
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mSharedPasswordData:Ljava/util/List;

    .line 264
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_36

    .line 265
    sput-boolean v1, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mHasMultipleConfigKey:Z

    .line 266
    iget-wide v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mPasswordCasterStartAt:J

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->makeJsonObjectForMultipleConfigKey(Ljava/util/List;J)Lorg/json/JSONObject;

    move-result-object p0

    sput-object p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMultipleConfigKeyJsonObject:Lorg/json/JSONObject;

    goto :goto_39

    :cond_36
    const/4 p0, 0x0

    .line 268
    sput-boolean p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mHasMultipleConfigKey:Z

    :cond_39
    :goto_39
    return-void
.end method

.method updateQoSData([B)Z
    .registers 6

    .line 197
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    const/4 v1, 0x0

    const-string v2, "WifiProfileShare.McfCast"

    if-nez v0, :cond_d

    const-string p0, "-ME---updateQoSData, failed to open caster"

    .line 198
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 201
    :cond_d
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mIsRegisteredAdvData:Z

    if-nez v0, :cond_17

    const-string p0, "-ME--- updateQoSData failed, not registered"

    .line 202
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_17
    if-nez p1, :cond_1f

    const-string p0, "updateQoSData failed, contents data is null"

    .line 206
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 209
    :cond_1f
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mContentsByteForQos:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_2e

    const-string p0, "updateQoSData ignored, same contents"

    .line 210
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2e
    const-string v0, "-ME--- updateQoSData, contents data is different from the previous data"

    .line 214
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iput-object p1, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mContentsByteForQos:[B

    .line 218
    new-instance v0, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    invoke-direct {v0}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;-><init>()V

    const/4 v2, 0x4

    .line 219
    invoke-virtual {v0, v2, v1, v3}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setAdvertiseData(IZZ)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->setByteContent([B)Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;

    move-result-object p1

    .line 221
    invoke-virtual {p1}, Lcom/samsung/android/mcf/discovery/McfAdvertiseData$Builder;->build()Lcom/samsung/android/mcf/discovery/McfAdvertiseData;

    move-result-object p1

    .line 222
    iget-object v0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mMcfCaster:Lcom/samsung/android/mcf/McfCaster;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/share/mcf/CasterManager;->mQosMcfDeviceDiscoverCallback:Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;

    invoke-interface {v0, p1, p0}, Lcom/samsung/android/mcf/McfCaster;->updateAdvertiseData(Lcom/samsung/android/mcf/discovery/McfAdvertiseData;Lcom/samsung/android/mcf/discovery/McfDeviceDiscoverCallback;)I

    move-result p0

    if-nez p0, :cond_52

    move v1, v3

    :cond_52
    return v1
.end method
