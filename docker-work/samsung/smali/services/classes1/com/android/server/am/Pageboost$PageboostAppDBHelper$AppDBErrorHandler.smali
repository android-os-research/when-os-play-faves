.class public Lcom/android/server/am/Pageboost$PageboostAppDBHelper$AppDBErrorHandler;
.super Ljava/lang/Object;
.source "Pageboost.java"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/Pageboost$PageboostAppDBHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppDBErrorHandler"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .registers 3

    .line 2843
    invoke-static {}, Lcom/android/server/am/Pageboost;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "appDB is deleted by AppDBErrorHandler"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2844
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 2845
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/database/sqlite/SQLiteDatabase;->deleteDatabase(Ljava/io/File;)Z

    return-void
.end method
