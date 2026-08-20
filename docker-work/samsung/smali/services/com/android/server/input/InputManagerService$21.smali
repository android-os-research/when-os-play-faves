.class public Lcom/android/server/input/InputManagerService$21;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 2

    .line 6273
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 6276
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

    .line 6277
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4e

    const/4 p1, 0x0

    const-string/jumbo v0, "kids_home_mode"

    .line 6278
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 6279
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KidsMode : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmIsKidsMode(Lcom/android/server/input/InputManagerService;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " -> "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "InputManager"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6280
    iget-object p2, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmIsKidsMode(Lcom/android/server/input/InputManagerService;)Z

    move-result p2

    if-eq p2, p1, :cond_4e

    .line 6281
    iget-object p2, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p2}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/android/server/input/NativeInputManagerService;->setKidsMode(Z)V

    .line 6282
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$21;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0, p1}, Lcom/android/server/input/InputManagerService;->-$$Nest$fputmIsKidsMode(Lcom/android/server/input/InputManagerService;Z)V

    :cond_4e
    return-void
.end method
