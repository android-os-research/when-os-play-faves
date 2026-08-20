.class Lcom/samsung/android/wifi/ap/SemWifiApContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "SemWifiApContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/ap/SemWifiApContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .line 53
    const-string v0, "SemWifiApContentProvider.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 54
    return-void
.end method


# virtual methods
.method public whitelist onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    const-string v0, " CREATE TABLE SemWifiApContentProvider (_id INTEGER PRIMARY KEY AUTOINCREMENT,  name TEXT NOT NULL,  value TEXT NOT NULL);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public whitelist onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 62
    const-string v0, "DROP TABLE IF EXISTS SemWifiApContentProvider"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/samsung/android/wifi/ap/SemWifiApContentProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 64
    return-void
.end method
