.class Lcom/samsung/android/hqm/a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/hqm/HqmManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/hqm/HqmManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hqm/HqmManagerService;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_80

    const/4 v1, 0x3

    if-eq v0, v1, :cond_5e

    const/4 v1, 0x4

    if-eq v0, v1, :cond_4f

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3c

    const/4 v1, 0x6

    if-eq v0, v1, :cond_29

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    goto/16 :goto_8e

    :cond_16
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_TYPE:MSG_TYPE_PROCESS_SECURITY"

    invoke-static {v0, v1}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/samsung/android/hqm/HqmManagerService;->i(Lcom/samsung/android/hqm/HqmManagerService;Landroid/content/Intent;)V

    goto :goto_8e

    :cond_29
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_TYPE:MSG_TYPE_PROCESS_LOG_BY_HQM"

    invoke-static {v0, v1}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/samsung/android/hqm/c;

    invoke-static {p0, p1}, Lcom/samsung/android/hqm/HqmManagerService;->h(Lcom/samsung/android/hqm/HqmManagerService;Lcom/samsung/android/hqm/c;)Z

    goto :goto_8e

    :cond_3c
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_TYPE:MSG_TYPE_PROCESS_DQA_MSG"

    invoke-static {v0, v1}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/content/Intent;

    invoke-static {p0, p1}, Lcom/samsung/android/hqm/HqmManagerService;->g(Lcom/samsung/android/hqm/HqmManagerService;Landroid/content/Intent;)V

    goto :goto_8e

    :cond_4f
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_TYPE:MSG_TYPE_FORCE_SEND_TIME_OUT"

    invoke-static {p1, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->f(Lcom/samsung/android/hqm/HqmManagerService;)V

    goto :goto_8e

    :cond_5e
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_TYPE:SET_TEST_DEVISION"

    invoke-static {p1, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->d(Lcom/samsung/android/hqm/HqmManagerService;)La/f;

    move-result-object p1

    if-eqz p1, :cond_7a

    iget-object p1, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->d(Lcom/samsung/android/hqm/HqmManagerService;)La/f;

    move-result-object p1

    sget-object v0, Lc/k;->N:Ljava/lang/String;

    invoke-virtual {p1, v0}, La/f;->d0(Ljava/lang/String;)V

    :cond_7a
    iget-object p0, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->e(Lcom/samsung/android/hqm/HqmManagerService;)V

    goto :goto_8e

    :cond_80
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MSG_TYPE:REFRESH_TIME_OUT"

    invoke-static {p1, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/hqm/a;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->b(Lcom/samsung/android/hqm/HqmManagerService;)V

    :goto_8e
    return-void
.end method
