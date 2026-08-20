.class public Lcom/android/server/accessibility/SamsungSlowKeys$1;
.super Landroid/os/Handler;
.source "SamsungSlowKeys.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungSlowKeys;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/SamsungSlowKeys;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/SamsungSlowKeys;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 37
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungSlowKeys;->-$$Nest$fgetmCurrentKeyEvent(Lcom/android/server/accessibility/SamsungSlowKeys;)Landroid/view/KeyEvent;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 38
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onKeyEvent : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungSlowKeys;->-$$Nest$fgetmCurrentKeyEvent(Lcom/android/server/accessibility/SamsungSlowKeys;)Landroid/view/KeyEvent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SamsungSlowKeys"

    invoke-static {p1, v1, v0}, Lcom/android/server/accessibility/SamsungSlowKeys;->-$$Nest$mdebugLog(Lcom/android/server/accessibility/SamsungSlowKeys;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungSlowKeys;->-$$Nest$fgetmNext(Lcom/android/server/accessibility/SamsungSlowKeys;)Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object p1

    if-eqz p1, :cond_5f

    .line 40
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 42
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungSlowKeys;->-$$Nest$fgetmCurrentKeyEvent(Lcom/android/server/accessibility/SamsungSlowKeys;)Landroid/view/KeyEvent;

    move-result-object p1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/view/KeyEvent;->setTime(JJ)V

    .line 43
    iget-object p1, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    invoke-static {p1}, Lcom/android/server/accessibility/SamsungSlowKeys;->-$$Nest$fgetmNext(Lcom/android/server/accessibility/SamsungSlowKeys;)Lcom/android/server/accessibility/EventStreamTransformation;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    invoke-static {v0}, Lcom/android/server/accessibility/SamsungSlowKeys;->-$$Nest$fgetmCurrentKeyEvent(Lcom/android/server/accessibility/SamsungSlowKeys;)Landroid/view/KeyEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    invoke-static {v1}, Lcom/android/server/accessibility/SamsungSlowKeys;->-$$Nest$fgetmPolicyFlags(Lcom/android/server/accessibility/SamsungSlowKeys;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 44
    iget-object p0, p0, Lcom/android/server/accessibility/SamsungSlowKeys$1;->this$0:Lcom/android/server/accessibility/SamsungSlowKeys;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/accessibility/SamsungSlowKeys;->-$$Nest$fputmCurrentKeyEvent(Lcom/android/server/accessibility/SamsungSlowKeys;Landroid/view/KeyEvent;)V

    :cond_5f
    return-void
.end method
