.class public Lcom/android/server/am/mars/filter/filter/AODClockFilter;
.super Ljava/lang/Object;
.source "AODClockFilter.java"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/mars/filter/filter/AODClockFilter$AODClockFilterHolder;
    }
.end annotation


# static fields
.field public static final CALENDAR_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.calendar"

.field public static final TYPE_CALENDAR_MONTH:I = 0xc351

.field public static final URI_AOD_CLOCK_TYPE:Ljava/lang/String; = "content://com.samsung.android.app.aodservice.provider/settings/aod_clock_type"

.field public static final URI_AOD_WIDGET:Ljava/lang/String; = "content://settings/system/add_info_today_schedule"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public isAodTypeCalendar:Z

.field public isUsingAODCalendarWidget:Z

.field public mAODCalendarWidgetObserver:Landroid/database/ContentObserver;

.field public mAODClockTypeObserver:Landroid/database/ContentObserver;

.field public mContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$mgetAODCalaendarWidget(Lcom/android/server/am/mars/filter/filter/AODClockFilter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->getAODCalaendarWidget()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetAODClockType(Lcom/android/server/am/mars/filter/filter/AODClockFilter;)V
    .registers 1

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->getAODClockType()V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MARs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/AODClockFilter-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/am/mars/filter/filter/AODClockFilter;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/mars/filter/filter/AODClockFilter;
    .registers 1

    .line 35
    invoke-static {}, Lcom/android/server/am/mars/filter/filter/AODClockFilter$AODClockFilterHolder;->-$$Nest$sfgetINSTANCE()Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public deInit()V
    .registers 1

    .line 47
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->unregisterContentObserver()V

    return-void
.end method

.method public filter(Ljava/lang/String;III)I
    .registers 5

    .line 51
    iget-boolean p2, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->isUsingAODCalendarWidget:Z

    const/4 p3, 0x0

    if-nez p2, :cond_c

    iget-boolean p0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->isAodTypeCalendar:Z

    if-eqz p0, :cond_a

    goto :goto_c

    :cond_a
    move p0, p3

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    if-eqz p0, :cond_1a

    const-string p0, "com.samsung.android.calendar"

    .line 52
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/16 p0, 0x1a

    return p0

    :cond_1a
    return p3
.end method

.method public final getAODCalaendarWidget()V
    .registers 6

    const/4 v0, 0x0

    .line 120
    :try_start_1
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "add_info_today_schedule"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d} :catch_e

    goto :goto_2d

    :catch_e
    move-exception v1

    .line 122
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "calendarWidget "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v0

    :goto_2d
    const/4 v2, 0x1

    if-ne v1, v2, :cond_31

    move v0, v2

    .line 125
    :cond_31
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->isUsingAODCalendarWidget:Z

    return-void
.end method

.method public final getAODClockType()V
    .registers 10

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 105
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v2, "content://com.samsung.android.app.aodservice.provider/settings/aod_clock_type"

    .line 106
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_16} :catch_36

    if-eqz v2, :cond_30

    .line 107
    :try_start_18
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_30

    .line 108
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 109
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_26

    goto :goto_30

    :catchall_26
    move-exception v3

    .line 105
    :try_start_27
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2b

    goto :goto_2f

    :catchall_2b
    move-exception v2

    :try_start_2c
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2f
    throw v3

    :cond_30
    :goto_30
    if-eqz v2, :cond_3a

    .line 111
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_35} :catch_36

    goto :goto_3a

    :catch_36
    move-exception v2

    .line 112
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3a
    :goto_3a
    const v2, 0xc351

    if-ne v1, v2, :cond_40

    const/4 v0, 0x1

    .line 114
    :cond_40
    iput-boolean v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->isAodTypeCalendar:Z

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    .line 41
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->registerContentObserver()V

    .line 42
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->getAODClockType()V

    return-void
.end method

.method public final registerContentObserver()V
    .registers 5

    .line 58
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4c

    .line 59
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_14

    .line 60
    new-instance v0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/AODClockFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Landroid/database/ContentObserver;

    .line 67
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_24

    .line 68
    new-instance v0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/mars/filter/filter/AODClockFilter$2;-><init>(Lcom/android/server/am/mars/filter/filter/AODClockFilter;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Landroid/database/ContentObserver;

    .line 76
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://com.samsung.android.app.aodservice.provider/settings/aod_clock_type"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 77
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content://settings/system/add_info_today_schedule"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4c
    :goto_4c
    return-void
.end method

.method public final unregisterContentObserver()V
    .registers 4

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_2d

    .line 87
    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    if-eqz v1, :cond_14

    .line 88
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 89
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Landroid/database/ContentObserver;

    .line 92
    :cond_14
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_2d

    .line 93
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 94
    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Landroid/database/ContentObserver;
    :try_end_25
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2d

    .line 98
    :catch_26
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->TAG:Ljava/lang/String;

    const-string v0, "IllegalArgumentException occurred in unregisterContentObserver()"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    :goto_2d
    return-void
.end method
