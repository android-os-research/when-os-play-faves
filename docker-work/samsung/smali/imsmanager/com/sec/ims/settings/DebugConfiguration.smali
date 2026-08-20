.class public Lcom/sec/ims/settings/DebugConfiguration;
.super Ljava/lang/Object;
.source "DebugConfiguration.java"


# static fields
.field public static final FAKE_PANI:Ljava/lang/String; = "fake_pani"

.field public static final FAKE_REG_RESPONSE:Ljava/lang/String; = "fake_reg_response"

.field public static final REAL_PANI:Ljava/lang/String; = "real_pani"

.field private static final URIString:Ljava/lang/String; = "content://com.sec.ims.settings/debugconfig/"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDebugConfig(Landroid/content/Context;ILjava/lang/String;I)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 37
    :try_start_0
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/sec/ims/settings/DebugConfiguration;->getDebugConfig(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 38
    :catch_b
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 41
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    return p3
.end method

.method public static getDebugConfig(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 23
    move-object v0, p3

    .line 24
    .local v0, "ret":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.sec.ims.settings/debugconfig/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 25
    .local v1, "URI":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 26
    .local v2, "cur":Landroid/database/Cursor;
    if-eqz v2, :cond_44

    .line 27
    :try_start_2c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 28
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_38

    move-object v0, v3

    goto :goto_44

    .line 25
    :catchall_38
    move-exception v3

    if-eqz v2, :cond_43

    :try_start_3b
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    throw v3

    .line 31
    :cond_44
    :goto_44
    if-eqz v2, :cond_49

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 32
    .end local v2    # "cur":Landroid/database/Cursor;
    :cond_49
    return-object v0
.end method

.method public static getDebugConfig(Landroid/content/Context;ILjava/lang/String;Z)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 45
    move v0, p3

    .line 46
    .local v0, "ret":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.sec.ims.settings/debugconfig/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 47
    .local v1, "URI":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v4, v8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 48
    .local v2, "cur":Landroid/database/Cursor;
    if-eqz v2, :cond_4a

    .line 49
    :try_start_2c
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 50
    const-string v3, "true"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_3c
    .catchall {:try_start_2c .. :try_end_3c} :catchall_3e

    move v0, v3

    goto :goto_4a

    .line 47
    :catchall_3e
    move-exception v3

    if-eqz v2, :cond_49

    :try_start_41
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_44
    .catchall {:try_start_41 .. :try_end_44} :catchall_45

    goto :goto_49

    :catchall_45
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_49
    :goto_49
    throw v3

    .line 53
    :cond_4a
    :goto_4a
    if-eqz v2, :cond_4f

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 54
    .end local v2    # "cur":Landroid/database/Cursor;
    :cond_4f
    return v0
.end method

.method public static setDebugConfig(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sec.ims.settings/debugconfig/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 66
    .local v0, "URI":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 67
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 69
    return-void
.end method

.method public static setDebugConfig(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sec.ims.settings/debugconfig/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 59
    .local v0, "URI":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 60
    .local v1, "cv":Landroid/content/ContentValues;
    invoke-virtual {v1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 62
    return-void
.end method

.method public static setDebugConfig(Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sec.ims.settings/debugconfig/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 73
    .local v0, "URI":Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 74
    .local v1, "cv":Landroid/content/ContentValues;
    if-eqz p3, :cond_21

    const-string v2, "true"

    goto :goto_23

    :cond_21
    const-string v2, "false"

    .line 75
    .local v2, "bool":Ljava/lang/String;
    :goto_23
    invoke-virtual {v1, p2, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 77
    return-void
.end method
