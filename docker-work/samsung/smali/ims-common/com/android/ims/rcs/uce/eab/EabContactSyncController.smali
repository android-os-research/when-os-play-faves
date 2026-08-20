.class public Lcom/android/ims/rcs/uce/eab/EabContactSyncController;
.super Ljava/lang/Object;
.source "EabContactSyncController.java"


# static fields
.field private static final blacklist LAST_UPDATED_TIME_KEY:Ljava/lang/String; = "eab_last_updated_time"

.field private static final blacklist NOT_INIT_LAST_UPDATED_TIME:I = -0x1


# instance fields
.field private final blacklist TAG:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->TAG:Ljava/lang/String;

    return-void
.end method

.method private blacklist findMaxTimestamp(Landroid/database/Cursor;)J
    .registers 9
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 316
    const-wide/high16 v0, -0x8000000000000000L

    .line 317
    .local v0, "maxTimestamp":J
    const/4 v2, -0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 318
    :goto_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 319
    const-string v2, "contact_last_updated_timestamp"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 321
    .local v2, "lastUpdatedTimeStamp":J
    iget-object v4, p0, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    cmp-long v4, v2, v0

    if-lez v4, :cond_37

    .line 323
    move-wide v0, v2

    .line 325
    .end local v2    # "lastUpdatedTimeStamp":J
    :cond_37
    goto :goto_6

    .line 326
    :cond_38
    return-wide v0
.end method

.method private blacklist formatNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;

    .line 343
    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 344
    .local v0, "manager":Landroid/telephony/TelephonyManager;
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 345
    .local v1, "simCountryIso":Ljava/lang/String;
    if-eqz v1, :cond_44

    .line 346
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-static {}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->getInstance()Lcom/android/i18n/phonenumbers/PhoneNumberUtil;

    move-result-object v2

    .line 349
    .local v2, "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    :try_start_16
    invoke-virtual {v2, p2, v1}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->parse(Ljava/lang/CharSequence;Ljava/lang/String;)Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;

    move-result-object v3

    .line 350
    .local v3, "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    sget-object v4, Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;->E164:Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;

    invoke-virtual {v2, v3, v4}, Lcom/android/i18n/phonenumbers/PhoneNumberUtil;->format(Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;Lcom/android/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat;)Ljava/lang/String;

    move-result-object v4
    :try_end_20
    .catch Lcom/android/i18n/phonenumbers/NumberParseException; {:try_start_16 .. :try_end_20} :catch_21

    return-object v4

    .line 351
    .end local v3    # "phoneNumber":Lcom/android/i18n/phonenumbers/Phonenumber$PhoneNumber;
    :catch_21
    move-exception v3

    .line 352
    .local v3, "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    iget-object v4, p0, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "formatNumber: could not format "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    .end local v2    # "util":Lcom/android/i18n/phonenumbers/PhoneNumberUtil;
    .end local v3    # "e":Lcom/android/i18n/phonenumbers/NumberParseException;
    :cond_44
    return-object p2
.end method

.method private blacklist getLastUpdatedTime(Landroid/content/Context;)J
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .line 337
    nop

    .line 338
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 339
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v1, "eab_last_updated_time"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method private blacklist handleContactDeletedCase(Landroid/content/Context;J)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timeStamp"    # J

    .line 120
    const-string v0, ""

    .line 121
    .local v0, "selection":Ljava/lang/String;
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-eqz v1, :cond_1b

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact_deleted_timestamp>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 126
    :cond_1b
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/ContactsContract$DeletedContacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v7, "contact_id"

    const-string v3, "contact_deleted_timestamp"

    filled-new-array {v7, v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 134
    .local v1, "cursor":Landroid/database/Cursor;
    if-nez v1, :cond_3a

    .line 135
    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->TAG:Ljava/lang/String;

    const-string v3, "handleContactDeletedCase() cursor is null."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 139
    :cond_3a
    iget-object v2, p0, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(Case 1) The count of contact that need to be deleted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 140
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 139
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 143
    .local v2, "deleteClause":Ljava/lang/StringBuilder;
    :goto_5b
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8b

    .line 144
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_6c

    .line 145
    const-string v3, " OR "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    :cond_6c
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 150
    .local v3, "contactId":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "contact_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .end local v3    # "contactId":Ljava/lang/String;
    goto :goto_5b

    .line 153
    :cond_8b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_bc

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/ims/rcs/uce/eab/EabProvider;->CONTACT_URI:Landroid/net/Uri;

    .line 156
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    .line 154
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 158
    .local v3, "number":I
    iget-object v4, p0, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Case 1) Deleted contact count="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    .end local v3    # "number":I
    :cond_bc
    return-void
.end method

