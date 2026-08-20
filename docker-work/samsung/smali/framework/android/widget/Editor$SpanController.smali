.class Landroid/widget/Editor$SpanController;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/text/SpanWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpanController"
.end annotation


# static fields
.field private static final greylist-max-o DISPLAY_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private greylist-max-o mHidePopup:Ljava/lang/Runnable;

.field private greylist-max-o mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

.field final synthetic blacklist this$0:Landroid/widget/Editor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$msendEasySpanNotification(Landroid/widget/Editor$SpanController;ILandroid/text/style/EasyEditSpan;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->sendEasySpanNotification(ILandroid/text/style/EasyEditSpan;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/widget/Editor;)V
    .registers 2

    .line 3704
    iput-object p1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/widget/Editor;Landroid/widget/Editor$SpanController-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/Editor$SpanController;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method private greylist-max-o isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z
    .registers 4
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "span"    # Ljava/lang/Object;

    .line 3715
    sget-object v0, Landroid/text/Selection;->SELECTION_START:Ljava/lang/Object;

    if-eq v0, p2, :cond_8

    sget-object v0, Landroid/text/Selection;->SELECTION_END:Ljava/lang/Object;

    if-ne v0, p2, :cond_12

    .line 3716
    :cond_8
    invoke-interface {p1, p2}, Landroid/text/Spannable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    .line 3715
    :goto_13
    return v0
.end method

.method private greylist-max-o sendEasySpanNotification(ILandroid/text/style/EasyEditSpan;)V
    .registers 7
    .param p1, "textChangedType"    # I
    .param p2, "span"    # Landroid/text/style/EasyEditSpan;

    .line 3806
    :try_start_0
    invoke-virtual {p2}, Landroid/text/style/EasyEditSpan;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 3807
    .local v0, "pendingIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_1e

    .line 3808
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3809
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "android.text.style.EXTRA_TEXT_CHANGED_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3810
    iget-object v2, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-static {v2}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_1e
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 3815
    .end local v0    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1e
    goto :goto_27

    .line 3812
    :catch_1f
    move-exception v0

    .line 3814
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    const-string v1, "Editor"

    const-string v2, "PendingIntent for notification cannot be sent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3816
    .end local v0    # "e":Landroid/app/PendingIntent$CanceledException;
    :goto_27
    return-void
.end method


# virtual methods
.method public greylist-max-o hide()V
    .registers 3

    .line 3798
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    if-eqz v0, :cond_12

    .line 3799
    invoke-virtual {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->hide()V

    .line 3800
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3802
    :cond_12
    return-void
.end method

.method public whitelist onSpanAdded(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 9
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 3721
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3722
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$msendUpdateSelection(Landroid/widget/Editor;)V

    goto/16 :goto_8a

    .line 3723
    :cond_d
    instance-of v0, p2, Landroid/text/style/EasyEditSpan;

    if-eqz v0, :cond_8a

    .line 3724
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    if-nez v0, :cond_26

    .line 3725
    new-instance v0, Landroid/widget/Editor$EasyEditPopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/Editor$EasyEditPopupWindow;-><init>(Landroid/widget/Editor;Landroid/widget/Editor$EasyEditPopupWindow-IA;)V

    iput-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    .line 3726
    new-instance v0, Landroid/widget/Editor$SpanController$1;

    invoke-direct {v0, p0}, Landroid/widget/Editor$SpanController$1;-><init>(Landroid/widget/Editor$SpanController;)V

    iput-object v0, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    .line 3735
    :cond_26
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    invoke-static {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->-$$Nest$fgetmEasyEditSpan(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 3736
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    invoke-static {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->-$$Nest$fgetmEasyEditSpan(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/text/style/EasyEditSpan;->setDeleteEnabled(Z)V

    .line 3739
    :cond_38
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    move-object v1, p2

    check-cast v1, Landroid/text/style/EasyEditSpan;

    invoke-virtual {v0, v1}, Landroid/widget/Editor$EasyEditPopupWindow;->setEasyEditSpan(Landroid/text/style/EasyEditSpan;)V

    .line 3740
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    new-instance v1, Landroid/widget/Editor$SpanController$2;

    invoke-direct {v1, p0}, Landroid/widget/Editor$SpanController$2;-><init>(Landroid/widget/Editor$SpanController;)V

    invoke-static {v0, v1}, Landroid/widget/Editor$EasyEditPopupWindow;->-$$Nest$msetOnDeleteListener(Landroid/widget/Editor$EasyEditPopupWindow;Landroid/widget/Editor$EasyEditDeleteListener;)V

    .line 3754
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getWindowVisibility()I

    move-result v0

    if-eqz v0, :cond_57

    .line 3756
    return-void

    .line 3759
    :cond_57
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    if-nez v0, :cond_64

    .line 3761
    return-void

    .line 3764
    :cond_64
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$mextractedTextModeWillBeStarted(Landroid/widget/Editor;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 3767
    return-void

    .line 3770
    :cond_6d
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    invoke-virtual {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->show()V

    .line 3771
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3772
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$fgetmTextView(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$SpanController;->mHidePopup:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3774
    :cond_8a
    :goto_8a
    return-void
.end method

.method public whitelist onSpanChanged(Landroid/text/Spannable;Ljava/lang/Object;IIII)V
    .registers 9
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "previousStart"    # I
    .param p4, "previousEnd"    # I
    .param p5, "newStart"    # I
    .param p6, "newEnd"    # I

    .line 3788
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3789
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$msendUpdateSelection(Landroid/widget/Editor;)V

    goto :goto_1e

    .line 3790
    :cond_c
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    if-eqz v0, :cond_1e

    instance-of v0, p2, Landroid/text/style/EasyEditSpan;

    if-eqz v0, :cond_1e

    .line 3791
    move-object v0, p2

    check-cast v0, Landroid/text/style/EasyEditSpan;

    .line 3792
    .local v0, "easyEditSpan":Landroid/text/style/EasyEditSpan;
    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Landroid/widget/Editor$SpanController;->sendEasySpanNotification(ILandroid/text/style/EasyEditSpan;)V

    .line 3793
    invoke-interface {p1, v0}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 3795
    .end local v0    # "easyEditSpan":Landroid/text/style/EasyEditSpan;
    :cond_1e
    :goto_1e
    return-void
.end method

.method public whitelist onSpanRemoved(Landroid/text/Spannable;Ljava/lang/Object;II)V
    .registers 6
    .param p1, "text"    # Landroid/text/Spannable;
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "start"    # I
    .param p4, "end"    # I

    .line 3778
    invoke-direct {p0, p1, p2}, Landroid/widget/Editor$SpanController;->isNonIntermediateSelectionSpan(Landroid/text/Spannable;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3779
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->this$0:Landroid/widget/Editor;

    invoke-static {v0}, Landroid/widget/Editor;->-$$Nest$msendUpdateSelection(Landroid/widget/Editor;)V

    goto :goto_19

    .line 3780
    :cond_c
    iget-object v0, p0, Landroid/widget/Editor$SpanController;->mPopupWindow:Landroid/widget/Editor$EasyEditPopupWindow;

    if-eqz v0, :cond_19

    invoke-static {v0}, Landroid/widget/Editor$EasyEditPopupWindow;->-$$Nest$fgetmEasyEditSpan(Landroid/widget/Editor$EasyEditPopupWindow;)Landroid/text/style/EasyEditSpan;

    move-result-object v0

    if-ne p2, v0, :cond_19

    .line 3781
    invoke-virtual {p0}, Landroid/widget/Editor$SpanController;->hide()V

    .line 3783
    :cond_19
    :goto_19
    return-void
.end method
