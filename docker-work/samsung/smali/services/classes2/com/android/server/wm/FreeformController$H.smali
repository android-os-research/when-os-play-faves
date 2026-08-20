.class public final Lcom/android/server/wm/FreeformController$H;
.super Landroid/os/Handler;
.source "FreeformController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/FreeformController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "H"
.end annotation


# static fields
.field public static final BIND_MINIMIZE_CONTAINER_SERVICE:I = 0x65

.field public static final BIND_SMART_POPUP_VIEW_SERVICE:I = 0x67

.field public static final NOTIFY_FREEFORM_MINIMIZED:I = 0xc9

.field public static final NOTIFY_FREEFORM_MINIMIZE_ANIMATION_END:I = 0xcb

.field public static final NOTIFY_FREEFORM_TASK_MOVE_ENDED:I = 0xcd

.field public static final NOTIFY_FREEFORM_TASK_MOVE_STARTED:I = 0xcc

.field public static final NOTIFY_FREEFORM_UNMINIMIZED:I = 0xca

.field public static final SHOW_NOT_SUPPORT_MULTI_WINDOW_TOAST:I = 0x1

.field public static final UNBIND_MINIMIZE_CONTAINER_SERVICE:I = 0x66

.field public static final UNBIND_SMART_POPUP_VIEW_SERVICE:I = 0x68


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/FreeformController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/FreeformController;Landroid/os/Looper;)V
    .registers 3

    .line 337
    iput-object p1, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    .line 338
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 15

    .line 343
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1ab

    packed-switch v0, :pswitch_data_1d6

    packed-switch v0, :pswitch_data_1e2

    goto/16 :goto_1d5

    .line 449
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    .line 450
    :try_start_15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 451
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 452
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Landroid/os/IRemoteCallback;

    .line 454
    iget-object v3, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v3}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    :goto_29
    if-ge v1, v3, :cond_46

    .line 456
    iget-object v4, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v4}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_37
    .catchall {:try_start_15 .. :try_end_37} :catchall_52

    .line 458
    :try_start_37
    invoke-interface {v4, v2, p1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onTaskMoveEnded(ILandroid/os/IRemoteCallback;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_37 .. :try_end_3a} :catch_3b
    .catchall {:try_start_37 .. :try_end_3a} :catchall_52

    goto :goto_43

    :catch_3b
    :try_start_3b
    const-string v4, "FreeformController"

    const-string/jumbo v5, "onTaskMoveEnded, RemoteException occurred"

    .line 460
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 463
    :cond_46
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {p0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 464
    monitor-exit v0

    goto/16 :goto_1d5

    :catchall_52
    move-exception p0

    monitor-exit v0
    :try_end_54
    .catchall {:try_start_3b .. :try_end_54} :catchall_52

    throw p0

    .line 430
    :pswitch_55
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    .line 431
    :try_start_5c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 432
    iget v2, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 433
    iget-object p1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Point;

    .line 435
    iget-object v3, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v3}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v3

    :goto_70
    if-ge v1, v3, :cond_8d

    .line 437
    iget-object v4, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v4}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_7e
    .catchall {:try_start_5c .. :try_end_7e} :catchall_99

    .line 439
    :try_start_7e
    invoke-interface {v4, v2, p1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onTaskMoveStarted(ILandroid/graphics/Point;)V
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_7e .. :try_end_81} :catch_82
    .catchall {:try_start_7e .. :try_end_81} :catchall_99

    goto :goto_8a

    :catch_82
    :try_start_82
    const-string v4, "FreeformController"

    const-string/jumbo v5, "onTaskMoveStarted, RemoteException occurred"

    .line 441
    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_8a
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    .line 444
    :cond_8d
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {p0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 445
    monitor-exit v0

    goto/16 :goto_1d5

    :catchall_99
    move-exception p0

    monitor-exit v0
    :try_end_9b
    .catchall {:try_start_82 .. :try_end_9b} :catchall_99

    throw p0

    .line 412
    :pswitch_9c
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    .line 413
    :try_start_a3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 414
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 416
    iget-object v2, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v2}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    :goto_b3
    if-ge v1, v2, :cond_d0

    .line 418
    iget-object v3, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v3}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_c1
    .catchall {:try_start_a3 .. :try_end_c1} :catchall_dc

    .line 420
    :try_start_c1
    invoke-interface {v3, p1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onMinimizeAnimationEnd(I)V
    :try_end_c4
    .catch Landroid/os/RemoteException; {:try_start_c1 .. :try_end_c4} :catch_c5
    .catchall {:try_start_c1 .. :try_end_c4} :catchall_dc

    goto :goto_cd

    :catch_c5
    :try_start_c5
    const-string v3, "FreeformController"

    const-string/jumbo v4, "onMinimizeAnimationEnd, RemoteException occurred"

    .line 422
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_cd
    add-int/lit8 v1, v1, 0x1

    goto :goto_b3

    .line 425
    :cond_d0
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {p0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 426
    monitor-exit v0

    goto/16 :goto_1d5

    :catchall_dc
    move-exception p0

    monitor-exit v0
    :try_end_de
    .catchall {:try_start_c5 .. :try_end_de} :catchall_dc

    throw p0

    .line 394
    :pswitch_df
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    .line 395
    :try_start_e6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 396
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 398
    iget-object v2, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v2}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    :goto_f6
    if-ge v1, v2, :cond_113

    .line 400
    iget-object v3, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v3}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_104
    .catchall {:try_start_e6 .. :try_end_104} :catchall_11f

    .line 402
    :try_start_104
    invoke-interface {v3, p1}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onUnminimized(I)V
    :try_end_107
    .catch Landroid/os/RemoteException; {:try_start_104 .. :try_end_107} :catch_108
    .catchall {:try_start_104 .. :try_end_107} :catchall_11f

    goto :goto_110

    :catch_108
    :try_start_108
    const-string v3, "FreeformController"

    const-string/jumbo v4, "onRestored, RemoteException occurred"

    .line 404
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_110
    add-int/lit8 v1, v1, 0x1

    goto :goto_f6

    .line 407
    :cond_113
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {p0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 408
    monitor-exit v0

    goto/16 :goto_1d5

    :catchall_11f
    move-exception p0

    monitor-exit v0
    :try_end_121
    .catchall {:try_start_108 .. :try_end_121} :catchall_11f

    throw p0

    .line 372
    :pswitch_122
    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    monitor-enter v0

    .line 373
    :try_start_129
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 374
    iget-object v2, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/content/ComponentName;

    .line 375
    iget v9, p1, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 376
    iget v10, p1, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 377
    iget v11, p1, Lcom/android/internal/os/SomeArgs;->argi3:I

    .line 378
    iget p1, p1, Lcom/android/internal/os/SomeArgs;->argi4:I

    .line 380
    iget-object v3, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v3}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v12

    :goto_143
    if-ge v1, v12, :cond_165

    .line 382
    iget-object v3, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v3}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/multiwindow/IFreeformCallback;
    :try_end_151
    .catchall {:try_start_129 .. :try_end_151} :catchall_170

    move-object v4, v2

    move v5, v9

    move v6, v10

    move v7, v11

    move v8, p1

    .line 384
    :try_start_156
    invoke-interface/range {v3 .. v8}, Lcom/samsung/android/multiwindow/IFreeformCallback;->onMinimized(Landroid/content/ComponentName;IIII)V
    :try_end_159
    .catch Landroid/os/RemoteException; {:try_start_156 .. :try_end_159} :catch_15a
    .catchall {:try_start_156 .. :try_end_159} :catchall_170

    goto :goto_162

    :catch_15a
    :try_start_15a
    const-string v3, "FreeformController"

    const-string/jumbo v4, "onMinimized, RemoteException occurred"

    .line 386
    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_162
    add-int/lit8 v1, v1, 0x1

    goto :goto_143

    .line 389
    :cond_165
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {p0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmCallbacks(Lcom/android/server/wm/FreeformController;)Landroid/os/RemoteCallbackList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 390
    monitor-exit v0

    goto :goto_1d5

    :catchall_170
    move-exception p0

    monitor-exit v0
    :try_end_172
    .catchall {:try_start_15a .. :try_end_172} :catchall_170

    throw p0

    .line 365
    :pswitch_173
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {p0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmSmartPopupViewServiceBinder(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/FreeformContainerServiceBinder;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    goto :goto_1d5

    .line 360
    :pswitch_181
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {p0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmSmartPopupViewServiceBinder(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/FreeformContainerServiceBinder;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    goto :goto_1d5

    .line 352
    :pswitch_18f
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {p0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmMinimizeContainerServiceBinder(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/FreeformContainerServiceBinder;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->unbindServiceIfNeeded(Ljava/lang/String;)V

    goto :goto_1d5

    .line 347
    :pswitch_19d
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {p0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmMinimizeContainerServiceBinder(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/FreeformContainerServiceBinder;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/FreeformContainerServiceBinder;->bindServiceIfNeeded(Ljava/lang/String;)V

    goto :goto_1d5

    .line 471
    :cond_1ab
    new-instance p1, Landroid/view/ContextThemeWrapper;

    iget-object v0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {v0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {p1, v0, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 473
    iget-object p0, p0, Lcom/android/server/wm/FreeformController$H;->this$0:Lcom/android/server/wm/FreeformController;

    invoke-static {p0}, Lcom/android/server/wm/FreeformController;->-$$Nest$fgetmAtm(Lcom/android/server/wm/FreeformController;)Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x104046d

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 478
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_1d5
    return-void

    :pswitch_data_1d6
    .packed-switch 0x65
        :pswitch_19d
        :pswitch_18f
        :pswitch_181
        :pswitch_173
    .end packed-switch

    :pswitch_data_1e2
    .packed-switch 0xc9
        :pswitch_122
        :pswitch_df
        :pswitch_9c
        :pswitch_55
        :pswitch_e
    .end packed-switch
.end method
