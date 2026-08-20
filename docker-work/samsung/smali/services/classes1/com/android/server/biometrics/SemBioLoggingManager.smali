.class public final Lcom/android/server/biometrics/SemBioLoggingManager;
.super Ljava/lang/Object;
.source "SemBioLoggingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final LOG_ARRAY_SIZE:I

.field public static final RESULT_DISMISS:Ljava/lang/String; = "D"

.field public static final RESULT_EXCEPTION:Ljava/lang/String; = "E"

.field public static final RESULT_FAIL:Ljava/lang/String; = "F"

.field public static final RESULT_MATCH:Ljava/lang/String; = "M"

.field public static final RESULT_NO_MATCH:Ljava/lang/String; = "N"

.field public static final RESULT_SUCCESS:Ljava/lang/String; = "S"

.field public static final RESULT_TIMEOUT:Ljava/lang/String; = "T"

.field public static final RESULT_UNKNOWN:Ljava/lang/String; = "U"

.field public static final TAG:Ljava/lang/String; = "BiometricStats"

.field public static final TYPE_AUTHENTICATE:Ljava/lang/String; = "A"

.field public static final TYPE_AUTHENTICATE_WITH_BP:Ljava/lang/String; = "AP"

.field public static final TYPE_ENROLL:Ljava/lang/String; = "E"

.field public static final TYPE_REMOVE:Ljava/lang/String; = "R"

.field public static sInstance:Lcom/android/server/biometrics/SemBioLoggingManager;

.field public static final sInstanceLock:Ljava/lang/Object;


# instance fields
.field public final mBpAuthLogList:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mBpLoggingInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mFaceAuthLogList:Ljava/util/ArrayList;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mFaceLoggingInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final mFpAuthLogList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final mFpLoggingInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public mIsFpBioStarEnabled:Z

.field public mLastFaceEnrollLog:Ljava/lang/String;

.field public mLastFaceRemoveLog:Ljava/lang/String;

.field public mLastFpAuthenticatorId:Ljava/lang/String;

.field public mLastFpEnrollLog:Ljava/lang/String;

