.class public Lcom/sec/ims/settings/ImsProfileLoader;
.super Ljava/lang/Object;
.source "ImsProfileLoader.java"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "ImsProfileLoader"

.field public static MOCK_MNO_PROPERTY:Ljava/lang/String; = null

.field public static final PREF_SETTING_DB:Ljava/lang/String; = "pref_setting_db"

.field public static final SETTING_DB_CREATED:Ljava/lang/String; = "setting_db_created"

.field public static final SETTING_DB_JUST_CREATED:Ljava/lang/String; = "setting_db_just_created"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 41
    const-string v0, "persist.ims.mock.mno"

    sput-object v0, Lcom/sec/ims/settings/ImsProfileLoader;->MOCK_MNO_PROPERTY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "ctx"    # Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static addProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;)Landroid/net/Uri;
    .registers 5
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 134
    const-string v0, "content://com.sec.ims.settings/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 137
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfileLoader;->getContentValues(Lcom/sec/ims/settings/ImsProfile;)Landroid/content/ContentValues;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 139
    .local v1, "newUri":Landroid/net/Uri;
    return-object v1
.end method

.method public static find(Ljava/util/Collection;Ljava/lang/String;)Lcom/sec/ims/settings/ImsProfile;
    .registers 5
    .param p1, "pdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sec/ims/settings/ImsProfile;"
        }
    .end annotation

    .line 221
    .local p0, "list":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/sec/ims/settings/ImsProfile;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/ims/settings/ImsProfile;

    .line 222
    .local v1, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v1}, Lcom/sec/ims/settings/ImsProfile;->getPdn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 223
    return-object v1

    .line 225
    .end local v1    # "profile":Lcom/sec/ims/settings/ImsProfile;
    :cond_1b
    goto :goto_4

    .line 226
    :cond_1c
    const/4 v0, 0x0

    return-object v0
.end method

.method private static getContentValues(Lcom/sec/ims/settings/ImsProfile;)Landroid/content/ContentValues;
    .registers 2
    .param p0, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 143
    invoke-virtual {p0}, Lcom/sec/ims/settings/ImsProfile;->getAsContentValues()Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method public static getImsProfileFromRow(Landroid/content/Context;Landroid/database/Cursor;)Lcom/sec/ims/settings/ImsProfile;
    .registers 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "cursor"    # Landroid/database/Cursor;

    .line 206
    new-instance v0, Lcom/sec/ims/settings/ImsProfile;

    const-string v1, "profile"

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sec/ims/settings/ImsProfile;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "profile":Lcom/sec/ims/settings/ImsProfile;
    return-object v0
.end method

