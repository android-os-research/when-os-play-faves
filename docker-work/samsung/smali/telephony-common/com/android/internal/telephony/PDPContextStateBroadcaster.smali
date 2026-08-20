.class public Lcom/android/internal/telephony/PDPContextStateBroadcaster;
.super Ljava/lang/Object;
.source "PDPContextStateBroadcaster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PDPContextStateBroadcaster$PhoneStateListenerImpl;
    }
.end annotation


# static fields
.field private static final blacklist DEBUG_LOG:Z

.field private static final blacklist EXTRA_CONTEXT_DNS:[Ljava/lang/String;

.field private static final blacklist EXTRA_CONTEXT_V6DNS:[Ljava/lang/String;

.field public static final blacklist REASON_LINK_PROPERTIES_CHANGED:Ljava/lang/String; = "linkPropertiesChanged"

.field private static blacklist mContext:Landroid/content/Context;

.field private static blacklist mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private static blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private static final blacklist sExcludeTypes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

.field private static final blacklist sTermCodeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mApnIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private blacklist mNextContextId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEBUG_LOG()Z
    .registers 1

    sget-boolean v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->DEBUG_LOG:Z

    return v0
.end method

.method static bridge synthetic blacklist -$$Nest$smdataStateToString(I)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->dataStateToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    const-string v0, "ro.build.type"

    .line 185
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->DEBUG_LOG:Z

    const-string v0, "ContextDNS1"

    const-string v1, "ContextDNS2"

    .line 206
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_DNS:[Ljava/lang/String;

    const-string v0, "ContextV6DNS1"

    const-string v1, "ContextV6DNS2"

    .line 207
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_V6DNS:[Ljava/lang/String;

    .line 226
    new-instance v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sExcludeTypes:Ljava/util/HashSet;

    .line 233
    new-instance v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;

    invoke-direct {v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$2;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sTermCodeMap:Ljava/util/HashMap;

    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 284
    iput v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    return-void
.end method

.method private static blacklist assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z
    .registers 4

    .line 478
    aget-object v0, p1, p2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 479
    aput-object p0, p1, p2

    :cond_a
    return v0
.end method

.method private static blacklist assignToEmptyElement(Ljava/lang/String;[Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    :goto_1
    add-int/lit8 v1, v0, 0x1

    .line 469
    invoke-static {p0, p1, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 470
    array-length v0, p1

    if-ne v1, v0, :cond_d

    goto :goto_f

    :cond_d
    move v0, v1

    goto :goto_1

    :cond_f
    :goto_f
    return-void
.end method

.method private blacklist broadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 422
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    const-string v0, "diagandroid.data.receivePDPContextState"

    invoke-virtual {p1, p2, p0, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist contextIdInUse(I)Z
    .registers 3

    .line 305
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 306
    iget-object p0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_e
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 307
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    :goto_23
    return p0
.end method

.method private static blacklist createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;
    .registers 4

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-string v1, "diagandroid.data.PDPContextState"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "ContextState"

    .line 416
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 417
    invoke-virtual {p1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ContextID"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private static blacklist dataStateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_2b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_28

    const/4 v0, 0x2

    if-eq p0, v0, :cond_25

    const/4 v0, 0x3

    if-eq p0, v0, :cond_22

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_22
    const-string p0, "SUSPENDED"

    return-object p0

    :cond_25
    const-string p0, "CONNECTED"

    return-object p0

    :cond_28
    const-string p0, "CONNECTING"

    return-object p0

    :cond_2b
    const-string p0, "DISCONNECTED"

    return-object p0
.end method

.method public static declared-synchronized blacklist disable()V
    .registers 4

    const-class v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v0

    .line 65
    :try_start_3
    invoke-static {}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->disable()V

    const/4 v1, 0x0

    .line 66
    sput-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    .line 67
    sget-boolean v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->DEBUG_LOG:Z

    if-eqz v1, :cond_14

    const-string v1, "PDPContextStateBroadcaster"

    const-string v2, "disable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_14
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1e

    .line 69
    sget-object v2, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    .line 71
    :cond_1e
    monitor-exit v0

    return-void

    :catchall_20
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized blacklist enable(Landroid/content/Context;)V
    .registers 4

    const-class v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v0

    .line 53
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    if-nez v1, :cond_38

    .line 54
    sget-boolean v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->DEBUG_LOG:Z

    if-eqz v1, :cond_12

    const-string v1, "PDPContextStateBroadcaster"

    const-string v2, "enable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_12
    invoke-static {p0}, Lcom/sec/tmodiagnostics/DeviceReportingSecurityChecker;->enable(Landroid/content/Context;)V

    .line 56
    new-instance v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    invoke-direct {v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    .line 57
    sput-object p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 58
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sput-object p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 59
    new-instance p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster$PhoneStateListenerImpl;

    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster$PhoneStateListenerImpl;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 60
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/16 v2, 0x1000

    invoke-virtual {v1, p0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_3a

    .line 62
    :cond_38
    monitor-exit v0

    return-void

    :catchall_3a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist getContextId(Landroid/telephony/data/ApnSetting;Ljava/lang/String;)Ljava/lang/Integer;
    .registers 3

    .line 289
    iget-object p0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    if-eqz p0, :cond_19

    .line 290
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    goto :goto_1a

    :cond_19
    const/4 p0, 0x0

    :goto_1a
    return-object p0
.end method

.method private static blacklist getContextType(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const-string v0, "default"

    .line 341
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    const-string p0, "PRIMARY"

    goto :goto_d

    :cond_b
    const-string p0, "SECONDARY"

    :goto_d
    return-object p0
.end method

.method private blacklist getNextContextId()I
    .registers 4

    .line 331
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    const v2, 0xffff

    if-le v1, v2, :cond_e

    const/4 v1, 0x1

    .line 334
    iput v1, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mNextContextId:I

    .line 336
    :cond_e
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->contextIdInUse(I)Z

    move-result v1

    if-nez v1, :cond_0

    return v0
.end method

.method private static blacklist getTermCode(Ljava/lang/String;)Ljava/lang/Integer;
    .registers 2

    .line 345
    sget-object v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sTermCodeMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_11

    const/4 p0, 0x0

    .line 347
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    :cond_11
    return-object p0
.end method

.method private static blacklist processDNSAddresses(Ljava/util/Collection;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 454
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    const/4 v1, 0x0

    .line 456
    instance-of v2, v0, Ljava/net/Inet4Address;

    if-eqz v2, :cond_17

    move-object v1, p1

    goto :goto_1c

    .line 458
    :cond_17
    instance-of v2, v0, Ljava/net/Inet6Address;

    if-eqz v2, :cond_1c

    move-object v1, p2

    :cond_1c
    :goto_1c
    if-eqz v1, :cond_4

    .line 462
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToEmptyElement(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_4

    :cond_26
    return-void
.end method

.method private static blacklist processIPAddresses(Ljava/util/Collection;[Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/net/InetAddress;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 436
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    .line 437
    instance-of v1, v0, Ljava/net/Inet4Address;

    if-eqz v1, :cond_1d

    .line 438
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z

    goto :goto_4

    .line 440
    :cond_1d
    instance-of v1, v0, Ljava/net/Inet6Address;

    if-eqz v1, :cond_4

    .line 441
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->assignToArrayElementIfEmpty(Ljava/lang/String;[Ljava/lang/String;I)Z

    goto :goto_4

    :cond_2a
    return-void
.end method

.method private blacklist removeContextId(Landroid/telephony/data/ApnSetting;Ljava/lang/String;)V
    .registers 4

    .line 295
    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 296
    iget-object v0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-eqz v0, :cond_20

    .line 298
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_20

    iget-object p0, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_20
    return-void
.end method

.method public static declared-synchronized blacklist sendConnected(Landroid/content/Context;Landroid/net/LinkProperties;Landroid/telephony/data/ApnSetting;Ljava/lang/String;)V
    .registers 16

    const-class v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v0

    .line 140
    :try_start_3
    sget-boolean v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->DEBUG_LOG:Z

    if-eqz v1, :cond_21

    const-string v2, "PDPContextStateBroadcaster"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendConnected() with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_62

    :cond_21
    if-eqz p1, :cond_60

    if-eqz v1, :cond_2c

    :try_start_25
    const-string v1, "PDPContextStateBroadcaster"

    const-string v2, "have linkProperties"

    .line 143
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    const-string v1, ""

    const-string v2, ""

    .line 144
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    const-string v3, ""

    .line 145
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v10

    const-string v2, ""

    const-string v3, ""

    .line 146
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v11

    .line 149
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getAddresses()Ljava/util/List;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->processIPAddresses(Ljava/util/Collection;[Ljava/lang/String;)V

    .line 152
    invoke-virtual {p1}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object p1

    invoke-static {p1, v10, v11}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->processDNSAddresses(Ljava/util/Collection;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 154
    sget-object v4, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    const/4 p1, 0x0

    aget-object v8, v1, p1

    const/4 p1, 0x1

    aget-object v9, v1, p1

    move-object v5, p0

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v4 .. v11}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendPDPContextConnected(Landroid/content/Context;Landroid/telephony/data/ApnSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_60} :catch_60
    .catchall {:try_start_25 .. :try_end_60} :catchall_62

    .line 161
    :catch_60
    :cond_60
    monitor-exit v0

    return-void

    :catchall_62
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized blacklist sendDisconnected(Landroid/content/Context;Landroid/telephony/data/ApnSetting;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-class v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v0

    .line 166
    :try_start_3
    sget-boolean v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->DEBUG_LOG:Z

    if-eqz v1, :cond_21

    const-string v1, "PDPContextStateBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendDisconnected() with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_28

    .line 168
    :cond_21
    :try_start_21
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendPDPContextDisconnected(Landroid/content/Context;Landroid/telephony/data/ApnSetting;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_28

    .line 172
    :catch_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private blacklist sendPDPContextConnected(Landroid/content/Context;Landroid/telephony/data/ApnSetting;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .registers 9

    .line 382
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getContextId(Landroid/telephony/data/ApnSetting;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_46

    .line 384
    sget-boolean p3, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->DEBUG_LOG:Z

    const-string v0, "PDPContextStateBroadcaster"

    if-eqz p3, :cond_11

    const-string p3, "sendPDPContextConnected found contextId"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    const-string p3, "CONNECTED"

    .line 385
    invoke-static {p3, p2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "ContextIPV4Addr"

    .line 386
    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "ContextIPV6Addr"

    .line 387
    invoke-virtual {p2, p3, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p3, 0x0

    :goto_22
    const/4 p4, 0x2

    if-ge p3, p4, :cond_3a

    .line 389
    sget-object p4, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_DNS:[Ljava/lang/String;

    aget-object p4, p4, p3

    aget-object p5, p6, p3

    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 390
    sget-object p4, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->EXTRA_CONTEXT_V6DNS:[Ljava/lang/String;

    aget-object p4, p4, p3

    aget-object p5, p7, p3

    invoke-virtual {p2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    add-int/lit8 p3, p3, 0x1

    goto :goto_22

    .line 392
    :cond_3a
    sget-boolean p3, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->DEBUG_LOG:Z

    if-eqz p3, :cond_43

    const-string p3, "sendPDPContextConnected broadcasting"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    :cond_43
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->broadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_46
    return-void
.end method

.method private blacklist sendPDPContextDisconnected(Landroid/content/Context;Landroid/telephony/data/ApnSetting;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 399
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getContextId(Landroid/telephony/data/ApnSetting;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_42

    .line 401
    sget-boolean v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->DEBUG_LOG:Z

    const-string v2, "PDPContextStateBroadcaster"

    if-eqz v1, :cond_11

    const-string v3, "sendPDPContextDisconnected found contextId"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_11
    invoke-direct {p0, p2, p3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->removeContextId(Landroid/telephony/data/ApnSetting;Ljava/lang/String;)V

    const-string p2, "DISCONNECTED"

    .line 404
    invoke-static {p2, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p2

    const-string p3, "ContextInitiator"

    const-string v0, "USER"

    .line 405
    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 406
    invoke-static {p4}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getTermCode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p3

    .line 407
    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ContextTermCode"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p3, -0x1

    .line 408
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    const-string p4, "ContextErrorCode"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz v1, :cond_3f

    const-string p3, "sendPDPContextDisconnected broadcasting"

    .line 409
    invoke-static {v2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_3f
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->broadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_42
    return-void
.end method

.method private blacklist sendPDPContextRequested(Landroid/content/Context;Landroid/telephony/data/ApnSetting;Ljava/lang/String;)V
    .registers 9

    .line 352
    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getId()I

    move-result v0

    .line 353
    invoke-virtual {p2}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object p2

    .line 354
    invoke-static {p3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getContextType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 356
    iget-object v2, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "PDPContextStateBroadcaster"

    if-nez v2, :cond_47

    .line 358
    sget-boolean v2, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->DEBUG_LOG:Z

    if-eqz v2, :cond_3d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "apnId "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not already known"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_3d
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 360
    iget-object v4, p0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->mApnIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 364
    :cond_47
    invoke-virtual {v2, p3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    .line 366
    invoke-direct {p0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->getNextContextId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 367
    invoke-virtual {v2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "REQUEST"

    .line 368
    invoke-static {p3, v0}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->createIntent(Ljava/lang/String;Ljava/lang/Integer;)Landroid/content/Intent;

    move-result-object p3

    const-string v0, "ContextInitiator"

    const-string v2, "USER"

    .line 369
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ContextType"

    .line 370
    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x0

    .line 371
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ContextNSAPI"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 372
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContextSAPI"

    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "ContextAPN"

    .line 373
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 374
    sget-boolean p2, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->DEBUG_LOG:Z

    if-eqz p2, :cond_8b

    const-string p2, "sendPDPContextRequested broadcasting"

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    :cond_8b
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->broadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_8e
    return-void
.end method

.method public static declared-synchronized blacklist sendRequested(Landroid/content/Context;Landroid/telephony/data/ApnSetting;Ljava/lang/String;)V
    .registers 7

    const-class v0, Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    monitor-enter v0

    .line 74
    :try_start_3
    sget-boolean v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->DEBUG_LOG:Z

    if-eqz v1, :cond_21

    const-string v1, "PDPContextStateBroadcaster"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRequested() with "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/data/ApnSetting;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_28

    .line 76
    :cond_21
    :try_start_21
    sget-object v1, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sInstance:Lcom/android/internal/telephony/PDPContextStateBroadcaster;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/internal/telephony/PDPContextStateBroadcaster;->sendPDPContextRequested(Landroid/content/Context;Landroid/telephony/data/ApnSetting;Ljava/lang/String;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_26} :catch_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_28

    .line 80
    :catch_26
    monitor-exit v0

    return-void

    :catchall_28
    move-exception p0

    monitor-exit v0

    throw p0
.end method
