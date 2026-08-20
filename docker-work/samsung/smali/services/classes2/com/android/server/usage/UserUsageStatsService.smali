.class public Lcom/android/server/usage/UserUsageStatsService;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;,
        Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;
    }
.end annotation


# static fields
.field public static final DEBUG:Z = false

.field public static final INTERVAL_LENGTH:[J

.field public static final TAG:Ljava/lang/String; = "UsageStatsService"

.field public static final sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final sDateFormat:Ljava/text/SimpleDateFormat;

.field public static final sDateFormatFlags:I = 0x20015

.field public static final sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation
.end field

.field public static final sLoggingFormat:Ljava/text/SimpleDateFormat;

.field public static final sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mCachedEarlyEvents:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;",
            ">;"
        }
    .end annotation
.end field

.field public final mContext:Landroid/content/Context;

.field public final mCurrentStats:[Lcom/android/server/usage/IntervalStats;

.field public final mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

.field public final mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

.field public mDumpInitEndTime:J

.field public mDumpInitLastTimeSaved:J

.field public mLastBackgroundedPackage:Ljava/lang/String;

.field public final mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

.field public final mLogPrefix:Ljava/lang/String;

.field public mRealTimeSnapshot:J

.field public mStatsChanged:Z

.field public mSystemTimeSnapshot:J

.field public final mUserId:I

.field public track:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9DZ7l7x0SIOUGpeky4RbrRTMkCI(JJLjava/lang/String;ILcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .registers 9

    invoke-static/range {p0 .. p8}, Lcom/android/server/usage/UserUsageStatsService;->lambda$queryEarliestEventsForPackage$4(JJLjava/lang/String;ILcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$AKU-oKdbg_uyUYryCoHce4Vs9zQ(JJLandroid/util/ArraySet;Landroid/util/ArraySet;ILcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .registers 10

    invoke-static/range {p0 .. p9}, Lcom/android/server/usage/UserUsageStatsService;->lambda$queryEarliestAppEvents$2(JJLandroid/util/ArraySet;Landroid/util/ArraySet;ILcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$m4bA-IekJ7D0T0KxLRlgSwtWpYU(Ljava/util/ArrayList;JJLjava/lang/Long;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/android/server/usage/UserUsageStatsService;->lambda$onTimeChanged$0(Ljava/util/ArrayList;JJLjava/lang/Long;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pXvegYjtcCaVPBNtKXZ7NUphc9o(JJLjava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .registers 10

    invoke-static/range {p0 .. p9}, Lcom/android/server/usage/UserUsageStatsService;->lambda$queryEventsForPackage$3(JJLjava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$tFRwn12TzNOugwwDABpM09CTdf0(Lcom/android/server/usage/UserUsageStatsService;JJLjava/lang/String;Ljava/util/ArrayList;)V
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/usage/UserUsageStatsService;->lambda$onTimeChanged$1(JJLjava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static constructor <clinit>()V
    .registers 2

    .line 82
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    .line 103
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x4

    new-array v0, v0, [J

    .line 112
    fill-array-data v0, :array_32

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    .line 486
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 504
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$2;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$2;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 522
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$3;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$3;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    return-void

    :array_32
    .array-data 8
        0x5265c00
        0x240c8400
        0x9a7ec800L
        0x757b12c00L
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V
    .registers 7

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    .line 141
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    .line 146
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    .line 147
    new-instance p1, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 148
    new-instance p1, Lcom/android/server/usage/UsageStatsDatabase;

    invoke-direct {p1, p3}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    const/4 p1, 0x4

    new-array p1, p1, [Lcom/android/server/usage/IntervalStats;

    .line 149
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 150
    iput-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 151
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "User["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 152
    iput p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    .line 153
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    .line 154
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    return-void
.end method

.method public static eventToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_70

    .line 1474
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_TYPE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_15
    const-string p0, "APP_COMPONENT_USED"

    return-object p0

    :pswitch_18
    const-string p0, "LOCUS_ID_SET"

    return-object p0

    :pswitch_1b
    const-string p0, "USER_STOPPED"

    return-object p0

    :pswitch_1e
    const-string p0, "USER_UNLOCKED"

    return-object p0

    :pswitch_21
    const-string p0, "DEVICE_STARTUP"

    return-object p0

    :pswitch_24
    const-string p0, "DEVICE_SHUTDOWN"

    return-object p0

    :pswitch_27
    const-string p0, "ACTIVITY_STOPPED"

    return-object p0

    :pswitch_2a
    const-string p0, "ROLLOVER_FOREGROUND_SERVICE"

    return-object p0

    :pswitch_2d
    const-string p0, "CONTINUING_FOREGROUND_SERVICE"

    return-object p0

    :pswitch_30
    const-string p0, "FOREGROUND_SERVICE_STOP"

    return-object p0

    :pswitch_33
    const-string p0, "FOREGROUND_SERVICE_START"

    return-object p0

    :pswitch_36
    const-string p0, "KEYGUARD_HIDDEN"

    return-object p0

    :pswitch_39
    const-string p0, "KEYGUARD_SHOWN"

    return-object p0

    :pswitch_3c
    const-string p0, "SCREEN_NON_INTERACTIVE"

    return-object p0

    :pswitch_3f
    const-string p0, "SCREEN_INTERACTIVE"

    return-object p0

    :pswitch_42
    const-string p0, "SLICE_PINNED"

    return-object p0

    :pswitch_45
    const-string p0, "SLICE_PINNED_PRIV"

    return-object p0

    :pswitch_48
    const-string p0, "NOTIFICATION_INTERRUPTION"

    return-object p0

    :pswitch_4b
    const-string p0, "STANDBY_BUCKET_CHANGED"

    return-object p0

    :pswitch_4e
    const-string p0, "NOTIFICATION_SEEN"

    return-object p0

    :pswitch_51
    const-string p0, "CHOOSER_ACTION"

    return-object p0

    :pswitch_54
    const-string p0, "SHORTCUT_INVOCATION"

    return-object p0

    :pswitch_57
    const-string p0, "USER_INTERACTION"

    return-object p0

    :pswitch_5a
    const-string p0, "SYSTEM_INTERACTION"

    return-object p0

    :pswitch_5d
    const-string p0, "CONFIGURATION_CHANGE"

    return-object p0

    :pswitch_60
    const-string p0, "CONTINUE_PREVIOUS_DAY"

    return-object p0

    :pswitch_63
    const-string p0, "END_OF_DAY"

    return-object p0

    :pswitch_66
    const-string p0, "ACTIVITY_PAUSED"

    return-object p0

    :pswitch_69
    const-string p0, "ACTIVITY_RESUMED"

    return-object p0

    :pswitch_6c
    const-string p0, "NONE"

    return-object p0

    nop

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_69
        :pswitch_66
        :pswitch_63
        :pswitch_60
        :pswitch_5d
        :pswitch_5a
        :pswitch_57
        :pswitch_54
        :pswitch_51
        :pswitch_4e
        :pswitch_4b
        :pswitch_48
        :pswitch_45
        :pswitch_42
        :pswitch_3f
        :pswitch_3c
        :pswitch_39
        :pswitch_36
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_3
        :pswitch_3
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method public static formatDateTime(JZ)Ljava/lang/String;
    .registers 5

    if-eqz p2, :cond_21

    .line 1146
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1148
    :cond_21
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static intervalToString(I)Ljava/lang/String;
    .registers 2

    if-eqz p0, :cond_19

    const/4 v0, 0x1

    if-eq p0, v0, :cond_15

    const/4 v0, 0x2

    if-eq p0, v0, :cond_12

    const/4 v0, 0x3

    if-eq p0, v0, :cond_e

    const-string p0, "?"

    return-object p0

    :cond_e
    const-string/jumbo p0, "yearly"

    return-object p0

    :cond_12
    const-string p0, "monthly"

    return-object p0

    :cond_15
    const-string/jumbo p0, "weekly"

    return-object p0

    :cond_19
    const-string p0, "daily"

    return-object p0
.end method

.method public static synthetic lambda$onTimeChanged$0(Ljava/util/ArrayList;JJLjava/lang/Long;)V
    .registers 8

    .line 308
    invoke-virtual {p5}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    add-long/2addr v0, p1

    sub-long/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private synthetic lambda$onTimeChanged$1(JJLjava/lang/String;Ljava/util/ArrayList;)V
    .registers 15

    .line 306
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 307
    new-instance v7, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda4;

    move-object v0, v7

    move-object v1, v6

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda4;-><init>(Ljava/util/ArrayList;JJ)V

    invoke-virtual {p6, v7}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 310
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    invoke-virtual {p0, p5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic lambda$queryEarliestAppEvents$2(JJLandroid/util/ArraySet;Landroid/util/ArraySet;ILcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .registers 12

    .line 707
    iget-object p8, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p8, p0, p1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result p0

    .line 708
    iget-object p1, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p1}, Landroid/app/usage/EventList;->size()I

    move-result p1

    :goto_c
    if-ge p0, p1, :cond_51

    .line 710
    iget-object p8, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p8, p0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object p8

    .line 711
    invoke-virtual {p8}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_1e

    const/4 p0, 0x0

    return p0

    .line 714
    :cond_1e
    invoke-virtual {p8}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_25

    goto :goto_4e

    .line 717
    :cond_25
    invoke-virtual {p8}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    goto :goto_4e

    .line 721
    :cond_30
    invoke-virtual {p8}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 723
    invoke-virtual {p8}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    if-ne v1, p6, :cond_49

    .line 724
    invoke-interface {p9, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 725
    invoke-virtual {p8}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p4, p8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_4e

    :cond_49
    if-eqz v0, :cond_4e

    .line 728
    invoke-interface {p9, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4e
    :goto_4e
    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    :cond_51
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$queryEarliestEventsForPackage$4(JJLjava/lang/String;ILcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .registers 11

    .line 844
    iget-object p7, p6, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p7, p0, p1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result p0

    .line 845
    iget-object p1, p6, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p1}, Landroid/app/usage/EventList;->size()I

    move-result p1

    :goto_c
    if-ge p0, p1, :cond_3f

    .line 847
    iget-object p7, p6, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p7, p0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object p7

    .line 848
    invoke-virtual {p7}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v0

    cmp-long v0, v0, p2

    const/4 v1, 0x0

    if-ltz v0, :cond_1e

    return v1

    .line 852
    :cond_1e
    invoke-virtual {p7}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto :goto_3c

    .line 855
    :cond_29
    invoke-virtual {p7}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    if-ne v0, p5, :cond_33

    .line 856
    invoke-interface {p8, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 859
    :cond_33
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3c

    .line 861
    invoke-interface {p8, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3c
    :goto_3c
    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    :cond_3f
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic lambda$queryEventsForPackage$3(JJLjava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .registers 12

    .line 756
    iget-object p8, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p8, p0, p1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result p0

    .line 757
    iget-object p1, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p1}, Landroid/app/usage/EventList;->size()I

    move-result p1

    :goto_c
    if-ge p0, p1, :cond_44

    .line 759
    iget-object p8, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p8, p0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object p8

    .line 760
    iget-wide v0, p8, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v0, v0, p2

    if-ltz v0, :cond_1c

    const/4 p0, 0x0

    return p0

    .line 764
    :cond_1c
    iget-object v0, p8, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_41

    .line 767
    :cond_25
    iget-object v0, p8, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_2c

    .line 768
    invoke-virtual {p5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2c
    if-eqz p6, :cond_35

    .line 770
    iget-object v0, p8, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_35

    .line 771
    invoke-virtual {p5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_35
    if-eqz p6, :cond_3e

    .line 773
    iget-object v0, p8, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_3e

    .line 774
    invoke-virtual {p5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 776
    :cond_3e
    invoke-interface {p9, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_41
    add-int/lit8 p0, p0, 0x1

    goto :goto_c

    :cond_44
    const/4 p0, 0x1

    return p0
.end method

.method public static stringToInterval(Ljava/lang/String;)I
    .registers 7

    .line 1397
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v0, :sswitch_data_4a

    :goto_13
    move p0, v5

    goto :goto_42

    :sswitch_15
    const-string v0, "monthly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1e

    goto :goto_13

    :cond_1e
    move p0, v1

    goto :goto_42

    :sswitch_20
    const-string v0, "daily"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_29

    goto :goto_13

    :cond_29
    move p0, v2

    goto :goto_42

    :sswitch_2b
    const-string/jumbo v0, "yearly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto :goto_13

    :cond_35
    move p0, v3

    goto :goto_42

    :sswitch_37
    const-string/jumbo v0, "weekly"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_41

    goto :goto_13

    :cond_41
    move p0, v4

    :goto_42
    packed-switch p0, :pswitch_data_5c

    return v5

    :pswitch_46
    return v2

    :pswitch_47
    return v4

    :pswitch_48
    return v1

    :pswitch_49
    return v3

    :sswitch_data_4a
    .sparse-switch
        -0x2f307f7f -> :sswitch_37
        -0x2bc88576 -> :sswitch_2b
        0x5aede19 -> :sswitch_20
        0x49b5900d -> :sswitch_15
    .end sparse-switch

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
    .end packed-switch
.end method

.method public static validRange(JJJ)Z
    .registers 6

    cmp-long p0, p2, p0

    if-gtz p0, :cond_a

    cmp-long p0, p2, p4

    if-gez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)V
    .registers 3

    .line 1485
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 1486
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->applyRestoredPayload(Ljava/lang/String;[B)V

    return-void
.end method

.method public final checkAndGetTimeLocked()J
    .registers 13

    .line 319
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 320
    sget-boolean v2, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    if-nez v2, :cond_9

    return-wide v0

    .line 323
    :cond_9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 324
    iget-wide v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v4, v6

    sub-long v6, v0, v4

    .line 326
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x7d0

    cmp-long v8, v8, v10

    if-lez v8, :cond_4a

    .line 328
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Time changed in by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    div-long/2addr v6, v9

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " seconds"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UsageStatsService"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJ)V

    .line 330
    iput-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    .line 331
    iput-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    :cond_4a
    return-wide v0
.end method

.method public checkin(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 4

    .line 1043
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/usage/UserUsageStatsService$5;-><init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z

    return-void
.end method

.method public final convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .registers 6

    .line 341
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    return-void
.end method

.method public deleteUsageData(Ljava/util/HashMap;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 1032
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 1033
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/server/usage/UserUsageStatsService;->init(JLjava/util/HashMap;Z)V

    .line 1034
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->pruneAll(J)V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1053
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/usage/UserUsageStatsService;->dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    xor-int/lit8 v0, p3, 0x1

    .line 1057
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/usage/UserUsageStatsService;->printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;)V

    const/4 v0, 0x0

    .line 1058
    :goto_6
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v0, v1, :cond_2c

    const-string v1, "In-memory "

    .line 1059
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1060
    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " stats"

    .line 1061
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1062
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v1, v0

    xor-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1064
    :cond_2c
    invoke-static {p2}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p2

    if-eqz p2, :cond_37

    .line 1065
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0, p1, p3}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    :cond_37
    return-void
.end method

.method public dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 3

    .line 1070
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    return-void
.end method

.method public dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_66

    .line 1078
    array-length v1, p2

    if-nez v1, :cond_7

    goto :goto_66

    .line 1090
    :cond_7
    :try_start_7
    aget-object v1, p2, v0

    invoke-static {v1}, Lcom/android/server/usage/UserUsageStatsService;->stringToInterval(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1a

    .line 1092
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_1a} :catch_60

    :cond_1a
    if-ltz v1, :cond_59

    .line 1100
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length v0, v0

    if-lt v1, v0, :cond_24

    goto :goto_59

    .line 1104
    :cond_24
    array-length v0, p2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2c

    .line 1106
    invoke-virtual {p0, p1, v1}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    goto :goto_91

    .line 1111
    :cond_2c
    :try_start_2c
    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_36} :catch_53

    .line 1116
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v0

    if-nez v0, :cond_45

    const-string/jumbo p0, "the specified filename does not exist."

    .line 1118
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1121
    :cond_45
    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    goto :goto_91

    :catch_53
    const-string p0, "invalid filename specified."

    .line 1113
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_59
    :goto_59
    const-string/jumbo p0, "the specified interval does not exist."

    .line 1101
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catch_60
    const-string p0, "invalid interval specified."

    .line 1097
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1080
    :cond_66
    :goto_66
    iget-object p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object p2, p2, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    array-length p2, p2

    :goto_6b
    if-ge v0, p2, :cond_91

    .line 1082
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1084
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    .line 1085
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6b

    :cond_91
    :goto_91
    return-void
.end method

.method public final dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V
    .registers 11

    .line 1138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1139
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1140
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V

    .line 1141
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .registers 9

    .line 1127
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/app/usage/TimeSparseArray;

    aget-object v0, v0, p2

    .line 1128
    invoke-virtual {v0}, Landroid/app/usage/TimeSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v1, :cond_20

    .line 1130
    invoke-virtual {v0, v2}, Landroid/app/usage/TimeSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 1131
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v5, p2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    .line 1132
    invoke-virtual {p0, p1, v5, v3, v4}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    .line 1133
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_20
    return-void
.end method

.method public dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .registers 2

    .line 1074
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final formatElapsedTime(JZ)Ljava/lang/String;
    .registers 6

    if-eqz p3, :cond_1e

    .line 1153
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\""

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1155
    :cond_1e
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackupPayload(Ljava/lang/String;)[B
    .registers 2

    .line 1479
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 1480
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 1481
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public init(JLjava/util/HashMap;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 159
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->readPackageMappingsLocked(Ljava/util/HashMap;Z)V

    .line 160
    iget-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p4, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->init(J)V

    .line 161
    iget-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p4}, Lcom/android/server/usage/UsageStatsDatabase;->wasUpgradePerformed()Z

    move-result p4

    if-eqz p4, :cond_15

    .line 162
    iget-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p4, p3}, Lcom/android/server/usage/UsageStatsDatabase;->prunePackagesDataOnUpgrade(Ljava/util/HashMap;)V

    :cond_15
    const/4 p3, 0x0

    move p4, p3

    move v0, p4

    .line 166
    :goto_18
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v1

    if-ge p4, v2, :cond_30

    .line 167
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v2, p4}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v2

    aput-object v2, v1, p4

    .line 168
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v1, v1, p4

    if-nez v1, :cond_2d

    add-int/lit8 v0, v0, 0x1

    :cond_2d
    add-int/lit8 p4, p4, 0x1

    goto :goto_18

    :cond_30
    const-string p4, "UsageStatsService"

    if-lez v0, :cond_51

    .line 176
    array-length v1, v1

    if-eq v0, v1, :cond_4d

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Some stats have no latest available"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_4d
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    goto :goto_54

    .line 191
    :cond_51
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 198
    :goto_54
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object p1, p1, p3

    if-eqz p1, :cond_be

    .line 200
    new-instance p2, Landroid/app/usage/UsageEvents$Event;

    const/16 p3, 0x1a

    iget-wide v0, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    iget-wide v2, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 201
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-direct {p2, p3, v0, v1}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 204
    iget-wide v0, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    iput-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDumpInitLastTimeSaved:J

    .line 205
    iget-wide v0, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDumpInitEndTime:J

    .line 206
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 207
    invoke-static {v1, v2}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    .line 208
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatForLogging(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 206
    invoke-static {p4, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p3, "android"

    .line 211
    iput-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 212
    invoke-virtual {p1, p2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 213
    new-instance p2, Landroid/app/usage/UsageEvents$Event;

    const/16 p4, 0x1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p2, p4, v0, v1}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 214
    iput-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 215
    invoke-virtual {p1, p2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 218
    :cond_be
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p1}, Lcom/android/server/usage/UsageStatsDatabase;->isNewUpdate()Z

    move-result p1

    if-eqz p1, :cond_c9

    .line 219
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyNewUpdate()V

    :cond_c9
    return-void
.end method

.method public final loadActiveStats(J)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    .line 990
    :goto_2
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v2

    if-ge v1, v2, :cond_36

    .line 991
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v2, v1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 992
    iget-wide v3, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sget-object v5, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    aget-wide v5, v5, v1

    add-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-gez v3, :cond_1f

    .line 999
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aput-object v2, v3, v1

    goto :goto_33

    .line 1008
    :cond_1f
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    aput-object v3, v2, v1

    .line 1009
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v2, v2, v1

    iput-wide p1, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, p1

    .line 1010
    iput-wide v3, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    :goto_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1014
    :cond_36
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 1015
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 1018
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {p0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsReloaded()V

    return-void
.end method

.method public final notifyNewUpdate()V
    .registers 2

    .line 986
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    iget p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    invoke-interface {v0, p0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onNewUpdate(I)V

    return-void
.end method

.method public final notifyStatsChanged()V
    .registers 2

    .line 979
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    .line 980
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 981
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {p0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsUpdated()V

    :cond_c
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;J)I
    .registers 7

    .line 230
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 231
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 232
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 235
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPackageRemoved "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->onPackageRemoved(Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public final onTimeChanged(JJ)V
    .registers 13

    .line 298
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    .line 299
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 300
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    sub-long v1, p3, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UsageStatsDatabase;->onTimeChanged(J)V

    .line 301
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onTimeChanged_ diff="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    new-instance v7, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p3

    move-wide v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJ)V

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public persistActiveStats()V
    .registers 6

    .line 881
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-eqz v0, :cond_53

    .line 882
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Flushing usage stats to disk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    :try_start_1c
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UsageStatsDatabase;->obfuscateCurrentStats([Lcom/android/server/usage/IntervalStats;)V

    .line 885
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V

    const/4 v0, 0x0

    move v2, v0

    .line 886
    :goto_2a
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v4, v3

    if-ge v2, v4, :cond_39

    .line 887
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    aget-object v3, v3, v2

    invoke-virtual {v4, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 889
    :cond_39
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_3b} :catch_3c

    goto :goto_53

    :catch_3c
    move-exception v0

    .line 891
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Failed to persist active stats"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_53
    :goto_53
    return-void
.end method

.method public printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V
    .registers 6

    .line 1159
    iget-wide v0, p2, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-static {v0, v1, p3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p3, "time"

    invoke-virtual {p1, p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1160
    iget p0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {p0}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p3, "type"

    invoke-virtual {p1, p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1161
    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    const-string/jumbo p3, "package"

    invoke-virtual {p1, p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1162
    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz p0, :cond_29

    const-string p3, "class"

    .line 1163
    invoke-virtual {p1, p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1165
    :cond_29
    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p0, :cond_36

    .line 1166
    invoke-static {p0}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p0

    const-string p3, "config"

    invoke-virtual {p1, p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1168
    :cond_36
    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz p0, :cond_40

    const-string/jumbo p3, "shortcutId"

    .line 1169
    invoke-virtual {p1, p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1171
    :cond_40
    iget p0, p2, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 p3, 0xb

    if-ne p0, p3, :cond_63

    .line 1172
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getAppStandbyBucket()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo p3, "standbyBucket"

    invoke-virtual {p1, p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1173
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getStandbyReason()I

    move-result p0

    invoke-static {p0}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p3, "reason"

    invoke-virtual {p1, p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_7a

    :cond_63
    const/4 p3, 0x1

    if-eq p0, p3, :cond_6d

    const/4 p3, 0x2

    if-eq p0, p3, :cond_6d

    const/16 p3, 0x17

    if-ne p0, p3, :cond_7a

    .line 1177
    :cond_6d
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getInstanceId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p3, "instanceId"

    invoke-virtual {p1, p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1180
    :cond_7a
    :goto_7a
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_8a

    .line 1181
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p3, "taskRootPackage"

    invoke-virtual {p1, p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1184
    :cond_8a
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_9a

    .line 1185
    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p3, "taskRootClass"

    invoke-virtual {p1, p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1188
    :cond_9a
    iget-object p0, p2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz p0, :cond_a3

    const-string p3, "channelId"

    .line 1189
    invoke-virtual {p1, p3, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1191
    :cond_a3
    iget p0, p2, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    const-string p2, "flags"

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1192
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V
    .registers 10

    .line 1251
    iget v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_c

    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_40

    .line 1252
    :cond_c
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string p2, ": "

    .line 1253
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1254
    iget p2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    const-string/jumbo p2, "x for "

    .line 1255
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1256
    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    invoke-virtual {p0, v3, v4, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1257
    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    cmp-long p0, v3, v1

    if-eqz p0, :cond_3d

    const-string p0, " (now running, started at "

    .line 1258
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1259
    iget-wide p2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    invoke-static {p2, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    const-string p0, ")"

    .line 1260
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1262
    :cond_3d
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :cond_40
    return-void
.end method

.method public printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Lcom/android/server/usage/IntervalStats;",
            "ZZ",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    if-eqz v3, :cond_34

    .line 1269
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    iget-wide v8, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v10, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    const v12, 0x20015

    invoke-static/range {v7 .. v12}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "timeRange"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_4a

    .line 1272
    :cond_34
    iget-wide v5, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "beginTime"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1273
    iget-wide v5, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "endTime"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1275
    :goto_4a
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1276
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v5, "packages"

    .line 1277
    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1278
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1279
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 1280
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v8, 0x0

    :goto_60
    const-string/jumbo v9, "package"

    if-ge v8, v6, :cond_e0

    .line 1282
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageStats;

    .line 1283
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_7a

    iget-object v11, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7a

    goto :goto_dd

    .line 1286
    :cond_7a
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v11}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1287
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 1288
    invoke-virtual {v0, v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "totalTimeUsed"

    .line 1287
    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1289
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-static {v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string v11, "lastTimeUsed"

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1290
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 1291
    invoke-virtual {v0, v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "totalTimeVisible"

    .line 1290
    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1292
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 1293
    invoke-static {v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string v11, "lastTimeVisible"

    .line 1292
    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1294
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 1295
    invoke-static {v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string v11, "lastTimeComponentUsed"

    .line 1294
    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1296
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 1297
    invoke-virtual {v0, v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v11, "totalTimeFS"

    .line 1296
    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1298
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 1299
    invoke-static {v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string v11, "lastTimeFS"

    .line 1298
    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1300
    iget v9, v10, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "appLaunchCount"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1301
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :goto_dd
    add-int/lit8 v8, v8, 0x1

    goto :goto_60

    .line 1303
    :cond_e0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1305
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string v6, "ChooserCounts"

    .line 1306
    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1307
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1308
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_190

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    .line 1309
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_111

    iget-object v10, v8, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_111

    goto :goto_f6

    .line 1312
    :cond_111
    iget-object v10, v8, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1313
    iget-object v10, v8, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v10, :cond_187

    .line 1314
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_11f
    if-ge v11, v10, :cond_187

    .line 1316
    iget-object v12, v8, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1317
    iget-object v13, v8, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    .line 1318
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_136
    if-ge v15, v14, :cond_180

    .line 1320
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;

    .line 1321
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v17, v5

    if-eqz v16, :cond_177

    .line 1323
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v8

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1324
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1323
    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1325
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_179

    :cond_177
    move-object/from16 v18, v8

    :goto_179
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v17

    move-object/from16 v8, v18

    goto :goto_136

    :cond_180
    move-object/from16 v17, v5

    move-object/from16 v18, v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_11f

    :cond_187
    move-object/from16 v17, v5

    .line 1330
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    move-object/from16 v5, v17

    goto/16 :goto_f6

    .line 1332
    :cond_190
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1334
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_20f

    const-string v5, "configurations"

    .line 1335
    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1336
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1337
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 1338
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_1a8
    if-ge v7, v6, :cond_1e3

    .line 1340
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/ConfigurationStats;

    .line 1341
    iget-object v9, v8, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v9}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "config"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1343
    iget-wide v9, v8, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-virtual {v0, v9, v10, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "totalTime"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1344
    iget-wide v9, v8, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    invoke-static {v9, v10, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string v10, "lastTime"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1345
    iget v8, v8, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "count"

    invoke-virtual {v1, v9, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1346
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a8

    .line 1348
    :cond_1e3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v5, "event aggregations"

    .line 1349
    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1351
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string/jumbo v6, "screen-interactive"

    invoke-virtual {v0, v1, v6, v5, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1353
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string/jumbo v6, "screen-non-interactive"

    invoke-virtual {v0, v1, v6, v5, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1355
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string v6, "keyguard-shown"

    invoke-virtual {v0, v1, v6, v5, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1357
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    const-string v6, "keyguard-hidden"

    invoke-virtual {v0, v1, v6, v5, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1359
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_20f
    if-nez p4, :cond_242

    const-string v5, "events"

    .line 1365
    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1366
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1367
    iget-object v2, v2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    if-eqz v2, :cond_222

    .line 1368
    invoke-virtual {v2}, Landroid/app/usage/EventList;->size()I

    move-result v5

    goto :goto_223

    :cond_222
    const/4 v5, 0x0

    :goto_223
    const/4 v7, 0x0

    :goto_224
    if-ge v7, v5, :cond_23f

    .line 1370
    invoke-virtual {v2, v7}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v6

    .line 1371
    invoke-static/range {p5 .. p5}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v8

    if-nez v8, :cond_239

    iget-object v8, v6, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-interface {v4, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_239

    goto :goto_23c

    .line 1374
    :cond_239
    invoke-virtual {v0, v1, v6, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    :goto_23c
    add-int/lit8 v7, v7, 0x1

    goto :goto_224

    .line 1376
    :cond_23f
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1378
    :cond_242
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/IndentingPrintWriter;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    .line 1198
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    invoke-direct {v0, v7, v8}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    const/4 v1, -0x1

    .line 1199
    invoke-virtual {v0, v1}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 1201
    invoke-virtual {v0}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v9

    .line 1203
    new-instance v11, Lcom/android/server/usage/UserUsageStatsService$6;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, v9

    move-wide v4, v7

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService$6;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJLjava/util/List;)V

    const/4 v1, 0x0

    move-object v0, p0

    move-object v6, v11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object p3

    const-string v0, "Last 24 hour events ("

    .line 1225
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_4f

    .line 1227
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\""

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    const v5, 0x20015

    move-wide v1, v9

    move-wide v3, v7

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "timeRange"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_61

    .line 1230
    :cond_4f
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "beginTime"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1231
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "endTime"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    :goto_61
    const-string v0, ")"

    .line 1233
    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_82

    .line 1235
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1236
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_6f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    .line 1237
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    goto :goto_6f

    .line 1239
    :cond_7f
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1243
    :cond_82
    iget-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDumpInitLastTimeSaved:J

    invoke-static {v0, v1, p2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object p3

    const-string v0, "mDumpInitLastTimeSaved"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1244
    iget-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDumpInitEndTime:J

    invoke-static {v0, v1, p2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object p0

    const-string p2, "mDumpInitEndTime"

    invoke-virtual {p1, p2, p0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1245
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public pruneUninstalledPackagesData()Z
    .registers 1

    .line 294
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->pruneUninstalledPackagesData()Z

    move-result p0

    return p0
.end method

.method public queryConfigurationStats(IJJ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/ConfigurationStats;",
            ">;"
        }
    .end annotation

    .line 617
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 620
    :cond_e
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryEarliestAppEvents(JJI)Landroid/app/usage/UsageEvents;
    .registers 21

    .line 700
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return-object v1

    .line 703
    :cond_10
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 704
    new-instance v7, Landroid/util/ArraySet;

    invoke-direct {v7}, Landroid/util/ArraySet;-><init>()V

    const/4 v10, 0x0

    .line 705
    new-instance v14, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;

    move-object v2, v14

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-object v8, v0

    move/from16 v9, p5

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;-><init>(JJLandroid/util/ArraySet;Landroid/util/ArraySet;I)V

    move-object v8, p0

    move v9, v10

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_50

    .line 734
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3b

    goto :goto_50

    .line 741
    :cond_3b
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 742
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 743
    new-instance v1, Landroid/app/usage/UsageEvents;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v0, v3}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    :cond_50
    :goto_50
    return-object v1
.end method

.method public queryEarliestEventsForPackage(JJLjava/lang/String;I)Landroid/app/usage/UsageEvents;
    .registers 27

    move-object/from16 v0, p0

    move-wide/from16 v7, p1

    move-wide/from16 v9, p3

    move-object/from16 v11, p5

    move/from16 v12, p6

    .line 797
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v13

    move-wide v1, v13

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    .line 798
    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v1

    const/4 v15, 0x0

    if-nez v1, :cond_1b

    return-object v15

    .line 802
    :cond_1b
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v12, v11}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;

    const/4 v6, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_77

    .line 808
    iget-wide v2, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->searchBeginTime:J

    cmp-long v2, v2, v7

    if-gtz v2, :cond_74

    iget-wide v2, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    cmp-long v2, v7, v2

    if-gtz v2, :cond_74

    .line 809
    iget-object v2, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    if-nez v2, :cond_39

    move v2, v4

    goto :goto_3d

    :cond_39
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_3d
    if-eqz v2, :cond_4e

    .line 810
    iget-object v3, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    sub-int/2addr v2, v6

    .line 811
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v2

    if-eq v2, v12, :cond_5c

    :cond_4e
    iget-wide v2, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    cmp-long v5, v2, v9

    if-gez v5, :cond_5c

    .line 816
    invoke-static {v13, v14, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    move-object v8, v1

    move-wide/from16 v16, v2

    goto :goto_86

    .line 820
    :cond_5c
    iget-wide v2, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    cmp-long v0, v2, v9

    if-gtz v0, :cond_73

    .line 821
    iget-object v0, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    if-nez v0, :cond_67

    return-object v15

    .line 824
    :cond_67
    new-instance v0, Landroid/app/usage/UsageEvents;

    iget-object v1, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    new-array v2, v6, [Ljava/lang/String;

    aput-object v11, v2, v4

    invoke-direct {v0, v1, v2, v4}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v0

    :cond_73
    return-object v15

    .line 833
    :cond_74
    iput-wide v7, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->searchBeginTime:J

    goto :goto_83

    .line 836
    :cond_77
    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;

    invoke-direct {v1, v15}, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;-><init>(Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents-IA;)V

    .line 837
    iput-wide v7, v1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->searchBeginTime:J

    .line 838
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v12, v11, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)V

    :goto_83
    move-wide/from16 v16, v7

    move-object v8, v1

    :goto_86
    const/16 v18, 0x0

    .line 842
    new-instance v19, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;

    move-object/from16 v1, v19

    move-wide/from16 v2, v16

    move v7, v4

    move-wide/from16 v4, p3

    move v15, v6

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;-><init>(JJLjava/lang/String;I)V

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v6, v19

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_ca

    .line 867
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_ac

    goto :goto_ca

    .line 875
    :cond_ac
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v15

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v1

    iput-wide v1, v8, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    .line 876
    iput-object v0, v8, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    .line 877
    new-instance v1, Landroid/app/usage/UsageEvents;

    new-array v2, v15, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v11, v2, v3

    invoke-direct {v1, v0, v2, v3}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v1

    .line 870
    :cond_ca
    :goto_ca
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, v8, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    const/4 v0, 0x0

    .line 871
    iput-object v0, v8, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    return-object v0
.end method

.method public queryEventStats(IJJ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/EventStats;",
            ">;"
        }
    .end annotation

    .line 624
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 627
    :cond_e
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryEvents(JJI)Landroid/app/usage/UsageEvents;
    .registers 18

    .line 631
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    .line 634
    :cond_e
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    const/4 v10, 0x0

    .line 635
    new-instance v11, Lcom/android/server/usage/UserUsageStatsService$4;

    move-object v2, v11

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move-object v9, v0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJILandroid/util/ArraySet;)V

    move-object v2, p0

    move v3, v10

    move-object v8, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_45

    .line 684
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_30

    goto :goto_45

    .line 688
    :cond_30
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 689
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 690
    new-instance v1, Landroid/app/usage/UsageEvents;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    :cond_45
    :goto_45
    return-object v1
.end method

.method public queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .registers 19

    .line 749
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_e

    return-object v1

    .line 752
    :cond_e
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object/from16 v7, p5

    .line 753
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    .line 754
    new-instance v11, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;

    move-object v2, v11

    move-wide v3, p1

    move-wide v5, p3

    move-object v8, v0

    move/from16 v9, p6

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda3;-><init>(JJLjava/lang/String;Landroid/util/ArraySet;Z)V

    move-object v2, p0

    move v3, v10

    move-wide v4, p1

    move-wide v6, p3

    move-object v8, v11

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_4c

    .line 781
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_36

    goto :goto_4c

    .line 785
    :cond_36
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 786
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 787
    new-instance v1, Landroid/app/usage/UsageEvents;

    move/from16 v3, p6

    invoke-direct {v1, v2, v0, v3}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    :cond_4c
    :goto_4c
    return-object v1
.end method

.method public final queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(IJJ",
            "Lcom/android/server/usage/UsageStatsDatabase$StatCombiner<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x4

    if-ne p1, v0, :cond_c

    .line 545
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/android/server/usage/UsageStatsDatabase;->findBestFitBucket(JJ)I

    move-result p1

    if-gez p1, :cond_c

    const/4 p1, 0x0

    :cond_c
    move v1, p1

    const/4 p1, 0x0

    if-ltz v1, :cond_49

    .line 553
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v0

    if-lt v1, v2, :cond_16

    goto :goto_49

    .line 560
    :cond_16
    aget-object v7, v0, v1

    .line 567
    iget-wide v2, v7, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v0, p2, v2

    if-ltz v0, :cond_1f

    return-object p1

    .line 579
    :cond_1f
    iget-wide v2, v7, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v2, v3, p4, p5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    .line 582
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide v2, p2

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/UsageStatsDatabase;->queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object p1

    .line 591
    iget-wide v0, v7, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long p2, p2, v0

    if-gez p2, :cond_49

    iget-wide p2, v7, Lcom/android/server/usage/IntervalStats;->beginTime:J

    cmp-long p2, p4, p2

    if-lez p2, :cond_49

    if-nez p1, :cond_40

    .line 597
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 599
    :cond_40
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0, v7}, Lcom/android/server/usage/UsageStatsDatabase;->filterStats(Lcom/android/server/usage/IntervalStats;)V

    const/4 p0, 0x1

    .line 600
    invoke-interface {p6, v7, p0, p1}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z

    :cond_49
    :goto_49
    return-object p1
.end method

.method public queryUsageStats(IJJ)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    .line 610
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v0

    if-nez v0, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 613
    :cond_e
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final readPackageMappingsLocked(Ljava/util/HashMap;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->readMappingsLocked()V

    .line 247
    iget v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    if-eqz v0, :cond_e

    if-eqz p2, :cond_e

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UserUsageStatsService;->updatePackageMappingsLocked(Ljava/util/HashMap;)Z

    :cond_e
    return-void
.end method

.method public removeForegroundEvents(Ljava/lang/String;J)V
    .registers 8

    .line 1491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeForegroundEvents "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    .line 1493
    iget-object v0, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    move-result v0

    .line 1494
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    add-int/lit8 v0, v0, -0x1

    :goto_27
    if-ltz v0, :cond_52

    .line 1496
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, v0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v1

    .line 1497
    iget-wide v2, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v2, v2, p2

    if-gez v2, :cond_36

    goto :goto_52

    .line 1498
    :cond_36
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    iget v1, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_4a

    const/16 v2, 0x14

    if-ne v1, v2, :cond_4f

    .line 1501
    :cond_4a
    iget-object v1, p0, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {v1, v0}, Landroid/app/usage/EventList;->remove(I)Landroid/app/usage/UsageEvents$Event;

    :cond_4f
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    :cond_52
    :goto_52
    return-void
.end method

.method public reportEvent(Landroid/app/usage/UsageEvents$Event;)V
    .registers 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 361
    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v3, 0x1f

    const/4 v4, 0x7

    if-eq v2, v4, :cond_13

    if-eq v2, v3, :cond_13

    .line 363
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/UserUsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 374
    :cond_13
    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v4, 0x13

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-ne v2, v4, :cond_b9

    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 375
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_b9

    .line 378
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-nez v2, :cond_3b

    .line 380
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 381
    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->track:Ljava/util/HashMap;

    iget-object v7, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v4, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_3b
    :goto_3b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_64

    .line 386
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    sget-object v4, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v11, 0x3

    invoke-virtual {v4, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    sub-long/2addr v9, v11

    cmp-long v4, v7, v9

    if-gtz v4, :cond_64

    .line 387
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    goto :goto_3b

    .line 392
    :cond_64
    iget-wide v7, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 395
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v7, 0x2710

    if-lt v4, v7, :cond_b9

    .line 396
    iget-object v1, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/usage/UserUsageStatsService;->removeForegroundEvents(Ljava/lang/String;J)V

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "remove after "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/usage/UserUsageStatsService;->sLoggingFormat:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    .line 398
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct {v4, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UsageStatsService"

    .line 397
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 400
    iput-boolean v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 401
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    return-void

    .line 407
    :cond_b9
    iget-wide v7, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v9

    cmp-long v2, v7, v9

    if-ltz v2, :cond_ca

    .line 409
    iget-wide v7, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v0, v7, v8}, Lcom/android/server/usage/UserUsageStatsService;->rolloverStats(J)V

    .line 412
    :cond_ca
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v2, v2, v6

    .line 414
    iget-object v4, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 415
    iget v7, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_df

    iget-object v7, v2, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v7, :cond_df

    .line 418
    invoke-static {v7, v4}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v7

    iput-object v7, v1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 422
    :cond_df
    iget v7, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v9, 0x6

    if-eq v7, v9, :cond_f5

    const/16 v9, 0x18

    if-eq v7, v9, :cond_f5

    const/16 v9, 0x19

    if-eq v7, v9, :cond_f5

    const/16 v9, 0x1a

    if-eq v7, v9, :cond_f5

    if-eq v7, v3, :cond_f5

    .line 433
    invoke-virtual {v2, v1}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 437
    :cond_f5
    iget v2, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-ne v2, v5, :cond_106

    .line 438
    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_10f

    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10f

    goto :goto_110

    :cond_106
    const/4 v3, 0x2

    if-ne v2, v3, :cond_10f

    .line 442
    iget-object v2, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v2, :cond_10f

    .line 443
    iput-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    :cond_10f
    move v5, v6

    .line 447
    :goto_110
    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v3, v2

    move v7, v6

    :goto_114
    if-ge v7, v3, :cond_184

    aget-object v15, v2, v7

    .line 448
    iget v9, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v9, v8, :cond_17a

    const/16 v10, 0x9

    if-eq v9, v10, :cond_15c

    packed-switch v9, :pswitch_data_188

    .line 474
    iget-object v10, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v11

    iget-wide v12, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v14, v1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget v9, v1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    move/from16 v16, v9

    move-object v9, v15

    move-object v6, v15

    move/from16 v15, v16

    invoke-virtual/range {v9 .. v15}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    if-eqz v5, :cond_180

    .line 477
    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lcom/android/server/usage/IntervalStats;->incrementAppLaunchCount(Ljava/lang/String;)V

    goto :goto_180

    :pswitch_140
    move-object v6, v15

    .line 471
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateKeyguardHidden(J)V

    goto :goto_180

    :pswitch_147
    move-object v6, v15

    .line 468
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateKeyguardShown(J)V

    goto :goto_180

    :pswitch_14e
    move-object v6, v15

    .line 465
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateScreenNonInteractive(J)V

    goto :goto_180

    :pswitch_155
    move-object v6, v15

    .line 462
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateScreenInteractive(J)V

    goto :goto_180

    :cond_15c
    move-object v6, v15

    .line 453
    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v10, v1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iget-object v11, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v9, v10, v11}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v9, v1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    if-eqz v9, :cond_180

    .line 456
    array-length v10, v9

    const/4 v11, 0x0

    :goto_16c
    if-ge v11, v10, :cond_180

    aget-object v12, v9, v11

    .line 457
    iget-object v13, v1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v14, v1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v6, v13, v12, v14}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_16c

    :cond_17a
    move-object v6, v15

    .line 450
    iget-wide v9, v1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v6, v4, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    :cond_180
    :goto_180
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x0

    goto :goto_114

    .line 483
    :cond_184
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    return-void

    :pswitch_data_188
    .packed-switch 0xf
        :pswitch_155
        :pswitch_14e
        :pswitch_147
        :pswitch_140
    .end packed-switch
.end method

.method public reportShutdownEvent(Landroid/app/usage/UsageEvents$Event;)V
    .registers 4

    .line 346
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v0, 0x0

    aget-object p0, p0, v0

    if-eqz p0, :cond_e

    .line 347
    iget-wide v0, p0, Lcom/android/server/usage/IntervalStats;->endTime:J

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    .line 348
    invoke-virtual {p0, p1}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    :cond_e
    return-void
.end method

.method public final rolloverStats(J)V
    .registers 31

    move-object/from16 v0, p0

    .line 897
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 898
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Rolling over usage stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UsageStatsService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 903
    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 905
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 906
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 908
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 910
    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v10, v9

    move v11, v5

    :goto_38
    if-ge v11, v10, :cond_fe

    aget-object v15, v9, v11

    .line 911
    iget-object v12, v15, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v14

    move v13, v5

    :goto_43
    const-wide/16 v19, 0x1

    if-ge v13, v14, :cond_da

    .line 913
    iget-object v12, v15, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/usage/UsageStats;

    .line 914
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-gtz v5, :cond_69

    iget-object v5, v12, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    .line 915
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_60

    goto :goto_69

    :cond_60
    move-object/from16 v22, v9

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    goto/16 :goto_d0

    .line 916
    :cond_69
    :goto_69
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-lez v5, :cond_9d

    .line 917
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-object/from16 v22, v9

    iget-object v9, v12, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    iget-object v5, v12, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 920
    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v17

    sub-long v17, v17, v19

    const/4 v9, 0x3

    const/16 v23, 0x0

    move-object/from16 v24, v12

    move-object v12, v15

    move/from16 v25, v13

    move-object v13, v5

    move v5, v14

    const/4 v14, 0x0

    move-object/from16 v26, v15

    move-wide/from16 v15, v17

    move/from16 v17, v9

    move/from16 v18, v23

    .line 919
    invoke-virtual/range {v12 .. v18}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    move-object/from16 v9, v24

    goto :goto_a5

    :cond_9d
    move-object/from16 v22, v9

    move/from16 v25, v13

    move v5, v14

    move-object/from16 v26, v15

    move-object v9, v12

    .line 923
    :goto_a5
    iget-object v12, v9, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v12}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_c8

    .line 924
    iget-object v12, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v13, v9, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v8, v12, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 926
    iget-object v13, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    const/4 v14, 0x0

    iget-object v12, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 927
    invoke-virtual {v12}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v15

    sub-long v15, v15, v19

    const/16 v17, 0x16

    const/16 v18, 0x0

    move-object/from16 v12, v26

    .line 926
    invoke-virtual/range {v12 .. v18}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 930
    :cond_c8
    iget-object v9, v9, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    :goto_d0
    add-int/lit8 v13, v25, 0x1

    move v14, v5

    move-object/from16 v9, v22

    move-object/from16 v15, v26

    const/4 v5, 0x0

    goto/16 :goto_43

    :cond_da
    move-object/from16 v22, v9

    move-object/from16 v26, v15

    const/4 v5, 0x0

    .line 935
    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 936
    invoke-virtual {v9}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long v12, v12, v19

    move-object/from16 v9, v26

    .line 935
    invoke-virtual {v9, v5, v12, v13}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 937
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v5}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v12

    sub-long v12, v12, v19

    invoke-virtual {v9, v12, v13}, Lcom/android/server/usage/IntervalStats;->commitTime(J)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v9, v22

    const/4 v5, 0x0

    goto/16 :goto_38

    .line 940
    :cond_fe
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 941
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v9, p1

    invoke-virtual {v5, v9, v10}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 942
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 944
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_110
    if-ge v9, v5, :cond_1d4

    .line 946
    invoke-virtual {v6, v9}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 947
    iget-object v14, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/16 v18, 0x0

    aget-object v11, v14, v18

    iget-wide v12, v11, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 948
    array-length v15, v14

    move/from16 v11, v18

    :goto_123
    if-ge v11, v15, :cond_1cc

    move-wide/from16 v16, v12

    aget-object v13, v14, v11

    .line 949
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_173

    .line 951
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/util/SparseIntArray;

    move/from16 p1, v5

    .line 952
    invoke-virtual {v12}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    move-object/from16 v19, v6

    move/from16 v6, v18

    :goto_13f
    if-ge v6, v5, :cond_177

    const/16 v20, 0x0

    .line 955
    invoke-virtual {v12, v6}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v21

    invoke-virtual {v12, v6}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v22

    move/from16 v23, v11

    move-object v11, v13

    move-object/from16 v26, v12

    move-wide/from16 v24, v16

    move-object v12, v10

    move-object/from16 p2, v13

    move-object/from16 v13, v20

    move-object/from16 v20, v14

    move/from16 v27, v15

    move-wide/from16 v14, v24

    move/from16 v16, v21

    move/from16 v17, v22

    .line 954
    invoke-virtual/range {v11 .. v17}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v13, p2

    move-object/from16 v14, v20

    move/from16 v11, v23

    move-wide/from16 v16, v24

    move-object/from16 v12, v26

    move/from16 v15, v27

    goto :goto_13f

    :cond_173
    move/from16 p1, v5

    move-object/from16 v19, v6

    :cond_177
    move/from16 v23, v11

    move-object/from16 p2, v13

    move-object/from16 v20, v14

    move/from16 v27, v15

    move-wide/from16 v24, v16

    .line 958
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1b5

    .line 960
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/ArrayMap;

    .line 961
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    move/from16 v14, v18

    :goto_193
    if-ge v14, v6, :cond_1b5

    .line 963
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Ljava/lang/String;

    .line 964
    invoke-virtual {v5, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v16

    const/16 v17, 0x0

    move-object/from16 v11, p2

    move-object v12, v10

    move/from16 v21, v14

    move-wide/from16 v14, v24

    .line 963
    invoke-virtual/range {v11 .. v17}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    add-int/lit8 v14, v21, 0x1

    goto :goto_193

    :cond_1b5
    move-object/from16 v11, p2

    move-wide/from16 v5, v24

    .line 967
    invoke-virtual {v11, v3, v5, v6}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 968
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    add-int/lit8 v11, v23, 0x1

    move-wide v12, v5

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    move/from16 v15, v27

    move/from16 v5, p1

    goto/16 :goto_123

    :cond_1cc
    move/from16 p1, v5

    move-object/from16 v19, v6

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_110

    .line 971
    :cond_1d4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 973
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Rolling over usage stats complete. Took "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " milliseconds"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updatePackageMappingsLocked(Ljava/util/HashMap;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 263
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 267
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 270
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_1c
    if-ltz v4, :cond_36

    .line 271
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v5, v5, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 272
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_33

    .line 273
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_33
    add-int/lit8 v4, v4, -0x1

    goto :goto_1c

    .line 276
    :cond_36
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3d

    return v1

    .line 281
    :cond_3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_42
    if-ltz p1, :cond_54

    .line 282
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/usage/PackagesTokenData;->removePackage(Ljava/lang/String;J)I

    add-int/lit8 p1, p1, -0x1

    goto :goto_42

    .line 285
    :cond_54
    :try_start_54
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_59} :catch_5a

    return v1

    :catch_5a
    const-string p0, "UsageStatsService"

    const-string p1, "Unable to write updated package mappings file on service initialization."

    .line 287
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final updateRolloverDeadline()V
    .registers 5

    .line 1022
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 1024
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 1025
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Rollover scheduled @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 1026
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 1027
    invoke-virtual {p0}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "UsageStatsService"

    .line 1025
    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public userStopped()V
    .registers 1

    .line 225
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 226
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->clear()V

    return-void
.end method
