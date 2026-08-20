.class public Lcom/android/server/policy/PhoneWindowManagerExt$7;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;)V
    .registers 2

    .line 4372
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$7;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 4374
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 4375
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "PhoneWindowManagerExt"

    if-eqz p2, :cond_22

    const-string p1, "Enabling listeners by proximity"

    .line 4376
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4378
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$7;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowOrientationListener;->enable(Z)V

    goto :goto_3c

    :cond_22
    const-string p2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 4383
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    const-string p1, "Disabling listeners by proximity"

    .line 4384
    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 4386
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$7;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayRotation:Lcom/android/server/wm/DisplayRotation;

    invoke-virtual {p0}, Lcom/android/server/wm/DisplayRotation;->getOrientationListener()Lcom/android/server/wm/WindowOrientationListener;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowOrientationListener;->disable()V

    :cond_3c
    :goto_3c
    return-void
.end method
