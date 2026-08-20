.class public Lcom/android/internal/art/ArtStatsLog;
.super Ljava/lang/Object;
.source "ArtStatsLog.java"


# static fields
.field public static final ANNOTATION_ID_EXCLUSIVE_STATE:B = 0x4t

.field public static final ANNOTATION_ID_IS_UID:B = 0x1t

.field public static final ANNOTATION_ID_PRIMARY_FIELD:B = 0x3t

.field public static final ANNOTATION_ID_PRIMARY_FIELD_FIRST_UID:B = 0x5t

.field public static final ANNOTATION_ID_STATE_NESTED:B = 0x8t

.field public static final ANNOTATION_ID_TRIGGER_STATE_RESET:B = 0x7t

.field public static final ANNOTATION_ID_TRUNCATE_TIMESTAMP:B = 0x2t

.field public static final ART_DATUM_REPORTED:I = 0x14c

.field public static final ART_DATUM_REPORTED__APK_TYPE__ART_APK_TYPE_BASE:I = 0x1

.field public static final ART_DATUM_REPORTED__APK_TYPE__ART_APK_TYPE_SPLIT:I = 0x2

.field public static final ART_DATUM_REPORTED__APK_TYPE__ART_APK_TYPE_UNKNOWN:I = 0x0

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_AB_OTA:I = 0x7

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_BG_DEXOPT:I = 0x6

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_BOOT:I = 0x4

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_BOOT_AFTER_OTA:I = 0x11

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_CMDLINE:I = 0x13

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_ERROR:I = 0x1

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_FIRST_BOOT:I = 0x3

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_INACTIVE:I = 0x8

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_INSTALL:I = 0x5

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_INSTALL_BULK:I = 0xd

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_INSTALL_BULK_DOWNGRADED:I = 0xf

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_INSTALL_BULK_SECONDARY:I = 0xe

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_INSTALL_BULK_SECONDARY_DOWNGRADED:I = 0x10

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_INSTALL_FAST:I = 0xc

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_INSTALL_WITH_DEX_METADATA:I = 0xa

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_POST_BOOT:I = 0xb

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_PREBUILT:I = 0x12

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_SHARED:I = 0x9

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_UNKNOWN:I = 0x2

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_UNSPECIFIED:I = 0x0

.field public static final ART_DATUM_REPORTED__COMPILATION_REASON__ART_COMPILATION_REASON_VDEX:I = 0x14

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_ASSUMED_VERIFIED:I = 0x3

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_ERROR:I = 0x1

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_EVERYTHING:I = 0xc

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_EVERYTHING_PROFILE:I = 0xb

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_EXTRACT:I = 0x4

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_FAKE_RUN_FROM_APK:I = 0xd

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_FAKE_RUN_FROM_APK_FALLBACK:I = 0xe

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_FAKE_RUN_FROM_VDEX_FALLBACK:I = 0xf

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_QUICKEN:I = 0x6

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_SPACE:I = 0x8

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_SPACE_PROFILE:I = 0x7

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_SPEED:I = 0xa

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_SPEED_PROFILE:I = 0x9

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_UNKNOWN:I = 0x2

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_UNSPECIFIED:I = 0x0

.field public static final ART_DATUM_REPORTED__COMPILE_FILTER__ART_COMPILATION_FILTER_VERIFY:I = 0x5

.field public static final ART_DATUM_REPORTED__DEX_METADATA_TYPE__ART_DEX_METADATA_TYPE_ERROR:I = 0x5

.field public static final ART_DATUM_REPORTED__DEX_METADATA_TYPE__ART_DEX_METADATA_TYPE_NONE:I = 0x4

.field public static final ART_DATUM_REPORTED__DEX_METADATA_TYPE__ART_DEX_METADATA_TYPE_PROFILE:I = 0x1

.field public static final ART_DATUM_REPORTED__DEX_METADATA_TYPE__ART_DEX_METADATA_TYPE_PROFILE_AND_VDEX:I = 0x3

.field public static final ART_DATUM_REPORTED__DEX_METADATA_TYPE__ART_DEX_METADATA_TYPE_UNKNOWN:I = 0x0

.field public static final ART_DATUM_REPORTED__DEX_METADATA_TYPE__ART_DEX_METADATA_TYPE_VDEX:I = 0x2

