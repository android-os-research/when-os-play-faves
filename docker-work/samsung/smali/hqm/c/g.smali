.class Lc/g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/h;


# direct methods
.method constructor <init>(Lc/h;)V
    .registers 2

    iput-object p1, p0, Lc/g;->a:Lc/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.sec.android.intent.action.HQM_TRIGGER"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_25

    iget-object p1, p0, Lc/g;->a:Lc/h;

    invoke-static {p1}, Lc/h;->f(Lc/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lc/g;->a:Lc/h;

    invoke-static {p0}, Lc/h;->f(Lc/h;)Landroid/os/Handler;

    move-result-object p0

    const-wide/16 v0, 0x3e8

    :goto_21
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_4f

    :cond_25
    const-string p2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4f

    iget-object p1, p0, Lc/g;->a:Lc/h;

    invoke-static {p1}, Lc/h;->a(Lc/h;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ACTION_DATE_CHANGED"

    invoke-static {p1, p2}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lc/g;->a:Lc/h;

    invoke-static {p1}, Lc/h;->f(Lc/h;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x2

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lc/g;->a:Lc/h;

    invoke-static {p0}, Lc/h;->f(Lc/h;)Landroid/os/Handler;

    move-result-object p0

    const-wide/32 v0, 0xea60

    goto :goto_21

    :cond_4f
    :goto_4f
    return-void
.end method
