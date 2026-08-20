.class public Lcom/android/server/display/WifiDisplayAdapter$14;
.super Landroid/content/BroadcastReceiver;
.source "WifiDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/WifiDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/WifiDisplayAdapter;)V
    .registers 2

    .line 731
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    .line 734
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.server.display.wfd.DISCONNECT"

    .line 735
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 736
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 737
    :try_start_13
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p0}, Lcom/android/server/display/WifiDisplayAdapter;->requestDisconnectLocked()V

    .line 738
    monitor-exit v0

    goto/16 :goto_f5

    :catchall_1b
    move-exception p0

    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_1b

    throw p0

    :cond_1e
    const-string v0, "com.samsung.intent.action.SEC_PRESENTATION_START"

    .line 740
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eqz v0, :cond_7b

    :try_start_28
    const-string/jumbo p1, "ownerPackageName"

    .line 742
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "displayID"

    .line 743
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "WifiDisplayAdapter"

    .line 744
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SEM_PRESENTATION_START displayID : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", PackageName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le p2, v2, :cond_f5

    if-eq p2, v1, :cond_f5

    .line 746
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p0, v1, p2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$msendPresentationDisplayInfo(Lcom/android/server/display/WifiDisplayAdapter;ZILjava/lang/String;)V
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_5c} :catch_5e

    goto/16 :goto_f5

    :catch_5e
    move-exception p0

    const-string p1, "WifiDisplayAdapter"

    .line 749
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SEM_PRESENTATION_START Error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f5

    :cond_7b
    const-string v0, "com.samsung.intent.action.SEC_PRESENTATION_STOP"

    .line 751
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_d5

    :try_start_84
    const-string/jumbo p1, "ownerPackageName"

    .line 753
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "displayID"

    .line 754
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const-string v0, "WifiDisplayAdapter"

    .line 755
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SEM_PRESENTATION_STOP displayID : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", PackageName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le p2, v2, :cond_f5

    if-eq p2, v1, :cond_f5

    .line 757
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p0, v3, p2, p1}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$msendPresentationDisplayInfo(Lcom/android/server/display/WifiDisplayAdapter;ZILjava/lang/String;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_b8} :catch_b9

    goto :goto_f5

    :catch_b9
    move-exception p0

    const-string p1, "WifiDisplayAdapter"

    .line 760
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SEM_PRESENTATION_STOP Error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f5

    :cond_d5
    const-string v0, "com.samsung.intent.action.ROTATION_CHANGED"

    .line 762
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f5

    .line 763
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    :try_start_e4
    const-string/jumbo v0, "rotation"

    .line 764
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 765
    iget-object p0, p0, Lcom/android/server/display/WifiDisplayAdapter$14;->this$0:Lcom/android/server/display/WifiDisplayAdapter;

    invoke-static {p0, p2}, Lcom/android/server/display/WifiDisplayAdapter;->-$$Nest$mrotationDisplayDeviceLocked(Lcom/android/server/display/WifiDisplayAdapter;I)V

    .line 766
    monitor-exit p1

    goto :goto_f5

    :catchall_f2
    move-exception p0

    monitor-exit p1
    :try_end_f4
    .catchall {:try_start_e4 .. :try_end_f4} :catchall_f2

    throw p0

    :cond_f5
    :goto_f5
    return-void
.end method
