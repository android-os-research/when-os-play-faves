.class Landroid/widget/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final greylist-max-o BUTTON_DECREMENT:I = 0x2

.field public static final greylist-max-o BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final greylist-max-o MODE_PRESS:I

.field private final greylist-max-o MODE_TAPPED:I

.field private greylist-max-o mManagedButton:I

.field private greylist-max-o mMode:I

.field final synthetic blacklist this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor blacklist <init>(Landroid/widget/NumberPicker;)V
    .registers 3
    .param p1, "this$0"    # Landroid/widget/NumberPicker;

    .line 2306
    iput-object p1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2310
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    .line 2311
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public greylist-max-o buttonPressDelayed(I)V
    .registers 5
    .param p1, "button"    # I

    .line 2331
    invoke-virtual {p0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2332
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2333
    iput p1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2334
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2335
    return-void
.end method

.method public greylist-max-o buttonTapped(I)V
    .registers 3
    .param p1, "button"    # I

    .line 2338
    invoke-virtual {p0}, Landroid/widget/NumberPicker$PressedStateHelper;->cancel()V

    .line 2339
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2340
    iput p1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2341
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPicker;->post(Ljava/lang/Runnable;)Z

    .line 2342
    return-void
.end method

.method public greylist-max-o cancel()V
    .registers 6

    .line 2317
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    .line 2318
    iput v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2319
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-virtual {v1, p0}, Landroid/widget/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2320
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 2321
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-$$Nest$fputmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V

    .line 2322
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$100(Landroid/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2324
    :cond_2c
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1, v0}, Landroid/widget/NumberPicker;->-$$Nest$fputmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V

    .line 2325
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 2326
    iget-object v1, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPicker;->access$200(Landroid/widget/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2328
    :cond_48
    return-void
.end method

.method public whitelist test-api run()V
    .registers 6

    .line 2346
    iget v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_a6

    goto/16 :goto_a5

    .line 2360
    :pswitch_9
    iget v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_ae

    goto/16 :goto_a5

    .line 2370
    :pswitch_10
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 2371
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    .line 2372
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    .line 2371
    invoke-virtual {v0, p0, v3, v4}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2374
    :cond_22
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-$$Nest$fputmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V

    .line 2375
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$800(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_a5

    .line 2362
    :pswitch_3c
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_4e

    .line 2363
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    .line 2364
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    int-to-long v3, v3

    .line 2363
    invoke-virtual {v0, p0, v3, v4}, Landroid/widget/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2366
    :cond_4e
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;)Z

    move-result v3

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-$$Nest$fputmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V

    .line 2367
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$600(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$700(Landroid/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2368
    goto :goto_a5

    .line 2348
    :pswitch_6e
    iget v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_b6

    goto :goto_a4

    .line 2354
    :pswitch_74
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-$$Nest$fputmDecrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V

    .line 2355
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v0}, Landroid/widget/NumberPicker;->access$500(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v3}, Landroid/widget/NumberPicker;->-$$Nest$fgetmTopSelectionDividerTop(Landroid/widget/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    goto :goto_a4

    .line 2350
    :pswitch_89
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v1}, Landroid/widget/NumberPicker;->-$$Nest$fputmIncrementVirtualButtonPressed(Landroid/widget/NumberPicker;Z)V

    .line 2351
    iget-object v0, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->-$$Nest$fgetmBottomSelectionDividerBottom(Landroid/widget/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mRight:I
    invoke-static {v3}, Landroid/widget/NumberPicker;->access$300(Landroid/widget/NumberPicker;)I

    move-result v3

    iget-object v4, p0, Landroid/widget/NumberPicker$PressedStateHelper;->this$0:Landroid/widget/NumberPicker;

    # getter for: Landroid/widget/NumberPicker;->mBottom:I
    invoke-static {v4}, Landroid/widget/NumberPicker;->access$400(Landroid/widget/NumberPicker;)I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/widget/NumberPicker;->invalidate(IIII)V

    .line 2352
    nop

    .line 2358
    :goto_a4
    nop

    .line 2380
    :goto_a5
    return-void

    :pswitch_data_a6
    .packed-switch 0x1
        :pswitch_6e
        :pswitch_9
    .end packed-switch

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_10
    .end packed-switch

    :pswitch_data_b6
    .packed-switch 0x1
        :pswitch_89
        :pswitch_74
    .end packed-switch
.end method
