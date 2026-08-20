.class public Lcom/gsma/services/rcs/CommonServiceConfiguration;
.super Ljava/lang/Object;
.source "CommonServiceConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;,
        Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;,
        Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;,
        Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    }
.end annotation


# static fields
.field private static final PROJECTION:[Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static final WHERE_CLAUSE:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 30
    const-class v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->TAG:Ljava/lang/String;

    .line 31
    const-string v0, "value"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->PROJECTION:[Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "key"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "=?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->WHERE_CLAUSE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "ctx"    # Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    .line 35
    iput-object p1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method public static getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 311
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->TAG:Ljava/lang/String;

    const-string v1, "getStringValueSetting"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 313
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v6, v1

    .line 314
    .local v6, "selectionArgs":[Ljava/lang/String;
    :try_start_11
    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v4, Lcom/gsma/services/rcs/CommonServiceConfiguration;->PROJECTION:[Ljava/lang/String;

    sget-object v5, Lcom/gsma/services/rcs/CommonServiceConfiguration;->WHERE_CLAUSE:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_1d} :catch_42

    .line 315
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_3c

    .line 316
    :try_start_1f
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 317
    invoke-interface {v2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1
    :try_end_29
    .catchall {:try_start_1f .. :try_end_29} :catchall_30

    .line 318
    .local v1, "str":Ljava/lang/String;
    nop

    .line 321
    if-eqz v2, :cond_2f

    :try_start_2c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2f} :catch_42

    .line 318
    :cond_2f
    return-object v1

    .line 314
    .end local v1    # "str":Ljava/lang/String;
    :catchall_30
    move-exception v1

    if-eqz v2, :cond_3b

    :try_start_33
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_36
    .catchall {:try_start_33 .. :try_end_36} :catchall_37

    goto :goto_3b

    :catchall_37
    move-exception v3

    :try_start_38
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v6    # "selectionArgs":[Ljava/lang/String;
    .end local p0    # "ctx":Landroid/content/Context;
    .end local p1    # "key":Ljava/lang/String;
    :cond_3b
    :goto_3b
    throw v1

    .line 321
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v6    # "selectionArgs":[Ljava/lang/String;
    .restart local p0    # "ctx":Landroid/content/Context;
    .restart local p1    # "key":Ljava/lang/String;
    :cond_3c
    if-eqz v2, :cond_41

    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_41} :catch_42

    .line 324
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_41
    goto :goto_62

    .line 321
    :catch_42
    move-exception v1

    .line 322
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "got exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 325
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_62
    const/4 v1, 0x0

    return-object v1
.end method

.method private static updateSettings(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "contentValues"    # Landroid/content/ContentValues;
    .param p2, "key"    # Ljava/lang/String;

    .line 298
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->TAG:Ljava/lang/String;

    const-string v1, "updateSettings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 300
    .local v0, "cr":Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    .line 301
    .local v1, "whereArgs":[Ljava/lang/String;
    sget-object v2, Lcom/gsma/services/rcs/CommonServiceConfiguration$Settings;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/gsma/services/rcs/CommonServiceConfiguration;->WHERE_CLAUSE:Ljava/lang/String;

    invoke-virtual {v0, v2, p1, v3, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 302
    return-void
.end method


# virtual methods
.method public getDefaultMessagingMethod()Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;
    .registers 3

    .line 252
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "DefaultMessagingMethod"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "stringVlaue":Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    move-result-object v1

    goto :goto_11

    :cond_f
    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->AUTOMATIC:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    :goto_11
    return-object v1
.end method

.method public getMessagingUX()Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;
    .registers 3

    .line 240
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "MessagingMode"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "stringVlaue":Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    move-result-object v1

    goto :goto_11

    :cond_f
    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;->NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMode;

    :goto_11
    return-object v1
.end method

.method public getMinimumBatteryLevel()Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "MinimumBatteryLevel"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "stringVlaue":Ljava/lang/String;
    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->valueOf(Ljava/lang/String;)Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    move-result-object v1

    goto :goto_11

    :cond_f
    sget-object v1, Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;->NONE:Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    :goto_11
    return-object v1
.end method

.method public getMyContactId()Lcom/gsma/services/rcs/contact/ContactId;
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/gsma/services/rcs/contact/ContactUtil;->getInstance(Landroid/content/Context;)Lcom/gsma/services/rcs/contact/ContactUtil;

    move-result-object v0

    .line 212
    .local v0, "contactUtilInstance":Lcom/gsma/services/rcs/contact/ContactUtil;
    if-eqz v0, :cond_1b

    .line 215
    iget-object v1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v2, "MyContactId"

    invoke-static {v1, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "contact":Ljava/lang/String;
    :try_start_10
    invoke-virtual {v0, v1}, Lcom/gsma/services/rcs/contact/ContactUtil;->formatContact(Ljava/lang/String;)Lcom/gsma/services/rcs/contact/ContactId;

    move-result-object v2
    :try_end_14
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_14} :catch_15

    return-object v2

    .line 218
    :catch_15
    move-exception v2

    .line 219
    .local v2, "e":Ljava/lang/IllegalStateException;
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 221
    .end local v2    # "e":Ljava/lang/IllegalStateException;
    const/4 v2, 0x0

    return-object v2

    .line 213
    .end local v1    # "contact":Ljava/lang/String;
    :cond_1b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot instantiate ContactUtil"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getMyDisplayName()Ljava/lang/String;
    .registers 3

    .line 188
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "MyDisplayName"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isConfigValid()Z
    .registers 3

    .line 230
    iget-object v0, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v1, "ConfigurationValidity"

    invoke-static {v0, v1}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->getStringValueSetting(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDefaultMessagingMethod(Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;)V
    .registers 5
    .param p1, "method"    # Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    .line 263
    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->AUTOMATIC:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-virtual {p1, v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_26

    sget-object v0, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->NON_RCS:Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;

    invoke-virtual {p1, v0}, Lcom/gsma/services/rcs/CommonServiceConfiguration$MessagingMethod;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_26

    .line 266
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 267
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v2, "DefaultMessagingMethod"

    invoke-static {v1, v0, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->updateSettings(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 269
    return-void

    .line 264
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid default messaging method"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinimumBatteryLevel(Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;)V
    .registers 5
    .param p1, "level"    # Lcom/gsma/services/rcs/CommonServiceConfiguration$MinimumBatteryLevel;

    .line 286
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 287
    .local v0, "values":Landroid/content/ContentValues;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "value"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iget-object v1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v2, "MinimumBatteryLevel"

    invoke-static {v1, v0, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->updateSettings(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 289
    return-void
.end method

.method public setMyDisplayName(Ljava/lang/String;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;

    .line 197
    if-eqz p1, :cond_14

    .line 200
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 201
    .local v0, "values":Landroid/content/ContentValues;
    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/gsma/services/rcs/CommonServiceConfiguration;->mContext:Landroid/content/Context;

    const-string v2, "MyDisplayName"

    invoke-static {v1, v0, v2}, Lcom/gsma/services/rcs/CommonServiceConfiguration;->updateSettings(Landroid/content/Context;Landroid/content/ContentValues;Ljava/lang/String;)V

    .line 203
    return-void

    .line 198
    .end local v0    # "values":Landroid/content/ContentValues;
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Display name is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
