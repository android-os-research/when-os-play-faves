.class public Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;
.super Ljava/lang/Object;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TxRxMax"
.end annotation


# static fields
.field public static blacklist SendTimerCount:I = 0x5a

.field public static blacklist countTime:I = 0x5

.field public static blacklist rxArrays:[J = null

.field public static blacklist rxMaxTp:J = 0x0L

.field public static blacklist rxUpdataFlag:Z = false

.field public static blacklist totalBand:I = 0x0

.field public static blacklist txArrays:[J = null

.field public static blacklist txMaxTp:J = 0x0L

.field public static blacklist txUpdataFlag:Z = false


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    const/4 v0, 0x5

    new-array v1, v0, [J

    .line 8085
    sput-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxArrays:[J

    new-array v0, v0, [J

    .line 8086
    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txArrays:[J

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 8078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist collectTp(JJ)[J
    .registers 7

    .line 8090
    sget v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->countTime:I

    if-lez v0, :cond_9

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->countTime:I

    goto :goto_e

    :cond_9
    if-nez v0, :cond_e

    .line 8091
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->shift()V

    .line 8092
    :cond_e
    :goto_e
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxArrays:[J

    sget v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->countTime:I

    rsub-int/lit8 v2, v1, 0x4

    aput-wide p0, v0, v2

    .line 8093
    sget-object p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txArrays:[J

    rsub-int/lit8 p1, v1, 0x4

    aput-wide p2, p0, p1

    .line 8094
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->determineAvail()[J

    move-result-object p0

    return-object p0
.end method

.method static blacklist determineAvail()[J
    .registers 15

    .line 8098
    sget v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->countTime:I

    const/4 v1, 0x0

    if-lez v0, :cond_6

    return-object v1

    :cond_6
    const/4 v0, 0x2

    new-array v0, v0, [J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    move v7, v4

    :goto_e
    const/4 v8, 0x5

    if-ge v7, v8, :cond_1e

    .line 8107
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxArrays:[J

    aget-wide v8, v8, v7

    add-long/2addr v2, v8

    .line 8108
    sget-object v8, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txArrays:[J

    aget-wide v8, v8, v7

    add-long/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_e

    :cond_1e
    const-wide/16 v9, 0x5

    .line 8110
    div-long/2addr v2, v9

    .line 8111
    div-long/2addr v5, v9

    move v7, v4

    :goto_23
    if-ge v7, v8, :cond_47

    .line 8113
    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxArrays:[J

    aget-wide v11, v11, v7

    sub-long/2addr v11, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    div-long v13, v2, v9

    cmp-long v11, v11, v13

    if-gez v11, :cond_46

    sget-object v11, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txArrays:[J

    aget-wide v11, v11, v7

    sub-long/2addr v11, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->abs(J)J

    move-result-wide v11

    div-long v13, v5, v9

    cmp-long v11, v11, v13

    if-gez v11, :cond_46

    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    :cond_46
    return-object v1

    :cond_47
    aput-wide v2, v0, v4

    const/4 v1, 0x1

    aput-wide v5, v0, v1

    return-object v0
.end method

.method public static blacklist reset()V
    .registers 2

    const-wide/16 v0, -0x1

    .line 8183
    sput-wide v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxMaxTp:J

    .line 8184
    sput-wide v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txMaxTp:J

    const/4 v0, -0x1

    .line 8185
    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->totalBand:I

    .line 8186
    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->SendTimerCount:I

    return-void
.end method

.method static blacklist shift()V
    .registers 5

    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_15

    .line 8143
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxArrays:[J

    add-int/lit8 v2, v0, -0x1

    aget-wide v3, v1, v0

    aput-wide v3, v1, v2

    .line 8144
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txArrays:[J

    aget-wide v3, v1, v0

    aput-wide v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_15
    return-void
.end method

.method public static blacklist updateTp(JJI)Landroid/content/Intent;
    .registers 9

    .line 8151
    sget v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->SendTimerCount:I

    const/4 v1, 0x1

    if-lez v0, :cond_8

    sub-int/2addr v0, v1

    sput v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->SendTimerCount:I

    .line 8152
    :cond_8
    sget-wide v2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxMaxTp:J

    cmp-long v0, v2, p0

    if-gez v0, :cond_14

    .line 8153
    sput-wide p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxMaxTp:J

    .line 8154
    sput p4, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->totalBand:I

    .line 8155
    sput-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxUpdataFlag:Z

    .line 8157
    :cond_14
    sget-wide p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txMaxTp:J

    cmp-long p0, p0, p2

    if-gez p0, :cond_1e

    .line 8158
    sput-wide p2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txMaxTp:J

    .line 8159
    sput-boolean v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txUpdataFlag:Z

    .line 8162
    :cond_1e
    sget p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->SendTimerCount:I

    if-nez p0, :cond_93

    .line 8163
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p1, "com.samsung.intent.action.BIG_DATA_MOBILE_DATA"

    .line 8164
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "category"

    const-string p2, "MATP"

    .line 8165
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8166
    sget-boolean p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxUpdataFlag:Z

    if-eqz p1, :cond_93

    sget-boolean p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txUpdataFlag:Z

    if-eqz p1, :cond_93

    .line 8167
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p3, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxMaxTp:J

    long-to-int p3, p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "rxTP"

    invoke-virtual {p0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8168
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p3, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txMaxTp:J

    long-to-int p3, p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "txTP"

    invoke-virtual {p0, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 8169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p2, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->totalBand:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "totalBand"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x5a

    .line 8170
    sput p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->SendTimerCount:I

    const-wide/16 p1, 0x0

    .line 8171
    sput-wide p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxMaxTp:J

    .line 8172
    sput-wide p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txMaxTp:J

    const/4 p1, 0x0

    .line 8173
    sput p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->totalBand:I

    .line 8174
    sput-boolean p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxUpdataFlag:Z

    .line 8175
    sput-boolean p1, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txUpdataFlag:Z

    return-object p0

    :cond_93
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 8190
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{rxMaxTp="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->rxMaxTp:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " txMaxTp="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->txMaxTp:J

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " totalBand="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->totalBand:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " SendTimerCount="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/android/internal/telephony/dataconnection/DcTracker$TxRxMax;->SendTimerCount:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
