.class public Lcom/android/server/wm/MultiWindowPointerEventListener$1;
.super Landroid/content/BroadcastReceiver;
.source "MultiWindowPointerEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/MultiWindowPointerEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/MultiWindowPointerEventListener;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 130
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_40

    const/4 p2, -0x1

    .line 132
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_42

    goto :goto_31

    :sswitch_11
    const-string v0, "com.samsung.systemui.statusbar.EXPANDED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_31

    :cond_1a
    const/4 p2, 0x2

    goto :goto_31

    :sswitch_1c
    const-string v0, "com.samsung.systemui.statusbar.COLLAPSED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_25

    goto :goto_31

    :cond_25
    move p2, v1

    goto :goto_31

    :sswitch_27
    const-string v0, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_31

    :cond_30
    move p2, v2

    :goto_31
    packed-switch p2, :pswitch_data_50

    goto :goto_40

    .line 138
    :pswitch_35
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-static {p0, v2}, Lcom/android/server/wm/MultiWindowPointerEventListener;->-$$Nest$fputmIsStatusBarShowing(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)V

    goto :goto_40

    .line 135
    :pswitch_3b
    iget-object p0, p0, Lcom/android/server/wm/MultiWindowPointerEventListener$1;->this$0:Lcom/android/server/wm/MultiWindowPointerEventListener;

    invoke-static {p0, v1}, Lcom/android/server/wm/MultiWindowPointerEventListener;->-$$Nest$fputmIsStatusBarShowing(Lcom/android/server/wm/MultiWindowPointerEventListener;Z)V

    :cond_40
    :goto_40
    return-void

    nop

    :sswitch_data_42
    .sparse-switch
        -0x241fab39 -> :sswitch_27
        0x9468bc0 -> :sswitch_1c
        0x70549e10 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_3b
        :pswitch_35
        :pswitch_3b
    .end packed-switch
.end method
