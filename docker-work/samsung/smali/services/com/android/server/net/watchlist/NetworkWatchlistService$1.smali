.class public Lcom/android/server/net/watchlist/NetworkWatchlistService$1;
.super Lcom/android/server/net/BaseNetdEventCallback;
.source "NetworkWatchlistService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/watchlist/NetworkWatchlistService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/watchlist/NetworkWatchlistService;)V
    .registers 2

    .line 143
    iput-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    invoke-direct {p0}, Lcom/android/server/net/BaseNetdEventCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectEvent(Ljava/lang/String;IJI)V
    .registers 6

    .line 155
    iget-object p2, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    invoke-static {p2}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->-$$Nest$fgetmIsLoggingEnabled(Lcom/android/server/net/watchlist/NetworkWatchlistService;)Z

    move-result p2

    if-nez p2, :cond_9

    return-void

    .line 158
    :cond_9
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    const/4 p2, 0x0

    const/4 p3, 0x1

    new-array p3, p3, [Ljava/lang/String;

    const/4 p4, 0x0

    aput-object p1, p3, p4

    invoke-virtual {p0, p2, p3, p5}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->asyncNetworkEvent(Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method public onDnsEvent(IIILjava/lang/String;[Ljava/lang/String;IJI)V
    .registers 10

    .line 147
    iget-object p1, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    invoke-static {p1}, Lcom/android/server/net/watchlist/NetworkWatchlistService;->-$$Nest$fgetmIsLoggingEnabled(Lcom/android/server/net/watchlist/NetworkWatchlistService;)Z

    move-result p1

    if-nez p1, :cond_9

    return-void

    .line 150
    :cond_9
    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService$1;->this$0:Lcom/android/server/net/watchlist/NetworkWatchlistService;

    iget-object p0, p0, Lcom/android/server/net/watchlist/NetworkWatchlistService;->mNetworkWatchlistHandler:Lcom/android/server/net/watchlist/WatchlistLoggingHandler;

    invoke-virtual {p0, p4, p5, p9}, Lcom/android/server/net/watchlist/WatchlistLoggingHandler;->asyncNetworkEvent(Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method