.field public static final ART_DATUM_REPORTED__ISA__ART_ISA_ARM:I = 0x1

.field public static final ART_DATUM_REPORTED__ISA__ART_ISA_ARM64:I = 0x2

.field public static final ART_DATUM_REPORTED__ISA__ART_ISA_MIPS:I = 0x5

.field public static final ART_DATUM_REPORTED__ISA__ART_ISA_MIPS64:I = 0x6

.field public static final ART_DATUM_REPORTED__ISA__ART_ISA_UNKNOWN:I = 0x0

.field public static final ART_DATUM_REPORTED__ISA__ART_ISA_X86:I = 0x3

.field public static final ART_DATUM_REPORTED__ISA__ART_ISA_X86_64:I = 0x4

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_AOT_COMPILE_TIME:I = 0x7

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_CLASS_LOADING_TIME_COUNTER_MICROS:I = 0x9

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_CLASS_VERIFICATION_COUNT:I = 0x10

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_CLASS_VERIFICATION_TIME_COUNTER_MICROS:I = 0x8

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_DEX2OAT_DEX_CODE_COUNTER_BYTES:I = 0xb

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_DEX2OAT_FAST_VERIFY_TIME_COUNTER_MILLIS:I = 0xe

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_DEX2OAT_RESOLVE_METHODS_AND_FIELDS_TIME_COUNTER_MILLIS:I = 0xf

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_DEX2OAT_RESULT_CODE:I = 0xa

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_DEX2OAT_TOTAL_TIME_COUNTER_MILLIS:I = 0xc

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_DEX2OAT_VERIFY_DEX_FILE_TIME_COUNTER_MILLIS:I = 0xd

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_FULL_HEAP_COLLECTION_COUNT:I = 0x5

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_FULL_HEAP_COLLECTION_THROUGHPUT_AVG_MB_PER_SEC:I = 0x19

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_FULL_HEAP_COLLECTION_THROUGHPUT_HISTO_MB_PER_SEC:I = 0x14

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_FULL_HEAP_COLLECTION_TIME_HISTO_MILLIS:I = 0x4

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_FULL_HEAP_TRACING_THROUGHPUT_AVG_MB_PER_SEC:I = 0x1b

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_FULL_HEAP_TRACING_THROUGHPUT_HISTO_MB_PER_SEC:I = 0x17

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_TOTAL_BYTES_ALLOCATED:I = 0x11

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_TOTAL_COLLECTION_TIME_MS:I = 0x1c

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_TOTAL_METADATA_SIZE_BYTES:I = 0x12

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_WORLD_STOP_TIME_AVG_MICROS:I = 0x1

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_YOUNG_GENERATION_COLLECTION_COUNT:I = 0x3

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_YOUNG_GENERATION_COLLECTION_THROUGHPUT_AVG_MB_PER_SEC:I = 0x18

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_YOUNG_GENERATION_COLLECTION_THROUGHPUT_HISTO_MB_PER_SEC:I = 0x13

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_YOUNG_GENERATION_COLLECTION_TIME_HISTO_MILLIS:I = 0x2

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_YOUNG_GENERATION_TRACING_THROUGHPUT_AVG_MB_PER_SEC:I = 0x1a

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_GC_YOUNG_GENERATION_TRACING_THROUGHPUT_HISTO_MB_PER_SEC:I = 0x16

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_INVALID:I = 0x0

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_JIT_METHOD_COMPILE_COUNT:I = 0x15

.field public static final ART_DATUM_REPORTED__KIND__ART_DATUM_JIT_METHOD_COMPILE_TIME_MICROS:I = 0x6

.field public static final ART_DATUM_REPORTED__THREAD_TYPE__ART_THREAD_BACKGROUND:I = 0x2

.field public static final ART_DATUM_REPORTED__THREAD_TYPE__ART_THREAD_MAIN:I = 0x1

.field public static final ART_DATUM_REPORTED__THREAD_TYPE__ART_THREAD_UNKNOWN:I = 0x0

