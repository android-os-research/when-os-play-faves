.class public Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;
.super Ljava/lang/Object;
.source "SemWifiApContentProviderHelper.java"


# static fields
.field static final blacklist CONTENT_URI:Landroid/net/Uri;

.field public static final blacklist KEY_AUTO_HOTSPOT_CONNECTED_USER:Ljava/lang/String; = "auto_hotspot_connected_user"

.field public static final blacklist NAME:Ljava/lang/String; = "name"

.field private static blacklist TAG:Ljava/lang/String; = null

.field static final blacklist URL:Ljava/lang/String; = "content://com.samsung.android.wifi.softap/softapInfo"

.field public static final blacklist VALUE:Ljava/lang/String; = "value"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 20
    const-string v0, "SemWifiApContentProviderHelper"

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->TAG:Ljava/lang/String;

    .line 22
    const-string v0, "content://com.samsung.android.wifi.softap/softapInfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 63
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "android.permission.OVERRIDE_WIFI_CONFIG"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    .line 64
    .local v0, "hasPermission":Z
    :goto_12
    sget-object v3, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SemWifiApContentProviderHelper insert:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",Binder.getCallingUid():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",hasPermission:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    if-nez v0, :cond_4b

    .line 66
    const-string v1, ""

    return-object v1

    .line 68
    :cond_4b
    const-string v3, ""

    .line 69
    .local v3, "returnValue":Ljava/lang/String;
    new-array v1, v1, [Ljava/lang/String;

    .line 70
    .local v1, "selectionArgs":[Ljava/lang/String;
    aput-object p1, v1, v2

    .line 71
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 73
    .local v10, "ident":J
    :try_start_55
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 v6, 0x0

    const-string v7, "name = ?"

    const/4 v9, 0x0

    move-object v8, v1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_64
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_55 .. :try_end_64} :catch_89
    .catchall {:try_start_55 .. :try_end_64} :catchall_87

    .line 74
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_82

    .line 76
    :try_start_66
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_78

    .line 77
    const-string/jumbo v4, "value"

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v2, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4
    :try_end_77
    .catchall {:try_start_66 .. :try_end_77} :catchall_7c

    move-object v3, v4

    .line 80
    :cond_78
    :try_start_78
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 81
    goto :goto_82

    .line 80
    :catchall_7c
    move-exception v4

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 81
    nop

    .end local v0    # "hasPermission":Z
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    .end local v3    # "returnValue":Ljava/lang/String;
    .end local v10    # "ident":J
    .end local p0    # "mContext":Landroid/content/Context;
    .end local p1    # "key":Ljava/lang/String;
    throw v4
    :try_end_82
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_78 .. :try_end_82} :catch_89
    .catchall {:try_start_78 .. :try_end_82} :catchall_87

    .line 86
    .end local v2    # "c":Landroid/database/Cursor;
    .restart local v0    # "hasPermission":Z
    .restart local v1    # "selectionArgs":[Ljava/lang/String;
    .restart local v3    # "returnValue":Ljava/lang/String;
    .restart local v10    # "ident":J
    .restart local p0    # "mContext":Landroid/content/Context;
    .restart local p1    # "key":Ljava/lang/String;
    :cond_82
    :goto_82
    nop

    :goto_83
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    goto :goto_a4

    .line 86
    :catchall_87
    move-exception v2

    goto :goto_a5

    .line 83
    :catch_89
    move-exception v2

    .line 84
    .local v2, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_8a
    sget-object v4, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SemWifiApContentProviderHelper get:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a2
    .catchall {:try_start_8a .. :try_end_a2} :catchall_87

    .line 86
    nop

    .end local v2    # "e":Landroid/database/sqlite/SQLiteException;
    goto :goto_83

    .line 88
    :goto_a4
    return-object v3

    .line 86
    :goto_a5
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    throw v2
.end method

.method public static blacklist insert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "val"    # Ljava/lang/String;

    .line 33
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "android.permission.OVERRIDE_WIFI_CONFIG"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2, v0}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    .line 34
    .local v0, "hasPermission":Z
    :goto_12
    sget-object v3, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SemWifiApContentProviderHelper insert:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",Binder.getCallingUid():"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ",hasPermission:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    if-nez v0, :cond_49

    .line 36
    return-void

    .line 38
    :cond_49
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 39
    .local v3, "ident":J
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 40
    .local v6, "values":Landroid/content/ContentValues;
    if-nez p2, :cond_56

    .line 41
    const-string p2, ""

    .line 42
    :cond_56
    const-string v7, "name"

    invoke-virtual {v6, v7, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string/jumbo v7, "value"

    invoke-virtual {v6, v7, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    :try_start_61
    invoke-static {p0, p1}, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->isKeypresent(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9d

    .line 46
    new-array v1, v1, [Ljava/lang/String;

    .line 47
    .local v1, "selectionArgs":[Ljava/lang/String;
    aput-object p1, v1, v2

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v7, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->CONTENT_URI:Landroid/net/Uri;

    const-string v8, "name = ?"

    invoke-virtual {v2, v7, v6, v8, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 49
    .local v2, "ret":I
    sget-object v7, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "key is already present:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",ret:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_99
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_61 .. :try_end_99} :catch_c1
    .catchall {:try_start_61 .. :try_end_99} :catchall_bf

    .line 57
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 50
    return-void

    .line 52
    .end local v1    # "selectionArgs":[Ljava/lang/String;
    .end local v2    # "ret":I
    :cond_9d
    :try_start_9d
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 53
    sget-object v1, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Inserting Key:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_be
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_9d .. :try_end_be} :catch_c1
    .catchall {:try_start_9d .. :try_end_be} :catchall_bf

    .line 57
    goto :goto_d9

    :catchall_bf
    move-exception v1

    goto :goto_de

    .line 54
    :catch_c1
    move-exception v1

    .line 55
    .local v1, "e":Landroid/database/sqlite/SQLiteException;
    :try_start_c2
    sget-object v2, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d8
    .catchall {:try_start_c2 .. :try_end_d8} :catchall_bf

    .line 57
    nop

    .end local v1    # "e":Landroid/database/sqlite/SQLiteException;
    :goto_d9
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    nop

    .line 59
    return-void

    .line 57
    :goto_de
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 58
    throw v1
.end method

.method private static blacklist isKeypresent(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 9
    .param p0, "mContext"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;

    .line 92
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 93
    .local v0, "selectionArgs":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/wifi/SemWifiApContentProviderHelper;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "name = ?"

    const/4 v6, 0x0

    move-object v5, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 95
    .local v1, "c":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 96
    .local v2, "ret":Z
    if-eqz v1, :cond_26

    .line 98
    :try_start_18
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_21

    move v2, v3

    .line 100
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 101
    goto :goto_26

    .line 100
    :catchall_21
    move-exception v3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 101
    throw v3

    .line 103
    :cond_26
    :goto_26
    return v2
.end method
