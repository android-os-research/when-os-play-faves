.class public Lcom/sec/ims/settings/UserConfiguration;
.super Ljava/lang/Object;
.source "UserConfiguration.java"


# static fields
.field public static final ENABLE_CALL_WAITING:Ljava/lang/String; = "enable_call_wait"

.field public static final RCS:Ljava/lang/String; = "rcs"

.field public static final RCS_HOME_PREF:Ljava/lang/String; = "rcs_home_pref"

.field public static final RCS_ROAMING_PREF:Ljava/lang/String; = "rcs_roaming_pref"

.field public static final SS_CLIP_PREF:Ljava/lang/String; = "ss_clip_pref"

.field public static final SS_CLIR_PREF:Ljava/lang/String; = "ss_clir_pref"

.field public static final SS_VIDEO_CB_PREF:Ljava/lang/String; = "ss_video_cb_pref"

.field public static final SS_VOICE_CB_PREF:Ljava/lang/String; = "ss_volte_cb_pref"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    const-string v0, "content://com.sec.ims.settings/userconfig"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sec/ims/settings/UserConfiguration;->URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # I

    .line 47
    :try_start_0
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_a} :catch_b

    return v0

    .line 48
    :catch_b
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 51
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    return p3
.end method

.method public static getUserConfig(Landroid/content/Context;Ljava/lang/String;I)I
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 42
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getUserConfig(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/sec/ims/settings/UserConfiguration;->URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 30
    .local v0, "uri":Landroid/net/Uri;
    move-object v7, p3

    .line 31
    .local v7, "ret":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v3, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 32
    .local v1, "cur":Landroid/database/Cursor;
    if-eqz v1, :cond_4e

    .line 33
    :try_start_36
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4e

    .line 34
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2
    :try_end_40
    .catchall {:try_start_36 .. :try_end_40} :catchall_42

    move-object v7, v2

    goto :goto_4e

    .line 31
    :catchall_42
    move-exception v2

    if-eqz v1, :cond_4d

    :try_start_45
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_49

    goto :goto_4d

    :catchall_49
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4d
    :goto_4d
    throw v2

    .line 37
    :cond_4e
    :goto_4e
    if-eqz v1, :cond_53

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 38
    .end local v1    # "cur":Landroid/database/Cursor;
    :cond_53
    return-object v7
.end method

.method public static getUserConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 25
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUserConfig(Landroid/content/Context;ILjava/lang/String;Z)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "defaultValue"    # Z

    .line 59
    sget-object v0, Lcom/sec/ims/settings/UserConfiguration;->URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simslot"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 60
    .local v0, "uri":Landroid/net/Uri;
    move v7, p3

    .line 61
    .local v7, "ret":Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object p2, v3, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 62
    .local v1, "cur":Landroid/database/Cursor;
    if-eqz v1, :cond_54

    .line 63
    :try_start_36
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_54

    .line 64
    const-string v2, "true"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_48

    move v7, v2

    goto :goto_54

    .line 61
    :catchall_48
    move-exception v2

    if-eqz v1, :cond_53

    :try_start_4b
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_4f

    goto :goto_53

    :catchall_4f
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_53
    :goto_53
    throw v2

    .line 67
    :cond_54
    :goto_54
    if-eqz v1, :cond_59

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 68
    .end local v1    # "cur":Landroid/database/Cursor;
    :cond_59
    return v7
.end method

.method public static getUserConfig(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Z

    .line 55
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static setUserConfig(Landroid/content/Context;ILjava/lang/String;I)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # I

    .line 93
    const/4 v0, -0x1

    invoke-static {p0, p1, p2, v0}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;I)I

    move-result v0

    .line 95
    .local v0, "currentValue":I
    if-ne v0, p3, :cond_8

    .line 96
    return-void

    .line 98
    :cond_8
    sget-object v1, Lcom/sec/ims/settings/UserConfiguration;->URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 99
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 100
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 102
    return-void
.end method

.method public static setUserConfig(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;

    .line 77
    const-string v0, ""

    invoke-static {p0, p1, p2, v0}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "currentValue":Ljava/lang/String;
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 80
    return-void

    .line 82
    :cond_d
    sget-object v1, Lcom/sec/ims/settings/UserConfiguration;->URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 83
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 84
    .local v2, "cv":Landroid/content/ContentValues;
    invoke-virtual {v2, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 86
    return-void
.end method

.method public static setUserConfig(Landroid/content/Context;ILjava/lang/String;Z)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "phoneId"    # I
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Z

    .line 109
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/sec/ims/settings/UserConfiguration;->getUserConfig(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v0

    .line 111
    .local v0, "currentValue":Z
    if-ne v0, p3, :cond_8

    .line 112
    return-void

    .line 114
    :cond_8
    sget-object v1, Lcom/sec/ims/settings/UserConfiguration;->URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 115
    .local v1, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 116
    .local v2, "cv":Landroid/content/ContentValues;
    if-eqz p3, :cond_33

    const-string v3, "true"

    goto :goto_35

    :cond_33
    const-string v3, "false"

    .line 117
    .local v3, "bool":Ljava/lang/String;
    :goto_35
    invoke-virtual {v2, p2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 119
    return-void
.end method

.method public static setUserConfig(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 89
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;I)V

    .line 90
    return-void
.end method

.method public static setUserConfig(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 72
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public static setUserConfig(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 105
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/sec/ims/settings/UserConfiguration;->setUserConfig(Landroid/content/Context;ILjava/lang/String;Z)V

    .line 106
    return-void
.end method
