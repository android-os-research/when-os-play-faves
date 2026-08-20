.class public Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;
.super Ljava/lang/Object;
.source "SemFakeWifiLog.java"

# interfaces
.implements Lcom/samsung/android/server/wifi/util/SemWifiLog;


# static fields
.field private static final sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    invoke-direct {v0}, Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;-><init>()V

    sput-object v0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public dump(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 2

    .line 51
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    return-object p0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public eC(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public err(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 2

    .line 26
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    return-object p0
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public iC(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public info(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 2

    .line 36
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    return-object p0
.end method

.method public tC(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public trace(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 2

    .line 41
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    return-object p0
.end method

.method public trace(Ljava/lang/String;I)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 3

    .line 46
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    return-object p0
.end method

.method public v(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public w(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public wC(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public warn(Ljava/lang/String;)Lcom/samsung/android/server/wifi/util/SemWifiLog$LogMessage;
    .registers 2

    .line 31
    sget-object p0, Lcom/samsung/android/server/wifi/util/SemFakeWifiLog;->sDummyLogMessage:Lcom/samsung/android/server/wifi/util/SemDummyLogMessage;

    return-object p0
.end method
