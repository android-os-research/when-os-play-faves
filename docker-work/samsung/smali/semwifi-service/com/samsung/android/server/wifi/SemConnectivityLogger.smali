.class public Lcom/samsung/android/server/wifi/SemConnectivityLogger;
.super Ljava/lang/Object;
.source "SemConnectivityLogger.java"


# static fields
.field private static final DUMPSYS_ENTRY_COUNT_LIMIT:I = 0xbb8

.field private static final DUMP_TITLE:Ljava/lang/String;

.field private static final MAC_PATTERN:Ljava/lang/String; = "([0-9A-Fa-f]{2}:){5}([0-9A-Fa-f]{2})"

.field private static final TAG:Ljava/lang/String; = "SemConnectivityLogger"

.field private static final VER:Ljava/lang/String; = "1.3.0"


# instance fields
.field private mApplyMacAddressMasking:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mHistory:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMacAddressPattern:Ljava/util/regex/Pattern;


# direct methods
.method public static synthetic $r8$lambda$PDc5yx2PqlRG83eD1GgL3ih8NJc(Lcom/samsung/android/server/wifi/SemConnectivityLogger;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->lambda$initProxyEventReceiver$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$syptXPfolE4p4NNx4KRs7F93MYA(Lcom/samsung/android/server/wifi/SemConnectivityLogger;II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->lambda$initProxyEventReceiver$1(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrecordHistory(Lcom/samsung/android/server/wifi/SemConnectivityLogger;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->recordHistory(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 39
    const-class v0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (v"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "1.3.0"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") history:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->DUMP_TITLE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;Landroid/os/Looper;)V
    .registers 5

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mHistory:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mApplyMacAddressMasking:Z

    .line 52
    invoke-direct {p0, p3}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object p3

    iput-object p3, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mHandler:Landroid/os/Handler;

    const v0, 0x24069

    .line 53
    invoke-virtual {p2, v0, p3}, Lcom/samsung/android/server/wifi/halclient/SemWifiMonitor;->registerHandler(ILandroid/os/Handler;)V

    .line 54
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->initProxyEventReceiver(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V

    .line 56
    sget-object p1, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->TAG:Ljava/lang/String;

    const-string p2, "SemConnectivityLogger initialized: ver=1.3.0"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "([0-9A-Fa-f]{2}:){5}([0-9A-Fa-f]{2})"

    .line 58
    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mMacAddressPattern:Ljava/util/regex/Pattern;

    .line 59
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->isShipBinary()Z

    move-result p2

    if-eqz p2, :cond_39

    const-string p2, "isShipBinary=true, so enable masking"

    .line 60
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mApplyMacAddressMasking:Z

    :cond_39
    return-void
.end method

.method private initProxyEventReceiver(Lcom/samsung/android/server/wifi/SemWifiManagerProxy;)V
    .registers 3

    .line 79
    new-instance v0, Lcom/samsung/android/server/wifi/SemConnectivityLogger$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemConnectivityLogger$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/server/wifi/SemConnectivityLogger;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$ScreenStateListener;)V

    .line 87
    new-instance v0, Lcom/samsung/android/server/wifi/SemConnectivityLogger$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/samsung/android/server/wifi/SemConnectivityLogger$$ExternalSyntheticLambda1;-><init>(Lcom/samsung/android/server/wifi/SemConnectivityLogger;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/server/wifi/SemWifiManagerProxy;->registerListener(Lcom/samsung/android/server/wifi/SemWifiManagerProxy$WifiStateListener;)V

    return-void
.end method

.method private isSepDevice()Z
    .registers 4

    const/4 p0, 0x0

    .line 107
    :try_start_1
    const-class v0, Landroid/os/Build$VERSION;

    const-string v1, "SEM_INT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 108
    const-class v1, Landroid/os/Build$VERSION;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0
    :try_end_f
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_f} :catch_10
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_f} :catch_10

    goto :goto_19

    :catch_10
    move-exception v0

    .line 110
    sget-object v1, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->TAG:Ljava/lang/String;

    const-string v2, "Cannot access SEM_INT"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, p0

    :goto_19
    if-eqz v0, :cond_1c

    const/4 p0, 0x1

    :cond_1c
    return p0
.end method

.method private isShipBinary()Z
    .registers 1

    .line 101
    invoke-direct {p0}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->isSepDevice()Z

    move-result p0

    if-eqz p0, :cond_e

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result p0

    if-nez p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private synthetic lambda$initProxyEventReceiver$0(Z)V
    .registers 3

    const v0, 0x24069

    if-eqz p1, :cond_11

    .line 81
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mHandler:Landroid/os/Handler;

    const-string p1, "---- [FRAMEWORK] SCREEN ON"

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1c

    .line 83
    :cond_11
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mHandler:Landroid/os/Handler;

    const-string p1, "---- [FRAMEWORK] SCREEN OFF"

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_1c
    return-void
.end method

.method private synthetic lambda$initProxyEventReceiver$1(II)V
    .registers 4

    const/4 p2, 0x1

    const v0, 0x24069

    if-eq p1, p2, :cond_16

    const/4 p2, 0x3

    if-eq p1, p2, :cond_a

    goto :goto_21

    .line 90
    :cond_a
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mHandler:Landroid/os/Handler;

    const-string p1, "---- [FRAMEWORK] WIFI ON"

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_21

    .line 94
    :cond_16
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mHandler:Landroid/os/Handler;

    const-string p1, "---- [FRAMEWORK] WIFI OFF"

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :goto_21
    return-void
.end method

.method private makeMainHandler(Landroid/os/Looper;)Landroid/os/Handler;
    .registers 3

    .line 66
    new-instance v0, Lcom/samsung/android/server/wifi/SemConnectivityLogger$1;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/server/wifi/SemConnectivityLogger$1;-><init>(Lcom/samsung/android/server/wifi/SemConnectivityLogger;Landroid/os/Looper;)V

    return-object v0
.end method

.method private maskMacAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 116
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mMacAddressPattern:Ljava/util/regex/Pattern;

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 118
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x11

    if-ne v0, v1, :cond_3d

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x9

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "**:**"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xe

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_3d
    return-object p1
.end method

.method private recordHistory(Ljava/lang/String;)V
    .registers 6

    .line 128
    iget-boolean v0, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mApplyMacAddressMasking:Z

    if-eqz v0, :cond_8

    .line 129
    invoke-direct {p0, p1}, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->maskMacAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 131
    :cond_8
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss.SSS "

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 132
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mHistory:Ljava/util/LinkedList;

    monitor-enter v1

    .line 133
    :try_start_21
    iget-object v2, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mHistory:Ljava/util/LinkedList;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 134
    :goto_39
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0xbb8

    if-le p1, v0, :cond_49

    .line 135
    iget-object p1, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    goto :goto_39

    .line 137
    :cond_49
    monitor-exit v1

    return-void

    :catchall_4b
    move-exception p0

    monitor-exit v1
    :try_end_4d
    .catchall {:try_start_21 .. :try_end_4d} :catchall_4b

    throw p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .registers 4

    .line 142
    iget-object v0, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mHistory:Ljava/util/LinkedList;

    monitor-enter v0

    .line 143
    :try_start_3
    new-instance v1, Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mHistory:Ljava/util/LinkedList;

    invoke-direct {v1, p0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 144
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2b

    .line 145
    sget-object p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->DUMP_TITLE:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_14
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 147
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    .line 149
    :cond_24
    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 150
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_2b
    move-exception p0

    .line 144
    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p0
.end method

.method public getDataBy(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 154
    sget-object v0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SemConnectivityLogger requested: category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_56

    .line 156
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1f

    goto :goto_56

    .line 160
    :cond_1f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    iget-object v1, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mHistory:Ljava/util/LinkedList;

    monitor-enter v1

    .line 162
    :try_start_27
    iget-object p0, p0, Lcom/samsung/android/server/wifi/SemConnectivityLogger;->mHistory:Ljava/util/LinkedList;

    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_49

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 163
    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_40

    goto :goto_2d

    .line 164
    :cond_40
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 166
    :cond_49
    monitor-exit v1
    :try_end_4a
    .catchall {:try_start_27 .. :try_end_4a} :catchall_53

    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_53
    move-exception p0

    .line 166
    :try_start_54
    monitor-exit v1
    :try_end_55
    .catchall {:try_start_54 .. :try_end_55} :catchall_53

    throw p0

    :cond_56
    :goto_56
    const-string p0, ""

    return-object p0
.end method
