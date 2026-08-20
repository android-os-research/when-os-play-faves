.class public final Lcom/android/server/policy/PhoneWindowManagerExt$RecentKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManagerExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManagerExt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "RecentKeyRule"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManagerExt;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManagerExt;I)V
    .registers 3

    .line 2325
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$RecentKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    const/16 p1, 0xbb

    .line 2326
    invoke-direct {p0, p1, p2}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public onLongPress(JLandroid/view/KeyEvent;I)V
    .registers 5

    const/4 p1, 0x1

    .line 2340
    iput-boolean p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->mIsKeyLongPressed:Z

    .line 2341
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManagerExt$RecentKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManagerExt;->mKeyCustomizationPolicy:Lcom/android/server/policy/KeyCustomizationManager;

    invoke-virtual {p1, p3}, Lcom/android/server/policy/KeyCustomizationManager;->launchLongPressAction(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 2346
    :cond_e
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$RecentKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/policy/PhoneWindowManagerExt;->-$$Nest$mhandleLongPressOnRecent(Lcom/android/server/policy/PhoneWindowManagerExt;I)V

    return-void
.end method

.method public onPress(JLandroid/view/KeyEvent;)V
    .registers 4

    .line 2334
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt$RecentKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManagerExt;

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManagerExt;->mPolicy:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0}, Lcom/android/server/policy/PhoneWindowManager;->toggleRecentApps()V

    return-void
.end method