.method public static getProfile(Landroid/content/Context;I)Lcom/sec/ims/settings/ImsProfile;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getProfile: id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImsProfileLoader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://com.sec.ims.settings/profile/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 83
    .local v0, "uri":Landroid/net/Uri;
    const/4 v8, 0x0

    .line 84
    .local v8, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 85
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_5c

    .line 86
    :try_start_3f
    const-string v3, "getProfile: found "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 89
    invoke-static {p0, v2}, Lcom/sec/ims/settings/ImsProfileLoader;->getImsProfileFromRow(Landroid/content/Context;Landroid/database/Cursor;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v1
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_50

    move-object v8, v1

    goto :goto_5c

    .line 84
    :catchall_50
    move-exception v1

    if-eqz v2, :cond_5b

    :try_start_53
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_57

    goto :goto_5b

    :catchall_57
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5b
    :goto_5b
    throw v1

    .line 92
    :cond_5c
    :goto_5c
    if-eqz v2, :cond_61

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 93
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_61
    return-object v8
.end method

.method public static getProfileListWithMnoName(Landroid/content/Context;Ljava/lang/String;I)Ljava/util/List;
    .registers 11
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "mnoName"    # Ljava/lang/String;
    .param p2, "simSlot"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    .local v0, "profiles":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/sec/ims/settings/ImsProfile;>;"
    const-string v1, "content://com.sec.ims.settings/profile"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simslot"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 56
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->fragment(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 57
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mnoname="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 58
    .local v2, "cursor":Landroid/database/Cursor;
    if-eqz v2, :cond_92

    .line 59
    :try_start_4f
    const-string v3, "ImsProfileLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getProfileList: found "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " profiles"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_92

    .line 63
    :cond_77
    invoke-static {p0, v2}, Lcom/sec/ims/settings/ImsProfileLoader;->getImsProfileFromRow(Landroid/content/Context;Landroid/database/Cursor;)Lcom/sec/ims/settings/ImsProfile;

    move-result-object v3

    .line 64
    .local v3, "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    nop

    .end local v3    # "profile":Lcom/sec/ims/settings/ImsProfile;
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_83
    .catchall {:try_start_4f .. :try_end_83} :catchall_86

    if-nez v3, :cond_77

    goto :goto_92

    .line 57
    :catchall_86
    move-exception v3

    if-eqz v2, :cond_91

    :try_start_89
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_8c
    .catchall {:try_start_89 .. :try_end_8c} :catchall_8d

    goto :goto_91

    :catchall_8d
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_91
    :goto_91
    throw v3

    .line 68
    :cond_92
    :goto_92
    if-eqz v2, :cond_97

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 70
    .end local v2    # "cursor":Landroid/database/Cursor;
    :cond_97
    return-object v0
.end method

.method public static updateProfile(Landroid/content/Context;Lcom/sec/ims/settings/ImsProfile;)I
    .registers 6
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "profile"    # Lcom/sec/ims/settings/ImsProfile;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "content://com.sec.ims.settings/profile/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 100
    .local v0, "uri":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p1}, Lcom/sec/ims/settings/ImsProfileLoader;->getContentValues(Lcom/sec/ims/settings/ImsProfile;)Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    .line 102
    .local v1, "count":I
    return v1
.end method

.method public static updateProfile(Landroid/content/Context;Ljava/util/List;)I
    .registers 9
    .param p0, "ctx"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/sec/ims/settings/ImsProfile;",
            ">;)I"
        }
    .end annotation

    .line 106
    .local p1, "profiles":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/settings/ImsProfile;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .local v0, "cpoList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/settings/ImsProfile;

    .line 108
    .local v2, "p":Lcom/sec/ims/settings/ImsProfile;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.sec.ims.settings/profile/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/settings/ImsProfile;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 109
    .local v3, "uri":Landroid/net/Uri;
    invoke-static {v3}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 110
    invoke-static {v2}, Lcom/sec/ims/settings/ImsProfileLoader;->getContentValues(Lcom/sec/ims/settings/ImsProfile;)Landroid/content/ContentValues;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v4

    .line 111
    .local v4, "cpoBuilder":Landroid/content/ContentProviderOperation$Builder;
    invoke-virtual {v4}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    .end local v2    # "p":Lcom/sec/ims/settings/ImsProfile;
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "cpoBuilder":Landroid/content/ContentProviderOperation$Builder;
    goto :goto_9

    .line 114
    :cond_44
    const/4 v1, 0x0

    .line 117
    .local v1, "count":I
    :try_start_45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.sec.ims.settings"

    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v2

    .line 121
    .local v2, "updateResults":[Landroid/content/ContentProviderResult;
    array-length v3, v2

    const/4 v4, 0x0

    :goto_51
    if-ge v4, v3, :cond_5f

    aget-object v5, v2, v4

    .line 122
    .local v5, "cpr":Landroid/content/ContentProviderResult;
    iget-object v6, v5, Landroid/content/ContentProviderResult;->count:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6
    :try_end_5b
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_5b} :catch_65
    .catch Landroid/content/OperationApplicationException; {:try_start_45 .. :try_end_5b} :catch_60

    add-int/2addr v1, v6

    .line 121
    .end local v5    # "cpr":Landroid/content/ContentProviderResult;
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .end local v2    # "updateResults":[Landroid/content/ContentProviderResult;
    :cond_5f
    goto :goto_69

    .line 126
    :catch_60
    move-exception v2

    .line 127
    .local v2, "e":Landroid/content/OperationApplicationException;
    invoke-virtual {v2}, Landroid/content/OperationApplicationException;->printStackTrace()V

    goto :goto_6a

    .line 124
    .end local v2    # "e":Landroid/content/OperationApplicationException;
    :catch_65
    move-exception v2

    .line 125
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 128
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_69
    nop

    .line 130
    :goto_6a
    return v1
.end method
