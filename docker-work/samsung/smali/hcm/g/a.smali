.class Lg/a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg/b;->l(Landroid/content/Context;)Lg/b;
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
    .registers 2

    iget p0, p1, Landroid/os/Message;->what:I

    const/4 p1, 0x1

    if-eq p0, p1, :cond_6

    goto :goto_12

    :cond_6
    invoke-static {}, Lg/b;->j()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MSG_TYPE:MSG_TYPE_SCREEN_ON_TIME_CHECK_REQ"

    invoke-static {p0, p1}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lg/b;->c()V

    :goto_12
    return-void
.end method
