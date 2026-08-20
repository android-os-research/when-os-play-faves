.class public Lcom/android/server/people/data/SmsQueryHelper;
.super Ljava/lang/Object;
.source "SmsQueryHelper.java"


# static fields
.field public static final SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

.field public static final TAG:Ljava/lang/String; = "SmsQueryHelper"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mCurrentCountryIso:Ljava/lang/String;

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

.field public mLastMessageTimestamp:J


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    .line 36
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/people/data/SmsQueryHelper;->SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x9

    .line 39
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    const/16 v2, 0x8

    .line 40
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

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/android/server/people/data/SmsQueryHelper;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/android/server/people/data/SmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    .line 56
    invoke-static {p1}, Lcom/android/server/people/data/Utils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/SmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addEvent(Ljava/lang/String;JI)Z
    .registers 6

    .line 112
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/people/data/SmsQueryHelper;->validateEvent(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 115
    :cond_8
    sget-object v0, Lcom/android/server/people/data/SmsQueryHelper;->SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result p4

    .line 116
    iget-object p0, p0, Lcom/android/server/people/data/SmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    new-instance v0, Lcom/android/server/people/data/Event;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getLastMessageTimestamp()J
    .registers 3

    .line 108
    iget-wide v0, p0, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    return-wide v0
.end method

.method public querySince(J)Z
    .registers 14

    const-string v0, "_id"

    const-string v1, "date"

    const-string/jumbo v2, "type"

    const-string v3, "address"

    .line 65
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const-string v7, "date > ?"

    const/4 v10, 0x1

    new-array v8, v10, [Ljava/lang/String;

    .line 67
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v8, p2

    .line 69
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 71
    :try_start_1c
    iget-object p1, p0, Lcom/android/server/people/data/SmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_29
    .catchall {:try_start_1c .. :try_end_29} :catchall_8b

    if-nez p1, :cond_3b

    :try_start_2b
    const-string p0, "SmsQueryHelper"

    const-string v0, "Cursor is null when querying SMS table."

    .line 74
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_7f

    if-eqz p1, :cond_37

    .line 100
    :try_start_34
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_8b

    .line 102
    :cond_37
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    return p2

    .line 77
    :cond_3b
    :goto_3b
    :try_start_3b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 79
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 80
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 83
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 84
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 87
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 88
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 91
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 93
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/people/data/SmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 92
    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 95
    iget-wide v8, p0, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    invoke-static {v8, v9, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    if-eqz v7, :cond_3b

    .line 96
    invoke-virtual {p0, v7, v4, v5, v6}, Lcom/android/server/people/data/SmsQueryHelper;->addEvent(Ljava/lang/String;JI)Z

    move-result v4
    :try_end_74
    .catchall {:try_start_3b .. :try_end_74} :catchall_7f

    if-eqz v4, :cond_3b

    move p2, v10

    goto :goto_3b

    .line 100
    :cond_78
    :try_start_78
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_7b
    .catchall {:try_start_78 .. :try_end_7b} :catchall_8b

    .line 102
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    return p2

    :catchall_7f
    move-exception p0

    if-eqz p1, :cond_8a

    .line 71
    :try_start_82
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_85
    .catchall {:try_start_82 .. :try_end_85} :catchall_86

    goto :goto_8a

    :catchall_86
    move-exception p1

    :try_start_87
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8a
    :goto_8a
    throw p0
    :try_end_8b
    .catchall {:try_start_87 .. :try_end_8b} :catchall_8b

    :catchall_8b
    move-exception p0

    .line 102
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 103
    throw p0
.end method

.method public final validateEvent(Ljava/lang/String;JI)Z
    .registers 5

    .line 121
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_16

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-lez p0, :cond_16

    sget-object p0, Lcom/android/server/people/data/SmsQueryHelper;->SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 123
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
