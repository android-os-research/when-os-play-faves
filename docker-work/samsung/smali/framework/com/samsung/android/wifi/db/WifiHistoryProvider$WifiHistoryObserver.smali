.class Lcom/samsung/android/wifi/db/WifiHistoryProvider$WifiHistoryObserver;
.super Landroid/database/ContentObserver;
.source "WifiHistoryProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/db/WifiHistoryProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiHistoryObserver"
.end annotation


# instance fields
.field private final blacklist mContentResolver:Landroid/content/ContentResolver;

.field private final blacklist mListener:Lcom/samsung/android/wifi/db/WifiHistoryProvider$Listener;


# direct methods
.method public constructor blacklist <init>(Landroid/content/ContentResolver;Landroid/os/Handler;Lcom/samsung/android/wifi/db/WifiHistoryProvider$Listener;)V
    .registers 4
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "listener"    # Lcom/samsung/android/wifi/db/WifiHistoryProvider$Listener;

    .line 177
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 178
    iput-object p1, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider$WifiHistoryObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 179
    iput-object p3, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider$WifiHistoryObserver;->mListener:Lcom/samsung/android/wifi/db/WifiHistoryProvider$Listener;

    .line 180
    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .line 184
    invoke-static {}, Lcom/samsung/android/wifi/db/WifiHistoryProvider;->-$$Nest$sfgetDBG()Z

    move-result v0

    const-string v1, "WifiHistoryProvider"

    if-eqz v0, :cond_1e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WifiHistoryObserver.onChange "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1e
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 186
    iget-object v0, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider$WifiHistoryObserver;->mContentResolver:Landroid/content/ContentResolver;

    .line 187
    invoke-static {v0}, Lcom/samsung/android/wifi/db/DatabaseHelperForHistory;->getLastHistory(Landroid/content/ContentResolver;)Landroid/util/Pair;

    move-result-object v0

    .line 188
    .local v0, "lastControlHistory":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-nez v0, :cond_2f

    .line 189
    const-string v2, "failed to get Wi-Fi control history"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 192
    :cond_2f
    iget-object v1, p0, Lcom/samsung/android/wifi/db/WifiHistoryProvider$WifiHistoryObserver;->mListener:Lcom/samsung/android/wifi/db/WifiHistoryProvider$Listener;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/samsung/android/wifi/db/WifiHistoryProvider$Listener;->onChanged(Ljava/lang/String;Z)V

    .line 193
    return-void
.end method
