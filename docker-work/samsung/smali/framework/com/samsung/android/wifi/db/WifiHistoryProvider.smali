.class public Lcom/samsung/android/wifi/db/WifiHistoryProvider;
.super Landroid/content/ContentProvider;
.source "WifiHistoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wifi/db/WifiHistoryProvider$WifiHistoryObserver;,
        Lcom/samsung/android/wifi/db/WifiHistoryProvider$Listener;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field static final blacklist LOG_SIZE_LIMIT:I = 0x14

.field private static final blacklist TAG:Ljava/lang/String; = "WifiHistoryProvider"

.field private static final blacklist WIFI_CONTROL_HISTORY:I = 0x1

.field public static final blacklist sHistoricalDumpLogs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHelper:Lcom/samsung/android/wifi/db/ContentProviderHelper;

.field private final blacklist mURIMatcher:Landroid/content/UriMatcher;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDBG()Z
    .registers 1

    sget-boolean v0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->DBG:Z

    return v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 43
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->DBG:Z

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->sHistoricalDumpLogs:Ljava/util/List;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 3

    .line 56
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 57
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->mURIMatcher:Landroid/content/UriMatcher;

    .line 58
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Lcom/samsung/android/wifi/db/ContentProviderHelper;Landroid/content/UriMatcher;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "helper"    # Lcom/samsung/android/wifi/db/ContentProviderHelper;
    .param p3, "uriMatcher"    # Landroid/content/UriMatcher;

    .line 62
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->mHelper:Lcom/samsung/android/wifi/db/ContentProviderHelper;

    .line 65
    iput-object p3, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->mURIMatcher:Landroid/content/UriMatcher;

    .line 66
    return-void
.end method

.method private static blacklist addControlHistoryToDump(Ljava/lang/String;Z)V
    .registers 7
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "enable"    # Z

    .line 132
    sget-object v0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->sHistoricalDumpLogs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x14

    if-lt v1, v2, :cond_e

    .line 133
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 135
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "yy/MM/dd kk:mm:ss "

    invoke-static {v4, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " WifiManager.setWifiEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    return-void
.end method

.method public static blacklist addOrUpdateControlHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    .registers 5
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 119
    const-string v0, "WifiHistoryProvider"

    const-string/jumbo v1, "setControlHistory, packageName is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 122
    :cond_f
    invoke-static {p1, p2}, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->addControlHistoryToDump(Ljava/lang/String;Z)V

    .line 123
    invoke-static {p0, p1, p2}, Lcom/samsung/android/wifi/db/DatabaseHelperForHistory;->addOrUpdateControlHistory(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 124
    return-void
.end method

.method public static blacklist clearAll(Landroid/content/ContentResolver;)V
    .registers 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;

    .line 128
    invoke-static {p0}, Lcom/samsung/android/wifi/db/DatabaseHelperForHistory;->clearAll(Landroid/content/ContentResolver;)V

    .line 129
    return-void
.end method

.method public static blacklist dumpControlHistory()Ljava/lang/String;
    .registers 1

    .line 143
    sget-object v0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->sHistoricalDumpLogs:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist dumpControlHistory(Landroid/content/ContentResolver;Ljava/io/PrintWriter;)V
    .registers 3
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 148
    const-string v0, "Wi-Fi api call history:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->dumpControlHistory()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 150
    const-string v0, "Wi-Fi control history from provider:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    invoke-static {p0, p1}, Lcom/samsung/android/wifi/db/DatabaseHelperForHistory;->dump(Landroid/content/ContentResolver;Ljava/io/PrintWriter;)V

    .line 152
    return-void
.end method

.method public static blacklist registerContentObserver(Landroid/content/ContentResolver;Landroid/os/Handler;Lcom/samsung/android/wifi/db/WifiHistoryProvider$Listener;)V
    .registers 8
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "listener"    # Lcom/samsung/android/wifi/db/WifiHistoryProvider$Listener;

    .line 157
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 159
    .local v0, "identity":J
    :try_start_4
    const-string v2, "control"

    invoke-static {v2}, Lcom/samsung/android/wifi/db/DatabaseUtil;->getContentUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 160
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x1

    new-instance v4, Lcom/samsung/android/wifi/db/WifiHistoryProvider$WifiHistoryObserver;

    invoke-direct {v4, p0, p1, p2}, Lcom/samsung/android/wifi/db/WifiHistoryProvider$WifiHistoryObserver;-><init>(Landroid/content/ContentResolver;Landroid/os/Handler;Lcom/samsung/android/wifi/db/WifiHistoryProvider$Listener;)V

    invoke-virtual {p0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_13
    .catchall {:try_start_4 .. :try_end_13} :catchall_18

    .line 163
    .end local v2    # "uri":Landroid/net/Uri;
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    nop

    .line 165
    return-void

    .line 163
    :catchall_18
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 164
    throw v2
.end method


# virtual methods
.method public whitelist delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .line 111
    sget-boolean v0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->DBG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiHistoryProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->mHelper:Lcom/samsung/android/wifi/db/ContentProviderHelper;

    invoke-virtual {v0, p2, p3}, Lcom/samsung/android/wifi/db/ContentProviderHelper;->delete(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public whitelist getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 3
    .param p1, "uri"    # Landroid/net/Uri;

    .line 81
    iget-object v0, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->mHelper:Lcom/samsung/android/wifi/db/ContentProviderHelper;

    invoke-virtual {v0}, Lcom/samsung/android/wifi/db/ContentProviderHelper;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .line 95
    sget-boolean v0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->DBG:Z

    if-eqz v0, :cond_20

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insert uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiHistoryProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_20
    iget-object v0, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->mHelper:Lcom/samsung/android/wifi/db/ContentProviderHelper;

    invoke-virtual {v0, p2}, Lcom/samsung/android/wifi/db/ContentProviderHelper;->insert(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 97
    .local v0, "insertedUri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 98
    return-object v0
.end method

.method public whitelist onCreate()Z
    .registers 5

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->mContext:Landroid/content/Context;

    .line 72
    new-instance v0, Lcom/samsung/android/wifi/db/ContentProviderHelper;

    new-instance v1, Lcom/samsung/android/wifi/db/DatabaseHelperForHistory;

    iget-object v2, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/wifi/db/DatabaseHelperForHistory;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/wifi/db/ContentProviderHelper;-><init>(Lcom/samsung/android/wifi/db/ISemDatabaseHelper;)V

    iput-object v0, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->mHelper:Lcom/samsung/android/wifi/db/ContentProviderHelper;

    .line 73
    iget-object v0, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->mURIMatcher:Landroid/content/UriMatcher;

    .line 74
    invoke-static {}, Lcom/samsung/android/wifi/db/DatabaseHelperForHistory;->getPathString()Ljava/lang/String;

    move-result-object v1

    .line 73
    const-string v2, "com.samsung.server.wifi"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 75
    return v3
.end method

.method public whitelist query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .line 88
    sget-boolean v0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->DBG:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "query uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiHistoryProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_21
    iget-object v0, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->mHelper:Lcom/samsung/android/wifi/db/ContentProviderHelper;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/samsung/android/wifi/db/ContentProviderHelper;->query([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public whitelist update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .line 104
    sget-boolean v0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->DBG:Z

    if-eqz v0, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WifiHistoryProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :cond_21
    iget-object v0, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->mHelper:Lcom/samsung/android/wifi/db/ContentProviderHelper;

    invoke-virtual {v0, p2, p3, p4}, Lcom/samsung/android/wifi/db/ContentProviderHelper;->update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method
