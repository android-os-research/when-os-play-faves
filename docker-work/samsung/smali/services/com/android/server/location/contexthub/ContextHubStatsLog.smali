.class public Lcom/android/server/location/contexthub/ContextHubStatsLog;
.super Ljava/lang/Object;
.source "ContextHubStatsLog.java"


# static fields
.field public static final ANNOTATION_ID_EXCLUSIVE_STATE:B = 0x4t

.field public static final ANNOTATION_ID_IS_UID:B = 0x1t

.field public static final ANNOTATION_ID_PRIMARY_FIELD:B = 0x3t

.field public static final ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B = 0x5t

.field public static final ANNOTATION_ID_STATE_NESTED:B = 0x8t

.field public static final ANNOTATION_ID_TRIGGER_STATE_RESET:B = 0x7t

.field public static final ANNOTATION_ID_TRUNCATE_TIMESTAMP:B = 0x2t

.field public static final CHRE_CODE_DOWNLOAD_TRANSACTED:I = 0x191

.field public static final CHRE_CODE_DOWNLOAD_TRANSACTED__TRANSACTION_RESULT__TRANSACTION_RESULT_FAILED_AT_HUB:I = 0x5

.field public static final CHRE_CODE_DOWNLOAD_TRANSACTED__TRANSACTION_RESULT__TRANSACTION_RESULT_FAILED_BAD_PARAMS:I = 0x2

.field public static final CHRE_CODE_DOWNLOAD_TRANSACTED__TRANSACTION_RESULT__TRANSACTION_RESULT_FAILED_BUSY:I = 0x4

.field public static final CHRE_CODE_DOWNLOAD_TRANSACTED__TRANSACTION_RESULT__TRANSACTION_RESULT_FAILED_HAL_UNAVAILABLE:I = 0x8

.field public static final CHRE_CODE_DOWNLOAD_TRANSACTED__TRANSACTION_RESULT__TRANSACTION_RESULT_FAILED_SERVICE_INTERNAL_FAILURE:I = 0x7

.field public static final CHRE_CODE_DOWNLOAD_TRANSACTED__TRANSACTION_RESULT__TRANSACTION_RESULT_FAILED_TIMEOUT:I = 0x6

.field public static final CHRE_CODE_DOWNLOAD_TRANSACTED__TRANSACTION_RESULT__TRANSACTION_RESULT_FAILED_UNINITIALIZED:I = 0x3

.field public static final CHRE_CODE_DOWNLOAD_TRANSACTED__TRANSACTION_RESULT__TRANSACTION_RESULT_FAILED_UNKNOWN:I = 0x1

.field public static final CHRE_CODE_DOWNLOAD_TRANSACTED__TRANSACTION_RESULT__TRANSACTION_RESULT_SUCCESS:I = 0x0

.field public static final CHRE_CODE_DOWNLOAD_TRANSACTED__TRANSACTION_TYPE__TYPE_LOAD:I = 0x1

.field public static final CHRE_CODE_DOWNLOAD_TRANSACTED__TRANSACTION_TYPE__TYPE_UNKNOWN:I = 0x0

.field public static final CHRE_CODE_DOWNLOAD_TRANSACTED__TRANSACTION_TYPE__TYPE_UNLOAD:I = 0x2

.field public static final CONTEXT_HUB_BOOTED:I = 0x18e

.field public static final CONTEXT_HUB_LOADED_NANOAPP_SNAPSHOT_REPORTED:I = 0x190

.field public static final CONTEXT_HUB_RESTARTED:I = 0x18f


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static write(IIJI)V
    .registers 6

    .line 69
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 70
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 71
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 72
    invoke-virtual {v0, p2, p3}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 73
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 75
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 76
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public static write(IJI)V
    .registers 5

    .line 80
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 82
    invoke-virtual {v0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 83
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 85
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 86
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public static write(IJIII)V
    .registers 7

    .line 90
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 92
    invoke-virtual {v0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 93
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 94
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 95
    invoke-virtual {v0, p5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 97
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 98
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method
