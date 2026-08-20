.class Landroid/widget/RemoteViews$AsyncApplyTask;
.super Landroid/os/AsyncTask;
.source "RemoteViews.java"

# interfaces
.implements Landroid/os/CancellationSignal$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncApplyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/widget/RemoteViews$ViewTree;",
        ">;",
        "Landroid/os/CancellationSignal$OnCancelListener;"
    }
.end annotation


# instance fields
.field private greylist-max-o mActions:[Landroid/widget/RemoteViews$Action;

.field final blacklist mCancelSignal:Landroid/os/CancellationSignal;

.field final blacklist mColorResources:Landroid/widget/RemoteViews$ColorResources;

.field final greylist-max-o mContext:Landroid/content/Context;

.field private greylist-max-o mError:Ljava/lang/Exception;

.field final blacklist mHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field final greylist-max-o mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

.field final greylist-max-o mParent:Landroid/view/ViewGroup;

.field final greylist-max-o mRV:Landroid/widget/RemoteViews;

.field private greylist-max-o mResult:Landroid/view/View;

.field final blacklist mTopLevel:Z

.field private greylist-max-o mTree:Landroid/widget/RemoteViews$ViewTree;

.field final synthetic blacklist this$0:Landroid/widget/RemoteViews;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmError(Landroid/widget/RemoteViews$AsyncApplyTask;)Ljava/lang/Exception;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmResult(Landroid/widget/RemoteViews$AsyncApplyTask;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mstartTaskOnExecutor(Landroid/widget/RemoteViews$AsyncApplyTask;Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;
    .registers 2

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->startTaskOnExecutor(Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;

    move-result-object p0

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;Z)V
    .registers 10
    .param p2, "rv"    # Landroid/widget/RemoteViews;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "listener"    # Landroid/widget/RemoteViews$OnViewAppliedListener;
    .param p6, "handler"    # Landroid/widget/RemoteViews$InteractionHandler;
    .param p7, "colorResources"    # Landroid/widget/RemoteViews$ColorResources;
    .param p8, "result"    # Landroid/view/View;
    .param p9, "topLevel"    # Z

    .line 6104
    iput-object p1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6082
    new-instance p1, Landroid/os/CancellationSignal;

    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object p1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mCancelSignal:Landroid/os/CancellationSignal;

    .line 6105
    iput-object p2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    .line 6106
    iput-object p3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    .line 6107
    iput-object p4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mContext:Landroid/content/Context;

    .line 6108
    iput-object p5, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    .line 6109
    iput-object p7, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    .line 6110
    iput-object p6, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 6111
    iput-boolean p9, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTopLevel:Z

    .line 6113
    iput-object p8, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    .line 6114
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;ZLandroid/widget/RemoteViews$AsyncApplyTask-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/widget/RemoteViews$AsyncApplyTask;-><init>(Landroid/widget/RemoteViews;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;Landroid/content/Context;Landroid/widget/RemoteViews$OnViewAppliedListener;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;Landroid/view/View;Z)V

    return-void
.end method

.method private blacklist startTaskOnExecutor(Ljava/util/concurrent/Executor;)Landroid/os/CancellationSignal;
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 6189
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mCancelSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0, p0}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 6190
    if-nez p1, :cond_a

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    goto :goto_b

    :cond_a
    move-object v0, p1

    :goto_b
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews$AsyncApplyTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 6191
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mCancelSignal:Landroid/os/CancellationSignal;

    return-object v0
.end method


# virtual methods
.method protected varargs blacklist doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;
    .registers 11
    .param p1, "params"    # [Ljava/lang/Void;

    .line 6120
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    if-nez v1, :cond_16

    .line 6121
    iget-object v2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    iget-object v5, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    iget-object v7, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-static/range {v2 .. v7}, Landroid/widget/RemoteViews;->-$$Nest$minflateView(Landroid/widget/RemoteViews;Landroid/content/Context;Landroid/widget/RemoteViews;Landroid/view/ViewGroup;ILandroid/widget/RemoteViews$ColorResources;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    .line 6124
    :cond_16
    new-instance v1, Landroid/widget/RemoteViews$ViewTree;

    iget-object v2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    invoke-direct {v1, v2, v0}, Landroid/widget/RemoteViews$ViewTree;-><init>(Landroid/view/View;Landroid/widget/RemoteViews$ViewTree-IA;)V

    iput-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTree:Landroid/widget/RemoteViews$ViewTree;

    .line 6125
    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_5e

    .line 6126
    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    invoke-static {v1}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 6127
    .local v1, "count":I
    new-array v2, v1, [Landroid/widget/RemoteViews$Action;

    iput-object v2, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    .line 6128
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_36
    if-ge v2, v1, :cond_5d

    invoke-virtual {p0}, Landroid/widget/RemoteViews$AsyncApplyTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_5d

    .line 6130
    iget-object v3, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    iget-object v4, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mRV:Landroid/widget/RemoteViews;

    invoke-static {v4}, Landroid/widget/RemoteViews;->-$$Nest$fgetmActions(Landroid/widget/RemoteViews;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/RemoteViews$Action;

    iget-object v5, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTree:Landroid/widget/RemoteViews$ViewTree;

    iget-object v6, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    iget-object v7, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mHandler:Landroid/widget/RemoteViews$InteractionHandler;

    iget-object v8, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/RemoteViews$Action;->initActionAsync(Landroid/widget/RemoteViews$ViewTree;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)Landroid/widget/RemoteViews$Action;

    move-result-object v4

    aput-object v4, v3, v2

    .line 6128
    add-int/lit8 v2, v2, 0x1

    goto :goto_36

    .line 6133
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_5d
    goto :goto_60

    .line 6134
    :cond_5e
    iput-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    .line 6136
    :goto_60
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTree:Landroid/widget/RemoteViews$ViewTree;
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_62} :catch_63

    return-object v0

    .line 6137
    :catch_63
    move-exception v1

    .line 6138
    .local v1, "e":Ljava/lang/Exception;
    iput-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    .line 6139
    return-object v0
.end method

.method protected bridge synthetic whitelist doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 6080
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/RemoteViews$ViewTree;

    move-result-object p1

    return-object p1
.end method

.method public whitelist onCancel()V
    .registers 2

    .line 6185
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/RemoteViews$AsyncApplyTask;->cancel(Z)Z

    .line 6186
    return-void
.end method

.method protected greylist-max-o onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V
    .registers 10
    .param p1, "viewTree"    # Landroid/widget/RemoteViews$ViewTree;

    .line 6145
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mCancelSignal:Landroid/os/CancellationSignal;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    .line 6146
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    if-nez v0, :cond_4e

    .line 6147
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    if-eqz v0, :cond_15

    .line 6148
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/RemoteViews$OnViewAppliedListener;->onViewInflated(Landroid/view/View;)V

    .line 6152
    :cond_15
    :try_start_15
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    if-eqz v0, :cond_39

    .line 6153
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mHandler:Landroid/widget/RemoteViews$InteractionHandler;

    if-nez v0, :cond_22

    .line 6154
    invoke-static {}, Landroid/widget/RemoteViews;->-$$Nest$sfgetDEFAULT_INTERACTION_HANDLER()Landroid/widget/RemoteViews$InteractionHandler;

    move-result-object v0

    goto :goto_23

    :cond_22
    nop

    .line 6155
    .local v0, "handler":Landroid/widget/RemoteViews$InteractionHandler;
    :goto_23
    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mActions:[Landroid/widget/RemoteViews$Action;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v2, :cond_39

    aget-object v4, v1, v3

    .line 6156
    .local v4, "a":Landroid/widget/RemoteViews$Action;
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mParent:Landroid/view/ViewGroup;

    iget-object v7, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mColorResources:Landroid/widget/RemoteViews$ColorResources;

    invoke-virtual {v4, v5, v6, v0, v7}, Landroid/widget/RemoteViews$Action;->apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$InteractionHandler;Landroid/widget/RemoteViews$ColorResources;)V

    .line 6155
    .end local v4    # "a":Landroid/widget/RemoteViews$Action;
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    .line 6160
    .end local v0    # "handler":Landroid/widget/RemoteViews$InteractionHandler;
    :cond_39
    iget-boolean v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mTopLevel:Z

    if-eqz v0, :cond_4a

    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mResult:Landroid/view/View;

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_4a

    .line 6161
    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->this$0:Landroid/widget/RemoteViews;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v1, v0}, Landroid/widget/RemoteViews;->-$$Nest$mfinalizeViewRecycling(Landroid/widget/RemoteViews;Landroid/view/ViewGroup;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_4a} :catch_4b

    .line 6165
    :cond_4a
    goto :goto_4e

    .line 6163
    :catch_4b
    move-exception v0

    .line 6164
    .local v0, "e":Ljava/lang/Exception;
    iput-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    .line 6168
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4e
    :goto_4e
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mListener:Landroid/widget/RemoteViews$OnViewAppliedListener;

    if-eqz v0, :cond_62

    .line 6169
    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    if-eqz v1, :cond_5a

    .line 6170
    invoke-interface {v0, v1}, Landroid/widget/RemoteViews$OnViewAppliedListener;->onError(Ljava/lang/Exception;)V

    goto :goto_75

    .line 6172
    :cond_5a
    invoke-static {p1}, Landroid/widget/RemoteViews$ViewTree;->-$$Nest$fgetmRoot(Landroid/widget/RemoteViews$ViewTree;)Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/RemoteViews$OnViewAppliedListener;->onViewApplied(Landroid/view/View;)V

    goto :goto_75

    .line 6174
    :cond_62
    iget-object v0, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    if-eqz v0, :cond_75

    .line 6175
    instance-of v1, v0, Landroid/widget/RemoteViews$ActionException;

    if-eqz v1, :cond_6d

    .line 6176
    check-cast v0, Landroid/widget/RemoteViews$ActionException;

    throw v0

    .line 6178
    :cond_6d
    new-instance v0, Landroid/widget/RemoteViews$ActionException;

    iget-object v1, p0, Landroid/widget/RemoteViews$AsyncApplyTask;->mError:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Landroid/widget/RemoteViews$ActionException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 6181
    :cond_75
    :goto_75
    return-void
.end method

.method protected bridge synthetic whitelist onPostExecute(Ljava/lang/Object;)V
    .registers 2

    .line 6080
    check-cast p1, Landroid/widget/RemoteViews$ViewTree;

    invoke-virtual {p0, p1}, Landroid/widget/RemoteViews$AsyncApplyTask;->onPostExecute(Landroid/widget/RemoteViews$ViewTree;)V

    return-void
.end method
