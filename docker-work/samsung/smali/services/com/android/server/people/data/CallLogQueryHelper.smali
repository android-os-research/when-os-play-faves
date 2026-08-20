.class public Lcom/android/server/people/data/CallLogQueryHelper;
.super Ljava/lang/Object;
.source "CallLogQueryHelper.java"


# static fields
.field public static final CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

.field public static final TAG:Ljava/lang/String; = "CallLogQueryHelper"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mEventConsumer:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;"
        }
    .end annotation
.end field

.field public mLastCallTimestamp:J


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 34
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0xb

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    const/16 v2, 0xa

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x3

    const/16 v2, 0xc

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Lcom/android/server/people/data/Event;",
            ">;)V"
        }
    .end annotation

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mContext:Landroid/content/Context;

    .line 53
    iput-object p2, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public final addEvent(Ljava/lang/String;JJI)Z
    .registers 8

    .line 108
    invoke-virtual {p0, p1, p2, p3, p6}, Lcom/android/server/people/data/CallLogQueryHelper;->validateEvent(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 111
    :cond_8
    sget-object v0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p6}, Landroid/util/SparseIntArray;->get(I)I

    move-result p6

    .line 112
    new-instance v0, Lcom/android/server/people/data/Event$Builder;

    invoke-direct {v0, p2, p3, p6}, Lcom/android/server/people/data/Event$Builder;-><init>(JI)V

    long-to-int p2, p4

    .line 113
    invoke-virtual {v0, p2}, Lcom/android/server/people/data/Event$Builder;->setDurationSeconds(I)Lcom/android/server/people/data/Event$Builder;

    move-result-object p2

    .line 114
    invoke-virtual {p2}, Lcom/android/server/people/data/Event$Builder;->build()Lcom/android/server/people/data/Event;

    move-result-object p2

    .line 115
    iget-object p0, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getLastCallTimestamp()J
    .registers 3

    .line 104
    iget-wide v0, p0, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    return-wide v0
.end method

.method public querySince(J)Z
    .registers 20

    move-object/from16 v0, p0

    const-string v8, "CallLogQueryHelper"

    const-string/jumbo v9, "normalized_number"

    const-string v10, "date"

    const-string v11, "duration"

    const-string/jumbo v12, "type"

    .line 62
    filled-new-array {v9, v10, v11, v12}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "date > ?"

    const/4 v13, 0x1

    new-array v5, v13, [Ljava/lang/String;

    .line 65
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v14, 0x0

    aput-object v1, v5, v14

    .line 67
    :try_start_1e
    iget-object v1, v0, Lcom/android/server/people/data/CallLogQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const-string v6, "date DESC"

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15
    :try_end_2c
    .catch Ljava/lang/SecurityException; {:try_start_1e .. :try_end_2c} :catch_88

    if-nez v15, :cond_39

    :try_start_2e
    const-string v0, "Cursor is null when querying call log."

    .line 71
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_2e .. :try_end_33} :catchall_7a

    if-eqz v15, :cond_38

    .line 96
    :try_start_35
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catch Ljava/lang/SecurityException; {:try_start_35 .. :try_end_38} :catch_88

    :cond_38
    return v14

    :cond_39
    move/from16 v16, v14

    .line 74
    :goto_3b
    :try_start_3b
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_76

    .line 76
    invoke-interface {v15, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 77
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-interface {v15, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 81
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    .line 84
    invoke-interface {v15, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 85
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    .line 88
    invoke-interface {v15, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 89
    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 91
    iget-wide v13, v0, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    invoke-static {v13, v14, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v13

    iput-wide v13, v0, Lcom/android/server/people/data/CallLogQueryHelper;->mLastCallTimestamp:J

    move-object/from16 v1, p0

    .line 92
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/people/data/CallLogQueryHelper;->addEvent(Ljava/lang/String;JJI)Z

    move-result v1
    :try_end_6f
    .catchall {:try_start_3b .. :try_end_6f} :catchall_7a

    if-eqz v1, :cond_73

    const/16 v16, 0x1

    :cond_73
    const/4 v13, 0x1

    const/4 v14, 0x0

    goto :goto_3b

    .line 96
    :cond_76
    :try_start_76
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_79
    .catch Ljava/lang/SecurityException; {:try_start_76 .. :try_end_79} :catch_88

    return v16

    :catchall_7a
    move-exception v0

    move-object v1, v0

    if-eqz v15, :cond_87

    .line 67
    :try_start_7e
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_82

    goto :goto_87

    :catchall_82
    move-exception v0

    move-object v2, v0

    :try_start_84
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_87
    :goto_87
    throw v1
    :try_end_88
    .catch Ljava/lang/SecurityException; {:try_start_84 .. :try_end_88} :catch_88

    :catch_88
    move-exception v0

    .line 97
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Query call log failed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1
.end method

.method public final validateEvent(Ljava/lang/String;JI)Z
    .registers 5

    .line 120
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_16

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-lez p0, :cond_16

    sget-object p0, Lcom/android/server/people/data/CallLogQueryHelper;->CALL_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 122
    invoke-virtual {p0, p4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p0

    if-ltz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method
