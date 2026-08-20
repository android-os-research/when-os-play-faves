.class Landroid/widget/AbsListView$HoverScrollHandler;
.super Landroid/os/Handler;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HoverScrollHandler"
.end annotation


# instance fields
.field private final blacklist mListView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/AbsListView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor blacklist <init>(Landroid/widget/AbsListView;)V
    .registers 3
    .param p1, "sv"    # Landroid/widget/AbsListView;

    .line 9143
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 9144
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/widget/AbsListView$HoverScrollHandler;->mListView:Ljava/lang/ref/WeakReference;

    .line 9145
    return-void
.end method


# virtual methods
.method public whitelist handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 9149
    iget-object v0, p0, Landroid/widget/AbsListView$HoverScrollHandler;->mListView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    .line 9150
    .local v0, "sv":Landroid/widget/AbsListView;
    if-eqz v0, :cond_d

    .line 9151
    invoke-static {v0, p1}, Landroid/widget/AbsListView;->-$$Nest$mhandleMessage(Landroid/widget/AbsListView;Landroid/os/Message;)V

    .line 9153
    :cond_d
    return-void
.end method
