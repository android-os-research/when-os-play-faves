.class public Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "IbsQuickDim.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ibs/sqd/IbsQuickDim;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SQLiteSQDwhilteList"
.end annotation


# static fields
.field public static final COL_EVENT_PKG:Ljava/lang/String; = "PackageName"

.field public static final COL_EVENT_UID:Ljava/lang/String; = "Uid"

.field public static final DB_NAME:Ljava/lang/String; = "SQD_whilte_list"

.field public static final DB_TABLE_NAME:Ljava/lang/String; = "whilteList"

.field public static final DB_VERSION:I = 0x1


# instance fields
.field public mDb:Landroid/database/sqlite/SQLiteDatabase;

.field public final synthetic this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;


# direct methods
.method public constructor <init>(Lcom/android/server/ibs/sqd/IbsQuickDim;Landroid/content/Context;)V
    .registers 5

    .line 561
    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    const-string p1, "SQD_whilte_list"

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 562
    invoke-direct {p0, p2, p1, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 559
    iput-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 563
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 591
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v0, "whilteList"

    invoke-virtual {p0, v0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public insert(Landroid/content/ContentValues;)J
    .registers 4

    .line 586
    iget-object v0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->this$0:Lcom/android/server/ibs/sqd/IbsQuickDim;

    invoke-static {v0}, Lcom/android/server/ibs/sqd/IbsQuickDim;->-$$Nest$fgetDEBUG(Lcom/android/server/ibs/sqd/IbsQuickDim;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "IbsQuickDim"

    const-string v1, "SQLiteSQDwhilteList: ready to add whiteList!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    :cond_f
    iget-object p0, p0, Lcom/android/server/ibs/sqd/IbsQuickDim$SQLiteSQDwhilteList;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    const-string/jumbo v0, "whilteList"

    const-string v1, ""

    invoke-virtual {p0, v0, v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide p0

    return-wide p0
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string p0, "CREATE TABLE IF NOT EXISTS  whilteList(_id INTEGER PRIMARY KEY AUTOINCREMENT,PackageName TEXT,Uid INT)"

    .line 568
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    return-void
.end method

.method public query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 14

    .line 580
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const-string/jumbo p0, "whilteList"

    .line 581
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    .line 582
    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method
