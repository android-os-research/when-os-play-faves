.class public Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;
.super Landroid/os/Handler;
.source "AccessibilityWindowsPopulator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AccessibilityWindowsPopulator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# static fields
.field public static final MESSAGE_NOTIFY_WINDOWS_CHANGED:I = 0x1

.field public static final MESSAGE_NOTIFY_WINDOWS_CHANGED_BY_TIMEOUT:I = 0x3

.field public static final MESSAGE_NOTIFY_WINDOWS_CHANGED_BY_UI_STABLE:I = 0x2


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AccessibilityWindowsPopulator;Landroid/os/Looper;)V
    .registers 4

    .line 568
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 569
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 574
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 p1, 0x2

    if-eq v0, p1, :cond_24

    const/4 v1, 0x3

    if-eq v0, v1, :cond_c

    goto :goto_33

    .line 585
    :cond_c
    invoke-static {}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows change within in 2 frames continuously over 500 ms and notify windows changed immediately"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-static {v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$fgetmHandler(Lcom/android/server/wm/AccessibilityWindowsPopulator;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 590
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$mforceUpdateWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator;)V

    goto :goto_33

    .line 581
    :cond_24
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-static {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$mforceUpdateWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator;)V

    goto :goto_33

    .line 576
    :cond_2a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    .line 577
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;->this$0:Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-static {p0, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->-$$Nest$mnotifyWindowsChanged(Lcom/android/server/wm/AccessibilityWindowsPopulator;Ljava/util/List;)V

    :goto_33
    return-void
.end method
