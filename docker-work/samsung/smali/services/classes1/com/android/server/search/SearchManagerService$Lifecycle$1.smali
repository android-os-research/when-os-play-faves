.class public Lcom/android/server/search/SearchManagerService$Lifecycle$1;
.super Landroid/content/BroadcastReceiver;
.source "SearchManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/search/SearchManagerService$Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/search/SearchManagerService$Lifecycle;


# direct methods
.method public constructor <init>(Lcom/android/server/search/SearchManagerService$Lifecycle;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1;->this$0:Lcom/android/server/search/SearchManagerService$Lifecycle;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 100
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 101
    new-instance v0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;

    invoke-direct {v0, p0, p2}, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;-><init>(Lcom/android/server/search/SearchManagerService$Lifecycle$1;Landroid/content/Intent;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 113
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    return-void
.end method