.field public static final BACKGROUND_DEXOPT_JOB_ENDED:I = 0x1d3

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__CANCELLATION_REASON__STOP_REASON_APP_STANDBY:I = 0xc

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__CANCELLATION_REASON__STOP_REASON_BACKGROUND_RESTRICTION:I = 0xb

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__CANCELLATION_REASON__STOP_REASON_CANCELLED_BY_APP:I = 0x1

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__CANCELLATION_REASON__STOP_REASON_CONSTRAINT_BATTERY_NOT_LOW:I = 0x5

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__CANCELLATION_REASON__STOP_REASON_CONSTRAINT_CHARGING:I = 0x6

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__CANCELLATION_REASON__STOP_REASON_CONSTRAINT_CONNECTIVITY:I = 0x7

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__CANCELLATION_REASON__STOP_REASON_CONSTRAINT_DEVICE_IDLE:I = 0x8

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__CANCELLATION_REASON__STOP_REASON_CONSTRAINT_STORAGE_NOT_LOW:I = 0x9

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__CANCELLATION_REASON__STOP_REASON_DEVICE_STATE:I = 0x4

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__CANCELLATION_REASON__STOP_REASON_PREEMPT:I = 0x2

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__CANCELLATION_REASON__STOP_REASON_QUOTA:I = 0xa

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__CANCELLATION_REASON__STOP_REASON_SYSTEM_PROCESSING:I = 0xe

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__CANCELLATION_REASON__STOP_REASON_TIMEOUT:I = 0x3

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__CANCELLATION_REASON__STOP_REASON_UNDEFINED:I = 0x0

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__CANCELLATION_REASON__STOP_REASON_USER:I = 0xd

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__STATUS__STATUS_ABORT_BATTERY:I = 0x5

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__STATUS__STATUS_ABORT_BY_CANCELLATION:I = 0x2

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__STATUS__STATUS_ABORT_NO_SPACE_LEFT:I = 0x3

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__STATUS__STATUS_ABORT_THERMAL:I = 0x4

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__STATUS__STATUS_JOB_FINISHED:I = 0x1

.field public static final BACKGROUND_DEXOPT_JOB_ENDED__STATUS__STATUS_UNKNOWN:I = 0x0

.field public static final EARLY_BOOT_COMP_OS_ARTIFACTS_CHECK_REPORTED:I = 0x1a3

.field public static final ISOLATED_COMPILATION_ENDED:I = 0x1ca

.field public static final ISOLATED_COMPILATION_ENDED__COMPILATION_RESULT__RESULT_COMPILATION_FAILED:I = 0x5

.field public static final ISOLATED_COMPILATION_ENDED__COMPILATION_RESULT__RESULT_COMPOSD_DIED:I = 0x7

.field public static final ISOLATED_COMPILATION_ENDED__COMPILATION_RESULT__RESULT_FAILED_TO_START:I = 0x3

.field public static final ISOLATED_COMPILATION_ENDED__COMPILATION_RESULT__RESULT_JOB_CANCELED:I = 0x4

.field public static final ISOLATED_COMPILATION_ENDED__COMPILATION_RESULT__RESULT_SUCCESS:I = 0x1

.field public static final ISOLATED_COMPILATION_ENDED__COMPILATION_RESULT__RESULT_UNEXPECTED_COMPILATION_RESULT:I = 0x6

.field public static final ISOLATED_COMPILATION_ENDED__COMPILATION_RESULT__RESULT_UNKNOWN:I = 0x0

.field public static final ISOLATED_COMPILATION_ENDED__COMPILATION_RESULT__RESULT_UNKNOWN_FAILURE:I = 0x2

.field public static final ISOLATED_COMPILATION_SCHEDULED:I = 0x1c9

.field public static final ISOLATED_COMPILATION_SCHEDULED__SCHEDULING_RESULT__SCHEDULING_FAILURE:I = 0x1

.field public static final ISOLATED_COMPILATION_SCHEDULED__SCHEDULING_RESULT__SCHEDULING_RESULT_UNKNOWN:I = 0x0

.field public static final ISOLATED_COMPILATION_SCHEDULED__SCHEDULING_RESULT__SCHEDULING_SUCCESS:I = 0x2

.field public static final ODREFRESH_REPORTED:I = 0x16e

.field public static final ODREFRESH_REPORTED__STAGE_REACHED__STAGE_CHECK:I = 0xa

.field public static final ODREFRESH_REPORTED__STAGE_REACHED__STAGE_COMPLETE:I = 0x3c

.field public static final ODREFRESH_REPORTED__STAGE_REACHED__STAGE_PREPARATION:I = 0x14

