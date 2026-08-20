.class public Landroid/provider/ContactsContract$Contacts;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$ContactsColumns;
.implements Landroid/provider/ContactsContract$ContactOptionsColumns;
.implements Landroid/provider/ContactsContract$ContactNameColumns;
.implements Landroid/provider/ContactsContract$ContactStatusColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contacts"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$Contacts$Photo;,
        Landroid/provider/ContactsContract$Contacts$AggregationSuggestions;,
        Landroid/provider/ContactsContract$Contacts$StreamItems;,
        Landroid/provider/ContactsContract$Contacts$Entity;,
        Landroid/provider/ContactsContract$Contacts$Data;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_FREQUENT_URI:Landroid/net/Uri;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist CONTENT_GROUP_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact"

.field public static final whitelist CONTENT_LOOKUP_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_STREQUENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_STREQUENT_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/contact"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist CONTENT_VCARD_TYPE:Ljava/lang/String; = "text/x-vcard"

.field public static final whitelist CONTENT_VCARD_URI:Landroid/net/Uri;

.field public static final greylist CORP_CONTENT_URI:Landroid/net/Uri;

.field public static greylist-max-o ENTERPRISE_CONTACT_ID_BASE:J = 0x0L

.field public static greylist-max-o ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String; = null

.field public static final whitelist ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final whitelist QUERY_PARAMETER_VCARD_NO_PHOTO:Ljava/lang/String; = "no_photo"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 4

    .line 1537
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "contacts"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 1550
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "contacts_corp"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/ContactsContract$Contacts;->CORP_CONTENT_URI:Landroid/net/Uri;

    .line 1569
    const-string/jumbo v1, "lookup"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    .line 1580
    const-string v1, "as_vcard"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    .line 1634
    const-string v1, "as_multi_vcard"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_MULTI_VCARD_URI:Landroid/net/Uri;

    .line 1733
    const-string v1, "filter"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 1741
    const-string v2, "filter_enterprise"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 1755
    const-string/jumbo v2, "strequent"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    sput-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_URI:Landroid/net/Uri;

    .line 1771
    const-string v3, "frequent"

    invoke-static {v0, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    sput-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_FREQUENT_URI:Landroid/net/Uri;

    .line 1785
    invoke-static {v2, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_STREQUENT_FILTER_URI:Landroid/net/Uri;

    .line 1788
    const-string/jumbo v1, "group"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_GROUP_URI:Landroid/net/Uri;

    .line 1815
    const-wide/32 v0, 0x3b9aca00

    sput-wide v0, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    .line 1823
    const-string v0, "c-"

    sput-object v0, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 1532
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist createCorpLookupUriFromEnterpriseLookupUri(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 5
    .param p0, "enterpriseLookupUri"    # Landroid/net/Uri;

    .line 2238
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 2239
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_36

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_f

    goto :goto_36

    .line 2242
    :cond_f
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2243
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_35

    .line 2246
    :cond_24
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_LOOKUP_PREFIX:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 2247
    .local v1, "actualKey":Ljava/lang/String;
    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v3, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    return-object v3

    .line 2244
    .end local v1    # "actualKey":Ljava/lang/String;
    :cond_35
    :goto_35
    return-object v1

    .line 2240
    .end local v2    # "key":Ljava/lang/String;
    :cond_36
    :goto_36
    return-object v1
.end method

.method public static whitelist getLookupUri(JLjava/lang/String;)Landroid/net/Uri;
    .registers 4
    .param p0, "contactId"    # J
    .param p2, "lookupKey"    # Ljava/lang/String;

    .line 1672
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1673
    const/4 v0, 0x0

    return-object v0

    .line 1675
    :cond_8
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "contactUri"    # Landroid/net/Uri;

    .line 1645
    const-string/jumbo v0, "lookup"

    const-string v1, "_id"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1648
    .local v0, "c":Landroid/database/Cursor;
    const/4 v1, 0x0

    if-nez v0, :cond_16

    .line 1649
    return-object v1

    .line 1653
    :cond_16
    :try_start_16
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1654
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1655
    .local v1, "lookupKey":Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1656
    .local v2, "contactId":J
    invoke-static {v2, v3, v1}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v4
    :try_end_2a
    .catchall {:try_start_16 .. :try_end_2a} :catchall_33

    .line 1659
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1656
    return-object v4

    .line 1659
    .end local v1    # "lookupKey":Ljava/lang/String;
    .end local v2    # "contactId":J
    :cond_2e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1660
    nop

    .line 1661
    return-object v1

    .line 1659
    :catchall_33
    move-exception v1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1660
    throw v1
.end method

.method public static whitelist isEnterpriseContactId(J)Z
    .registers 4
    .param p0, "contactId"    # J

    .line 1831
    sget-wide v0, Landroid/provider/ContactsContract$Contacts;->ENTERPRISE_CONTACT_ID_BASE:J

    cmp-long v0, p0, v0

    if-ltz v0, :cond_11

    const-wide v0, 0x7fffffff80000000L

    cmp-long v0, p0, v0

    if-gez v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method public static whitelist lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;
    .registers 10
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "lookupUri"    # Landroid/net/Uri;

    .line 1685
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 1686
    return-object v0

    .line 1689
    :cond_4
    const-string v1, "_id"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 1690
    .local v1, "c":Landroid/database/Cursor;
    if-nez v1, :cond_16

    .line 1691
    return-object v0

    .line 1695
    :cond_16
    :try_start_16
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 1696
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 1697
    .local v2, "contactId":J
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_30

    .line 1700
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1697
    return-object v0

    .line 1700
    .end local v2    # "contactId":J
    :cond_2b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1701
    nop

    .line 1702
    return-object v0

    .line 1700
    :catchall_30
    move-exception v0

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1701
    throw v0
.end method

.method public static whitelist markAsContacted(Landroid/content/ContentResolver;J)V
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "contactId"    # J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1725
    return-void
.end method

.method public static whitelist openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;)Ljava/io/InputStream;
    .registers 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactUri"    # Landroid/net/Uri;

    .line 2225
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;
    .registers 11
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "contactUri"    # Landroid/net/Uri;
    .param p2, "preferHighres"    # Z

    .line 2177
    if-eqz p2, :cond_18

    .line 2178
    const-string v0, "display_photo"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2181
    .local v0, "displayPhotoUri":Landroid/net/Uri;
    :try_start_8
    const-string/jumbo v1, "r"

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 2182
    .local v1, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v1, :cond_16

    .line 2183
    invoke-virtual {v1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_15} :catch_17

    return-object v2

    .line 2187
    .end local v1    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_16
    goto :goto_18

    .line 2185
    :catch_17
    move-exception v1

    .line 2190
    .end local v0    # "displayPhotoUri":Landroid/net/Uri;
    :cond_18
    :goto_18
    const-string/jumbo v0, "photo"

    invoke-static {p1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2191
    .local v0, "photoUri":Landroid/net/Uri;
    const/4 v7, 0x0

    if-nez v0, :cond_23

    .line 2192
    return-object v7

    .line 2194
    :cond_23
    const-string v1, "data15"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2199
    .local v1, "cursor":Landroid/database/Cursor;
    if-eqz v1, :cond_5b

    :try_start_34
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3b

    goto :goto_5b

    .line 2202
    :cond_3b
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2
    :try_end_40
    .catchall {:try_start_34 .. :try_end_40} :catchall_54

    .line 2203
    .local v2, "data":[B
    if-nez v2, :cond_49

    .line 2204
    nop

    .line 2208
    if-eqz v1, :cond_48

    .line 2209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2204
    :cond_48
    return-object v7

    .line 2206
    :cond_49
    :try_start_49
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_4e
    .catchall {:try_start_49 .. :try_end_4e} :catchall_54

    .line 2208
    if-eqz v1, :cond_53

    .line 2209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2206
    :cond_53
    return-object v3

    .line 2208
    .end local v2    # "data":[B
    :catchall_54
    move-exception v2

    if-eqz v1, :cond_5a

    .line 2209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2211
    :cond_5a
    throw v2

    .line 2200
    :cond_5b
    :goto_5b
    nop

    .line 2208
    if-eqz v1, :cond_61

    .line 2209
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 2200
    :cond_61
    return-object v7
.end method
