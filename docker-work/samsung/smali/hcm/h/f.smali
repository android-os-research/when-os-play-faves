.class Lh/f;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lh/h;


# direct methods
.method constructor <init>(Lh/h;)V
    .registers 2

    iput-object p1, p0, Lh/f;->a:Lh/h;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "intent "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lh/h;->g()Z

    move-result p1

    if-nez p1, :cond_23

    return-void

    :cond_23
    const-string p1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_45

    invoke-static {}, Lh/h;->h()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x5

    iput p1, p0, Landroid/os/Message;->what:I

    const/4 p1, 0x7

    :goto_37
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_3b
    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    :goto_3d
    invoke-static {}, Lh/h;->h()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_9b

    :cond_45
    const-string p1, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5a

    invoke-static {}, Lh/h;->h()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/4 p1, 0x4

    iput p1, p0, Landroid/os/Message;->what:I

    const/4 p1, 0x6

    goto :goto_37

    :cond_5a
    const-string p1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_72

    invoke-static {}, Lh/h;->h()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    iput p2, p0, Landroid/os/Message;->what:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_3b

    :cond_72
    const-string p1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_86

    invoke-static {}, Lh/h;->h()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    iput p2, p0, Landroid/os/Message;->what:I

    const/4 p1, 0x2

    goto :goto_37

    :cond_86
    const-string p1, "android.intent.action.HCM_TEST"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9b

    invoke-static {}, Lh/h;->h()Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/16 p1, 0x5a

    iput p1, p0, Landroid/os/Message;->what:I

    goto :goto_3d

    :cond_9b
    :goto_9b
    return-void
.end method
