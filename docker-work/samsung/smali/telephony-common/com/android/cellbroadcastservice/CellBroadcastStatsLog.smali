.class public Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;
.super Ljava/lang/Object;
.source "CellBroadcastStatsLog.java"


# static fields
.field public static final blacklist ANNOTATION_ID_EXCLUSIVE_STATE:B

.field public static final blacklist ANNOTATION_ID_IS_UID:B

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD:B

.field public static final blacklist ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B

.field public static final blacklist ANNOTATION_ID_STATE_NESTED:B

.field public static final blacklist ANNOTATION_ID_TRIGGER_STATE_RESET:B

.field public static final blacklist ANNOTATION_ID_TRUNCATE_TIMESTAMP:B


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    const/4 v0, 0x1

    .line 83
    sput-byte v0, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->ANNOTATION_ID_IS_UID:B

    const/4 v0, 0x2

    .line 87
    sput-byte v0, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->ANNOTATION_ID_TRUNCATE_TIMESTAMP:B

    const/4 v0, 0x3

    .line 91
    sput-byte v0, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->ANNOTATION_ID_PRIMARY_FIELD:B

    const/4 v0, 0x4

    .line 95
    sput-byte v0, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->ANNOTATION_ID_EXCLUSIVE_STATE:B

    const/4 v0, 0x5

    .line 99
    sput-byte v0, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B

    const/4 v0, 0x7

    .line 103
    sput-byte v0, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->ANNOTATION_ID_TRIGGER_STATE_RESET:B

    const/16 v0, 0x8

    .line 107
    sput-byte v0, Lcom/android/cellbroadcastservice/CellBroadcastStatsLog;->ANNOTATION_ID_STATE_NESTED:B

    return-void
.end method

.method public static blacklist write(III)V
    .registers 4

    .line 112
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 114
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 115
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 117
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 118
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public static blacklist write(IILjava/lang/String;)V
    .registers 4

    .line 122
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 124
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 125
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 128
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method
