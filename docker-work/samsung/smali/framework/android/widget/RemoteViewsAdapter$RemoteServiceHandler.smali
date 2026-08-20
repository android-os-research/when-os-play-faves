.class Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;
.super Landroid/os/Handler;
.source "RemoteViewsAdapter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteServiceHandler"
.end annotation


# instance fields
.field private final greylist-max-o mAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/RemoteViewsAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mBindRequested:Z

.field private final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mNotifyDataSetChangedPending:Z

.field private greylist-max-o mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;


# direct methods
.method constructor greylist-max-o <init>(Landroid/os/Looper;Landroid/widget/RemoteViewsAdapter;Landroid/content/Context;)V
    .registers 5
    .param p1, "workerLooper"    # Landroid/os/Looper;
    .param p2, "adapter"    # Landroid/widget/RemoteViewsAdapter;
    .param p3, "context"    # Landroid/content/Context;

    .line 205
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mNotifyDataSetChangedPending:Z

    .line 202
    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z

    .line 206
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mAdapter:Ljava/lang/ref/WeakReference;

    .line 207
    iput-object p3, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    .line 208
    return-void
.end method

.method private greylist-max-o enqueueDeferredUnbindServiceMessage()V
    .registers 4

    .line 398
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->removeMessages(I)V

    .line 399
    const-wide/16 v1, 0x1388

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 400
    return-void
.end method

