.class public Lcom/samsung/android/mcf/McfContext$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/McfContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/samsung/android/mcf/McfContext;


# direct methods
.method public constructor <init>(Lcom/samsung/android/mcf/McfContext;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext$b;->a:Lcom/samsung/android/mcf/McfContext;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_7e

    goto/16 :goto_7c

    :pswitch_8
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext$b;->a:Lcom/samsung/android/mcf/McfContext;

    invoke-static {p1}, Lcom/samsung/android/mcf/McfContext;->a(Lcom/samsung/android/mcf/McfContext;)V

    goto :goto_3c

    :pswitch_e
    const-string v0, "McfContext"

    const-string v2, "onServiceConnected TO"

    const-string v3, "-"

    invoke-static {v0, v2, v3}, Lcom/samsung/android/mcf/common/DLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/mcf/McfContext$EventListener;

    if-eqz p1, :cond_7c

    invoke-interface {p1, v1}, Lcom/samsung/android/mcf/McfContext$EventListener;->onUpdateEvent(I)V

    goto :goto_7c

    :pswitch_21
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext$b;->a:Lcom/samsung/android/mcf/McfContext;

    iget-object p1, p1, Lcom/samsung/android/mcf/McfContext;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_29
    :goto_29
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/McfContext$EventListener;

    if-eqz v0, :cond_29

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/McfContext$EventListener;->onUpdateEvent(I)V

    goto :goto_29

    :goto_3c
    :pswitch_3c
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext$b;->a:Lcom/samsung/android/mcf/McfContext;

    iget-object p1, p1, Lcom/samsung/android/mcf/McfContext;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_44
    :goto_44
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/McfContext$EventListener;

    if-eqz v0, :cond_44

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/McfContext$EventListener;->onUpdateEvent(I)V

    goto :goto_44

    :cond_57
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext$b;->a:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfContext;->d()V

    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext$b;->a:Lcom/samsung/android/mcf/McfContext;

    invoke-virtual {p1}, Lcom/samsung/android/mcf/McfContext;->b()V

    goto :goto_7c

    :pswitch_62
    iget-object p1, p0, Lcom/samsung/android/mcf/McfContext$b;->a:Lcom/samsung/android/mcf/McfContext;

    iget-object p1, p1, Lcom/samsung/android/mcf/McfContext;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6a
    :goto_6a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/mcf/McfContext$EventListener;

    if-eqz v0, :cond_6a

    invoke-interface {v0, v1}, Lcom/samsung/android/mcf/McfContext$EventListener;->onUpdateEvent(I)V

    goto :goto_6a

    :cond_7c
    :goto_7c
    return-void

    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_62
        :pswitch_3c
        :pswitch_21
        :pswitch_e
        :pswitch_8
    .end packed-switch
.end method
