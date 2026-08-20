.class public Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;
.super Ljava/lang/Object;
.source "SearchManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/search/SearchManagerService$Lifecycle$1;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/search/SearchManagerService$Lifecycle$1;

.field public final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/server/search/SearchManagerService$Lifecycle$1;Landroid/content/Intent;)V
    .registers 3

    .line 101
    iput-object p1, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;->this$1:Lcom/android/server/search/SearchManagerService$Lifecycle$1;

    iput-object p2, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 104
    iget-object v0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;->val$intent:Landroid/content/Intent;

    if-nez v0, :cond_d

    const-string p0, "SearchManagerService"

    const-string/jumbo v0, "onReceive: null intent"

    .line 105
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 108
    :cond_d
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 109
    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1$1;->this$1:Lcom/android/server/search/SearchManagerService$Lifecycle$1;

    iget-object p0, p0, Lcom/android/server/search/SearchManagerService$Lifecycle$1;->this$0:Lcom/android/server/search/SearchManagerService$Lifecycle;

    invoke-static {p0}, Lcom/android/server/search/SearchManagerService$Lifecycle;->-$$Nest$msendBroadcastReadyIntent(Lcom/android/server/search/SearchManagerService$Lifecycle;)V

    :cond_20
    return-void
.end method
