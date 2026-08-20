.class public Lcom/sec/ims/settings/NvConfiguration;
.super Ljava/lang/Object;
.source "NvConfiguration.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String;

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    const-class v0, Lcom/sec/ims/settings/NvConfiguration;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/NvConfiguration;->LOG_TAG:Ljava/lang/String;

    .line 14
    nop

    .line 15
    const-string v0, "content://com.sec.ims.settings/nvstorage/omadm/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    .line 14
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 37
    move-object v0, p2

    .line 38
    .local v0, "ret":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    const/4 v7, 0x1

    new-array v3, v7, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 41
    .local v1, "cur":Landroid/database/Cursor;
    if-nez v1, :cond_1d

    .line 42
    nop

    .line 47
    if-eqz v1, :cond_1c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_1c
    return-object p2

    .line 44
    :cond_1d
    :try_start_1d
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 45
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_27
    .catchall {:try_start_1d .. :try_end_27} :catchall_2e

    move-object v0, v2

    .line 47
    :cond_28
    if-eqz v1, :cond_2d

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 48
    .end local v1    # "cur":Landroid/database/Cursor;
    :cond_2d
    return-object v0

    .line 38
    .restart local v1    # "cur":Landroid/database/Cursor;
    :catchall_2e
    move-exception v2

    if-eqz v1, :cond_39

    :try_start_31
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_35

    goto :goto_39

    :catchall_35
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_39
    :goto_39
    throw v2
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 52
    move-object v0, p2

    .line 53
    .local v0, "ret":Ljava/lang/String;
    sget-object v1, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 54
    .local v1, "newUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v8, 0x1

    new-array v4, v8, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 57
    .local v2, "cur":Landroid/database/Cursor;
    if-nez v2, :cond_3d

    .line 58
    nop

    .line 63
    if-eqz v2, :cond_3c

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 58
    :cond_3c
    return-object p2

    .line 60
    :cond_3d
    :try_start_3d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_48

    .line 61
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_47
    .catchall {:try_start_3d .. :try_end_47} :catchall_4e

    move-object v0, v3

    .line 63
    :cond_48
    if-eqz v2, :cond_4d

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 64
    .end local v2    # "cur":Landroid/database/Cursor;
    :cond_4d
    return-object v0

    .line 54
    .restart local v2    # "cur":Landroid/database/Cursor;
    :catchall_4e
    move-exception v3

    if-eqz v2, :cond_59

    :try_start_51
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_59
    :goto_59
    throw v3
.end method

.method public static getAll(Landroid/content/Context;)Landroid/content/ContentValues;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .line 21
    const/4 v0, 0x0

    .line 22
    .local v0, "ret":Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 23
    .local v1, "cur":Landroid/database/Cursor;
    if-nez v1, :cond_18

    .line 24
    const/4 v2, 0x0

    .line 32
    if-eqz v1, :cond_17

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 24
    :cond_17
    return-object v2

    .line 26
    :cond_18
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_37

    .line 27
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    move-object v0, v2

    .line 29
    :cond_24
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_35
    .catchall {:try_start_18 .. :try_end_35} :catchall_3d

    if-nez v2, :cond_24

    .line 32
    :cond_37
    if-eqz v1, :cond_3c

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 33
    .end local v1    # "cur":Landroid/database/Cursor;
    :cond_3c
    return-object v0

    .line 22
    .restart local v1    # "cur":Landroid/database/Cursor;
    :catchall_3d
    move-exception v2

    if-eqz v1, :cond_48

    :try_start_40
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_48

    :catchall_44
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_48
    :goto_48
    throw v2
.end method

.method public static getSmsIpNetworkIndi(Landroid/content/Context;I)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I

    .line 83
    const-string v0, "sms_over_ip_network_indication"

    const-string v1, "1"

    invoke-static {p0, v0, v1, p1}, Lcom/sec/ims/settings/NvConfiguration;->get(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x1

    :try_start_9
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_d} :catch_12

    if-ne v2, v1, :cond_10

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1

    .line 86
    :catch_12
    move-exception v2

    .line 87
    .local v2, "e":Ljava/lang/NumberFormatException;
    return v1
.end method

.method public static insert(Landroid/content/Context;Landroid/content/ContentValues;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "values"    # Landroid/content/ContentValues;

    .line 79
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 80
    return-void
.end method

.method public static query(Landroid/content/Context;[Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "projection"    # [Ljava/lang/String;

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "phoneId"    # I

    .line 72
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 73
    .local v0, "cv":Landroid/content/ContentValues;
    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    sget-object v1, Lcom/sec/ims/settings/NvConfiguration;->URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 75
    .local v1, "newUri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 76
    return-void
.end method

.method public static setSmsIpNetworkIndi(Landroid/content/Context;ZI)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # Z
    .param p2, "phoneId"    # I

    .line 92
    if-eqz p1, :cond_5

    const-string v0, "1"

    goto :goto_7

    :cond_5
    const-string v0, "0"

    :goto_7
    const-string v1, "sms_over_ip_network_indication"

    invoke-static {p0, v1, v0, p2}, Lcom/sec/ims/settings/NvConfiguration;->set(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 93
    return-void
.end method
