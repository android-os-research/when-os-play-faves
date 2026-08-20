.class public Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;
.super Landroid/os/Handler;
.source "KnoxCustomManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/custom/KnoxCustomManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KioskHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;Landroid/os/Looper;)V
    .registers 3

    .line 10725
    iput-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    .line 10726
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 10731
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_b

    .line 10732
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$mcloseLauncherApp(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V

    goto :goto_40

    :cond_b
    const/4 v1, 0x2

    if-ne p1, v1, :cond_30

    .line 10734
    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x20000000

    .line 10735
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    .line 10736
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 10737
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmContext(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Landroid/content/Context;

    move-result-object p0

    new-instance v0, Landroid/os/UserHandle;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_40

    :cond_30
    const/4 v0, 0x3

    if-ne p1, v0, :cond_40

    .line 10739
    iget-object p1, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p1}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$fgetmPhoneStatusBarInit(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)Z

    move-result p1

    if-eqz p1, :cond_40

    .line 10740
    iget-object p0, p0, Lcom/samsung/android/knox/custom/KnoxCustomManagerService$KioskHandler;->this$0:Lcom/samsung/android/knox/custom/KnoxCustomManagerService;

    invoke-static {p0}, Lcom/samsung/android/knox/custom/KnoxCustomManagerService;->-$$Nest$minitialiseSystemUi(Lcom/samsung/android/knox/custom/KnoxCustomManagerService;)V

    :cond_40
    :goto_40
    return-void
.end method
