.class public Lcom/android/server/content/ContentService$1;
.super Landroid/content/BroadcastReceiver;
.source "ContentService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/content/ContentService;


# direct methods
.method public constructor <init>(Lcom/android/server/content/ContentService;)V
    .registers 2

    .line 216
    iput-object p1, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 219
    iget-object p1, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    invoke-static {p1}, Lcom/android/server/content/ContentService;->-$$Nest$fgetmCache(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object p1

    monitor-enter p1

    :try_start_7
    const-string v0, "android.intent.action.LOCALE_CHANGED"

    .line 220
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 221
    iget-object p0, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    invoke-static {p0}, Lcom/android/server/content/ContentService;->-$$Nest$fgetmCache(Lcom/android/server/content/ContentService;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    goto :goto_35

    .line 223
    :cond_1d
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_35

    const-string v1, "android.intent.extra.user_handle"

    const/16 v2, -0x2710

    .line 225
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 227
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 228
    iget-object p0, p0, Lcom/android/server/content/ContentService$1;->this$0:Lcom/android/server/content/ContentService;

    const/4 v1, 0x0

    invoke-static {p0, p2, v0, v1}, Lcom/android/server/content/ContentService;->-$$Nest$minvalidateCacheLocked(Lcom/android/server/content/ContentService;ILjava/lang/String;Landroid/net/Uri;)V

    .line 231
    :cond_35
    :goto_35
    monitor-exit p1

    return-void

    :catchall_37
    move-exception p0

    monitor-exit p1
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw p0
.end method
