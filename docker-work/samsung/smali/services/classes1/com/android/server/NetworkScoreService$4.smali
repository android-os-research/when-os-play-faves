.class public Lcom/android/server/NetworkScoreService$4;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Ljava/util/function/BiConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkScoreService;->clearInternal()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/BiConsumer<",
        "Landroid/net/INetworkScoreCache;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method public constructor <init>(Lcom/android/server/NetworkScoreService;)V
    .registers 2

    .line 800
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$4;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/net/INetworkScoreCache;Ljava/lang/Object;)V
    .registers 3

    .line 804
    :try_start_0
    invoke-interface {p1}, Landroid/net/INetworkScoreCache;->clearScores()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_13

    :catch_4
    move-exception p0

    const/4 p1, 0x2

    const-string p2, "NetworkScoreService"

    .line 806
    invoke-static {p2, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_13

    const-string p1, "Unable to clear scores"

    .line 807
    invoke-static {p2, p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_13
    :goto_13
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 800
    check-cast p1, Landroid/net/INetworkScoreCache;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/NetworkScoreService$4;->accept(Landroid/net/INetworkScoreCache;Ljava/lang/Object;)V

    return-void
.end method
