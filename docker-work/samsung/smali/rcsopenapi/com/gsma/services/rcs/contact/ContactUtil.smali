.class public Lcom/gsma/services/rcs/contact/ContactUtil;
.super Ljava/lang/Object;
.source "ContactUtil.java"


# static fields
.field private static LOG_TAG:Ljava/lang/String; = null

.field private static final MCC_UNDEFINED:I = 0x0

.field private static final MSISDN_PREFIX_INTERNATIONAL:Ljava/lang/String; = "00"

.field private static final PATTERN_CONTACT:Ljava/util/regex/Pattern;

.field private static final PATTERN_COUNTRY_CODE:Ljava/util/regex/Pattern;

.field private static final REGEXP_CONTACT:Ljava/lang/String; = "^00\\d{1,15}$|^[+]?\\d{1,15}$|^\\d{1,15}$"

.field private static final REGEXP_COUNTRY_CODE:Ljava/lang/String; = "^\\+\\d{1,3}$"

.field private static volatile instance:Lcom/gsma/services/rcs/contact/ContactUtil;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountryAreaCode:Ljava/lang/String;

.field private mCountryCode:Ljava/lang/String;

.field private msisdnWithPrefixAndCountryCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 40
    const-class v0, Lcom/gsma/services/rcs/contact/ContactUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    .line 70
    const-string v0, "^00\\d{1,15}$|^[+]?\\d{1,15}$|^\\d{1,15}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->PATTERN_CONTACT:Ljava/util/regex/Pattern;

    .line 75
    const-string v0, "^\\+\\d{1,3}$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->PATTERN_COUNTRY_CODE:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    .line 55
    iput-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    .line 89
    iput-object p1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    .line 90
    return-void
.end method

