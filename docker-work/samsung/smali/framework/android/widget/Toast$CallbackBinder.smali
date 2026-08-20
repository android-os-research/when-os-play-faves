.class Landroid/widget/Toast$CallbackBinder;
.super Landroid/app/ITransientNotificationCallback$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackBinder"
.end annotation


# instance fields
.field private final blacklist mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mHandler:Landroid/os/Handler;


# direct methods
.method private constructor blacklist <init>(Ljava/util/List;Landroid/os/Handler;)V
    .registers 3
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .line 1031
    .local p1, "callbacks":Ljava/util/List;, "Ljava/util/List<Landroid/widget/Toast$Callback;>;"
    invoke-direct {p0}, Landroid/app/ITransientNotificationCallback$Stub;-><init>()V

    .line 1032
    iput-object p1, p0, Landroid/widget/Toast$CallbackBinder;->mCallbacks:Ljava/util/List;

    .line 1033
    iput-object p2, p0, Landroid/widget/Toast$CallbackBinder;->mHandler:Landroid/os/Handler;

    .line 1034
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/List;Landroid/os/Handler;Landroid/widget/Toast$CallbackBinder-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/Toast$CallbackBinder;-><init>(Ljava/util/List;Landroid/os/Handler;)V

    return-void
.end method

.method private blacklist getCallbacks()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/widget/Toast$Callback;",
            ">;"
        }
    .end annotation

    .line 1055
    iget-object v0, p0, Landroid/widget/Toast$CallbackBinder;->mCallbacks:Ljava/util/List;

    monitor-enter v0

    .line 1056
    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/widget/Toast$CallbackBinder;->mCallbacks:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 1057
    :catchall_c
    move-exception v1

    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v1
.end method


# virtual methods
.method synthetic blacklist lambda$onToastHidden$1$android-widget-Toast$CallbackBinder()V
    .registers 3

    .line 1048
    invoke-direct {p0}, Landroid/widget/Toast$CallbackBinder;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Toast$Callback;

    .line 1049
    .local v1, "callback":Landroid/widget/Toast$Callback;
    invoke-virtual {v1}, Landroid/widget/Toast$Callback;->onToastHidden()V

    .line 1050
    .end local v1    # "callback":Landroid/widget/Toast$Callback;
    goto :goto_8

    .line 1051
    :cond_18
    return-void
.end method

.method synthetic blacklist lambda$onToastShown$0$android-widget-Toast$CallbackBinder()V
    .registers 3

    .line 1039
    invoke-direct {p0}, Landroid/widget/Toast$CallbackBinder;->getCallbacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Toast$Callback;

    .line 1040
    .local v1, "callback":Landroid/widget/Toast$Callback;
    invoke-virtual {v1}, Landroid/widget/Toast$Callback;->onToastShown()V

    .line 1041
    .end local v1    # "callback":Landroid/widget/Toast$Callback;
    goto :goto_8

    .line 1042
    :cond_18
    return-void
.end method

.method public blacklist onToastHidden()V
    .registers 3

    .line 1047
    iget-object v0, p0, Landroid/widget/Toast$CallbackBinder;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/widget/Toast$CallbackBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/widget/Toast$CallbackBinder$$ExternalSyntheticLambda0;-><init>(Landroid/widget/Toast$CallbackBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1052
    return-void
.end method

.method public blacklist onToastShown()V
    .registers 3

    .line 1038
    iget-object v0, p0, Landroid/widget/Toast$CallbackBinder;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/widget/Toast$CallbackBinder$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$CallbackBinder$$ExternalSyntheticLambda1;-><init>(Landroid/widget/Toast$CallbackBinder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1043
    return-void
.end method
