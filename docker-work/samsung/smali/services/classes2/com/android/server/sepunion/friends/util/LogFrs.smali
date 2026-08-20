.class public Lcom/android/server/sepunion/friends/util/LogFrs;
.super Ljava/lang/Object;
.source "LogFrs.java"


# static fields
.field public static final DEBUG_LEVEL_HIGH:Ljava/lang/String; = "0x4948"

.field public static final DEBUG_LEVEL_LOW:Ljava/lang/String; = "0x4f4c"

.field public static final DEBUG_LEVEL_MID:Ljava/lang/String; = "0x494d"

.field public static final LEVEL_DEBUG:I = 0x4

.field public static final LEVEL_ERROR:I = 0x1

.field public static final LEVEL_INFO:I = 0x3

.field public static final LEVEL_NONE:I = 0x0

.field public static final LEVEL_VERBOSE:I = 0x5

.field public static final LEVEL_WARN:I = 0x2

.field public static final TIME_DIFF:J = 0x12a05f200L

.field public static sCurLogLevel:I

.field public static sLateUpdated:J

.field public static sSafeString:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    .line 28
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->internalLogLevel()I

    move-result v0

    sput v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    .line 29
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->internalUseSafeString()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sSafeString:Z

    .line 30
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sLateUpdated:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static varargs d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 134
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_1a

    .line 136
    sget v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_b

    goto :goto_1a

    .line 140
    :cond_b
    array-length v0, p2

    if-lez v0, :cond_12

    .line 141
    invoke-static {p1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 144
    :cond_12
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 150
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_1a

    .line 152
    sget v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_b

    goto :goto_1a

    .line 156
    :cond_b
    array-length v0, p2

    if-lez v0, :cond_12

    .line 157
    invoke-static {p1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 160
    :cond_12
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDateString(J)Ljava/lang/String;
    .registers 5

    .line 209
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 210
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static varargs getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .line 181
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, p0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRoBootDebugLevel()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ro.boot.debug_level"

    const-string v1, ""

    .line 63
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getRoDebugLevel()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "ro.debug_level"

    const-string v1, ""

    .line 68
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSafe(I)I
    .registers 2

    .line 189
    sget-boolean v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sSafeString:Z

    if-eqz v0, :cond_7

    const p0, 0xffffff

    :cond_7
    return p0
.end method

.method public static getSafe(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 185
    sget-boolean v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sSafeString:Z

    if-eqz v0, :cond_7

    const-string p0, "..."

    goto :goto_c

    :cond_7
    if-eqz p0, :cond_a

    goto :goto_c

    :cond_a
    const-string p0, ""

    :goto_c
    return-object p0
.end method

.method public static getTag(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "SEP_UNION_FrsSvc"

    if-eqz p0, :cond_18

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_18
    return-object v0
.end method

.method public static varargs i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 118
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_1a

    .line 120
    sget v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_b

    goto :goto_1a

    .line 124
    :cond_b
    array-length v0, p2

    if-lez v0, :cond_12

    .line 125
    invoke-static {p1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 128
    :cond_12
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static internalLogLevel()I
    .registers 9

    .line 73
    invoke-static {}, Lcom/android/server/sepunion/friends/common/FwDependency;->isProductDev()Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_8

    goto :goto_10

    :cond_8
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x3

    :goto_10
    const-string v0, "debug.mate.log.service"

    const-string v2, ""

    .line 75
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_47

    const/4 v2, 0x6

    const-string v3, "none"

    const-string v4, "error"

    const-string/jumbo v5, "warning"

    const-string v6, "info"

    const-string v7, "debug"

    const-string/jumbo v8, "verbose"

    .line 77
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    :goto_32
    const/4 v5, -0x1

    if-ge v4, v2, :cond_41

    .line 82
    aget-object v6, v3, v4

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3e

    goto :goto_42

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_32

    :cond_41
    move v4, v5

    :goto_42
    if-le v4, v5, :cond_47

    if-ge v4, v2, :cond_47

    move v1, v4

    :cond_47
    return v1
.end method

.method public static internalUseSafeString()Z
    .registers 4

    .line 44
    invoke-static {}, Lcom/android/server/sepunion/friends/common/FwDependency;->isProductDev()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "debug.mate.log.safe_string"

    const-string v3, ""

    .line 45
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "false"

    .line 46
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v1, 0x0

    goto :goto_23

    :cond_18
    const-string/jumbo v3, "true"

    .line 48
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    goto :goto_23

    :cond_22
    move v1, v0

    :goto_23
    return v1
.end method

.method public static isDebugLogLevel()Z
    .registers 2

    .line 193
    sget v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method public static isRoDebugLevelMid()Z
    .registers 4

    .line 56
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->getRoDebugLevel()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->getRoBootDebugLevel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0x494d"

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "0x4948"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    goto :goto_27

    :cond_25
    const/4 v0, 0x0

    goto :goto_28

    :cond_27
    :goto_27
    const/4 v0, 0x1

    :goto_28
    return v0
.end method

.method public static logLevel()I
    .registers 1

    .line 197
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->updateLogLevel()V

    .line 198
    sget v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    return v0
.end method

.method public static printThrowableStackTrace(Ljava/lang/Throwable;)V
    .registers 3

    .line 214
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isDebugLogLevel()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->isRoDebugLevelMid()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_1d

    :cond_d
    const/4 v0, 0x0

    .line 217
    invoke-static {v0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/server/sepunion/friends/util/LogFrs;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    goto :goto_20

    .line 215
    :cond_1d
    :goto_1d
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_20
    return-void
.end method

.method public static updateLogLevel()V
    .registers 6

    .line 34
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 35
    sget-wide v2, Lcom/android/server/sepunion/friends/util/LogFrs;->sLateUpdated:J

    sub-long v2, v0, v2

    const-wide v4, 0x12a05f200L

    cmp-long v2, v2, v4

    if-lez v2, :cond_1f

    .line 36
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->internalLogLevel()I

    move-result v2

    sput v2, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    .line 37
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->internalUseSafeString()Z

    move-result v2

    sput-boolean v2, Lcom/android/server/sepunion/friends/util/LogFrs;->sSafeString:Z

    .line 38
    sput-wide v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sLateUpdated:J

    :cond_1f
    return-void
.end method

.method public static useSafeString()Z
    .registers 1

    .line 202
    sget-boolean v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sSafeString:Z

    return v0
.end method

.method public static varargs v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 102
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_1a

    .line 104
    sget v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_b

    goto :goto_1a

    .line 108
    :cond_b
    array-length v0, p2

    if-lez v0, :cond_12

    .line 109
    invoke-static {p1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 112
    :cond_12
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return-object p0
.end method

.method public static varargs w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    .line 165
    invoke-static {}, Lcom/android/server/sepunion/friends/util/LogFrs;->updateLogLevel()V

    if-eqz p1, :cond_1a

    .line 167
    sget v0, Lcom/android/server/sepunion/friends/util/LogFrs;->sCurLogLevel:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_b

    goto :goto_1a

    .line 171
    :cond_b
    array-length v0, p2

    if-lez v0, :cond_12

    .line 172
    invoke-static {p1, p2}, Lcom/android/server/sepunion/friends/util/LogFrs;->getMsg(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 175
    :cond_12
    invoke-static {p0}, Lcom/android/server/sepunion/friends/util/LogFrs;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1

    :cond_1a
    :goto_1a
    const/4 p0, 0x0

    return-object p0
.end method
