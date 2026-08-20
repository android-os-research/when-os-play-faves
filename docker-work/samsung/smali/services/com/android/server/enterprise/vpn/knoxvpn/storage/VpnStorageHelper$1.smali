.class public Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;
.super Ljava/lang/Object;
.source "VpnStorageHelper.java"

# interfaces
.implements Lcom/android/server/enterprise/storage/TableCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->doTablesCreationOrUpdate(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

.field public final synthetic val$db:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 100
    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTableFound(Lcom/android/server/enterprise/storage/Table;)V
    .registers 11

    const-string v0, "KnoxVpn.StorageHelper"

    .line 105
    :try_start_2
    iget-object v1, p1, Lcom/android/server/enterprise/storage/Table;->mTableName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_4} :catch_74

    .line 106
    :try_start_4
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->-$$Nest$smisTableExists(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1c

    .line 107
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->-$$Nest$smpreTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 108
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->-$$Nest$smcreateTable(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    .line 109
    iget-object p0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p0, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->-$$Nest$smpostTableCreate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)V

    goto :goto_8f

    .line 111
    :cond_1c
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->-$$Nest$smpreTableUpdate(Landroid/database/sqlite/SQLiteDatabase;Lcom/android/server/enterprise/storage/Table;)Z

    move-result v2

    if-nez v2, :cond_8f

    .line 112
    iget-object v2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v1, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->-$$Nest$smgetMissingColumns(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Lcom/android/server/enterprise/storage/Table;)Ljava/util/ArrayList;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/enterprise/storage/Column;

    .line 115
    iget-object v7, p0, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper$1;->val$db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v8, "ALTER TABLE %s ADD COLUMN %s;"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    .line 116
    invoke-virtual {v3}, Lcom/android/server/enterprise/storage/Column;->getSQLDeclaration()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v4

    .line 115
    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    goto :goto_2e

    .line 119
    :cond_53
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/storage/VpnStorageHelper;->-$$Nest$sfgetDBG()Z

    move-result p0

    if-eqz p0, :cond_8f

    const-string/jumbo p0, "onTableFound Altered Table %s with Columns %d"

    new-array v2, v6, [Ljava/lang/Object;

    aput-object v1, v2, v5

    .line 121
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v4

    .line 119
    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_71
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_71} :catch_72

    goto :goto_8f

    :catch_72
    move-exception p0

    goto :goto_76

    :catch_74
    move-exception p0

    const/4 v1, 0x0

    .line 125
    :goto_76
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Table "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " creation/update EX:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8f
    :goto_8f
    return-void
.end method
