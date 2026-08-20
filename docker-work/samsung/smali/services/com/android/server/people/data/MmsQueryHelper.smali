.class public Lcom/android/server/people/data/MmsQueryHelper;
.super Ljava/lang/Object;
.source "MmsQueryHelper.java"


# static fields
.field public static final MILLIS_PER_SECONDS:J = 0x3e8L

.field public static final MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

.field public static final TAG:Ljava/lang/String; = "MmsQueryHelper"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mCurrentCountryIso:Ljava/lang/String;

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

    .line 41
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    const/4 v1, 0x1

    const/16 v2, 0x9

    .line 44
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 v1, 0x2

    const/16 v2, 0x8

    .line 45
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

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    .line 61
    invoke-static {p1}, Lcom/android/server/people/data/Utils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final addEvent(Ljava/lang/String;JI)Z
    .registers 6

    .line 144
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/people/data/MmsQueryHelper;->validateEvent(Ljava/lang/String;JI)Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p0, 0x0

    return p0

    .line 147
    :cond_8
    sget-object v0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p4}, Landroid/util/SparseIntArray;->get(I)I

    move-result p4

    .line 148
    iget-object p0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    new-instance v0, Lcom/android/server/people/data/Event;

    invoke-direct {v0, p2, p3, p4}, Lcom/android/server/people/data/Event;-><init>(JI)V

    invoke-interface {p0, p1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public getLastMessageTimestamp()J
    .registers 3

    .line 110
    iget-wide v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    return-wide v0
.end method

.method public final getMmsAddress(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10

    .line 115
    invoke-static {p1}, Landroid/provider/Telephony$Mms$Addr;->getAddrUriForMessage(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string p1, "address"

    const-string/jumbo v6, "type"

    .line 116
    filled-new-array {p1, v6}, [Ljava/lang/String;

    move-result-object v2

    .line 118
    iget-object v0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2a

    :try_start_1d
    const-string p0, "MmsQueryHelper"

    const-string p1, "Cursor is null when querying MMS address table."

    .line 121
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_61

    if-eqz v0, :cond_29

    .line 136
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_29
    return-object v1

    :cond_2a
    move-object v2, v1

    .line 124
    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_50

    .line 126
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 127
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne p2, v4, :cond_40

    const/16 v4, 0x89

    if-eq v3, v4, :cond_47

    :cond_40
    const/4 v4, 0x2

    if-ne p2, v4, :cond_2b

    const/16 v4, 0x97

    if-ne v3, v4, :cond_2b

    .line 132
    :cond_47
    invoke-interface {v0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 133
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_4f
    .catchall {:try_start_2b .. :try_end_4f} :catchall_61

    goto :goto_2b

    .line 136
    :cond_50
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 137
    invoke-static {v2}, Landroid/provider/Telephony$Mms;->isPhoneNumber(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_5a

    return-object v1

    .line 140
    :cond_5a
    iget-object p0, p0, Lcom/android/server/people/data/MmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    invoke-static {v2, p0}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_61
    move-exception p0

    if-eqz v0, :cond_6c

    .line 118
    :try_start_64
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_67
    .catchall {:try_start_64 .. :try_end_67} :catchall_68

    goto :goto_6c

    :catchall_68
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6c
    :goto_6c
    throw p0
.end method

.method public querySince(J)Z
    .registers 15

    const-string v0, "_id"

    const-string v1, "date"

    const-string/jumbo v2, "msg_box"

    .line 70
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "date > ?"

    const/4 v9, 0x1

    new-array v7, v9, [Ljava/lang/String;

    const-wide/16 v10, 0x3e8

    .line 73
    div-long/2addr p1, v10

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v7, p2

    .line 75
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 77
    :try_start_1d
    iget-object p1, p0, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_2a
    .catchall {:try_start_1d .. :try_end_2a} :catchall_84

    if-nez p1, :cond_3c

    :try_start_2c
    const-string p0, "MmsQueryHelper"

    const-string v0, "Cursor is null when querying MMS table."

    .line 80
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_33
    .catchall {:try_start_2c .. :try_end_33} :catchall_78

    if-eqz p1, :cond_38

    .line 102
    :try_start_35
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_84

    .line 104
    :cond_38
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    return p2

    .line 83
    :cond_3c
    :goto_3c
    :try_start_3c
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_71

    .line 85
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 86
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 89
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 90
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    mul-long/2addr v4, v10

    .line 93
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 94
    invoke-interface {p1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 96
    iget-wide v7, p0, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    invoke-static {v7, v8, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    .line 97
    invoke-virtual {p0, v3, v6}, Lcom/android/server/people/data/MmsQueryHelper;->getMmsAddress(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3c

    .line 98
    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/server/people/data/MmsQueryHelper;->addEvent(Ljava/lang/String;JI)Z

    move-result v3
    :try_end_6d
    .catchall {:try_start_3c .. :try_end_6d} :catchall_78

    if-eqz v3, :cond_3c

    move p2, v9

    goto :goto_3c

    .line 102
    :cond_71
    :try_start_71
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_74
    .catchall {:try_start_71 .. :try_end_74} :catchall_84

    .line 104
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    return p2

    :catchall_78
    move-exception p0

    if-eqz p1, :cond_83

    .line 77
    :try_start_7b
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_7e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_7f

    goto :goto_83

    :catchall_7f
    move-exception p1

    :try_start_80
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_83
    :goto_83
    throw p0
    :try_end_84
    .catchall {:try_start_80 .. :try_end_84} :catchall_84

    :catchall_84
    move-exception p0

    .line 104
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 105
    throw p0
.end method

.method public final validateEvent(Ljava/lang/String;JI)Z
    .registers 5

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_16

    const-wide/16 p0, 0x0

    cmp-long p0, p2, p0

    if-lez p0, :cond_16

    sget-object p0, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 155
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
