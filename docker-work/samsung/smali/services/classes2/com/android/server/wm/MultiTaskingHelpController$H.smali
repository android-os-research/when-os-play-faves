.class public final Lcom/android/server/wm/MultiTaskingHelpController$H;
.super Landroid/os/Handler;
.source "MultiTaskingHelpController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiTaskingHelpController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final NOTIFY_SPLIT_ADJACENT:I = 0x6b


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiTaskingHelpController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiTaskingHelpController;Landroid/os/Looper;)V
    .registers 3

    .line 132
    iput-object p1, p0, Lcom/android/server/wm/MultiTaskingHelpController$H;->this$0:Lcom/android/server/wm/MultiTaskingHelpController;

    .line 133
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 138
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x6b

    if-eq p1, v0, :cond_7

    goto :goto_41

    .line 141
    :cond_7
    iget-object p1, p0, Lcom/android/server/wm/MultiTaskingHelpController$H;->this$0:Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-static {p1}, Lcom/android/server/wm/MultiTaskingHelpController;->-$$Nest$fgetmSplitAdjacentCallbacks(Lcom/android/server/wm/MultiTaskingHelpController;)Landroid/os/RemoteCallbackList;

    move-result-object p1

    monitor-enter p1

    .line 142
    :try_start_e
    iget-object v0, p0, Lcom/android/server/wm/MultiTaskingHelpController$H;->this$0:Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-static {v0}, Lcom/android/server/wm/MultiTaskingHelpController;->-$$Nest$fgetmSplitAdjacentCallbacks(Lcom/android/server/wm/MultiTaskingHelpController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_19
    if-ge v1, v0, :cond_37

    .line 144
    iget-object v2, p0, Lcom/android/server/wm/MultiTaskingHelpController$H;->this$0:Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-static {v2}, Lcom/android/server/wm/MultiTaskingHelpController;->-$$Nest$fgetmSplitAdjacentCallbacks(Lcom/android/server/wm/MultiTaskingHelpController;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;
    :try_end_27
    .catchall {:try_start_e .. :try_end_27} :catchall_42

    .line 146
    :try_start_27
    invoke-interface {v2}, Lcom/samsung/android/multiwindow/ISplitAdjacentCallback;->onAdjacentLaunched()V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2b
    .catchall {:try_start_27 .. :try_end_2a} :catchall_42

    goto :goto_34

    .line 148
    :catch_2b
    :try_start_2b
    invoke-static {}, Lcom/android/server/wm/MultiTaskingHelpController;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "NOTIFY_SPLIT_ADJACENT, RemoteException occurred"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_34
    add-int/lit8 v1, v1, 0x1

    goto :goto_19

    .line 151
    :cond_37
    iget-object p0, p0, Lcom/android/server/wm/MultiTaskingHelpController$H;->this$0:Lcom/android/server/wm/MultiTaskingHelpController;

    invoke-static {p0}, Lcom/android/server/wm/MultiTaskingHelpController;->-$$Nest$fgetmSplitAdjacentCallbacks(Lcom/android/server/wm/MultiTaskingHelpController;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 152
    monitor-exit p1

    :goto_41
    return-void

    :catchall_42
    move-exception p0

    monitor-exit p1
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_42

    throw p0
.end method
