.class Landroid/widget/TimePickerClockDelegate$4;
.super Ljava/lang/Object;
.source "TimePickerClockDelegate.java"

# interfaces
.implements Lcom/android/internal/widget/NumericTextView$OnValueChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TimePickerClockDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/widget/TimePickerClockDelegate;


# direct methods
.method constructor blacklist <init>(Landroid/widget/TimePickerClockDelegate;)V
    .registers 2
    .param p1, "this$0"    # Landroid/widget/TimePickerClockDelegate;

    .line 971
    iput-object p1, p0, Landroid/widget/TimePickerClockDelegate$4;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist onValueChanged(Lcom/android/internal/widget/NumericTextView;IZZ)V
    .registers 9
    .param p1, "view"    # Lcom/android/internal/widget/NumericTextView;
    .param p2, "value"    # I
    .param p3, "isValid"    # Z
    .param p4, "isFinished"    # Z

    .line 977
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$4;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$fgetmHourView(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;

    move-result-object v0

    if-ne p1, v0, :cond_1d

    .line 978
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$4;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$fgetmCommitHour(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    .line 979
    .local v0, "commitCallback":Ljava/lang/Runnable;
    invoke-virtual {p1}, Lcom/android/internal/widget/NumericTextView;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/widget/TimePickerClockDelegate$4;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v1}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$fgetmMinuteView(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .local v1, "nextFocusTarget":Landroid/view/View;
    :goto_1c
    goto :goto_2c

    .line 980
    .end local v0    # "commitCallback":Ljava/lang/Runnable;
    .end local v1    # "nextFocusTarget":Landroid/view/View;
    :cond_1d
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$4;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$fgetmMinuteView(Landroid/widget/TimePickerClockDelegate;)Lcom/android/internal/widget/NumericTextView;

    move-result-object v0

    if-ne p1, v0, :cond_42

    .line 981
    iget-object v0, p0, Landroid/widget/TimePickerClockDelegate$4;->this$0:Landroid/widget/TimePickerClockDelegate;

    invoke-static {v0}, Landroid/widget/TimePickerClockDelegate;->-$$Nest$fgetmCommitMinute(Landroid/widget/TimePickerClockDelegate;)Ljava/lang/Runnable;

    move-result-object v0

    .line 982
    .restart local v0    # "commitCallback":Ljava/lang/Runnable;
    const/4 v1, 0x0

    .line 987
    .restart local v1    # "nextFocusTarget":Landroid/view/View;
    :goto_2c
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/NumericTextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 989
    if-eqz p3, :cond_41

    .line 990
    if-eqz p4, :cond_3c

    .line 993
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 995
    if-eqz v1, :cond_41

    .line 996
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    goto :goto_41

    .line 1001
    :cond_3c
    const-wide/16 v2, 0x7d0

    invoke-virtual {p1, v0, v2, v3}, Lcom/android/internal/widget/NumericTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1004
    :cond_41
    :goto_41
    return-void

    .line 984
    .end local v0    # "commitCallback":Ljava/lang/Runnable;
    .end local v1    # "nextFocusTarget":Landroid/view/View;
    :cond_42
    return-void
.end method
