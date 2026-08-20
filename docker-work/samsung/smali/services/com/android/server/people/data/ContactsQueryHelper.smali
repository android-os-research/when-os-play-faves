.class public Lcom/android/server/people/data/ContactsQueryHelper;
.super Ljava/lang/Object;
.source "ContactsQueryHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContactsQueryHelper"


# instance fields
.field public mContactUri:Landroid/net/Uri;

.field public final mContext:Landroid/content/Context;

.field public mIsStarred:Z

.field public mLastUpdatedTimestamp:J

.field public mPhoneNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getContactUri()Landroid/net/Uri;
    .registers 1

    .line 78
    iget-object p0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    return-object p0
.end method

.method public getLastUpdatedTimestamp()J
    .registers 3

    .line 91
    iget-wide v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J

    return-wide v0
.end method

.method public getPhoneNumber()Ljava/lang/String;
    .registers 1

    .line 87
    iget-object p0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;

    return-object p0
.end method

.method public isStarred()Z
    .registers 1

    .line 82
    iget-boolean p0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    return p0
.end method

.method public query(Ljava/lang/String;)Z
    .registers 6

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    .line 54
    :cond_8
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "tel"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 56
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithPhoneNumber(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 57
    :cond_22
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mailto"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 58
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithEmail(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 59
    :cond_38
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_49

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result p0

    return p0

    :cond_49
    return v1
.end method

.method public final queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 12

    .line 118
    iget-object v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_1f

    :try_start_12
    const-string p0, "ContactsQueryHelper"

    const-string p3, "Cursor is null when querying contact."

    .line 121
    invoke-static {p0, p3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_19
    .catchall {:try_start_12 .. :try_end_19} :catchall_85

    if-eqz p1, :cond_1e

    .line 152
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1e
    return p2

    :cond_1f
    const/4 p3, 0x1

    const/4 p4, 0x0

    move v0, p2

    move v1, v0

    .line 124
    :goto_23
    :try_start_23
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_76

    const-string p4, "_id"

    .line 126
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 127
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string/jumbo p4, "lookup"

    .line 130
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p4

    .line 131
    invoke-interface {p1, p4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 133
    invoke-static {v0, v1, p4}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContactUri:Landroid/net/Uri;

    const-string/jumbo v0, "starred"

    .line 136
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 137
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_53

    move v0, p3

    goto :goto_54

    :cond_53
    move v0, p2

    :goto_54
    iput-boolean v0, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mIsStarred:Z

    const-string/jumbo v0, "has_phone_number"

    .line 140
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 141
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-eqz v0, :cond_65

    move v1, p3

    goto :goto_66

    :cond_65
    move v1, p2

    :goto_66
    const-string v0, "contact_last_updated_timestamp"

    .line 144
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_74

    .line 147
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mLastUpdatedTimestamp:J
    :try_end_74
    .catchall {:try_start_23 .. :try_end_74} :catchall_85

    :cond_74
    move v0, p3

    goto :goto_23

    .line 152
    :cond_76
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    if-eqz v0, :cond_84

    if-eqz p4, :cond_84

    if-eqz v1, :cond_84

    .line 154
    invoke-virtual {p0, p4}, Lcom/android/server/people/data/ContactsQueryHelper;->queryPhoneNumber(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_84
    return v0

    :catchall_85
    move-exception p0

    if-eqz p1, :cond_90

    .line 118
    :try_start_88
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_8b
    .catchall {:try_start_88 .. :try_end_8b} :catchall_8c

    goto :goto_90

    :catchall_8c
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_90
    :goto_90
    throw p0
.end method

.method public final queryPhoneNumber(Ljava/lang/String;)Z
    .registers 11

    const-string v0, "data4"

    .line 160
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v7, 0x1

    new-array v5, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p1, v5, v8

    .line 164
    iget-object p1, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->CONTENT_URI:Landroid/net/Uri;

    const-string/jumbo v4, "lookup = ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-nez p1, :cond_2b

    :try_start_1e
    const-string p0, "ContactsQueryHelper"

    const-string v0, "Cursor is null when querying contact phone number."

    .line 168
    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_25
    .catchall {:try_start_1e .. :try_end_25} :catchall_42

    if-eqz p1, :cond_2a

    .line 179
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2a
    return v8

    .line 171
    :cond_2b
    :goto_2b
    :try_start_2b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 173
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_2b

    .line 176
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/people/data/ContactsQueryHelper;->mPhoneNumber:Ljava/lang/String;
    :try_end_3d
    .catchall {:try_start_2b .. :try_end_3d} :catchall_42

    goto :goto_2b

    .line 179
    :cond_3e
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return v7

    :catchall_42
    move-exception p0

    if-eqz p1, :cond_4d

    .line 164
    :try_start_45
    invoke-interface {p1}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4d
    :goto_4d
    throw p0
.end method

.method public querySince(J)Z
    .registers 8

    const-string v0, "_id"

    const-string/jumbo v1, "lookup"

    const-string/jumbo v2, "starred"

    const-string/jumbo v3, "has_phone_number"

    const-string v4, "contact_last_updated_timestamp"

    .line 68
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 72
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    aput-object p1, v1, p2

    .line 73
    sget-object p1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string p2, "contact_last_updated_timestamp > ?"

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final queryWithEmail(Ljava/lang/String;)Z
    .registers 3

    .line 101
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 102
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 103
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public final queryWithPhoneNumber(Ljava/lang/String;)Z
    .registers 3

    .line 95
    sget-object v0, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 96
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryWithUri(Landroid/net/Uri;)Z

    move-result p0

    return p0
.end method

.method public final queryWithUri(Landroid/net/Uri;)Z
    .registers 6

    const-string v0, "_id"

    const-string/jumbo v1, "lookup"

    const-string/jumbo v2, "starred"

    const-string/jumbo v3, "has_phone_number"

    .line 107
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/android/server/people/data/ContactsQueryHelper;->queryContact(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
