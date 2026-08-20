.class public Lcom/android/server/input/InputManagerService$20;
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

    .line 6249
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$20;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .line 6252
    invoke-static {}, Lcom/android/server/input/InputManagerService;->-$$Nest$sfgetSEP_FULL()Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 6253
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.samsung.android.mirrorlink.ML_STATE"

    .line 6254
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const-string/jumbo v0, "mlstatus"

    const/4 v1, 0x0

    .line 6255
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_53

    const-string/jumbo p2, "net.mirrorlink.on"

    .line 6258
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "1"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_36

    .line 6259
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$20;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, v0}, Lcom/android/server/input/NativeInputManagerService;->setMirrorLinkMode(Z)V

    goto :goto_5c

    .line 6261
    :cond_36
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "received: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", but property is not 1"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "InputManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5c

    .line 6264
    :cond_53
    iget-object p0, p0, Lcom/android/server/input/InputManagerService$20;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-static {p0}, Lcom/android/server/input/InputManagerService;->-$$Nest$fgetmNative(Lcom/android/server/input/InputManagerService;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/server/input/NativeInputManagerService;->setMirrorLinkMode(Z)V

    :cond_5c
    :goto_5c
    return-void
.end method
