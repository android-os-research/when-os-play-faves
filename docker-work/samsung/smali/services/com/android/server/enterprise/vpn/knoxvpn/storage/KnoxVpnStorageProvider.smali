.class public Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
.super Ljava/lang/Object;
.source "KnoxVpnStorageProvider.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "KnoxVpnStorageProvider"

.field public static mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

.field public static mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

.field public static mSynObj:Ljava/lang/Object;


# instance fields
.field public mContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mSynObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mContext:Landroid/content/Context;

    .line 56
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mSynObj:Ljava/lang/Object;

    monitor-enter v0

    .line 57
    :try_start_9
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-nez v1, :cond_16

    .line 58
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mContext:Landroid/content/Context;

    .line 59
    new-instance p0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-direct {p0, p1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 61
    :cond_16
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_9 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    .registers 3

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    monitor-enter v0

    .line 65
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    if-nez v1, :cond_e

    .line 66
    new-instance v1, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    invoke-direct {v1, p0}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    .line 68
    :cond_e
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mDefaultProvider:Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getPackagesFromVpn10()Ljava/util/ArrayList;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;

    monitor-enter v0

    .line 173
    :try_start_3
    sget-object v1, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_55

    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 174
    monitor-exit v0

    return-object v2

    .line 177
    :cond_a
    :try_start_a
    iget-object v1, v1, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string v4, "EnterpriseVpn"

    const-string v1, "applicationInfo"

    .line 178
    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "profileName"

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_55

    if-eqz v1, :cond_53

    .line 183
    :try_start_25
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 185
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_4a

    :cond_33
    const/4 v3, 0x0

    .line 187
    :goto_34
    invoke-interface {v1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    if-ge v3, v4, :cond_44

    .line 188
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 190
    :cond_44
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_48
    .catchall {:try_start_25 .. :try_end_48} :catchall_4e

    if-nez v3, :cond_33

    .line 193
    :cond_4a
    :try_start_4a
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_53

    :catchall_4e
    move-exception v2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 194
    throw v2
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_55

    .line 196
    :cond_53
    :goto_53
    monitor-exit v0

    return-object v2

    :catchall_55
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 4

    .line 76
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->deleteDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation

    .line 81
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getDomainsByProfileName(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 117
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    if-eqz p0, :cond_9e

    .line 121
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 124
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v0, v0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string/jumbo v0, "packageCid"

    const-string/jumbo v2, "packageUid"

    .line 125
    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object p1, v5, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v2, "VpnPackageInfo"

    const-string/jumbo v4, "profileName=?"

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_9d

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDomainsByProfileName : cursor.size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KnoxVpnStorageProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :try_start_49
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 138
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_94

    .line 140
    :cond_52
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 141
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDomainsByProfileName : cid : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 143
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDomainsByProfileName : uid : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_8e

    if-ltz v1, :cond_8e

    .line 146
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_8e
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_92
    .catchall {:try_start_49 .. :try_end_92} :catchall_98

    if-nez v1, :cond_52

    .line 152
    :cond_94
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_9d

    :catchall_98
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 153
    throw p0

    :cond_9d
    :goto_9d
    return-object p0

    :cond_9e
    const/4 p0, 0x0

    return-object p0
.end method

.method public getProfileId()I
    .registers 12

    .line 86
    sget-object v0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "KnoxVpnStorageProvider"

    const/4 v2, -0x1

    if-eqz v0, :cond_74

    .line 87
    iget-object v0, v0, Lcom/android/server/enterprise/storage/EdmStorageProviderBase;->mEdmDbHelper:Lcom/android/server/enterprise/storage/EdmStorageHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    const-string/jumbo v0, "profileCount"

    .line 88
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v4, "VpnAnalyticsTable"

    invoke-virtual/range {v3 .. v10}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_37

    .line 90
    :try_start_22
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-gtz v5, :cond_29

    goto :goto_37

    .line 95
    :cond_29
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-lez p0, :cond_4a

    .line 96
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 97
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    goto :goto_4a

    .line 91
    :cond_37
    :goto_37
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 92
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v0, "VpnAnalyticsTable"

    const/4 v6, 0x0

    .line 93
    invoke-virtual {p0, v0, v6, v6, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_49} :catch_52
    .catchall {:try_start_22 .. :try_end_49} :catchall_50

    move v2, v4

    :cond_4a
    :goto_4a
    if-eqz v3, :cond_74

    .line 103
    :goto_4c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_74

    :catchall_50
    move-exception p0

    goto :goto_6e

    :catch_52
    move-exception p0

    .line 100
    :try_start_53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6b
    .catchall {:try_start_53 .. :try_end_6b} :catchall_50

    if-eqz v3, :cond_74

    goto :goto_4c

    :goto_6e
    if-eqz v3, :cond_73

    .line 103
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 105
    :cond_73
    throw p0

    .line 107
    :cond_74
    :goto_74
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "profile id : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z
    .registers 5

    .line 72
    sget-object p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/KnoxVpnStorageProvider;->mEDM:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putDataByFields(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result p0

    return p0
.end method
