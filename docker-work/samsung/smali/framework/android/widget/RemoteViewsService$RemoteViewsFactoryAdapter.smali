.class Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
.super Lcom/android/internal/widget/IRemoteViewsFactory$Stub;
.source "RemoteViewsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViewsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RemoteViewsFactoryAdapter"
.end annotation


# instance fields
.field private greylist-max-o mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

.field private greylist-max-o mIsCreated:Z


# direct methods
.method public constructor greylist-max-o <init>(Landroid/widget/RemoteViewsService$RemoteViewsFactory;Z)V
    .registers 3
    .param p1, "factory"    # Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    .param p2, "isCreated"    # Z

    .line 133
    invoke-direct {p0}, Lcom/android/internal/widget/IRemoteViewsFactory$Stub;-><init>()V

    .line 134
    iput-object p1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    .line 135
    iput-boolean p2, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z

    .line 136
    return-void
.end method


# virtual methods
.method public declared-synchronized greylist-max-o getCount()I
    .registers 5

    monitor-enter p0

    .line 152
    const/4 v0, 0x0

    .line 154
    .local v0, "count":I
    :try_start_2
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getCount()I

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_c
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    move v0, v1

    .line 158
    goto :goto_18

    .line 151
    .end local v0    # "count":I
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :catchall_a
    move-exception v0

    goto :goto_1a

    .line 155
    .restart local v0    # "count":I
    :catch_c
    move-exception v1

    .line 156
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 157
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_a

    .line 159
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_18
    monitor-exit p0

    return v0

    .line 151
    .end local v0    # "count":I
    :goto_1a
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o getItemId(I)J
    .registers 7
    .param p1, "position"    # I

    monitor-enter p0

    .line 195
    const-wide/16 v0, 0x0

    .line 197
    .local v0, "id":J
    :try_start_3
    iget-object v2, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v2, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getItemId(I)J

    move-result-wide v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_d
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    move-wide v0, v2

    .line 201
    goto :goto_19

    .line 194
    .end local v0    # "id":J
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    .end local p1    # "position":I
    :catchall_b
    move-exception p1

    goto :goto_1b

    .line 198
    .restart local v0    # "id":J
    .restart local p1    # "position":I
    :catch_d
    move-exception v2

    .line 199
    .local v2, "ex":Ljava/lang/Exception;
    :try_start_e
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    .line 200
    .local v3, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    invoke-interface {v4, v3, v2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_b

    .line 202
    .end local v2    # "ex":Ljava/lang/Exception;
    .end local v3    # "t":Ljava/lang/Thread;
    :goto_19
    monitor-exit p0

    return-wide v0

    .line 194
    .end local v0    # "id":J
    .end local p1    # "position":I
    :goto_1b
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o getLoadingView()Landroid/widget/RemoteViews;
    .registers 5

    monitor-enter p0

    .line 175
    const/4 v0, 0x0

    .line 177
    .local v0, "rv":Landroid/widget/RemoteViews;
    :try_start_2
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getLoadingView()Landroid/widget/RemoteViews;

    move-result-object v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_c
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    move-object v0, v1

    .line 181
    goto :goto_18

    .line 174
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :catchall_a
    move-exception v0

    goto :goto_1a

    .line 178
    .restart local v0    # "rv":Landroid/widget/RemoteViews;
    :catch_c
    move-exception v1

    .line 179
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 180
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_a

    .line 182
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_18
    monitor-exit p0

    return-object v0

    .line 174
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    :goto_1a
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o getViewAt(I)Landroid/widget/RemoteViews;
    .registers 6
    .param p1, "position"    # I

    monitor-enter p0

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "rv":Landroid/widget/RemoteViews;
    :try_start_2
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1, p1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewAt(I)Landroid/widget/RemoteViews;

    move-result-object v1

    move-object v0, v1

    .line 165
    if-eqz v0, :cond_f

    .line 166
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/RemoteViews;->addFlags(I)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_12
    .catchall {:try_start_2 .. :try_end_f} :catchall_10

    .line 171
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :cond_f
    goto :goto_1e

    .line 161
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    .end local p1    # "position":I
    :catchall_10
    move-exception p1

    goto :goto_20

    .line 168
    .restart local v0    # "rv":Landroid/widget/RemoteViews;
    .restart local p1    # "position":I
    :catch_12
    move-exception v1

    .line 169
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_13
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 170
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_1e
    .catchall {:try_start_13 .. :try_end_1e} :catchall_10

    .line 172
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_1e
    monitor-exit p0

    return-object v0

    .line 161
    .end local v0    # "rv":Landroid/widget/RemoteViews;
    .end local p1    # "position":I
    :goto_20
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized greylist-max-o getViewTypeCount()I
    .registers 5

    monitor-enter p0

    .line 185
    const/4 v0, 0x0

    .line 187
    .local v0, "count":I
    :try_start_2
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->getViewTypeCount()I

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_c
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    move v0, v1

    .line 191
    goto :goto_18

    .line 184
    .end local v0    # "count":I
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :catchall_a
    move-exception v0

    goto :goto_1a

    .line 188
    .restart local v0    # "count":I
    :catch_c
    move-exception v1

    .line 189
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 190
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_a

    .line 192
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_18
    monitor-exit p0

    return v0

    .line 184
    .end local v0    # "count":I
    :goto_1a
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o hasStableIds()Z
    .registers 5

    monitor-enter p0

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "hasStableIds":Z
    :try_start_2
    iget-object v1, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v1}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->hasStableIds()Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_c
    .catchall {:try_start_2 .. :try_end_8} :catchall_a

    move v0, v1

    .line 211
    goto :goto_18

    .line 204
    .end local v0    # "hasStableIds":Z
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :catchall_a
    move-exception v0

    goto :goto_1a

    .line 208
    .restart local v0    # "hasStableIds":Z
    :catch_c
    move-exception v1

    .line 209
    .local v1, "ex":Ljava/lang/Exception;
    :try_start_d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 210
    .local v2, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_d .. :try_end_18} :catchall_a

    .line 212
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "t":Ljava/lang/Thread;
    :goto_18
    monitor-exit p0

    return v0

    .line 204
    .end local v0    # "hasStableIds":Z
    :goto_1a
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o isCreated()Z
    .registers 2

    monitor-enter p0

    .line 138
    :try_start_1
    iget-boolean v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mIsCreated:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 138
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o onDataSetChanged()V
    .registers 4

    monitor-enter p0

    .line 142
    :try_start_1
    iget-object v0, p0, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->mFactory:Landroid/widget/RemoteViewsService$RemoteViewsFactory;

    invoke-interface {v0}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDataSetChanged()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_9
    .catchall {:try_start_1 .. :try_end_6} :catchall_7

    .line 146
    goto :goto_15

    .line 141
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :catchall_7
    move-exception v0

    goto :goto_17

    .line 143
    :catch_9
    move-exception v0

    .line 144
    .local v0, "ex":Ljava/lang/Exception;
    :try_start_a
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 145
    .local v1, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_7

    .line 147
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "t":Ljava/lang/Thread;
    :goto_15
    monitor-exit p0

    return-void

    .line 141
    :goto_17
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized greylist-max-o onDataSetChangedAsync()V
    .registers 2

    monitor-enter p0

    .line 149
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;->onDataSetChanged()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_6

    .line 150
    monitor-exit p0

    return-void

    .line 148
    .end local p0    # "this":Landroid/widget/RemoteViewsService$RemoteViewsFactoryAdapter;
    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public greylist-max-o onDestroy(Landroid/content/Intent;)V
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 215
    invoke-static {}, Landroid/widget/RemoteViewsService;->-$$Nest$sfgetsLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 216
    :try_start_5
    new-instance v1, Landroid/content/Intent$FilterComparison;

    invoke-direct {v1, p1}, Landroid/content/Intent$FilterComparison;-><init>(Landroid/content/Intent;)V

    .line 217
    .local v1, "fc":Landroid/content/Intent$FilterComparison;
    invoke-static {}, Landroid/widget/RemoteViewsService;->-$$Nest$sfgetsRemoteViewFactories()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 218
    invoke-static {}, Landroid/widget/RemoteViewsService;->-$$Nest$sfgetsRemoteViewFactories()Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_37

    .line 220
    .local v2, "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :try_start_1e
    invoke-interface {v2}, Landroid/widget/RemoteViewsService$RemoteViewsFactory;->onDestroy()V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_21} :catch_22
    .catchall {:try_start_1e .. :try_end_21} :catchall_37

    .line 224
    goto :goto_2e

    .line 221
    :catch_22
    move-exception v3

    .line 222
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_23
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    .line 223
    .local v4, "t":Ljava/lang/Thread;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v5

    invoke-interface {v5, v4, v3}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 225
    .end local v3    # "ex":Ljava/lang/Exception;
    .end local v4    # "t":Ljava/lang/Thread;
    :goto_2e
    invoke-static {}, Landroid/widget/RemoteViewsService;->-$$Nest$sfgetsRemoteViewFactories()Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .end local v1    # "fc":Landroid/content/Intent$FilterComparison;
    .end local v2    # "factory":Landroid/widget/RemoteViewsService$RemoteViewsFactory;
    :cond_35
    monitor-exit v0

    .line 228
    return-void

    .line 227
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_23 .. :try_end_39} :catchall_37

    throw v1
.end method
