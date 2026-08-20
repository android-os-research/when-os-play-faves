.class public Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LockSettingsStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DatabaseHelper"
.end annotation


# static fields
.field public static final DATABASE_NAME:Ljava/lang/String; = "locksettings.db"

.field public static final DATABASE_VERSION:I = 0x3

.field public static final IDLE_CONNECTION_TIMEOUT_MS:I = 0x7530

.field public static final TAG:Ljava/lang/String; = "LockSettingsDB"


# instance fields
.field public mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const-string/jumbo v0, "locksettings.db"

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 864
    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const/4 p1, 0x0

    .line 865
    invoke-virtual {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    const-wide/16 v0, 0x7530

    .line 867
    invoke-virtual {p0, v0, v1}, Landroid/database/sqlite/SQLiteOpenHelper;->setIdleConnectionTimeout(J)V

    return-void
.end method


# virtual methods
.method public final createTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    const-string p0, "CREATE TABLE locksettings (_id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,user INTEGER,value TEXT);"

    .line 875
    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 2

    .line 885
    invoke-virtual {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->createTable(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 886
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;

    if-eqz p0, :cond_a

    .line 887
    invoke-interface {p0, p1}, Lcom/android/server/locksettings/LockSettingsStorage$Callback;->initialize(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_a
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .registers 4

    const/4 p0, 0x1

    if-ne p2, p0, :cond_4

    const/4 p2, 0x2

    :cond_4
    const/4 p0, 0x3

    if-eq p2, p0, :cond_e

    const-string p0, "LockSettingsDB"

    const-string p1, "Failed to upgrade database!"

    .line 900
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method public setCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V
    .registers 2

    .line 871
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsStorage$DatabaseHelper;->mCallback:Lcom/android/server/locksettings/LockSettingsStorage$Callback;

    return-void
.end method