.field public static final ODREFRESH_REPORTED__STAGE_REACHED__STAGE_PRIMARY_BOOT_CLASSPATH:I = 0x1e

.field public static final ODREFRESH_REPORTED__STAGE_REACHED__STAGE_SECONDARY_BOOT_CLASSPATH:I = 0x28

.field public static final ODREFRESH_REPORTED__STAGE_REACHED__STAGE_SYSTEM_SERVER_CLASSPATH:I = 0x32

.field public static final ODREFRESH_REPORTED__STAGE_REACHED__STAGE_UNKNOWN:I = 0x0

.field public static final ODREFRESH_REPORTED__STATUS__STATUS_DEX2OAT_ERROR:I = 0x4

.field public static final ODREFRESH_REPORTED__STATUS__STATUS_INSTALL_FAILED:I = 0x7

.field public static final ODREFRESH_REPORTED__STATUS__STATUS_IO_ERROR:I = 0x3

.field public static final ODREFRESH_REPORTED__STATUS__STATUS_NO_SPACE:I = 0x2

.field public static final ODREFRESH_REPORTED__STATUS__STATUS_OK:I = 0x1

.field public static final ODREFRESH_REPORTED__STATUS__STATUS_STAGING_FAILED:I = 0x6

.field public static final ODREFRESH_REPORTED__STATUS__STATUS_TIME_LIMIT_EXCEEDED:I = 0x5

.field public static final ODREFRESH_REPORTED__STATUS__STATUS_UNKNOWN:I = 0x0

.field public static final ODREFRESH_REPORTED__TRIGGER__TRIGGER_APEX_VERSION_MISMATCH:I = 0x1

.field public static final ODREFRESH_REPORTED__TRIGGER__TRIGGER_DEX_FILES_CHANGED:I = 0x2

.field public static final ODREFRESH_REPORTED__TRIGGER__TRIGGER_MISSING_ARTIFACTS:I = 0x3

.field public static final ODREFRESH_REPORTED__TRIGGER__TRIGGER_UNKNOWN:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static write(II)V
    .registers 3

    .line 240
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 242
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 244
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 245
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public static write(IIIJJ)V
    .registers 8

    .line 249
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 250
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 251
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 252
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 253
    invoke-virtual {v0, p3, p4}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 254
    invoke-virtual {v0, p5, p6}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 256
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 257
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public static write(IJI)V
    .registers 5

    .line 261
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 262
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 263
    invoke-virtual {v0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 264
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 266
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 267
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public static write(IJIIIIIIII)V
    .registers 12

    .line 271
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 272
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 273
    invoke-virtual {v0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 274
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 275
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 276
    invoke-virtual {v0, p5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 277
    invoke-virtual {v0, p6}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 278
    invoke-virtual {v0, p7}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 279
    invoke-virtual {v0, p8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 280
    invoke-virtual {v0, p9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 281
    invoke-virtual {v0, p10}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 283
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 284
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public static write(IJIIIJIIJIII)V
    .registers 16

    .line 288
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 289
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 290
    invoke-virtual {v0, p1, p2}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 291
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    const/16 p1, 0x14c

    if-ne p1, p0, :cond_15

    const/4 p0, 0x1

    .line 293
    invoke-virtual {v0, p0, p0}, Landroid/util/StatsEvent$Builder;->addBooleanAnnotation(BZ)Landroid/util/StatsEvent$Builder;

    .line 295
    :cond_15
    invoke-virtual {v0, p4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 296
    invoke-virtual {v0, p5}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 297
    invoke-virtual {v0, p6, p7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 298
    invoke-virtual {v0, p8}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 299
    invoke-virtual {v0, p9}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 300
    invoke-virtual {v0, p10, p11}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    .line 301
    invoke-virtual {v0, p12}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 302
    invoke-virtual {v0, p13}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 303
    invoke-virtual {v0, p14}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    .line 305
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 306
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method

.method public static write(IZZZ)V
    .registers 5

    .line 229
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 230
    invoke-virtual {v0, p0}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    .line 231
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 232
    invoke-virtual {v0, p2}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 233
    invoke-virtual {v0, p3}, Landroid/util/StatsEvent$Builder;->writeBoolean(Z)Landroid/util/StatsEvent$Builder;

    .line 235
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    .line 236
    invoke-virtual {v0}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    return-void
.end method
