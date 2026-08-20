.class public Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;
.super Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.source "SystemEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/chimera/SystemEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppLaunchIntent"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/chimera/SystemEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/SystemEventListener;)V
    .registers 2

    .line 239
    iput-object p1, p0, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-direct {p0}, Lcom/android/server/wm/ActivityMetricsLaunchObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/chimera/SystemEventListener;Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;-><init>(Lcom/android/server/chimera/SystemEventListener;)V

    return-void
.end method


# virtual methods
.method public onIntentStarted(Landroid/content/Intent;J)V
    .registers 7

    .line 243
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    const-string p3, "SystemEventListener"

    if-eqz p2, :cond_11

    .line 244
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    .line 245
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_1b

    .line 246
    :cond_11
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_66

    .line 247
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    .line 253
    :goto_1b
    iget-object p2, p0, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {p2}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/SystemEventListener;)Lcom/android/server/chimera/SystemRepository;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/chimera/SystemRepository;->getCurrentHomePackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_65

    const-string p2, "com.samsung.android.permissioncontroller"

    .line 254
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_34

    goto :goto_65

    .line 258
    :cond_34
    iget-object p2, p0, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {p2}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmHandler(Lcom/android/server/chimera/SystemEventListener;)Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    move-result-object p2

    const/16 v0, 0xb

    invoke-static {p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p2

    .line 259
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 260
    iget-object v0, p0, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {v0}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/SystemEventListener;)Lcom/android/server/chimera/SystemRepository;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "appLaunchIntent package name is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p3, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {p0}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmHandler(Lcom/android/server/chimera/SystemEventListener;)Lcom/android/server/chimera/SystemEventListener$SystemEventHandler;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_65
    :goto_65
    return-void

    .line 249
    :cond_66
    iget-object p0, p0, Lcom/android/server/chimera/SystemEventListener$AppLaunchIntent;->this$0:Lcom/android/server/chimera/SystemEventListener;

    invoke-static {p0}, Lcom/android/server/chimera/SystemEventListener;->-$$Nest$fgetmSystemRepository(Lcom/android/server/chimera/SystemEventListener;)Lcom/android/server/chimera/SystemRepository;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not an effective intent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p3, p1}, Lcom/android/server/chimera/SystemRepository;->log(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