.method private greylist-max-o sendNotifyDataSetChange(Z)Z
    .registers 5
    .param p1, "always"    # Z

    .line 387
    if-nez p1, :cond_a

    :try_start_2
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-interface {v0}, Lcom/android/internal/widget/IRemoteViewsFactory;->isCreated()Z

    move-result v0

    if-nez v0, :cond_f

    .line 388
    :cond_a
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-interface {v0}, Lcom/android/internal/widget/IRemoteViewsFactory;->onDataSetChanged()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_f} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_f} :catch_11

    .line 390
    :cond_f
    const/4 v0, 0x1

    return v0

    .line 391
    :catch_11
    move-exception v0

    .line 392
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in updateNotifyDataSetChanged(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RemoteViewsAdapter"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 15
    .param p1, "msg"    # Landroid/os/Message;

    .line 250
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    .line 252
    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_116

    .line 375
    return-void

    .line 371
    :pswitch_10
    invoke-virtual {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->unbindNow()V

    .line 372
    return-void

    .line 352
    :pswitch_14
    if-eqz v0, :cond_37

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    if-nez v1, :cond_1b

    goto :goto_37

    .line 355
    :cond_1b
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->removeMessages(I)V

    .line 357
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getNextIndexToLoad()I

    move-result v1

    .line 358
    .local v1, "position":I
    if-le v1, v2, :cond_33

    .line 360
    iget-object v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-static {v0, v2, v1, v3}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mupdateRemoteViews(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;IZ)V

    .line 363
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendEmptyMessage(I)Z

    goto :goto_36

    .line 366
    :cond_33
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->enqueueDeferredUnbindServiceMessage()V

    .line 368
    :goto_36
    return-void

    .line 353
    .end local v1    # "position":I
    :cond_37
    :goto_37
    return-void

    .line 291
    :pswitch_38
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->enqueueDeferredUnbindServiceMessage()V

    .line 292
    if-nez v0, :cond_3e

    .line 293
    return-void

    .line 303
    :cond_3e
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v1

    monitor-enter v1

    .line 304
    :try_start_43
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->reset()V

    .line 305
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_9d

    .line 307
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    if-nez v1, :cond_55

    .line 308
    iput-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mNotifyDataSetChangedPending:Z

    .line 309
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mrequestBindService(Landroid/widget/RemoteViewsAdapter;)V

    .line 310
    return-void

    .line 312
    :cond_55
    invoke-direct {p0, v3}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendNotifyDataSetChange(Z)Z

    move-result v1

    if-nez v1, :cond_5c

    .line 313
    return-void

    .line 324
    :cond_5c
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-static {v0, v1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mupdateTemporaryMetaData(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;)V

    .line 327
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v2

    monitor-enter v2

    .line 328
    :try_start_6a
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmCache(Landroid/widget/RemoteViewsAdapter;)Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RemoteViewsAdapter$FixedSizeRemoteViewsCache;->getTemporaryMetaData()Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;

    move-result-object v1

    iget v1, v1, Landroid/widget/RemoteViewsAdapter$RemoteViewsMetaData;->count:I

    .line 329
    .local v1, "newCount":I
    invoke-static {v0, v1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mgetVisibleWindow(Landroid/widget/RemoteViewsAdapter;I)[I

    move-result-object v4

    .line 330
    .local v4, "visibleWindow":[I
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_6a .. :try_end_79} :catchall_9a

    .line 335
    array-length v2, v4

    const/4 v5, 0x0

    move v6, v5

    :goto_7c
    if-ge v6, v2, :cond_8a

    aget v7, v4, v6

    .line 339
    .local v7, "position":I
    if-ge v7, v1, :cond_87

    .line 340
    iget-object v8, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-static {v0, v8, v7, v5}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mupdateRemoteViews(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;IZ)V

    .line 335
    .end local v7    # "position":I
    :cond_87
    add-int/lit8 v6, v6, 0x1

    goto :goto_7c

    .line 345
    :cond_8a
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 346
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 348
    return-void

    .line 330
    .end local v1    # "newCount":I
    .end local v4    # "visibleWindow":[I
    :catchall_9a
    move-exception v1

    :try_start_9b
    monitor-exit v2
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    throw v1

    .line 305
    :catchall_9d
    move-exception v2

    :try_start_9e
    monitor-exit v1
    :try_end_9f
    .catchall {:try_start_9e .. :try_end_9f} :catchall_9d

    throw v2

    .line 254
    :pswitch_a0
    if-eqz v0, :cond_a6

    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    if-eqz v1, :cond_a9

    .line 255
    :cond_a6
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->enqueueDeferredUnbindServiceMessage()V

    .line 257
    :cond_a9
    iget-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z

    if-eqz v1, :cond_ae

    .line 258
    return-void

    .line 260
    :cond_ae
    const v1, 0x2000001

    .line 262
    .local v1, "flags":I
    iget-object v4, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v4, p0, p0, v1}, Landroid/content/Context;->getServiceDispatcher(Landroid/content/ServiceConnection;Landroid/os/Handler;I)Landroid/app/IServiceConnection;

    move-result-object v10

    .line 263
    .local v10, "sd":Landroid/app/IServiceConnection;
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v11, v4

    check-cast v11, Landroid/content/Intent;

    .line 264
    .local v11, "intent":Landroid/content/Intent;
    iget v12, p1, Landroid/os/Message;->arg1:I

    .line 268
    .local v12, "appWidgetId":I
    :try_start_be
    const-string/jumbo v4, "remoteAdapterCocktail"

    invoke-virtual {v11, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 269
    .local v2, "cocktail":I
    if-ne v2, v3, :cond_e4

    .line 270
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/cocktailbar/CocktailBarManager;

    move-result-object v4

    .line 271
    .local v4, "mgr":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    if-eqz v0, :cond_dc

    .line 272
    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    move v6, v12

    move-object v7, v11

    move-object v8, v10

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Lcom/samsung/android/cocktailbar/CocktailBarManager;->bindRemoteViewsService(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/IServiceConnection;I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z

    goto :goto_e3

    .line 274
    :cond_dc
    const-string v3, "RemoteViewsAdapter"

    const-string v5, "bind: adapter was null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    .end local v4    # "mgr":Lcom/samsung/android/cocktailbar/CocktailBarManager;
    :goto_e3
    goto :goto_f6

    .line 277
    :cond_e4
    iget-object v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    iget-object v5, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    .line 278
    move v6, v12

    move-object v7, v11

    move-object v8, v10

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Landroid/appwidget/AppWidgetManager;->bindRemoteViewsService(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/IServiceConnection;I)Z

    move-result v3

    iput-boolean v3, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_f6} :catch_f7

    .line 287
    .end local v2    # "cocktail":I
    :goto_f6
    goto :goto_114

    .line 285
    :catch_f7
    move-exception v2

    .line 286
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "RemoteViewsAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to bind remoteViewsService: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_114
    return-void

    nop

    :pswitch_data_116
    .packed-switch 0x1
        :pswitch_a0
        :pswitch_38
        :pswitch_14
        :pswitch_10
    .end packed-switch
.end method

.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 213
    invoke-static {p2}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/IRemoteViewsFactory;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 214
    invoke-direct {p0}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->enqueueDeferredUnbindServiceMessage()V

    .line 216
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    .line 217
    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-nez v0, :cond_14

    .line 218
    return-void

    .line 221
    :cond_14
    iget-boolean v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mNotifyDataSetChangedPending:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_27

    .line 222
    iput-boolean v2, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mNotifyDataSetChangedPending:Z

    .line 223
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 224
    .local v1, "msg":Landroid/os/Message;
    invoke-virtual {p0, v1}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->handleMessage(Landroid/os/Message;)V

    .line 225
    invoke-virtual {v1}, Landroid/os/Message;->recycle()V

    .line 226
    .end local v1    # "msg":Landroid/os/Message;
    goto :goto_43

    .line 227
    :cond_27
    invoke-direct {p0, v2}, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->sendNotifyDataSetChange(Z)Z

    move-result v1

    if-nez v1, :cond_2e

    .line 228
    return-void

    .line 233
    :cond_2e
    iget-object v1, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    invoke-static {v0, v1}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$mupdateTemporaryMetaData(Landroid/widget/RemoteViewsAdapter;Lcom/android/internal/widget/IRemoteViewsFactory;)V

    .line 234
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 235
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 237
    :goto_43
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 241
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 242
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViewsAdapter;

    .line 243
    .local v0, "adapter":Landroid/widget/RemoteViewsAdapter;
    if-eqz v0, :cond_15

    .line 244
    invoke-static {v0}, Landroid/widget/RemoteViewsAdapter;->-$$Nest$fgetmMainHandler(Landroid/widget/RemoteViewsAdapter;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    :cond_15
    return-void
.end method

.method protected greylist-max-o unbindNow()V
    .registers 2

    .line 378
    iget-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z

    if-eqz v0, :cond_c

    .line 379
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mBindRequested:Z

    .line 380
    iget-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 382
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/RemoteViewsAdapter$RemoteServiceHandler;->mRemoteViewsFactory:Lcom/android/internal/widget/IRemoteViewsFactory;

    .line 383
    return-void
.end method