.method private static getCodes(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 123
    const-string v0, "MyCountryCode"

    invoke-static {p0, v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/contact/ContactUtil;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .line 99
    const-class v0, Lcom/gsma/services/rcs/contact/ContactUtil;

    monitor-enter v0

    .line 100
    :try_start_3
    sget-object v1, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    if-nez v1, :cond_6b

    .line 101
    if-eqz p0, :cond_63

    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "countryCode":Ljava/lang/String;
    invoke-static {p0}, Lcom/gsma/services/rcs/contact/ContactUtil;->getCodes(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 106
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstance() countryCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    if-eqz v1, :cond_6b

    .line 109
    sget-object v2, Lcom/gsma/services/rcs/contact/ContactUtil;->PATTERN_COUNTRY_CODE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 110
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 111
    new-instance v3, Lcom/gsma/services/rcs/contact/ContactUtil;

    invoke-direct {v3, p0}, Lcom/gsma/services/rcs/contact/ContactUtil;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    .line 112
    sget-object v3, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    iput-object v1, v3, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    .line 113
    sget-object v3, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    sget-object v4, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    invoke-virtual {v4}, Lcom/gsma/services/rcs/contact/ContactUtil;->getMyCountryAreaCode()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    .line 114
    sget-object v3, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "00"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 115
    invoke-virtual {v1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/gsma/services/rcs/contact/ContactUtil;->msisdnWithPrefixAndCountryCode:Ljava/lang/String;

    goto :goto_6b

    .line 102
    .end local v1    # "countryCode":Ljava/lang/String;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    :cond_63
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Context is null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Landroid/content/Context;
    throw v1

    .line 119
    .restart local p0    # "context":Landroid/content/Context;
    :cond_6b
    :goto_6b
    sget-object v1, Lcom/gsma/services/rcs/contact/ContactUtil;->instance:Lcom/gsma/services/rcs/contact/ContactUtil;

    monitor-exit v0

    return-object v1

    .line 120
    :catchall_6f
    move-exception v1

    monitor-exit v0
    :try_end_71
    .catchall {:try_start_3 .. :try_end_71} :catchall_6f

    throw v1
.end method

.method private stripSeparators(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "contact"    # Ljava/lang/String;

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 132
    return-object v1

    .line 134
    :cond_8
    const-string v0, "[ -]"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 135
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->PATTERN_CONTACT:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 136
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 137
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 139
    :cond_21
    return-object v1
.end method


# virtual methods
.method public formatContact(Ljava/lang/String;)Lcom/gsma/services/rcs/contact/ContactId;
    .registers 5
    .param p1, "contact"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 160
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/contact/ContactUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 161
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b2

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_ac

    .line 166
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    if-eqz v0, :cond_a4

    .line 170
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->msisdnWithPrefixAndCountryCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->msisdnWithPrefixAndCountryCode:Ljava/lang/String;

    .line 172
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 171
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 172
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_ac

    .line 175
    :cond_39
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_94

    .line 176
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCountryAreaCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    .line 180
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryAreaCode:Ljava/lang/String;

    .line 181
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_ac

    .line 183
    :cond_7d
    sget-object v0, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    const-string v1, "The contact number doesn\'t start with countryCode or countryAreaCode, add countryCode in front of it"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_ac

    .line 190
    :cond_94
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mCountryCode:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_ac

    .line 167
    :cond_a4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Country code is unknown"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_ac
    :goto_ac
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId;

    invoke-direct {v0, p1}, Lcom/gsma/services/rcs/contact/ContactId;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 196
    :cond_b2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input parameter is null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getMyCountryAreaCode()Ljava/lang/String;
    .registers 3

    .line 212
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    const-string v1, "CountryAreaCode"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMyCountryCode()Ljava/lang/String;
    .registers 3

    .line 204
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    const-string v1, "MyCountryCode"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVCard(Landroid/net/Uri;)Landroid/net/Uri;
    .registers 16
    .param p1, "contactUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gsma/services/rcs/RcsServiceException;
        }
    .end annotation

    .line 229
    const/4 v0, 0x0

    .line 231
    .local v0, "cursor":Landroid/database/Cursor;
    :try_start_1
    iget-object v1, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_10} :catch_fe
    .catchall {:try_start_1 .. :try_end_10} :catchall_fc

    move-object v0, v1

    .line 232
    const/4 v1, 0x0

    if-nez v0, :cond_1b

    .line 233
    nop

    .line 280
    if-eqz v0, :cond_1a

    .line 281
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 233
    :cond_1a
    return-object v1

    .line 235
    :cond_1b
    :try_start_1b
    const-string v2, "display_name"

    .line 236
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 237
    .local v2, "displayNameColIdx":I
    const-string v3, "lookup"

    .line 238
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    .line 239
    .local v3, "lookupKeyColIdx":I
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_2b} :catch_fe
    .catchall {:try_start_1b .. :try_end_2b} :catchall_fc

    if-nez v4, :cond_34

    .line 240
    nop

    .line 280
    if-eqz v0, :cond_33

    .line 281
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 240
    :cond_33
    return-object v1

    .line 242
    :cond_34
    :try_start_34
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, "lookupKey":Ljava/lang/String;
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_VCARD_URI:Landroid/net/Uri;

    invoke-static {v4, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 246
    .local v4, "vCardUri":Landroid/net/Uri;
    const/4 v5, 0x0

    .line 247
    .local v5, "vCardData":[B
    const/4 v6, 0x0

    .line 248
    .local v6, "len":I
    iget-object v7, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "r"

    invoke-virtual {v7, v4, v8}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v7
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4c} :catch_fe
    .catchall {:try_start_34 .. :try_end_4c} :catchall_fc

    .line 250
    .local v7, "fd":Landroid/content/res/AssetFileDescriptor;
    if-eqz v7, :cond_7d

    .line 251
    :try_start_4e
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v8
    :try_end_52
    .catchall {:try_start_4e .. :try_end_52} :catchall_71

    .line 252
    .local v8, "fis":Ljava/io/FileInputStream;
    :try_start_52
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v9

    long-to-int v9, v9

    new-array v9, v9, [B

    move-object v5, v9

    .line 253
    invoke-virtual {v8, v5}, Ljava/io/FileInputStream;->read([B)I

    move-result v9
    :try_end_5e
    .catchall {:try_start_52 .. :try_end_5e} :catchall_65

    move v6, v9

    .line 254
    if-eqz v8, :cond_7d

    :try_start_61
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_71

    goto :goto_7d

    .line 251
    :catchall_65
    move-exception v9

    if-eqz v8, :cond_70

    :try_start_68
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6b
    .catchall {:try_start_68 .. :try_end_6b} :catchall_6c

    goto :goto_70

    :catchall_6c
    move-exception v10

    :try_start_6d
    invoke-virtual {v9, v10}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local v1    # "lookupKey":Ljava/lang/String;
    .end local v2    # "displayNameColIdx":I
    .end local v3    # "lookupKeyColIdx":I
    .end local v4    # "vCardUri":Landroid/net/Uri;
    .end local v5    # "vCardData":[B
    .end local v6    # "len":I
    .end local v7    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    .end local p1    # "contactUri":Landroid/net/Uri;
    :cond_70
    :goto_70
    throw v9
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_71

    .line 248
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local v1    # "lookupKey":Ljava/lang/String;
    .restart local v2    # "displayNameColIdx":I
    .restart local v3    # "lookupKeyColIdx":I
    .restart local v4    # "vCardUri":Landroid/net/Uri;
    .restart local v5    # "vCardData":[B
    .restart local v6    # "len":I
    .restart local v7    # "fd":Landroid/content/res/AssetFileDescriptor;
    .restart local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    .restart local p1    # "contactUri":Landroid/net/Uri;
    :catchall_71
    move-exception v8

    if-eqz v7, :cond_7c

    :try_start_74
    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_77
    .catchall {:try_start_74 .. :try_end_77} :catchall_78

    goto :goto_7c

    :catchall_78
    move-exception v9

    :try_start_79
    invoke-virtual {v8, v9}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    .end local p1    # "contactUri":Landroid/net/Uri;
    :cond_7c
    :goto_7c
    throw v8

    .line 256
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    .restart local p1    # "contactUri":Landroid/net/Uri;
    :cond_7d
    :goto_7d
    if-eqz v7, :cond_82

    invoke-virtual {v7}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 258
    .end local v7    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_82
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 259
    .local v7, "name":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    .line 260
    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".vcf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 261
    .local v8, "fileName":Ljava/lang/String;
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 262
    .local v9, "vCardFile":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_ce

    .line 263
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    move-result v10

    .line 264
    .local v10, "flag":Z
    sget-object v11, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "vCardFile.delete();flag:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    .end local v10    # "flag":Z
    :cond_ce
    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v11, 0x1

    invoke-direct {v10, v9, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_d4
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_d4} :catch_fe
    .catchall {:try_start_79 .. :try_end_d4} :catchall_fc

    .line 268
    .local v10, "fos":Ljava/io/FileOutputStream;
    if-eqz v5, :cond_de

    :try_start_d6
    array-length v11, v5

    if-ne v6, v11, :cond_de

    .line 269
    const/4 v11, 0x0

    invoke-virtual {v10, v5, v11, v6}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_e5

    .line 271
    :cond_de
    sget-object v11, Lcom/gsma/services/rcs/contact/ContactUtil;->LOG_TAG:Ljava/lang/String;

    const-string v12, "vCard File not read correctly"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e5
    .catchall {:try_start_d6 .. :try_end_e5} :catchall_f2

    .line 273
    :goto_e5
    :try_start_e5
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V

    .line 275
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    invoke-static {v9}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v10
    :try_end_ec
    .catch Ljava/io/IOException; {:try_start_e5 .. :try_end_ec} :catch_fe
    .catchall {:try_start_e5 .. :try_end_ec} :catchall_fc

    .line 280
    if-eqz v0, :cond_f1

    .line 281
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 275
    :cond_f1
    return-object v10

    .line 267
    .restart local v10    # "fos":Ljava/io/FileOutputStream;
    :catchall_f2
    move-exception v11

    :try_start_f3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->close()V
    :try_end_f6
    .catchall {:try_start_f3 .. :try_end_f6} :catchall_f7

    goto :goto_fb

    :catchall_f7
    move-exception v12

    :try_start_f8
    invoke-virtual {v11, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    .end local p1    # "contactUri":Landroid/net/Uri;
    :goto_fb
    throw v11
    :try_end_fc
    .catch Ljava/io/IOException; {:try_start_f8 .. :try_end_fc} :catch_fe
    .catchall {:try_start_f8 .. :try_end_fc} :catchall_fc

    .line 280
    .end local v1    # "lookupKey":Ljava/lang/String;
    .end local v2    # "displayNameColIdx":I
    .end local v3    # "lookupKeyColIdx":I
    .end local v4    # "vCardUri":Landroid/net/Uri;
    .end local v5    # "vCardData":[B
    .end local v6    # "len":I
    .end local v7    # "name":Ljava/lang/String;
    .end local v8    # "fileName":Ljava/lang/String;
    .end local v9    # "vCardFile":Ljava/io/File;
    .end local v10    # "fos":Ljava/io/FileOutputStream;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    .restart local p1    # "contactUri":Landroid/net/Uri;
    :catchall_fc
    move-exception v1

    goto :goto_105

    .line 277
    :catch_fe
    move-exception v1

    .line 278
    .local v1, "e":Ljava/io/IOException;
    :try_start_ff
    new-instance v2, Lcom/gsma/services/rcs/RcsServiceException;

    invoke-direct {v2, v1}, Lcom/gsma/services/rcs/RcsServiceException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "cursor":Landroid/database/Cursor;
    .end local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    .end local p1    # "contactUri":Landroid/net/Uri;
    throw v2
    :try_end_105
    .catchall {:try_start_ff .. :try_end_105} :catchall_fc

    .line 280
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "cursor":Landroid/database/Cursor;
    .restart local p0    # "this":Lcom/gsma/services/rcs/contact/ContactUtil;
    .restart local p1    # "contactUri":Landroid/net/Uri;
    :goto_105
    if-eqz v0, :cond_10a

    .line 281
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 283
    :cond_10a
    throw v1
.end method

.method public isMyCountryCodeDefined()Z
    .registers 2

    .line 291
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mcc:I

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isValidContact(Ljava/lang/String;)Z
    .registers 3
    .param p1, "contact"    # Ljava/lang/String;

    .line 149
    invoke-direct {p0, p1}, Lcom/gsma/services/rcs/contact/ContactUtil;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
