.class public Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "SystemScreenInteractiveHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->onSystemReady()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/injector/SystemScreenInteractiveHelper;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;->this$0:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x1

    goto :goto_1b

    .line 59
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x0

    .line 65
    :goto_1b
    iget-object p0, p0, Lcom/android/server/location/injector/SystemScreenInteractiveHelper$1;->this$0:Lcom/android/server/location/injector/SystemScreenInteractiveHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/location/injector/SystemScreenInteractiveHelper;->onScreenInteractiveChanged(Z)V

    :cond_20
    return-void
.end method
