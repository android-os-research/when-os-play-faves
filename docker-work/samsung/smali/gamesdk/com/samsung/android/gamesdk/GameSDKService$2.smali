.class Lcom/samsung/android/gamesdk/GameSDKService$2;
.super Landroid/content/BroadcastReceiver;
.source "GameSDKService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/gamesdk/GameSDKService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/gamesdk/GameSDKService;


# direct methods
.method constructor <init>(Lcom/samsung/android/gamesdk/GameSDKService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/android/gamesdk/GameSDKService;

    .line 82
    iput-object p1, p0, Lcom/samsung/android/gamesdk/GameSDKService$2;->this$0:Lcom/samsung/android/gamesdk/GameSDKService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 85
    iget-object v0, p0, Lcom/samsung/android/gamesdk/GameSDKService$2;->this$0:Lcom/samsung/android/gamesdk/GameSDKService;

    # invokes: Lcom/samsung/android/gamesdk/GameSDKService;->onLazyInitialize()Z
    invoke-static {v0}, Lcom/samsung/android/gamesdk/GameSDKService;->access$000(Lcom/samsung/android/gamesdk/GameSDKService;)Z

    .line 86
    return-void
.end method
