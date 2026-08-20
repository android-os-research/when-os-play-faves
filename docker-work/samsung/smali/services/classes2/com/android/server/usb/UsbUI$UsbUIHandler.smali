.class public final Lcom/android/server/usb/UsbUI$UsbUIHandler;
.super Landroid/os/Handler;
.source "UsbUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "UsbUIHandler"
.end annotation


# instance fields
.field public final currentOngoings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/usb/UsbUI$NotificationWrapper;",
            ">;"
        }
    .end annotation
.end field

.field public final pendingJobs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/Deque<",
            "Lcom/android/server/usb/UsbUI$NotificationWrapper;",
            ">;>;"
        }
    .end annotation
.end field

.field public final synthetic this$0:Lcom/android/server/usb/UsbUI;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbUI;Landroid/os/Looper;)V
    .registers 3

    .line 717
    iput-object p1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    .line 718
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 714
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    .line 715
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->currentOngoings:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 9

    .line 742
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_123

    const/4 v1, 0x1

    if-eq v0, v1, :cond_105

    const/4 v2, 0x2

    const/4 v3, 0x3

    const-string v4, "UsbUI"

    if-eq v0, v2, :cond_ca

    const/4 v2, 0x0

    const/4 v5, 0x4

    if-eq v0, v3, :cond_79

    if-eq v0, v5, :cond_2e

    const/4 p0, 0x5

    if-eq v0, p0, :cond_141

    .line 824
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unexpected message "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_141

    .line 795
    :cond_2e
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 797
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pollFirst(I)Lcom/android/server/usb/UsbUI$NotificationWrapper;

    move-result-object v0

    if-eqz v0, :cond_4e

    .line 798
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelAsUser: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->-$$Nest$fgettitle(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_4e
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmNotificationManager(Lcom/android/server/usb/UsbUI;)Landroid/app/NotificationManager;

    move-result-object v0

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, p1, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 803
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->size(I)I

    move-result v0

    if-lt v0, v1, :cond_62

    .line 804
    invoke-virtual {p0, v3, p1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(II)V

    .line 806
    :cond_62
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->currentOngoings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 807
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->currentOngoings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_141

    .line 776
    :cond_79
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 778
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->peek(I)Lcom/android/server/usb/UsbUI$NotificationWrapper;

    move-result-object v0

    if-eqz v0, :cond_141

    .line 781
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyAsUser: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->-$$Nest$fgettitle(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v1, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v1}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmNotificationManager(Lcom/android/server/usb/UsbUI;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->build()Landroid/app/Notification;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, p1, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 784
    invoke-static {v0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->-$$Nest$fgetinstant(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    move-result v1

    if-eqz v1, :cond_b3

    const/16 v1, 0xbb8

    .line 786
    invoke-virtual {p0, v5, p1, v1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessageDelayed(III)V

    .line 788
    :cond_b3
    invoke-static {v0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->-$$Nest$fgetinstant(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    move-result v1

    if-nez v1, :cond_141

    invoke-static {v0}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->-$$Nest$fgetongoing(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    move-result v1

    if-eqz v1, :cond_141

    .line 789
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->currentOngoings:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_141

    .line 756
    :cond_ca
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 757
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    .line 759
    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->offer(ILcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    .line 762
    invoke-static {p1}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->-$$Nest$fgetinstant(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Z

    move-result v2

    if-nez v2, :cond_fb

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->size(I)I

    move-result v2

    if-le v2, v1, :cond_fb

    .line 763
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Remove last insertion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/usb/UsbUI$NotificationWrapper;->-$$Nest$fgettitle(Lcom/android/server/usb/UsbUI$NotificationWrapper;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pollLast(I)Lcom/android/server/usb/UsbUI$NotificationWrapper;

    return-void

    .line 770
    :cond_fb
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->size(I)I

    move-result p1

    if-ne p1, v1, :cond_141

    .line 771
    invoke-virtual {p0, v3, v0}, Lcom/android/server/usb/UsbUI$UsbUIHandler;->sendMessage(II)V

    goto :goto_141

    .line 750
    :cond_105
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 751
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object p0

    .line 752
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 751
    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 752
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_141

    .line 744
    :cond_123
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 745
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {v0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->this$0:Lcom/android/server/usb/UsbUI;

    invoke-static {p0}, Lcom/android/server/usb/UsbUI;->-$$Nest$fgetmContext(Lcom/android/server/usb/UsbUI;)Landroid/content/Context;

    move-result-object p0

    .line 746
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    .line 745
    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 746
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :cond_141
    :goto_141
    return-void
.end method

.method public final offer(ILcom/android/server/usb/UsbUI$NotificationWrapper;)Z
    .registers 5

    .line 832
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 833
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Deque;

    goto :goto_28

    .line 835
    :cond_19
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 836
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v0

    .line 838
    :goto_28
    invoke-interface {p0, p2}, Ljava/util/Deque;->offer(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final peek(I)Lcom/android/server/usb/UsbUI$NotificationWrapper;
    .registers 4

    .line 858
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 859
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Deque;

    .line 860
    invoke-interface {p0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final pollFirst(I)Lcom/android/server/usb/UsbUI$NotificationWrapper;
    .registers 4

    .line 842
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 843
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Deque;

    .line 844
    invoke-interface {p0}, Ljava/util/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public final pollLast(I)Lcom/android/server/usb/UsbUI$NotificationWrapper;
    .registers 4

    .line 850
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 851
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Deque;

    .line 852
    invoke-interface {p0}, Ljava/util/Deque;->pollLast()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/UsbUI$NotificationWrapper;

    return-object p0

    :cond_1f
    const/4 p0, 0x0

    return-object p0
.end method

.method public sendMessage(II)V
    .registers 3

    .line 722
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 723
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 724
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(IILjava/lang/Object;)V
    .registers 4

    .line 728
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 729
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 730
    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 731
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageDelayed(III)V
    .registers 4

    .line 735
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 736
    iput p2, p1, Landroid/os/Message;->arg1:I

    int-to-long p2, p3

    .line 737
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final size(I)I
    .registers 4

    .line 866
    iget-object v0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 867
    iget-object p0, p0, Lcom/android/server/usb/UsbUI$UsbUIHandler;->pendingJobs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Deque;

    .line 868
    invoke-interface {p0}, Ljava/util/Deque;->size()I

    move-result p0

    return p0

    :cond_1d
    const/4 p0, -0x1

    return p0
.end method
