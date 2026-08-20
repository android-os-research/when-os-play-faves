.class Lc/f;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/h;-><init>(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/h;


# direct methods
.method constructor <init>(Lc/h;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lc/f;->a:Lc/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2e

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1d

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    goto :goto_3e

    :cond_c
    iget-object p1, p0, Lc/f;->a:Lc/h;

    invoke-static {p1}, Lc/h;->a(Lc/h;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage - MSG_TRIGGER_BROADCAST"

    invoke-static {p1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lc/f;->a:Lc/h;

    invoke-static {p0}, Lc/h;->e(Lc/h;)V

    goto :goto_3e

    :cond_1d
    iget-object p1, p0, Lc/f;->a:Lc/h;

    invoke-static {p1}, Lc/h;->a(Lc/h;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage - MSG_SET_ALARM"

    invoke-static {p1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lc/f;->a:Lc/h;

    invoke-static {p0}, Lc/h;->d(Lc/h;)V

    goto :goto_3e

    :cond_2e
    iget-object p1, p0, Lc/f;->a:Lc/h;

    invoke-static {p1}, Lc/h;->a(Lc/h;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "handleMessage - MSG_TRIGGER_ALARM"

    invoke-static {p1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lc/f;->a:Lc/h;

    invoke-static {p0}, Lc/h;->c(Lc/h;)V

    :goto_3e
    return-void
.end method
