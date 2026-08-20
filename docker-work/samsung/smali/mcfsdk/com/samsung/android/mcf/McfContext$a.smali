.class public Lcom/samsung/android/mcf/McfContext$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/mcf/AbstractClient$StatusListener;


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
.method public constructor <init>(Lcom/samsung/android/mcf/McfContext;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/mcf/McfContext$a;->a:Lcom/samsung/android/mcf/McfContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClosed(Lcom/samsung/android/mcf/AbstractClient;)V
    .registers 5

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "McfContext"

    const-string v2, "onClosed "

    invoke-static {v1, v2, v0}, Lcom/samsung/android/mcf/common/DLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/samsung/android/mcf/c;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$a;->a:Lcom/samsung/android/mcf/McfContext;

    iget-object v0, v0, Lcom/samsung/android/mcf/McfContext;->h:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_16
    instance-of v0, p1, Lcom/samsung/android/mcf/b;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$a;->a:Lcom/samsung/android/mcf/McfContext;

    iget-object v0, v0, Lcom/samsung/android/mcf/McfContext;->g:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_21
    return-void
.end method

.method public onShutdown()V
    .registers 4

    const-string v0, "McfContext"

    const-string v1, "onShutdown"

    const-string v2, "-"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mcf/common/DLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/mcf/McfContext$a;->a:Lcom/samsung/android/mcf/McfContext;

    iget-object v1, v0, Lcom/samsung/android/mcf/McfContext;->e:Lcom/samsung/android/mcf/IMcfService;

    if-eqz v1, :cond_18

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/mcf/McfContext;->e:Lcom/samsung/android/mcf/IMcfService;

    iget-object v0, v0, Lcom/samsung/android/mcf/McfContext;->b:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_18
    return-void
.end method
