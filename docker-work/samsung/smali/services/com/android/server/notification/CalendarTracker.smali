.class public Lcom/android/server/notification/CalendarTracker;
.super Ljava/lang/Object;
.source "CalendarTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/notification/CalendarTracker$Callback;,
        Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    }
.end annotation


# static fields
.field public static final ATTENDEE_PROJECTION:[Ljava/lang/String;

.field public static final ATTENDEE_SELECTION:Ljava/lang/String; = "event_id = ? AND attendeeEmail = ?"

.field public static final DEBUG:Z

.field public static final DEBUG_ATTENDEES:Z = false

.field public static final EVENT_CHECK_LOOKAHEAD:I = 0x5265c00

.field public static final INSTANCE_ORDER_BY:Ljava/lang/String; = "begin ASC"

.field public static final INSTANCE_PROJECTION:[Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "ConditionProviders.CT"


# instance fields
.field public mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

.field public final mObserver:Landroid/database/ContentObserver;

.field public mRegistered:Z

.field public final mSystemContext:Landroid/content/Context;

.field public final mUserContext:Landroid/content/Context;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmCallback(Lcom/android/server/notification/CalendarTracker;)Lcom/android/server/notification/CalendarTracker$Callback;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUserContext(Lcom/android/server/notification/CalendarTracker;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .registers 1

    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    return v0
.end method

.method public static constructor <clinit>()V
    .registers 10

    const-string v0, "ConditionProviders"

    const/4 v1, 0x3

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    const-string v1, "begin"

    const-string v2, "end"

    const-string/jumbo v3, "title"

    const-string/jumbo v4, "visible"

    const-string v5, "event_id"

    const-string v6, "calendar_displayName"

    const-string/jumbo v7, "ownerAccount"

    const-string v8, "calendar_id"

    const-string v9, "availability"

    .line 46
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const-string v0, "event_id"

    const-string v1, "attendeeEmail"

    const-string v2, "attendeeStatus"

    .line 60
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .registers 5

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 276
    new-instance v0, Lcom/android/server/notification/CalendarTracker$1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/notification/CalendarTracker$1;-><init>(Lcom/android/server/notification/CalendarTracker;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    .line 76
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    return-void
.end method

.method public static attendeeStatusToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_2c

    const/4 v0, 0x1

    if-eq p0, v0, :cond_29

    const/4 v0, 0x2

    if-eq p0, v0, :cond_26

    const/4 v0, 0x3

    if-eq p0, v0, :cond_23

    const/4 v0, 0x4

    if-eq p0, v0, :cond_20

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ATTENDEE_STATUS_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_20
    const-string p0, "ATTENDEE_STATUS_TENTATIVE"

    return-object p0

    :cond_23
    const-string p0, "ATTENDEE_STATUS_INVITED"

    return-object p0

    :cond_26
    const-string p0, "ATTENDEE_STATUS_DECLINED"

    return-object p0

    :cond_29
    const-string p0, "ATTENDEE_STATUS_ACCEPTED"

    return-object p0

    :cond_2c
    const-string p0, "ATTENDEE_STATUS_NONE"

    return-object p0
.end method

.method public static availabilityToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_20

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1d

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1a

    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AVAILABILITY_UNKNOWN_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1a
    const-string p0, "AVAILABILITY_TENTATIVE"

    return-object p0

    :cond_1d
    const-string p0, "AVAILABILITY_FREE"

    return-object p0

    :cond_20
    const-string p0, "AVAILABILITY_BUSY"

    return-object p0
.end method

.method public static meetsReply(II)Z
    .registers 5

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_15

    if-eq p0, v2, :cond_e

    if-eq p0, v0, :cond_a

    return v1

    :cond_a
    if-ne p1, v2, :cond_d

    move v1, v2

    :cond_d
    return v1

    :cond_e
    if-eq p1, v2, :cond_13

    const/4 p0, 0x4

    if-ne p1, p0, :cond_14

    :cond_13
    move v1, v2

    :cond_14
    return v1

    :cond_15
    if-eq p1, v0, :cond_18

    move v1, v2

    :cond_18
    return v1
.end method


# virtual methods
.method public checkEvent(Landroid/service/notification/ZenModeConfig$EventInfo;J)Lcom/android/server/notification/CalendarTracker$CheckEventResult;
    .registers 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    const-string v4, "ConditionProviders.CT"

    .line 120
    sget-object v5, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v5

    .line 121
    invoke-static {v5, v2, v3}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    const-wide/32 v6, 0x5265c00

    add-long/2addr v6, v2

    .line 122
    invoke-static {v5, v6, v7}, Landroid/content/ContentUris;->appendId(Landroid/net/Uri$Builder;J)Landroid/net/Uri$Builder;

    .line 123
    invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v9

    .line 125
    new-instance v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;

    invoke-direct {v5}, Lcom/android/server/notification/CalendarTracker$CheckEventResult;-><init>()V

    .line 126
    iput-wide v6, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    const/4 v6, 0x0

    .line 128
    :try_start_24
    iget-object v7, v0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    sget-object v10, Lcom/android/server/notification/CalendarTracker;->INSTANCE_PROJECTION:[Ljava/lang/String;

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, "begin ASC"

    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_34} :catch_192
    .catchall {:try_start_24 .. :try_end_34} :catchall_190

    .line 130
    :try_start_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/notification/CalendarTracker;->getCalendarsWithAccess()Landroid/util/ArraySet;

    move-result-object v7

    :goto_38
    if-eqz v6, :cond_180

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_180

    const/4 v8, 0x0

    .line 132
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    const/4 v11, 0x1

    .line 133
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/4 v14, 0x2

    .line 134
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    const/4 v14, 0x3

    .line 135
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    if-ne v8, v11, :cond_58

    move v8, v11

    goto :goto_59

    :cond_58
    const/4 v8, 0x0

    :goto_59
    const/4 v14, 0x4

    .line 136
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v11
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_5e} :catch_18c
    .catchall {:try_start_34 .. :try_end_5e} :catchall_188

    const/4 v14, 0x5

    move-object/from16 v19, v5

    .line 137
    :try_start_61
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v14, 0x6

    .line 138
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v14, 0x7

    .line 139
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v20

    const/16 v14, 0x8

    .line 140
    invoke-interface {v6, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 141
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v7, v14}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v14

    .line 142
    sget-boolean v22, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v22, :cond_e4

    move-object/from16 v23, v7

    const-string/jumbo v7, "title=%s time=%s-%s vis=%s availability=%s eventId=%s name=%s owner=%s calId=%s canAccessCal=%s"
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_86} :catch_17a
    .catchall {:try_start_61 .. :try_end_86} :catchall_188

    move-object/from16 v24, v6

    const/16 v6, 0xa

    :try_start_8a
    new-array v6, v6, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v15, v6, v17

    .line 143
    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v9, v10}, Ljava/util/Date;-><init>(J)V

    const/16 v18, 0x1

    aput-object v15, v6, v18

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15, v12, v13}, Ljava/util/Date;-><init>(J)V

    const/16 v16, 0x2

    aput-object v15, v6, v16

    .line 145
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v6, v16

    .line 146
    invoke-static {v1}, Lcom/android/server/notification/CalendarTracker;->availabilityToString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x4

    aput-object v15, v6, v16

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x5

    aput-object v15, v6, v16

    const/4 v15, 0x6

    aput-object v5, v6, v15

    const/4 v15, 0x7

    aput-object v0, v6, v15

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    const/16 v16, 0x8

    aput-object v15, v6, v16

    const/16 v15, 0x9

    .line 147
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v6, v15

    .line 143
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ea

    :catchall_d8
    move-exception v0

    move-object/from16 v6, v24

    goto/16 :goto_19e

    :catch_dd
    move-exception v0

    move-object/from16 v5, v19

    :goto_e0
    move-object/from16 v6, v24

    goto/16 :goto_193

    :cond_e4
    move-object/from16 v24, v6

    move-object/from16 v23, v7

    const/16 v17, 0x0

    :goto_ea
    cmp-long v6, v2, v9

    if-ltz v6, :cond_f4

    cmp-long v6, v2, v12

    if-gez v6, :cond_f4

    const/4 v6, 0x1

    goto :goto_f6

    :cond_f4
    move/from16 v6, v17

    :goto_f6
    if-eqz v8, :cond_11b

    if-eqz v14, :cond_11b

    move v7, v1

    move-object/from16 v1, p1

    .line 150
    iget-object v8, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    if-nez v8, :cond_105

    iget-object v8, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    if-eqz v8, :cond_119

    :cond_105
    iget-object v8, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calendarId:Ljava/lang/Long;

    .line 152
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-static {v8, v14}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_119

    iget-object v8, v1, Landroid/service/notification/ZenModeConfig$EventInfo;->calName:Ljava/lang/String;

    .line 153
    invoke-static {v8, v5}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11e

    :cond_119
    const/4 v5, 0x1

    goto :goto_120

    :cond_11b
    move v7, v1

    move-object/from16 v1, p1

    :cond_11e
    move/from16 v5, v17

    :goto_120
    const/4 v8, 0x1

    if-eq v7, v8, :cond_125

    const/4 v8, 0x1

    goto :goto_127

    :cond_125
    move/from16 v8, v17

    :goto_127
    if-eqz v5, :cond_170

    if-eqz v8, :cond_170

    if-eqz v22, :cond_132

    const-string v5, "  MEETS CALENDAR & AVAILABILITY"

    .line 156
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_132
    move-object v5, v0

    move-object/from16 v0, p0

    .line 157
    invoke-virtual {v0, v1, v11, v5}, Lcom/android/server/notification/CalendarTracker;->meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_172

    if-eqz v22, :cond_142

    const-string v5, "    MEETS ATTENDEE"

    .line 159
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_142
    if-eqz v6, :cond_151

    if-eqz v22, :cond_14b

    const-string v5, "      MEETS TIME"

    .line 161
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14b
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_14b} :catch_dd
    .catchall {:try_start_8a .. :try_end_14b} :catchall_d8

    :cond_14b
    move-object/from16 v5, v19

    const/4 v6, 0x1

    .line 162
    :try_start_14e
    iput-boolean v6, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->inEvent:Z

    goto :goto_153

    :cond_151
    move-object/from16 v5, v19

    :goto_153
    cmp-long v6, v9, v2

    if-lez v6, :cond_163

    .line 164
    iget-wide v6, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v6, v9, v6

    if-gez v6, :cond_163

    .line 165
    iput-wide v9, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    goto :goto_174

    :catch_160
    move-exception v0

    goto/16 :goto_e0

    :cond_163
    cmp-long v6, v12, v2

    if-lez v6, :cond_174

    .line 166
    iget-wide v6, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J

    cmp-long v6, v12, v6

    if-gez v6, :cond_174

    .line 167
    iput-wide v12, v5, Lcom/android/server/notification/CalendarTracker$CheckEventResult;->recheckAt:J
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_16f} :catch_160
    .catchall {:try_start_14e .. :try_end_16f} :catchall_d8

    goto :goto_174

    :cond_170
    move-object/from16 v0, p0

    :cond_172
    move-object/from16 v5, v19

    :cond_174
    :goto_174
    move-object/from16 v7, v23

    move-object/from16 v6, v24

    goto/16 :goto_38

    :catch_17a
    move-exception v0

    move-object/from16 v24, v6

    move-object/from16 v5, v19

    goto :goto_193

    :cond_180
    move-object/from16 v24, v6

    if-eqz v24, :cond_19d

    .line 176
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    goto :goto_19d

    :catchall_188
    move-exception v0

    move-object/from16 v24, v6

    goto :goto_19e

    :catch_18c
    move-exception v0

    move-object/from16 v24, v6

    goto :goto_193

    :catchall_190
    move-exception v0

    goto :goto_19e

    :catch_192
    move-exception v0

    :goto_193
    :try_start_193
    const-string v1, "error reading calendar"

    .line 173
    invoke-static {v4, v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_198
    .catchall {:try_start_193 .. :try_end_198} :catchall_190

    if-eqz v6, :cond_19d

    .line 176
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_19d
    :goto_19d
    return-object v5

    :goto_19e
    if-eqz v6, :cond_1a3

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 178
    :cond_1a3
    throw v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 4

    .line 87
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCallback="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 88
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mRegistered="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 89
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "u="

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public final getCalendarsWithAccess()Landroid/util/ArraySet;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string v0, "ConditionProviders.CT"

    .line 93
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 94
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    const-string v4, "_id"

    .line 95
    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v7

    const/4 v4, 0x0

    .line 101
    :try_start_12
    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "calendar_access_level >= 500 AND sync_events = 1"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    :goto_22
    if-eqz v4, :cond_37

    .line 103
    invoke-interface {v4}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_37

    const/4 p0, 0x0

    .line 104
    invoke-interface {v4, p0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_36
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_12 .. :try_end_36} :catch_3c
    .catchall {:try_start_12 .. :try_end_36} :catchall_3a

    goto :goto_22

    :cond_37
    if-eqz v4, :cond_47

    goto :goto_44

    :catchall_3a
    move-exception p0

    goto :goto_65

    :catch_3c
    move-exception p0

    :try_start_3d
    const-string v5, "error querying calendar content provider"

    .line 107
    invoke-static {v0, v5, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_3a

    if-eqz v4, :cond_47

    .line 110
    :goto_44
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 113
    :cond_47
    sget-boolean p0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz p0, :cond_64

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCalendarsWithAccess took "

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_64
    return-object v3

    :goto_65
    if-eqz v4, :cond_6a

    .line 110
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    .line 112
    :cond_6a
    throw p0
.end method

.method public final meetsAttendee(Landroid/service/notification/ZenModeConfig$EventInfo;ILjava/lang/String;)Z
    .registers 22

    move-object/from16 v0, p3

    const-string/jumbo v1, "meetsAttendee took "

    const-string v2, "ConditionProviders.CT"

    .line 183
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-string v8, "event_id = ? AND attendeeEmail = ?"

    const/4 v11, 0x2

    new-array v9, v11, [Ljava/lang/String;

    .line 185
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    aput-object v5, v9, v12

    const/4 v13, 0x1

    aput-object v0, v9, v13

    const/4 v14, 0x0

    move-object/from16 v5, p0

    .line 192
    :try_start_1d
    iget-object v5, v5, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/CalendarContract$Attendees;->CONTENT_URI:Landroid/net/Uri;

    sget-object v7, Lcom/android/server/notification/CalendarTracker;->ATTENDEE_PROJECTION:[Ljava/lang/String;

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    if-eqz v14, :cond_b7

    .line 194
    invoke-interface {v14}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_36

    goto/16 :goto_b7

    :cond_36
    move v5, v12

    .line 199
    :goto_37
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_98

    .line 200
    invoke-interface {v14, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 201
    invoke-interface {v14, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 202
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    move-object/from16 v10, p1

    .line 203
    iget v15, v10, Landroid/service/notification/ZenModeConfig$EventInfo;->reply:I

    invoke-static {v15, v9}, Lcom/android/server/notification/CalendarTracker;->meetsReply(II)Z

    move-result v15

    .line 204
    sget-boolean v16, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v16, :cond_82

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v12, "status=%s, meetsReply=%s"

    new-array v10, v11, [Ljava/lang/Object;

    .line 207
    invoke-static {v9}, Lcom/android/server/notification/CalendarTracker;->attendeeStatusToString(I)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x0

    aput-object v9, v10, v17

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/16 v16, 0x1

    aput-object v9, v10, v16

    .line 206
    invoke-static {v12, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 204
    invoke-static {v2, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_82
    move/from16 v9, p2

    int-to-long v12, v9

    cmp-long v6, v6, v12

    if-nez v6, :cond_93

    .line 208
    invoke-static {v8, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6
    :try_end_8d
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1d .. :try_end_8d} :catch_e2
    .catchall {:try_start_1d .. :try_end_8d} :catchall_e0

    if-eqz v6, :cond_93

    if-eqz v15, :cond_93

    const/4 v6, 0x1

    goto :goto_94

    :cond_93
    const/4 v6, 0x0

    :goto_94
    or-int/2addr v5, v6

    const/4 v12, 0x0

    const/4 v13, 0x1

    goto :goto_37

    .line 218
    :cond_98
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 220
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_b6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b6
    return v5

    .line 195
    :cond_b7
    :goto_b7
    :try_start_b7
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_c0

    const-string v5, "No attendees found"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_b7 .. :try_end_c0} :catch_e2
    .catchall {:try_start_b7 .. :try_end_c0} :catchall_e0

    :cond_c0
    if-eqz v14, :cond_c5

    .line 218
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    :cond_c5
    if-eqz v0, :cond_de

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_de
    const/4 v0, 0x1

    return v0

    :catchall_e0
    move-exception v0

    goto :goto_10a

    :catch_e2
    move-exception v0

    :try_start_e3
    const-string v5, "error querying attendees content provider"

    .line 214
    invoke-static {v2, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e8
    .catchall {:try_start_e3 .. :try_end_e8} :catchall_e0

    if-eqz v14, :cond_ed

    .line 218
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_ed
    sget-boolean v0, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v0, :cond_108

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_108
    const/4 v1, 0x0

    return v1

    :goto_10a
    if-eqz v14, :cond_10f

    .line 218
    invoke-interface {v14}, Landroid/database/Cursor;->close()V

    .line 220
    :cond_10f
    sget-boolean v5, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v5, :cond_12a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_12a
    throw v0
.end method

.method public setCallback(Lcom/android/server/notification/CalendarTracker$Callback;)V
    .registers 3

    .line 81
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-ne v0, p1, :cond_5

    return-void

    .line 82
    :cond_5
    iput-object p1, p0, Lcom/android/server/notification/CalendarTracker;->mCallback:Lcom/android/server/notification/CalendarTracker$Callback;

    if-eqz p1, :cond_b

    const/4 p1, 0x1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    .line 83
    :goto_c
    invoke-virtual {p0, p1}, Lcom/android/server/notification/CalendarTracker;->setRegistered(Z)V

    return-void
.end method

.method public final setRegistered(Z)V
    .registers 8

    .line 225
    iget-boolean v0, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/android/server/notification/CalendarTracker;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 227
    iget-object v1, p0, Lcom/android/server/notification/CalendarTracker;->mUserContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    move-result v1

    .line 228
    iget-boolean v2, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    const-string v3, "ConditionProviders.CT"

    if-eqz v2, :cond_35

    .line 229
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_30

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unregister content observer u="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :cond_30
    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 232
    :cond_35
    iput-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    .line 233
    sget-boolean v2, Lcom/android/server/notification/CalendarTracker;->DEBUG:Z

    if-eqz v2, :cond_58

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mRegistered = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " u="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :cond_58
    iget-boolean p1, p0, Lcom/android/server/notification/CalendarTracker;->mRegistered:Z

    if-eqz p1, :cond_89

    if-eqz v2, :cond_73

    .line 235
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "register content observer u="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_73
    sget-object p1, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x1

    invoke-virtual {v0, p1, v3, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 237
    sget-object p1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v3, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 238
    sget-object p1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/server/notification/CalendarTracker;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v3, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_89
    return-void
.end method
