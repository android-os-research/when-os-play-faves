.class public Lcom/samsung/android/mcf/external/BluetoothBackupDB;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final BONDSTATE_DB_ADDR_SWITCHED:I = 0x4

.field public static final BONDSTATE_DB_BONDED:I = 0x2

.field public static final BONDSTATE_DB_DELETED:I = 0x3

.field public static final BONDSTATE_DB_RESTORED:I = 0x1

.field public static final BONDSTATE_DB_UNBONDED:I = 0x0

.field public static final BOND_STATE:Ljava/lang/String; = "bond_state"

.field public static final MANUFACTURERDATA:Ljava/lang/String; = "manufacturerdata"

.field public static final TAG:Ljava/lang/String; = "BluetoothBackupDB"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I
    .registers 4
    .param p0    # Landroid/database/Cursor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p0

    if-ltz p0, :cond_7

    return p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong Index Name :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static retrieveBackupDataFromDB(Landroid/content/Context;Z)Ljava/util/ArrayList;
    .registers 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;",
            ">;"
        }
    .end annotation

    const-string/jumbo v0, "retrieveBackupDataFromDB "

    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const-string v2, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    if-eqz p0, :cond_cd

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-nez v2, :cond_1a

    goto/16 :goto_cd

    :cond_1a
    const-string v2, "BluetoothBackupDB"

    if-nez p1, :cond_29

    const-string/jumbo p1, "retrieveBackupDataFromDB"

    const-string v3, " query restored device"

    invoke-static {v2, p1, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "bond_state == 1 OR bond_state == 4"

    goto :goto_2b

    :cond_29
    const-string p1, "bond_state == 2"

    :goto_2b
    move-object v6, p1

    :try_start_2c
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    const-string/jumbo v8, "timestamp DESC"

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_39
    .catch Ljava/lang/IllegalStateException; {:try_start_2c .. :try_end_39} :catch_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2c .. :try_end_39} :catch_c5

    if-eqz p0, :cond_bf

    :try_start_3b
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " cursor count: "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Columns : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v0, p1}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "address"

    invoke-static {p0, p1}, Lcom/samsung/android/mcf/external/BluetoothBackupDB;->getIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result p1

    const-string v3, "manufacturerdata"

    invoke-static {p0, v3}, Lcom/samsung/android/mcf/external/BluetoothBackupDB;->getIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    const-string v4, "bond_state"

    invoke-static {p0, v4}, Lcom/samsung/android/mcf/external/BluetoothBackupDB;->getIndexOrThrow(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_74
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v5

    if-nez v5, :cond_bf

    new-instance v5, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;

    invoke-direct {v5}, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;-><init>()V

    invoke-interface {p0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mAddress:Ljava/lang/String;

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mManufacturerData:Ljava/lang/String;

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    iput v6, v5, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mBondState:I

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v6, " retrieveBackupDataFromDB backup "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Lcom/samsung/android/mcf/external/BluetoothBackupDB$DeviceProperty;->mBondState:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v6, v5}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_b4
    .catchall {:try_start_3b .. :try_end_b4} :catchall_b5

    goto :goto_74

    :catchall_b5
    move-exception p1

    :try_start_b6
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_b9
    .catchall {:try_start_b6 .. :try_end_b9} :catchall_ba

    goto :goto_be

    :catchall_ba
    move-exception p0

    :try_start_bb
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_be
    throw p1

    :cond_bf
    if-eqz p0, :cond_cd

    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_c4
    .catch Ljava/lang/IllegalStateException; {:try_start_bb .. :try_end_c4} :catch_c5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bb .. :try_end_c4} :catch_c5

    goto :goto_cd

    :catch_c5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v0, p0}, Lcom/samsung/android/mcf/common/DLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_cd
    :goto_cd
    return-object v1
.end method
