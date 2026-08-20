.class public Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb;
.super Ljava/lang/Object;
.source "BluetoothDeviceDb.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;
    }
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "address"

.field public static final BONDSTATE_DB_ADDR_SWITCHED:I = 0x4

.field public static final BONDSTATE_DB_BONDED:I = 0x2

.field public static final BONDSTATE_DB_RESTORED:I = 0x1

.field public static final BT_BACKUP_PROVIDER_URI:Ljava/lang/String; = "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final TAG:Ljava/lang/String; = "[MCF_DS_SYS]_BluetoothDeviceDb"

.field public static final TIMESTAMP:Ljava/lang/String; = "timestamp"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static retrieveBackupDevices(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;",
            ">;"
        }
    .end annotation

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const-string v1, "content://com.samsung.bt.btservice.btsettingsprovider/bonddevice"

    .line 33
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    if-nez v1, :cond_13

    return-object v0

    :cond_13
    const-string v5, "bond_state == 2 OR bond_state == 1 OR bond_state == 4"

    .line 43
    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v6, 0x0

    const-string/jumbo v7, "timestamp DESC"

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0
    :try_end_22
    .catch Ljava/lang/IllegalStateException; {:try_start_15 .. :try_end_22} :catch_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_22} :catch_60

    if-eqz p0, :cond_5a

    .line 45
    :try_start_24
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 46
    :goto_27
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_5a

    const-string v1, "address"

    .line 47
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_3a

    goto :goto_27

    :cond_3a
    const-string v2, "name"

    .line 51
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 52
    new-instance v3, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;

    invoke-direct {v3, v1, v2}, Lcom/samsung/android/server/continuity/autoswitch/BluetoothDeviceDb$DeviceProperty;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_4f
    .catchall {:try_start_24 .. :try_end_4f} :catchall_50

    goto :goto_27

    :catchall_50
    move-exception v1

    .line 43
    :try_start_51
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_54
    .catchall {:try_start_51 .. :try_end_54} :catchall_55

    goto :goto_59

    :catchall_55
    move-exception p0

    :try_start_56
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_59
    throw v1

    :cond_5a
    if-eqz p0, :cond_78

    .line 56
    invoke-interface {p0}, Landroid/database/Cursor;->close()V
    :try_end_5f
    .catch Ljava/lang/IllegalStateException; {:try_start_56 .. :try_end_5f} :catch_60
    .catch Ljava/lang/IllegalArgumentException; {:try_start_56 .. :try_end_5f} :catch_60

    goto :goto_78

    :catch_60
    move-exception p0

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "retrieveBackupDevices - Exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "[MCF_DS_SYS]_BluetoothDeviceDb"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_78
    :goto_78
    return-object v0
.end method
