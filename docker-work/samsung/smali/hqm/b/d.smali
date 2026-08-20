.class Lb/d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb/h;-><init>(Landroid/content/Context;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lb/h;


# direct methods
.method constructor <init>(Lb/h;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lb/d;->a:Lb/h;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_64

    goto :goto_62

    :pswitch_6
    invoke-static {}, Lb/h;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_TYPE:MSG_APP_CRASH_CHECK_REQ"

    invoke-static {p1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lb/d;->a:Lb/h;

    invoke-static {p0}, Lb/h;->g(Lb/h;)V

    goto :goto_62

    :pswitch_15
    invoke-static {}, Lb/h;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_TYPE:MSG_MEMINFO_CHECK_REQ"

    invoke-static {p1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lb/d;->a:Lb/h;

    invoke-static {p0}, Lb/h;->f(Lb/h;)V

    goto :goto_62

    :pswitch_24
    invoke-static {}, Lb/h;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_TYPE:MSG_TYPE_SEND_SYS_INFO"

    invoke-static {p1, v0}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lb/d;->a:Lb/h;

    invoke-static {p0}, Lb/h;->e(Lb/h;)V

    goto :goto_62

    :pswitch_33
    iget-object p0, p0, Lb/d;->a:Lb/h;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lb/g;

    invoke-static {p0, p1}, Lb/h;->d(Lb/h;Lb/g;)V

    goto :goto_62

    :pswitch_3d
    invoke-static {}, Lb/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage - MSG_CHECK_RESULT"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lb/d;->a:Lb/h;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lb/f;

    invoke-static {p0, p1}, Lb/h;->c(Lb/h;Lb/f;)V

    goto :goto_62

    :pswitch_50
    invoke-static {}, Lb/h;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "handleMessage - MSG_ANLAYZE_REQ"

    invoke-static {v0, v1}, La/s;->j(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lb/d;->a:Lb/h;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lb/f;

    invoke-static {p0, p1}, Lb/h;->b(Lb/h;Lb/f;)V

    :goto_62
    return-void

    nop

    :pswitch_data_64
    .packed-switch 0x1
        :pswitch_50
        :pswitch_3d
        :pswitch_33
        :pswitch_24
        :pswitch_15
        :pswitch_6
    .end packed-switch
.end method
