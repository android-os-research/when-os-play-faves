.class public Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;
.super Landroid/content/BroadcastReceiver;
.source "CornerActionSelectPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1d

    .line 52
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    invoke-static {p1}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->-$$Nest$fgetmPopup(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)Landroid/widget/PopupMenu;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 53
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup$1;->this$0:Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;

    invoke-static {p0}, Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;->-$$Nest$fgetmPopup(Lcom/android/server/accessibility/autoaction/CornerActionSelectPopup;)Landroid/widget/PopupMenu;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/PopupMenu;->dismiss()V

    :cond_1d
    return-void
.end method