.field public mLastFpRemoveLog:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$0ATshPbwyQ6E-ILAaVpxdQFzARA(Lcom/android/server/biometrics/SemBioLoggingManager;IJILandroid/content/Context;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpCaptureFailed$4(IJILandroid/content/Context;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9pRDeXz7nGBa4WMDG8ApvBTACO4(Lcom/android/server/biometrics/SemBioLoggingManager;III)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpSetOpticalInfo$7(III)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fcb3mMQwClaBl_fy5C6o7TNAe_Y(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;I)V
    .registers 8

    invoke-direct/range {p0 .. p7}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpMatch$1(IJIILandroid/content/Context;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$I6TA4PYiodhWJMre3xO1SJ7SEdA(Lcom/android/server/biometrics/SemBioLoggingManager;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpUpdateUdfpsTouchMap$3(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$LdoX-Sh8HktL-KOPWEymKsfyO8o(Lcom/android/server/biometrics/SemBioLoggingManager;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpSetAuthenticatorId$8(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$NbVVfFbh85gYDK9BQgbAGLlm52I(Lcom/android/server/biometrics/SemBioLoggingManager;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpStart$0(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Yu1awrhpWqD4oQOVxfO1WWSzkgQ(Lcom/android/server/biometrics/SemBioLoggingManager;Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpRemoved$6(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$iTVsNaElwvB2G1-uoyZRJGaRDXU(Lcom/android/server/biometrics/SemBioLoggingManager;IJLjava/lang/String;II)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpStop$5(IJLjava/lang/String;II)V

    return-void
.end method

.method public static synthetic $r8$lambda$mgfULv7Du1MsiRJPVrUkoMSFyhg(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/biometrics/SemBioLoggingManager;->lambda$fpNoMatch$2(IJIILandroid/content/Context;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 1

    .line 23
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/biometrics/SemBioLoggingManager;->DEBUG:Z

    if-eqz v0, :cond_9

    const/16 v0, 0x32

    goto :goto_b

    :cond_9
    const/16 v0, 0x14

    .line 25
    :goto_b
    sput v0, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/biometrics/SemBioLoggingManager;->sInstanceLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Unknown"

    .line 46
    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpAuthenticatorId:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceAuthLogList:Ljava/util/ArrayList;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    .line 59
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    .line 60
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    .line 61
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    return-void
.end method

.method public static get()Lcom/android/server/biometrics/SemBioLoggingManager;
    .registers 2

    .line 173
    sget-object v0, Lcom/android/server/biometrics/SemBioLoggingManager;->sInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    sget-object v1, Lcom/android/server/biometrics/SemBioLoggingManager;->sInstance:Lcom/android/server/biometrics/SemBioLoggingManager;

    if-nez v1, :cond_e

    .line 175
    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager;

    invoke-direct {v1}, Lcom/android/server/biometrics/SemBioLoggingManager;-><init>()V

    sput-object v1, Lcom/android/server/biometrics/SemBioLoggingManager;->sInstance:Lcom/android/server/biometrics/SemBioLoggingManager;

    .line 177
    :cond_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_12

    .line 178
    sget-object v0, Lcom/android/server/biometrics/SemBioLoggingManager;->sInstance:Lcom/android/server/biometrics/SemBioLoggingManager;

    return-object v0

    :catchall_12
    move-exception v1

    .line 177
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_12

    throw v1
.end method

.method private synthetic lambda$fpCaptureFailed$4(IJILandroid/content/Context;)V
    .registers 9

    .line 268
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 269
    :try_start_3
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz p0, :cond_1a

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 272
    iput-wide p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    .line 273
    iput p4, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 274
    invoke-virtual {p0, p5}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendCaptureFailedInfo(Landroid/content/Context;)V

    .line 276
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p0

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method private synthetic lambda$fpMatch$1(IJIILandroid/content/Context;I)V
    .registers 12

    .line 209
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 210
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v1, :cond_2c

    .line 212
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 213
    iput-wide p2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    const-string p2, "M"

    .line 214
    iput-object p2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 215
    iput p4, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 216
    iput p5, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mBadQualityCount:I

    .line 217
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 218
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 219
    iget-boolean p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    if-eqz p0, :cond_2c

    .line 220
    invoke-virtual {v1, p6, p7}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendMatchInfo(Landroid/content/Context;I)V

    .line 223
    :cond_2c
    monitor-exit v0

    return-void

    :catchall_2e
    move-exception p0

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_3 .. :try_end_30} :catchall_2e

    throw p0
.end method

.method private synthetic lambda$fpNoMatch$2(IJIILandroid/content/Context;)V
    .registers 10

    .line 229
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 230
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz p1, :cond_27

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 233
    iput-wide p2, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    const-string p2, "N"

    .line 234
    iput-object p2, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 235
    iput p4, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 236
    iput p5, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mBadQualityCount:I

    .line 237
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 238
    iget-boolean p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    if-eqz p0, :cond_27

    .line 239
    invoke-virtual {p1, p6, p4}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->sendNoMatchInfo(Landroid/content/Context;I)V

    .line 242
    :cond_27
    monitor-exit v0

    return-void

    :catchall_29
    move-exception p0

    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_29

    throw p0
.end method

.method private synthetic lambda$fpRemoved$6(Ljava/lang/String;I)V
    .registers 6

    .line 299
    new-instance v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo-IA;)V

    const-string v1, "R"

    .line 300
    iput-object v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 301
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    .line 302
    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 303
    iput-object p1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 304
    iput p2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    return-void
.end method

.method private synthetic lambda$fpSetAuthenticatorId$8(J)V
    .registers 8

    .line 323
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 325
    :try_start_3
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "MM/dd HH:mm:ss"

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 327
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v3, 0x0

    cmp-long v3, p1, v3

    if-nez v3, :cond_1a

    const-string p1, "0L"

    goto :goto_1f

    :cond_1a
    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p1, Ljava/util/Date;

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {p1, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v1, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpAuthenticatorId:Ljava/lang/String;
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3d} :catch_40
    .catchall {:try_start_3 .. :try_end_3d} :catchall_3e

    goto :goto_5b

    :catchall_3e
    move-exception p0

    goto :goto_5d

    :catch_40
    move-exception p0

    :try_start_41
    const-string p1, "BiometricStats"

    .line 330
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fpSetAuthenticatorId: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :goto_5b
    monitor-exit v0

    return-void

    :goto_5d
    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_41 .. :try_end_5e} :catchall_3e

    throw p0
.end method

.method private synthetic lambda$fpSetOpticalInfo$7(III)V
    .registers 5

    .line 311
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 312
    :try_start_3
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz p0, :cond_11

    .line 314
    iput p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mFpScreenStatus:I

    .line 315
    iput p3, p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mFpAlphaMaskLvl:I

    .line 317
    :cond_11
    monitor-exit v0

    return-void

    :catchall_13
    move-exception p0

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw p0
.end method

.method private synthetic lambda$fpStart$0(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    .line 194
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 195
    :try_start_3
    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo-IA;)V

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    .line 197
    iput-object p1, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 198
    iput-object p2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 199
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p1, p3, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 200
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sget p2, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    if-lt p1, p2, :cond_28

    .line 201
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 203
    :cond_28
    monitor-exit v0

    return-void

    :catchall_2a
    move-exception p0

    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2a

    throw p0
.end method

.method private synthetic lambda$fpStop$5(IJLjava/lang/String;II)V
    .registers 11

    .line 282
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 283
    :try_start_3
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v1, :cond_23

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 286
    iput-wide p2, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    .line 287
    iput-object p4, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 288
    iput p5, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 289
    iput p6, v1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mBadQualityCount:I

    .line 290
    invoke-virtual {p0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager;->fpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 291
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 293
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method private synthetic lambda$fpUpdateUdfpsTouchMap$3(I)V
    .registers 3

    .line 254
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 255
    :try_start_3
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz p0, :cond_10

    .line 257
    invoke-virtual {p0}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->updateTouchMapData()V

    .line 259
    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw p0
.end method


# virtual methods
.method public final bpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V
    .registers 3

    .line 511
    monitor-enter p0

    .line 512
    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 513
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget v0, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    if-le p1, v0, :cond_1a

    .line 514
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 516
    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public bpDump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 494
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 495
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 497
    :cond_16
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_4b

    const-string v1, " [ in progress client ]"

    .line 499
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_24
    if-ge v1, v0, :cond_4b

    .line 501
    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v2, :cond_48

    .line 503
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    .line 507
    :cond_4b
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public bpStart(ILjava/lang/String;)V
    .registers 6

    .line 467
    new-instance v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo-IA;)V

    .line 468
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    const-string v1, "AP"

    .line 469
    iput-object v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 470
    iput-object p2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 471
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 472
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sget p2, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    if-lt p1, p2, :cond_27

    .line 473
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_27
    return-void
.end method

.method public bpStop(III)V
    .registers 7

    .line 478
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v0, :cond_27

    .line 480
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    if-nez p2, :cond_19

    const-string p2, "E"

    .line 482
    iput-object p2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 483
    iput p3, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    goto :goto_1f

    :cond_19
    const-string p3, "D"

    .line 485
    iput-object p3, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 486
    iput p2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 488
    :goto_1f
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioLoggingManager;->bpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 489
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mBpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_27
    return-void
.end method

.method public final faceAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V
    .registers 4

    .line 454
    monitor-enter p0

    :try_start_1
    const-string v0, "E"

    .line 455
    iget-object v1, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 456
    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceEnrollLog:Ljava/lang/String;

    .line 458
    :cond_11
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 459
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget v0, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    if-le p1, v0, :cond_2a

    .line 460
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceAuthLogList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 462
    :cond_2a
    monitor-exit p0

    return-void

    :catchall_2c
    move-exception p1

    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public faceDump(Ljava/io/PrintWriter;)V
    .registers 7

    .line 430
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceEnrollLog:Ljava/lang/String;

    if-eqz v0, :cond_1a

    .line 431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enroll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceEnrollLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 433
    :cond_1a
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceRemoveLog:Ljava/lang/String;

    if-eqz v0, :cond_34

    .line 434
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceRemoveLog:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 436
    :cond_34
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 437
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3a

    .line 439
    :cond_4a
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_7f

    const-string v1, " [ in progress client ]"

    .line 441
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_58
    if-ge v1, v0, :cond_7f

    .line 443
    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v2, :cond_7c

    .line 445
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_58

    .line 450
    :cond_7f
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public faceNoMatch(ILjava/lang/String;JI)V
    .registers 8

    .line 396
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz p1, :cond_19

    .line 398
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 399
    iput-wide p3, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    .line 400
    iput-object p2, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 401
    iput p5, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    :cond_19
    return-void
.end method

.method public faceRemoved(Ljava/lang/String;I)V
    .registers 6

    .line 419
    new-instance v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo-IA;)V

    const-string v1, "R"

    .line 420
    iput-object v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    .line 422
    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 423
    iput-object p1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 424
    iput p2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 425
    invoke-virtual {v0}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFaceRemoveLog:Ljava/lang/String;

    .line 426
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    return-void
.end method

.method public faceStart(ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 385
    new-instance v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo-IA;)V

    .line 386
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mStartTime:J

    .line 387
    iput-object p2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    .line 388
    iput-object p3, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mPackageName:Ljava/lang/String;

    .line 389
    iget-object p2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 390
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    sget p2, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    if-lt p1, p2, :cond_25

    .line 391
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    :cond_25
    return-void
.end method

.method public faceStop(ILjava/lang/String;JI)V
    .registers 9

    .line 407
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v0, :cond_1e

    .line 409
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResultTime:J

    .line 410
    iput-wide p3, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mLatency:J

    .line 411
    iput-object p2, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mResult:Ljava/lang/String;

    .line 412
    iput p5, v0, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mExtra:I

    .line 413
    invoke-virtual {p0, v0}, Lcom/android/server/biometrics/SemBioLoggingManager;->faceAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V

    .line 414
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFaceLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->delete(I)V

    :cond_1e
    return-void
.end method

.method public final fpAddLoggingInfo(Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;)V
    .registers 6

    .line 365
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 366
    :try_start_3
    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object v1

    const-string v2, "E"

    .line 367
    iget-object v3, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 368
    iput-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpEnrollLog:Ljava/lang/String;

    goto :goto_38

    :cond_14
    const-string v2, "R"

    .line 369
    iget-object v3, p1, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->mType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    .line 370
    iput-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpRemoveLog:Ljava/lang/String;

    goto :goto_38

    .line 372
    :cond_21
    sget-boolean v2, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_OPTICAL:Z

    if-eqz v2, :cond_38

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->getFpOpticalInfo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 376
    :cond_38
    :goto_38
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    sget v1, Lcom/android/server/biometrics/SemBioLoggingManager;->LOG_ARRAY_SIZE:I

    if-le p1, v1, :cond_4d

    .line 378
    iget-object p0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 380
    :cond_4d
    monitor-exit v0

    return-void

    :catchall_4f
    move-exception p0

    monitor-exit v0
    :try_end_51
    .catchall {:try_start_3 .. :try_end_51} :catchall_4f

    throw p0
.end method

.method public fpCaptureFailed(Landroid/content/Context;IJI)V
    .registers 15

    .line 264
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 267
    :cond_5
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v8, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;

    move-object v1, v8

    move-object v2, p0

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJILandroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpDump(Ljava/io/PrintWriter;)V
    .registers 8

    .line 337
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 338
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpAuthenticatorId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 339
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpEnrollLog:Ljava/lang/String;

    if-eqz v1, :cond_33

    .line 340
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enroll: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpEnrollLog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 342
    :cond_33
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpRemoveLog:Ljava/lang/String;

    if-eqz v1, :cond_4d

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mLastFpRemoveLog:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    :cond_4d
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpAuthLogList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_53
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_63

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 346
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_53

    .line 348
    :cond_63
    monitor-exit v0
    :try_end_64
    .catchall {:try_start_3 .. :try_end_64} :catchall_a4

    .line 349
    iget-object v1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    monitor-enter v1

    .line 350
    :try_start_67
    iget-object v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_9c

    const-string v2, " [ in progress client ]"

    .line 352
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_75
    if-ge v2, v0, :cond_9c

    .line 354
    iget-object v3, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mFpLoggingInfo:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;

    if-eqz v3, :cond_99

    .line 356
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/biometrics/SemBioLoggingManager$LoggingInfo;->toDumpFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_99
    add-int/lit8 v2, v2, 0x1

    goto :goto_75

    .line 360
    :cond_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_67 .. :try_end_9d} :catchall_a1

    .line 361
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :catchall_a1
    move-exception p0

    .line 360
    :try_start_a2
    monitor-exit v1
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    throw p0

    :catchall_a4
    move-exception p0

    .line 348
    :try_start_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    throw p0
.end method

.method public fpMatch(Landroid/content/Context;IJIII)V
    .registers 19

    .line 208
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v10, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;

    move-object v1, v10

    move-object v2, p0

    move v3, p2

    move-wide v4, p3

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v8, p1

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;I)V

    invoke-virtual {v0, v10}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpNoMatch(Landroid/content/Context;IJII)V
    .registers 17

    .line 228
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v9, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;

    move-object v1, v9

    move-object v2, p0

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move/from16 v7, p6

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJIILandroid/content/Context;)V

    invoke-virtual {v0, v9}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpRemoved(Ljava/lang/String;I)V
    .registers 5

    .line 298
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpSetAuthenticatorId(J)V
    .registers 5

    .line 322
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;J)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpSetOpticalInfo(III)V
    .registers 6

    .line 310
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;III)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpStart(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 193
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpStop(ILjava/lang/String;JII)V
    .registers 17

    .line 281
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v9, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;

    move-object v1, v9

    move-object v2, p0

    move v3, p1

    move-wide v4, p3

    move-object v6, p2

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;IJLjava/lang/String;II)V

    invoke-virtual {v0, v9}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public fpUpdateUdfpsTouchMap(I)V
    .registers 4

    .line 247
    iget-boolean v0, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    if-nez v0, :cond_5

    return-void

    .line 250
    :cond_5
    sget-boolean v0, Lcom/android/server/biometrics/SemBiometricFeature;->FP_FEATURE_SENSOR_IS_IN_DISPLAY_TYPE:Z

    if-nez v0, :cond_a

    return-void

    .line 253
    :cond_a
    invoke-static {}, Lcom/android/server/biometrics/SemBioFgThread;->get()Lcom/android/server/biometrics/SemBioFgThread;

    move-result-object v0

    new-instance v1, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/biometrics/SemBioLoggingManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/biometrics/SemBioLoggingManager;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/biometrics/SemBioFgThread;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setFpBioStar(Z)V
    .registers 4

    .line 186
    sget-boolean v0, Lcom/android/server/biometrics/Utils;->DEBUG:Z

    if-eqz v0, :cond_1a

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FP BIO STAR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricStats"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    :cond_1a
    iput-boolean p1, p0, Lcom/android/server/biometrics/SemBioLoggingManager;->mIsFpBioStarEnabled:Z

    return-void
.end method
