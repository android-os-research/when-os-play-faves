.class public Lcom/android/server/updates/NetworkWatchlistInstallReceiver;
.super Lcom/android/server/updates/ConfigUpdateInstallReceiver;
.source "NetworkWatchlistInstallReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 5

    const-string v0, "/data/misc/network_watchlist/"

    const-string v1, "network_watchlist.xml"

    const-string v2, "metadata/"

    const-string/jumbo v3, "version"

    .line 28
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/updates/ConfigUpdateInstallReceiver;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public postInstall(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 34
    :try_start_0
    const-class p0, Landroid/net/NetworkWatchlistManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/NetworkWatchlistManager;

    invoke-virtual {p0}, Landroid/net/NetworkWatchlistManager;->reloadWatchlist()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_13

    :catch_c
    const-string p0, "NetworkWatchlistInstallReceiver"

    const-string p1, "Unable to reload watchlist"

    .line 37
    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_13
    return-void
.end method
