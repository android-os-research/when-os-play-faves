.class public final Lcom/android/internal/telephony/TelephonyLogger;
.super Ljava/lang/Object;
.source "TelephonyLogger.java"


# static fields
.field private static final blacklist CS_CALL_LOG_ALL:[Ljava/lang/String;

.field private static final blacklist CS_CALL_LOG_REQUEST_ONLY:[Ljava/lang/String;

.field private static final blacklist CS_CALL_LOG_RESPONSE_ONLY:[Ljava/lang/String;

.field private static final blacklist CS_CALL_LOG_UNSOLICITED:[Ljava/lang/String;

.field public static final blacklist IPF_CAT_CMCCALLTRACKER:I = 0x7

.field public static final blacklist IPF_CAT_IMSEXTERNALCALLTRACKER:I = 0x6

.field public static final blacklist IPF_CAT_IMSPHONE:I = 0x1

.field public static final blacklist IPF_CAT_IMSPHONECALL:I = 0x2

.field public static final blacklist IPF_CAT_IMSPHONECALLTRACKER:I = 0x3

.field public static final blacklist IPF_CAT_IMSPHONECONNECTION:I = 0x4

.field public static final blacklist IPF_CAT_IMSPHONEMMICODE:I = 0x5

.field public static final blacklist IPF_FROM:I = 0x2

.field public static final blacklist IPF_LOCALLOG_CALL:I = 0x2

.field public static final blacklist IPF_LOCALLOG_CMC:I = 0x6

.field public static final blacklist IPF_LOCALLOG_COMMON:I = 0x1

.field public static final blacklist IPF_LOCALLOG_EXTERNAL:I = 0x5

.field public static final blacklist IPF_LOCALLOG_MMI:I = 0x4

.field public static final blacklist IPF_LOCALLOG_REGI:I = 0x3

.field public static final blacklist IPF_NODIR:I = 0x3

.field public static final blacklist IPF_TO:I = 0x1

.field protected static final blacklist LOG_STRING_CS_REGI:Ljava/lang/String; = "!@Boot_SVC : CS Registered"

.field protected static final blacklist LOG_STRING_PS_REGI:Ljava/lang/String; = "!@Boot_SVC : GPRS Attached"

.field private static final blacklist sBootingLogMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static blacklist sPatternBlankCallList:Ljava/util/regex/Pattern;

.field private static blacklist sPatternCallList:Ljava/util/regex/Pattern;

.field private static blacklist sPatternRequest:Ljava/util/regex/Pattern;

.field private static blacklist sPatternRequestResponse:Ljava/util/regex/Pattern;

.field private static blacklist sPatternUnsolicitedResponse:Ljava/util/regex/Pattern;


# instance fields
.field private final blacklist mBootingLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mCallLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mCheckPointLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mConnectionHistoryLog:Lcom/android/internal/telephony/LocalLog;

.field blacklist mIgnoreNextBlankCallList:Z

.field private final blacklist mIpfCmcLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mIpfExternalLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mIpfLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mIpfMmiLog:Lcom/android/internal/telephony/LocalLog;

.field private final blacklist mIpfRegiLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mKeyCompleted:I

.field private final blacklist mLastDialInfoLog:Lcom/android/internal/telephony/LocalLog;

.field private blacklist mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 12

    const-string v0, "(\\[)([0-9]{4})(\\])(> )([A-Z_]{3,})($| .+)"

    .line 83
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternRequest:Ljava/util/regex/Pattern;

    const-string v0, "(\\[)([0-9]{4})(\\])(< )([A-Z_]{3,})( .*)"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternRequestResponse:Ljava/util/regex/Pattern;

    const-string v0, "(\\[)(UNSL)(\\])(< )([A-Z_]{3,})($| .+)"

    .line 89
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternUnsolicitedResponse:Ljava/util/regex/Pattern;

    const-string v0, "(\\[)([0-9]{4})(\\])(< GET_CURRENT_CALLS )(\\{)(\\[id.*)(\\})"

    .line 92
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternCallList:Ljava/util/regex/Pattern;

    const-string v0, "(\\[)([0-9]{4})(\\])(< GET_CURRENT_CALLS )((error [0-9]+)|(\\{\\}))"

    .line 95
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternBlankCallList:Ljava/util/regex/Pattern;

    .line 117
    invoke-static {}, Lcom/android/internal/telephony/TelephonyLogger;->createBootingLogMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sBootingLogMap:Ljava/util/Map;

    const/16 v0, 0x8

    new-array v1, v0, [Ljava/lang/String;

    const/16 v2, 0xa

    .line 297
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/16 v2, 0xf

    .line 298
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/16 v2, 0x10

    .line 299
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const/16 v2, 0x28

    .line 300
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const/16 v2, 0x34

    .line 301
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const/16 v2, 0x48

    .line 302
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const/16 v2, 0x54

    .line 303
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const/16 v2, 0x63

    .line 304
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sput-object v1, Lcom/android/internal/telephony/TelephonyLogger;->CS_CALL_LOG_ALL:[Ljava/lang/String;

    new-array v1, v4, [Ljava/lang/String;

    const/16 v2, 0x17

    .line 308
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    sput-object v1, Lcom/android/internal/telephony/TelephonyLogger;->CS_CALL_LOG_REQUEST_ONLY:[Ljava/lang/String;

    new-array v1, v5, [Ljava/lang/String;

    const/16 v2, 0x9

    .line 312
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v3

    const/16 v11, 0x12

    .line 313
    invoke-static {v11}, Lcom/android/internal/telephony/RILUtils;->requestToString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v4

    sput-object v1, Lcom/android/internal/telephony/TelephonyLogger;->CS_CALL_LOG_RESPONSE_ONLY:[Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/String;

    const/16 v2, 0x3fa

    .line 317
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const/16 v2, 0x400

    .line 318
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v2, 0x401

    .line 319
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const/16 v2, 0x403

    .line 320
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    const/16 v2, 0x409

    .line 321
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    const/16 v2, 0x40f

    .line 322
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v8

    const/16 v2, 0x40b

    .line 323
    invoke-static {v2}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v9

    const/16 v2, 0x2b16

    .line 324
    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    const/16 v2, 0x2b44

    .line 325
    invoke-static {v2}, Lcom/android/internal/telephony/SemRIL;->responseToString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    sput-object v1, Lcom/android/internal/telephony/TelephonyLogger;->CS_CALL_LOG_UNSOLICITED:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/telephony/Phone;)V
    .registers 5

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCallLog:Lcom/android/internal/telephony/LocalLog;

    .line 41
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mLastDialInfoLog:Lcom/android/internal/telephony/LocalLog;

    .line 70
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIpfLog:Lcom/android/internal/telephony/LocalLog;

    .line 71
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIpfRegiLog:Lcom/android/internal/telephony/LocalLog;

    .line 72
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIpfMmiLog:Lcom/android/internal/telephony/LocalLog;

    .line 73
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v2, 0x8

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIpfExternalLog:Lcom/android/internal/telephony/LocalLog;

    .line 74
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIpfCmcLog:Lcom/android/internal/telephony/LocalLog;

    const/4 v0, 0x0

    .line 104
    iput-boolean v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIgnoreNextBlankCallList:Z

    .line 119
    iput v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mKeyCompleted:I

    .line 121
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mBootingLog:Lcom/android/internal/telephony/LocalLog;

    .line 125
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCheckPointLog:Lcom/android/internal/telephony/LocalLog;

    .line 129
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mConnectionHistoryLog:Lcom/android/internal/telephony/LocalLog;

    .line 132
    iput-object p1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    const-string p1, "GsmCdmaPhone"

    const-string v0, "new GsmCdmaPhone"

    .line 134
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/TelephonyLogger;->writeBootingLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static blacklist callDump(Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/Call;)V
    .registers 9

    .line 480
    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 481
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_d

    goto :goto_70

    .line 485
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] calltrackerDump: ----- "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " Call("

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ") -----"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    .line 487
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    :goto_3f
    if-ge p2, p3, :cond_70

    .line 488
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 489
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] calltrackerDump: conn["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/internal/telephony/TelephonyLogger;->connectionToString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p2, p2, 0x1

    goto :goto_3f

    :cond_70
    :goto_70
    return-void
.end method

.method public static blacklist calltrackerDump(Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V
    .registers 9

    .line 471
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] calltrackerDump: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    if-eqz p3, :cond_29

    const-string p2, "Ringing"

    .line 473
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/telephony/TelephonyLogger;->callDump(Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/Call;)V

    :cond_29
    if-eqz p4, :cond_30

    const-string p2, "Foreground"

    .line 474
    invoke-static {p0, p1, p2, p4}, Lcom/android/internal/telephony/TelephonyLogger;->callDump(Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/Call;)V

    :cond_30
    if-eqz p5, :cond_37

    const-string p2, "Background"

    .line 475
    invoke-static {p0, p1, p2, p5}, Lcom/android/internal/telephony/TelephonyLogger;->callDump(Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/Call;)V

    :cond_37
    if-eqz p6, :cond_3e

    const-string p2, "Handover"

    .line 476
    invoke-static {p0, p1, p2, p6}, Lcom/android/internal/telephony/TelephonyLogger;->callDump(Ljava/lang/String;ILjava/lang/String;Lcom/android/internal/telephony/Call;)V

    :cond_3e
    return-void
.end method

.method public static blacklist connectionToString(Lcom/android/internal/telephony/Connection;)Ljava/lang/String;
    .registers 3

    if-nez p0, :cond_5

    const-string p0, "null"

    return-object p0

    .line 455
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "[telecomCallID: "

    .line 456
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " objId: "

    .line 457
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " incoming: "

    .line 458
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " state: "

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " videoState: "

    .line 460
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getVideoState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " callRadioTech: "

    .line 461
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getCallRadioTech()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " audioQuality: "

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getAudioQuality()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " phoneType: "

    .line 463
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPhoneType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " attribute: "

    .line 464
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/ConnectionBase;->getInternalAttribute()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->internalAttributeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    .line 465
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static blacklist createBootingLogMap()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x1

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "new GsmCdmaPhone"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "!@Boot_SVC : CS Registered"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "!@Boot_SVC : GPRS Attached"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist dialArgsToString(Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 501
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 502
    instance-of v1, p0, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    if-eqz v1, :cond_13

    const-string v2, "ImsDialArgs("

    .line 503
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    :cond_13
    const-string v2, "DialArgs("

    .line 505
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_18
    const-string v2, "videoState: "

    .line 507
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->videoState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", clirMode: "

    .line 508
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->clirMode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isEmergency: "

    .line 509
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->isEmergency:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", eccCategory: "

    .line 510
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->eccCategory:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 511
    iget-object v2, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    if-eqz v2, :cond_4e

    const-string v2, ", uusInfo: "

    .line 512
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->uusInfo:Lcom/android/internal/telephony/UUSInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_4e
    if-eqz v1, :cond_86

    .line 515
    move-object v1, p0

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    .line 516
    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;

    if-eqz v2, :cond_61

    const-string v2, ", rttTextStream: "

    .line 517
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->rttTextStream:Landroid/telecom/Connection$RttTextStream;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 519
    :cond_61
    iget v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->retryCallFailCause:I

    if-eqz v2, :cond_6f

    const-string v2, ", retryCallFailCause: "

    .line 520
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->retryCallFailCause:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 522
    :cond_6f
    iget v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->retryCallFailNetworkType:I

    if-eqz v2, :cond_7d

    const-string v2, ", retryCallFailNetworkType: "

    .line 523
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->retryCallFailNetworkType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 525
    :cond_7d
    iget-boolean v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->isWpsCall:Z

    if-eqz v1, :cond_86

    const-string v1, ", isWpsCall: true"

    .line 526
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_86
    const-string v1, ", intentExtras: "

    .line 529
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-static {p0}, Lcom/android/internal/telephony/SemTelephonyUtils;->maskPii(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    .line 530
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private blacklist enhancedDebugLog(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 270
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p1

    .line 275
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x40b

    invoke-static {v1}, Lcom/android/internal/telephony/RILUtils;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9c

    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "VoiceRadioTech: "

    .line 279
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " (NetworkMode: "

    .line 280
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getCachedAllowedNetworkTypesBitmask()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 281
    iget-object p1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p1

    if-eqz p1, :cond_92

    .line 282
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_92

    const-string p1, ", VoiceRat: "

    .line 284
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", DataRat: "

    .line 285
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", OperatorNumeric: "

    .line 286
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_92
    const-string p0, ")}"

    .line 289
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9c
    return-object p1
.end method

.method protected static blacklist isCsCallLog(Ljava/lang/String;)Z
    .registers 7

    .line 330
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_92

    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_92

    .line 336
    :cond_11
    sget-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternRequest:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 337
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_22

    move p0, v5

    goto :goto_3f

    .line 340
    :cond_22
    sget-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternRequestResponse:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_30

    move p0, v4

    goto :goto_3f

    .line 344
    :cond_30
    sget-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternUnsolicitedResponse:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 345
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-eqz p0, :cond_3e

    move p0, v3

    goto :goto_3f

    :cond_3e
    move p0, v1

    :goto_3f
    if-nez p0, :cond_42

    return v1

    :cond_42
    const/4 v2, 0x5

    .line 357
    :try_start_43
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_47} :catch_48

    goto :goto_4a

    :catch_48
    const-string v0, ""

    .line 360
    :goto_4a
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_51

    return v1

    :cond_51
    if-eq p0, v5, :cond_61

    if-ne p0, v4, :cond_56

    goto :goto_61

    :cond_56
    if-ne p0, v3, :cond_90

    .line 375
    sget-object p0, Lcom/android/internal/telephony/TelephonyLogger;->CS_CALL_LOG_UNSOLICITED:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    return v5

    :cond_61
    :goto_61
    const-string v2, "EMERGENCY_"

    .line 365
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_91

    const-string v2, "HANGUP"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_91

    sget-object v2, Lcom/android/internal/telephony/TelephonyLogger;->CS_CALL_LOG_ALL:[Ljava/lang/String;

    .line 366
    invoke-static {v2, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7a

    goto :goto_91

    :cond_7a
    if-ne p0, v5, :cond_85

    .line 369
    sget-object v2, Lcom/android/internal/telephony/TelephonyLogger;->CS_CALL_LOG_REQUEST_ONLY:[Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    return v5

    :cond_85
    if-ne p0, v4, :cond_90

    .line 372
    sget-object p0, Lcom/android/internal/telephony/TelephonyLogger;->CS_CALL_LOG_RESPONSE_ONLY:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_90

    return v5

    :cond_90
    return v1

    :cond_91
    :goto_91
    return v5

    :cond_92
    :goto_92
    return v1
.end method

.method private blacklist log(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static blacklist toSimpleString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 4

    const-string v0, "]"

    if-eqz p0, :cond_23

    .line 429
    instance-of v1, p0, Lcom/android/ims/ImsCall;

    if-eqz v1, :cond_23

    .line 430
    check-cast p0, Lcom/android/ims/ImsCall;

    .line 432
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ImsCall objId:"

    .line 433
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_23
    if-eqz p0, :cond_50

    .line 435
    instance-of v1, p0, Lcom/android/internal/telephony/Connection;

    if-eqz v1, :cond_50

    .line 436
    check-cast p0, Lcom/android/internal/telephony/Connection;

    .line 439
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Connection telecomCallID: "

    .line 440
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " objId: "

    .line 441
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_50
    if-eqz p0, :cond_57

    .line 444
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_57
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 11

    .line 539
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 540
    iget-object v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 542
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TelephonyLogger["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " OperatorName["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getMainOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getSubOperatorName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 544
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " OperatorType["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getOperatorType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 545
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " CountryName["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyFeatures;->getCountryName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " Device="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    .line 551
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "ro.boot.hardware"

    const-string v5, ""

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    sget-boolean v4, Lcom/android/internal/telephony/SemTelephonyUtils;->IS_PHONE:Z

    if-eqz v4, :cond_d5

    const-string v4, ", Phone"

    goto :goto_d7

    :cond_d5
    const-string v4, ", Tablet"

    :goto_d7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object v4

    const/4 v5, -0x1

    if-eqz v4, :cond_f2

    .line 555
    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorConfigurationTracker()Lcom/android/internal/telephony/VendorConfigurationTracker;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/VendorConfigurationTracker;->getVendorConfigurationState()Landroid/telephony/VendorConfigurationState;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/VendorConfigurationState;->getSupportedRat()I

    move-result v4

    goto :goto_f3

    :cond_f2
    move v4, v5

    :goto_f3
    if-eq v4, v5, :cond_143

    const-string v5, ", RAT: "

    .line 565
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit8 v5, v4, 0x2

    const/4 v6, 0x2

    if-ne v5, v6, :cond_104

    const-string v5, "C"

    .line 566
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_104
    and-int/lit8 v5, v4, 0x4

    const/4 v6, 0x4

    if-ne v5, v6, :cond_10e

    const-string v5, "E"

    .line 567
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10e
    and-int/lit8 v5, v4, 0x1

    const/4 v6, 0x1

    if-ne v5, v6, :cond_118

    const-string v5, "G"

    .line 568
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_118
    and-int/lit8 v5, v4, 0x8

    const/16 v6, 0x8

    if-ne v5, v6, :cond_123

    const-string v5, "W"

    .line 569
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_123
    and-int/lit8 v5, v4, 0x20

    const/16 v6, 0x20

    if-ne v5, v6, :cond_12e

    const-string v5, "L"

    .line 570
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12e
    and-int/lit8 v5, v4, 0x40

    const/16 v6, 0x40

    if-ne v5, v6, :cond_139

    const-string v5, "N"

    .line 571
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_139
    const/16 v5, 0x10

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_143

    const-string v4, "T"

    .line 572
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_143
    const-string v4, ", Slot: "

    .line 574
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 576
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 579
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, " Binary="

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "ro.build.changelist"

    .line 580
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    sget-boolean v4, Lcom/android/internal/telephony/SemTelephonyUtils;->SHIP_BUILD:Z

    if-eqz v4, :cond_174

    const-string v4, ", Ship"

    goto :goto_176

    :cond_174
    const-string v4, ", Non-Ship"

    :goto_176
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", API: "

    .line 582
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "/"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Landroid/os/Build$VERSION;->DEVICE_INITIAL_SDK_INT:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 583
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_19c

    const-string v3, ", Debuggable"

    goto :goto_19e

    :cond_19c
    const-string v3, ", Non-debuggable"

    :goto_19e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SemPhoneInternal;->getVendorTelephonyTester()Lcom/android/internal/telephony/SemTelephonyTester;

    move-result-object v3

    if-eqz v3, :cond_1ae

    const-string v3, ", VendorTestEnabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 586
    :cond_1ae
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 590
    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    .line 591
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, " SIM="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", CarrierId: "

    .line 592
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getCarrierName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", SpecificCarrierId: "

    .line 593
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getSpecificCarrierId()I

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSpecificCarrierName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", MnoCarrierId: "

    .line 594
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getMNOCarrierId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", CarrierIdFromMccMnc: "

    .line 595
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getCarrierIdFromMccMnc(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", DefaultSubId: "

    .line 596
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "(Voice: "

    .line 597
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", Data: "

    .line 598
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 599
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 600
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 602
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    const-string p2, " LastDialInfo Log:"

    .line 603
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 604
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 605
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mLastDialInfoLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 606
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 607
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    const-string p2, " Call Log:"

    .line 609
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 611
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCallLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 612
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 613
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    const-string p2, " ImsPhone Flow Log:"

    .line 615
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 617
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIpfLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 618
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 619
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    const-string p2, " ImsRegi Flow Log:"

    .line 621
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 622
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 623
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIpfRegiLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 625
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    const-string p2, " ImsMmi Flow Log:"

    .line 627
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 628
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 629
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIpfMmiLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 630
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 631
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    const-string p2, " ImsExternal Flow Log:"

    .line 633
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 634
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 635
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIpfExternalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 636
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 637
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    const-string p2, " CMC Flow Log:"

    .line 639
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 641
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIpfCmcLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 642
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 643
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    const-string p2, " Booting Log:"

    .line 645
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 647
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mBootingLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 648
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 649
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    const-string p2, " Check Point Log:"

    .line 651
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 652
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 653
    iget-object p2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCheckPointLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 654
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 655
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    const-string p2, " Connection History Log:"

    .line 657
    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 658
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 659
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mConnectionHistoryLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 661
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method protected blacklist writeBootingLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 384
    invoke-static {p1, p2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    sget-object p1, Lcom/android/internal/telephony/TelephonyLogger;->sBootingLogMap:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 387
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignore unregistered log: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyLogger;->log(Ljava/lang/String;)V

    return-void

    .line 391
    :cond_20
    iget v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mKeyCompleted:I

    const/4 v1, 0x7

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_3b

    .line 392
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Logging is finished: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyLogger;->log(Ljava/lang/String;)V

    return-void

    .line 396
    :cond_3b
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 398
    iget v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mKeyCompleted:I

    and-int v2, v0, p1

    const-string v3, ", completed: 0x"

    const-string v4, "\', key: "

    if-ne v2, p1, :cond_76

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignore duplicated log - \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mKeyCompleted:I

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyLogger;->log(Ljava/lang/String;)V

    return-void

    :cond_76
    or-int/2addr v0, p1

    .line 403
    iput v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mKeyCompleted:I

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Booting log - \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mKeyCompleted:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/TelephonyLogger;->log(Ljava/lang/String;)V

    .line 406
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "0x"

    .line 408
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/internal/telephony/TelephonyLogger;->mKeyCompleted:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x1

    if-ne p1, p2, :cond_ed

    const-string p1, ", First Timezone: "

    .line 412
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/samsung/internal/telephony/sysprop/SemTelephonyProps;->sys_timezone()Ljava/util/Optional;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_ed
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mBootingLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist writeCheckPointLog(Ljava/lang/String;)V
    .registers 2

    .line 420
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCheckPointLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist writeConnectionHistoryLog(Ljava/lang/String;)V
    .registers 2

    .line 425
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mConnectionHistoryLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist writeCsCallLog(Ljava/lang/String;)V
    .registers 5

    .line 248
    sget-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternCallList:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 249
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 251
    iput-boolean v1, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIgnoreNextBlankCallList:Z

    goto :goto_24

    .line 253
    :cond_11
    sget-object v0, Lcom/android/internal/telephony/TelephonyLogger;->sPatternBlankCallList:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 255
    iget-boolean v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIgnoreNextBlankCallList:Z

    if-eqz v0, :cond_22

    goto :goto_25

    .line 259
    :cond_22
    iput-boolean v2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIgnoreNextBlankCallList:Z

    :cond_24
    :goto_24
    move v1, v2

    :goto_25
    if-eqz v1, :cond_30

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCallLog:Lcom/android/internal/telephony/LocalLog;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/TelephonyLogger;->enhancedDebugLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :cond_30
    return-void
.end method

.method public varargs blacklist writeImsPhoneFlowLog(IILjava/lang/String;I[Ljava/lang/Object;)V
    .registers 12

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    packed-switch p1, :pswitch_data_e8

    .line 178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :pswitch_1a
    const-string v1, "CMCT"

    goto :goto_2e

    :pswitch_1d
    const-string v1, "IECT"

    goto :goto_2e

    :pswitch_20
    const-string v1, "IPMC"

    goto :goto_2e

    :pswitch_23
    const-string v1, "IPCN"

    goto :goto_2e

    :pswitch_26
    const-string v1, "IPCT"

    goto :goto_2e

    :pswitch_29
    const-string v1, "IPC"

    goto :goto_2e

    :pswitch_2c
    const-string v1, "IP"

    .line 183
    :goto_2e
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    const/4 v3, 0x1

    if-lez v2, :cond_43

    .line 184
    iget-object v2, p0, Lcom/android/internal/telephony/TelephonyLogger;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_45

    :cond_43
    const-string v2, ""

    :goto_45
    const/4 v4, 0x2

    if-eq p4, v3, :cond_50

    if-eq p4, v4, :cond_4d

    const-string p4, "-"

    goto :goto_52

    :cond_4d
    const-string p4, "<"

    goto :goto_52

    :cond_50
    const-string p4, ">"

    :goto_52
    const-string v5, "["

    .line 200
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " "

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " {"

    .line 203
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    array-length p3, p5

    const/4 p4, 0x0

    move v1, p4

    :goto_75
    if-ge p4, p3, :cond_85

    aget-object v1, p5, p4

    .line 208
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p4, p4, 0x1

    move v1, v3

    goto :goto_75

    :cond_85
    if-eqz v1, :cond_93

    .line 212
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p3

    sub-int/2addr p3, v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p4

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_93
    const-string p3, "}"

    .line 214
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, 0x7

    if-eq p1, p3, :cond_9e

    const-string p1, "IPF"

    goto :goto_a0

    :cond_9e
    const-string p1, "CMCF"

    .line 216
    :goto_a0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p2, :pswitch_data_fa

    goto :goto_e6

    .line 235
    :pswitch_ab
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIpfCmcLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_e6

    .line 232
    :pswitch_b5
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIpfExternalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_e6

    .line 229
    :pswitch_bf
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIpfMmiLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_e6

    .line 226
    :pswitch_c9
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIpfRegiLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_e6

    .line 223
    :pswitch_d3
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mCallLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    goto :goto_e6

    .line 220
    :pswitch_dd
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mIpfLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    :goto_e6
    return-void

    nop

    :pswitch_data_e8
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_29
        :pswitch_26
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
    .end packed-switch

    :pswitch_data_fa
    .packed-switch 0x1
        :pswitch_dd
        :pswitch_d3
        :pswitch_c9
        :pswitch_bf
        :pswitch_b5
        :pswitch_ab
    .end packed-switch
.end method

.method protected blacklist writeLastDialInfoLog(Ljava/lang/String;)V
    .registers 2

    .line 147
    iget-object p0, p0, Lcom/android/internal/telephony/TelephonyLogger;->mLastDialInfoLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method
