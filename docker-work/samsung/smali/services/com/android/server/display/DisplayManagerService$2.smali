.class public Lcom/android/server/display/DisplayManagerService$2;
.super Landroid/content/BroadcastReceiver;
.source "DisplayManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService;)V
    .registers 2

    .line 606
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 7

    .line 609
    const-class p1, Landroid/hardware/display/DisplayManagerInternal;

    .line 610
    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManagerInternal;

    .line 611
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_2d

    const-string p1, "android.intent.extra.DOCK_STATE"

    .line 612
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 614
    iget-object v2, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    if-eq p1, v0, :cond_29

    const/4 v3, 0x3

    if-eq p1, v3, :cond_29

    const/4 v3, 0x4

    if-ne p1, v3, :cond_27

    goto :goto_29

    :cond_27
    move p1, v1

    goto :goto_2a

    :cond_29
    :goto_29
    move p1, v0

    :goto_2a
    invoke-static {v2, p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fputmIsDocked(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 618
    :cond_2d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v2, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    .line 619
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1, v0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fputmIsDreaming(Lcom/android/server/display/DisplayManagerService;Z)V

    goto :goto_50

    .line 620
    :cond_3f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_50

    .line 621
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1, v1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fputmIsDreaming(Lcom/android/server/display/DisplayManagerService;Z)V

    .line 623
    :cond_50
    :goto_50
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p1}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmIsDocked(Lcom/android/server/display/DisplayManagerService;)Z

    move-result p2

    if-eqz p2, :cond_61

    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$2;->this$0:Lcom/android/server/display/DisplayManagerService;

    invoke-static {p0}, Lcom/android/server/display/DisplayManagerService;->-$$Nest$fgetmIsDreaming(Lcom/android/server/display/DisplayManagerService;)Z

    move-result p0

    if-eqz p0, :cond_61

    goto :goto_62

    :cond_61
    move v0, v1

    :goto_62
    invoke-virtual {p1, v0, v1}, Lcom/android/server/display/DisplayManagerService;->setDockedAndIdleEnabled(ZI)V

    return-void
.end method
