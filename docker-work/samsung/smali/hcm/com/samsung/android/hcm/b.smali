.class Lcom/samsung/android/hcm/b;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hcm/HcmManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/hcm/HcmManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/hcm/HcmManagerService;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/hcm/b;->a:Lcom/samsung/android/hcm/HcmManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_28

    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->a()Ljava/lang/String;

    move-result-object p1

    const-string p2, "receive the ACTION_BOOT_COMPLETED Intent"

    invoke-static {p1, p2}, La/k;->e(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/hcm/b;->a:Lcom/samsung/android/hcm/HcmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hcm/HcmManagerService;->e(Lcom/samsung/android/hcm/HcmManagerService;)La/d;

    move-result-object p1

    const-string p2, "MAIN"

    const-string v0, "BOOT_COMPLETED"

    invoke-virtual {p1, p2, v0}, La/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/hcm/b;->a:Lcom/samsung/android/hcm/HcmManagerService;

    invoke-static {p0}, Lcom/samsung/android/hcm/HcmManagerService;->f(Lcom/samsung/android/hcm/HcmManagerService;)V

    goto :goto_56

    :cond_28
    const-string p2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_47

    iget-object p1, p0, Lcom/samsung/android/hcm/b;->a:Lcom/samsung/android/hcm/HcmManagerService;

    invoke-static {p1}, Lcom/samsung/android/hcm/HcmManagerService;->g(Lcom/samsung/android/hcm/HcmManagerService;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p1

    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p0, p0, Lcom/samsung/android/hcm/b;->a:Lcom/samsung/android/hcm/HcmManagerService;

    invoke-static {p0}, Lcom/samsung/android/hcm/HcmManagerService;->g(Lcom/samsung/android/hcm/HcmManagerService;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_56

    :cond_47
    const-string p0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_56

    invoke-static {}, Lcom/samsung/android/hcm/HcmManagerService;->h()Lh/h;

    move-result-object p0

    invoke-virtual {p0}, Lh/h;->u()V

    :cond_56
    :goto_56
    return-void
.end method
