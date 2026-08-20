.class public Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;
.super Landroid/os/Handler;
.source "SingleKeyGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/SingleKeyGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KeyHandler"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/SingleKeyGestureDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector;)V
    .registers 2

    .line 729
    iput-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 730
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 10

    .line 741
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;

    const-string v1, "SingleKeyGesture"

    if-nez v0, :cond_f

    const-string/jumbo p0, "singleKeyHandlerObj is null"

    .line 743
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 746
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->getSingleKeyRule()Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    move-result-object v2

    .line 747
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->getKeyEvent()Landroid/view/KeyEvent;

    move-result-object v3

    .line 748
    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandlerObj;->getPolicyFlags()I

    move-result v0

    if-nez v2, :cond_23

    const-string p0, "No active rule."

    .line 754
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 758
    :cond_23
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 759
    iget v5, p1, Landroid/os/Message;->arg2:I

    .line 760
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v6, 0x1

    if-eqz p1, :cond_ae

    if-eq p1, v6, :cond_81

    const/4 v0, 0x2

    if-eq p1, v0, :cond_33

    goto/16 :goto_e3

    .line 785
    :cond_33
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetDEBUG()Z

    .line 789
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Detect press "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v5, v6, :cond_77

    .line 794
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fgetmTriggeredMultiPressTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J

    move-result-wide v4

    .line 795
    invoke-virtual {v3}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v6

    cmp-long p1, v4, v6

    if-lez p1, :cond_6d

    const-string p0, "SinglePress downTime is older than multiPress triggered time."

    .line 796
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e3

    .line 801
    :cond_6d
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fgetmLastDownTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J

    move-result-wide p0

    invoke-virtual {v2, p0, p1, v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onPress(JLandroid/view/KeyEvent;)V

    goto :goto_e3

    .line 806
    :cond_77
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fgetmLastDownTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J

    move-result-wide p0

    invoke-virtual {v2, p0, p1, v5, v3}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onMultiPress(JILandroid/view/KeyEvent;)V

    goto :goto_e3

    .line 777
    :cond_81
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_9f

    .line 778
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Detect very long press "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 779
    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 778
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_9f
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {p1, v6}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fputmHandledByLongPress(Lcom/android/server/policy/SingleKeyGestureDetector;Z)V

    .line 782
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fgetmLastDownTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onVeryLongPress(J)V

    goto :goto_e3

    .line 762
    :cond_ae
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_cc

    .line 763
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Detect long press "

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_cc
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {p1}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fgetmHandledByLongPress(Lcom/android/server/policy/SingleKeyGestureDetector;)Z

    move-result p1

    if-eqz p1, :cond_d5

    goto :goto_e3

    .line 770
    :cond_d5
    iget-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {p1, v6}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fputmHandledByLongPress(Lcom/android/server/policy/SingleKeyGestureDetector;Z)V

    .line 771
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fgetmLastDownTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J

    move-result-wide p0

    invoke-virtual {v2, p0, p1, v3, v0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onLongPress(JLandroid/view/KeyEvent;I)V

    :goto_e3
    return-void
.end method