.method private blacklist handlePhoneNumberDeletedCase(Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cursor"    # Landroid/database/Cursor;

    .line 169
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 170
    .local v0, "phoneNumberMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/4 v1, -0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 171
    :goto_9
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 172
    nop

    .line 173
    const-string v1, "mimetype"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 172
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 174
    .local v1, "mimeType":Ljava/lang/String;
    const-string v2, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_23

    .line 175
    goto :goto_9

    .line 178
    :cond_23
    nop

    .line 179
    const-string v2, "raw_contact_id"

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 178
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 180
    .local v2, "rawContactId":Ljava/lang/String;
    nop

    .line 181
    const-string v3, "data1"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 180
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->formatNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 183
    .local v3, "number":Ljava/lang/String;
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 184
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_58

    .line 186
    :cond_4d
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 187
    .local v4, "phoneNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .end local v1    # "mimeType":Ljava/lang/String;
    .end local v2    # "rawContactId":Ljava/lang/String;
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "phoneNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_58
    goto :goto_9

    .line 195
    :cond_59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .local v1, "deleteClause":Ljava/lang/StringBuilder;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 197
    .local v2, "deleteClauseArgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_db

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 198
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 199
    .local v5, "rawContactId":Ljava/lang/String;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    .line 201
    .local v6, "phoneNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_8e

    .line 202
    const-string v7, " OR "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    :cond_8e
    const-string v7, "(raw_contact_id=? "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_d5

    .line 209
    invoke-interface {v6}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    new-instance v8, Lcom/android/ims/rcs/uce/eab/EabContactSyncController$$ExternalSyntheticLambda0;

    invoke-direct {v8}, Lcom/android/ims/rcs/uce/eab/EabContactSyncController$$ExternalSyntheticLambda0;-><init>()V

    .line 210
    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v7

    .line 211
    const-string v8, ", "

    invoke-static {v8}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 212
    .local v7, "argsList":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " AND phone_number NOT IN ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "))"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 216
    .end local v7    # "argsList":Ljava/lang/String;
    goto :goto_da

    .line 217
    :cond_d5
    const-string v7, ")"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "rawContactId":Ljava/lang/String;
    .end local v6    # "phoneNumberList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_da
    goto :goto_6b

    .line 221
    :cond_db
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/ims/rcs/uce/eab/EabProvider;->CONTACT_URI:Landroid/net/Uri;

    .line 223
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/String;

    .line 224
    invoke-interface {v2, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    .line 221
    invoke-virtual {v3, v4, v5, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    .line 225
    .local v3, "number":I
    iget-object v4, p0, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(Case 2, 3) handlePhoneNumberDeletedCase number count= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void
.end method

.method private blacklist handlePhoneNumberInsertedCase(Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/List;
    .registers 19
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contactCursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 236
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v2, "refreshContacts":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 238
    .local v3, "allContactData":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    const/4 v4, -0x1

    invoke-interface {v1, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 241
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/ims/rcs/uce/eab/EabProvider;->CONTACT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    const-string v8, "data_id IS NOT NULL"

    const/4 v9, 0x0

    const-string v10, "data_id"

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 248
    .local v5, "eabContact":Landroid/database/Cursor;
    :goto_22
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_9e

    .line 249
    const-string v6, "contact_id"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 251
    .local v7, "contactId":Ljava/lang/String;
    const-string v8, "raw_contact_id"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 253
    .local v9, "rawContactId":Ljava/lang/String;
    nop

    .line 254
    const-string v10, "_id"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 253
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 255
    .local v10, "dataId":Ljava/lang/String;
    nop

    .line 256
    const-string v11, "mimetype"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 255
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 258
    .local v11, "mimeType":Ljava/lang/String;
    const-string v12, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_5b

    .line 259
    goto :goto_22

    .line 262
    :cond_5b
    nop

    .line 263
    const-string v12, "data1"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 262
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, p1

    invoke-direct {v0, v13, v12}, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->formatNumber(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 265
    .local v12, "number":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    invoke-direct {v0, v5, v14}, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->searchDataIdIndex(Landroid/database/Cursor;I)I

    move-result v14

    .line 266
    .local v14, "index":I
    if-ne v14, v4, :cond_9c

    .line 267
    iget-object v15, v0, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->TAG:Ljava/lang/String;

    const-string v4, "Data id does not exist. Insert phone number into EAB db."

    invoke-static {v15, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 270
    .local v4, "data":Landroid/content/ContentValues;
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v6, "data_id"

    invoke-virtual {v4, v6, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {v4, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v6, "phone_number"

    invoke-virtual {v4, v6, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    .end local v4    # "data":Landroid/content/ContentValues;
    .end local v7    # "contactId":Ljava/lang/String;
    .end local v9    # "rawContactId":Ljava/lang/String;
    .end local v10    # "dataId":Ljava/lang/String;
    .end local v11    # "mimeType":Ljava/lang/String;
    .end local v12    # "number":Ljava/lang/String;
    .end local v14    # "index":I
    :cond_9c
    const/4 v4, -0x1

    goto :goto_22

    .line 279
    :cond_9e
    move-object/from16 v13, p1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v6, Lcom/android/ims/rcs/uce/eab/EabProvider;->CONTACT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    new-array v7, v7, [Landroid/content/ContentValues;

    .line 281
    invoke-interface {v3, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/content/ContentValues;

    .line 279
    invoke-virtual {v4, v6, v7}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v4

    .line 282
    .local v4, "result":I
    iget-object v6, v0, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(Case 3, 4) Phone number insert count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    return-object v2
.end method

.method static synthetic blacklist lambda$handlePhoneNumberDeletedCase$0(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "s"    # Ljava/lang/String;

    .line 210
    const-string v0, "?"

    return-object v0
.end method

.method private blacklist searchDataIdIndex(Landroid/database/Cursor;I)I
    .registers 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "targetDataId"    # I

    .line 295
    const/4 v0, 0x0

    .line 296
    .local v0, "start":I
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 298
    .local v1, "end":I
    :goto_7
    if-gt v0, v1, :cond_25

    .line 299
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 300
    .local v2, "position":I
    invoke-interface {p1, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 301
    const-string v3, "data_id"

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 303
    .local v3, "dataId":I
    if-le v3, p2, :cond_1f

    .line 304
    add-int/lit8 v1, v2, -0x1

    goto :goto_23

    .line 305
    :cond_1f
    if-ge v3, p2, :cond_24

    .line 306
    add-int/lit8 v0, v2, 0x1

    .line 310
    .end local v2    # "position":I
    .end local v3    # "dataId":I
    :goto_23
    goto :goto_7

    .line 308
    .restart local v2    # "position":I
    .restart local v3    # "dataId":I
    :cond_24
    return v2

    .line 311
    .end local v2    # "position":I
    .end local v3    # "dataId":I
    :cond_25
    const/4 v2, -0x1

    return v2
.end method

.method private blacklist setLastUpdatedTime(Landroid/content/Context;J)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timestamp"    # J

    .line 330
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastUpdatedTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    nop

    .line 332
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 333
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "eab_last_updated_time"

    invoke-interface {v1, v2, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 334
    return-void
.end method


# virtual methods
.method public blacklist syncContactToEabProvider(Landroid/content/Context;)Ljava/util/List;
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->TAG:Ljava/lang/String;

    const-string v1, "syncContactToEabProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x0

    .line 64
    .local v0, "refreshContacts":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v1, "selection":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 68
    .local v2, "selectionArgs":[Ljava/lang/String;
    invoke-direct {p0, p1}, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->getLastUpdatedTime(Landroid/content/Context;)J

    move-result-wide v3

    .line 69
    .local v3, "lastUpdatedTimeStamp":J
    const-wide/16 v5, -0x1

    cmp-long v5, v3, v5

    if-eqz v5, :cond_28

    .line 70
    const-string v5, "contact_last_updated_timestamp>?"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    move-object v2, v5

    .line 75
    :cond_28
    invoke-direct {p0, p1, v3, v4}, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->handleContactDeletedCase(Landroid/content/Context;J)V

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v7, 0x0

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    .line 78
    move-object v9, v2

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5

    .line 85
    .local v5, "updatedContact":Landroid/database/Cursor;
    if-eqz v5, :cond_84

    .line 86
    iget-object v6, p0, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Contact changed count: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-nez v6, :cond_66

    .line 89
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    return-object v6

    .line 94
    :cond_66
    invoke-direct {p0, p1, v5}, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->handlePhoneNumberDeletedCase(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 97
    invoke-direct {p0, p1, v5}, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->handlePhoneNumberInsertedCase(Landroid/content/Context;Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 100
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v6

    if-lez v6, :cond_80

    .line 101
    invoke-direct {p0, v5}, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->findMaxTimestamp(Landroid/database/Cursor;)J

    move-result-wide v6

    .line 102
    .local v6, "maxTimestamp":J
    const-wide/high16 v8, -0x8000000000000000L

    cmp-long v8, v6, v8

    if-eqz v8, :cond_80

    .line 103
    invoke-direct {p0, p1, v6, v7}, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->setLastUpdatedTime(Landroid/content/Context;J)V

    .line 106
    .end local v6    # "maxTimestamp":J
    :cond_80
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto :goto_8b

    .line 108
    :cond_84
    iget-object v6, p0, Lcom/android/ims/rcs/uce/eab/EabContactSyncController;->TAG:Ljava/lang/String;

    const-string v7, "Cursor is null."

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_8b
    return-object v0
.end method
