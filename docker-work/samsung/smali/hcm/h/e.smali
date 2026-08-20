.class Lh/e;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lh/h;->m(Landroid/content/Context;)Lh/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget p0, p1, Landroid/os/Message;->what:I

    if-eqz p0, :cond_7f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_6a

    const/4 p1, 0x2

    if-eq p0, p1, :cond_5d

    const/4 p1, 0x3

    if-eq p0, p1, :cond_50

    const/4 p1, 0x4

    if-eq p0, p1, :cond_3f

    const/4 p1, 0x5

    const/4 v0, 0x0

    if-eq p0, p1, :cond_38

    const/16 p1, 0xa

    if-eq p0, p1, :cond_2b

    const/16 p1, 0x5a

    if-eq p0, p1, :cond_1e

    goto/16 :goto_8f

    :cond_1e
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MSG_TYPE_HCM_TEST"

    invoke-static {p0, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lh/h;->q()V

    goto :goto_8f

    :cond_2b
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    move-result-object p0

    const-string v1, "MSG_TYPE_DEVICE_PROVISIONED"

    invoke-static {p0, v1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lh/h;->e(II)V

    goto :goto_8f

    :cond_38
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LCD OFF STATS "

    goto :goto_45

    :cond_3f
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LCD ON STATS "

    :goto_45
    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lh/h;->f()Lc/d;

    move-result-object p0

    invoke-virtual {p0, v0}, Lc/d;->p(Z)V

    goto :goto_8f

    :cond_50
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MSG_TYPE_BATTERY_S_CHECK_REQ"

    invoke-static {p0, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lh/h;->y()V

    goto :goto_66

    :cond_5d
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MSG_TYPE_BATTERY_CHECK_REQ"

    invoke-static {p0, p1}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_66
    invoke-static {}, Lh/h;->d()V

    goto :goto_8f

    :cond_6a
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MSG_TYPE_CHARGING_INFO_REQ"

    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lh/h;->c(I)V

    goto :goto_8f

    :cond_7f
    invoke-static {}, Lh/h;->a()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MSG_TYPE:MSG_TYPE_LOAD_CHECK_REQ"

    invoke-static {p0, v0}, La/k;->c(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Lh/g;

    invoke-static {p0}, Lh/h;->b(Lh/g;)V

    :goto_8f
    return-void
.end method
