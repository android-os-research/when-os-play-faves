.class Lcom/samsung/android/hqm/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hqm/HqmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/hqm/HqmManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hqm/HqmManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "receive the ACTION_BOOT_COMPLETED Intent"

    invoke-static {p1, p2}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->d(Lcom/samsung/android/hqm/HqmManagerService;)La/f;

    move-result-object p1

    if-eqz p1, :cond_14b

    sget-boolean p1, Ld/a;->i:Z

    if-eqz p1, :cond_14b

    sget p1, La/g;->h:I

    const/4 p2, 0x2

    if-ne p1, p2, :cond_31

    iget-object p0, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->d(Lcom/samsung/android/hqm/HqmManagerService;)La/f;

    move-result-object p0

    invoke-virtual {p0}, La/f;->H()V

    goto/16 :goto_14b

    :cond_31
    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->e(Lcom/samsung/android/hqm/HqmManagerService;)V

    iget-object p0, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->d(Lcom/samsung/android/hqm/HqmManagerService;)La/f;

    move-result-object p0

    invoke-virtual {p0}, La/f;->G()V

    goto/16 :goto_14b

    :cond_41
    const-string v0, "com.sec.android.intent.action.HQM_HW_STATUS_REQ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x1388

    if-eqz v0, :cond_86

    sget-boolean p1, Lc/k;->B:Z

    const/4 p2, 0x1

    if-ne p1, p2, :cond_14b

    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "receive the HQM_STATUS_REQ Intent"

    invoke-static {p1, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->d(Lcom/samsung/android/hqm/HqmManagerService;)La/f;

    move-result-object p1

    if-eqz p1, :cond_14b

    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->d(Lcom/samsung/android/hqm/HqmManagerService;)La/f;

    move-result-object p1

    invoke-virtual {p1}, La/f;->i0()V

    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->j(Lcom/samsung/android/hqm/HqmManagerService;)V

    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->k(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    :goto_79
    iput p2, p1, Landroid/os/Message;->what:I

    :goto_7b
    iget-object p0, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p0}, Lcom/samsung/android/hqm/HqmManagerService;->k(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_14b

    :cond_86
    const-string v0, "com.sec.android.intent.action.ACT_HQM_UPDATE_REQ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c7

    sget p1, Lc/k;->F:I

    sget p2, Lc/b;->E:I

    if-eq p1, p2, :cond_9a

    sget p1, Lc/k;->F:I

    sget p2, Lc/b;->H:I

    if-ne p1, p2, :cond_14b

    :cond_9a
    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "receive the ACT_HQM_REQ Intent"

    invoke-static {p1, p2}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->d(Lcom/samsung/android/hqm/HqmManagerService;)La/f;

    move-result-object p1

    if-eqz p1, :cond_14b

    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->d(Lcom/samsung/android/hqm/HqmManagerService;)La/f;

    move-result-object p1

    const-wide/16 v3, -0x1

    invoke-virtual {p1, v3, v4}, La/f;->h0(J)V

    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->c(Lcom/samsung/android/hqm/HqmManagerService;)V

    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->k(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x4

    goto :goto_79

    :cond_c7
    const-string v0, "com.sec.android.intent.action.ACT_HQM_TEST_DIVISION"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, 0x64

    if-eqz v0, :cond_10c

    sget p1, Lc/k;->F:I

    sget v0, Lc/b;->E:I

    if-eq p1, v0, :cond_dd

    sget p1, Lc/k;->F:I

    sget v0, Lc/b;->H:I

    if-ne p1, v0, :cond_14b

    :cond_dd
    const-string p1, "TESTDIVISION"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->a()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receive the ACT_HQM_TESTDIVISION Intent "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_14b

    sput-object p1, Lc/k;->N:Ljava/lang/String;

    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->k(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x3

    goto/16 :goto_79

    :cond_10c
    const-string v0, "com.samsung.android.dqagent.ACTION_DQA_EXTRA_INFO"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12e

    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "receive the DQA_EXTRA_INFO Intent "

    invoke-static {p1, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->k(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x5

    :goto_128
    iput v0, p1, Landroid/os/Message;->what:I

    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto/16 :goto_7b

    :cond_12e
    const-string v0, "com.sec.intent.action.SYSSCOPESTATUS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_14b

    invoke-static {}, Lcom/samsung/android/hqm/HqmManagerService;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "receive the ACTION_SYSSCOPE_STATUS Intent "

    invoke-static {p1, v0}, La/s;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/hqm/b;->a:Lcom/samsung/android/hqm/HqmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hqm/HqmManagerService;->k(Lcom/samsung/android/hqm/HqmManagerService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 v0, 0x7

    goto :goto_128

    :cond_14b
    :goto_14b
    return-void
.end method
