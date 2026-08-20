.class public Lcom/android/server/power/ShutdownDialog$DrawHandler;
.super Landroid/os/Handler;
.source "ShutdownDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/ShutdownDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawHandler"
.end annotation


# instance fields
.field public finished:Z

.field public maxSleep:I

.field public final synthetic this$0:Lcom/android/server/power/ShutdownDialog;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ShutdownDialog;)V
    .registers 2

    .line 705
    iput-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 706
    invoke-virtual {p0}, Lcom/android/server/power/ShutdownDialog$DrawHandler;->init()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7

    const-string v0, "ShutdownDialog"

    const-string v1, "DrawHandler.handleMessage"

    .line 715
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x64

    if-le p1, v0, :cond_11

    sub-int/2addr p1, v0

    .line 717
    iput p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->maxSleep:I

    return-void

    :cond_11
    const/4 v0, -0x1

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1f

    const-string p1, "ShutdownDialog"

    const-string v0, "frame load finish"

    .line 720
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    iput-boolean v1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->finished:Z

    return-void

    .line 726
    :cond_1f
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQRear(Lcom/android/server/power/ShutdownDialog;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQFront(Lcom/android/server/power/ShutdownDialog;)I

    move-result v0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_134

    .line 727
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmDrawHandler(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object p1

    iget v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->maxSleep:I

    int-to-long v3, v0

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 729
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgethasSubDisplayDevice(Lcom/android/server/power/ShutdownDialog;)Z

    move-result p1

    if-eqz p1, :cond_fc

    .line 730
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmContext(Lcom/android/server/power/ShutdownDialog;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 731
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/view/SemWindowManager;->isFolded()Z

    move-result v0

    if-nez p1, :cond_7d

    .line 733
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmImageView(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQ(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQRear(Lcom/android/server/power/ShutdownDialog;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string p1, "ShutdownDialog"

    const-string/jumbo v0, "main image draw"

    .line 734
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_113

    :cond_7d
    const/4 v2, 0x5

    if-ne p1, v2, :cond_a0

    .line 736
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmImageView(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubbitmapQ(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQRear(Lcom/android/server/power/ShutdownDialog;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string p1, "ShutdownDialog"

    const-string/jumbo v0, "sub image draw"

    .line 737
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :cond_a0
    if-nez v0, :cond_c2

    .line 739
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmImageView(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQ(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQRear(Lcom/android/server/power/ShutdownDialog;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const-string p1, "ShutdownDialog"

    const-string/jumbo v0, "main image draw"

    .line 740
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    :cond_c2
    if-eqz v0, :cond_113

    .line 742
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubImageView(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubbitmapQ(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQRear(Lcom/android/server/power/ShutdownDialog;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 743
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubDialog(Lcom/android/server/power/ShutdownDialog;)Landroid/app/Presentation;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubImageView(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Presentation;->setContentView(Landroid/view/View;)V

    .line 744
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetsubDialog(Lcom/android/server/power/ShutdownDialog;)Landroid/app/Presentation;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Presentation;->show()V

    const-string p1, "ShutdownDialog"

    const-string/jumbo v0, "sub image draw"

    .line 745
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_113

    .line 748
    :cond_fc
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmImageView(Lcom/android/server/power/ShutdownDialog;)Landroid/widget/ImageView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQ(Lcom/android/server/power/ShutdownDialog;)[Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v2}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQRear(Lcom/android/server/power/ShutdownDialog;)I

    move-result v2

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 750
    :cond_113
    :goto_113
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetdrawBufferLock(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 751
    :try_start_11a
    iget-object v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {v0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetbitmapQRear(Lcom/android/server/power/ShutdownDialog;)I

    move-result v2

    add-int/2addr v2, v1

    rem-int/lit8 v2, v2, 0x3

    invoke-static {v0, v2}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fputbitmapQRear(Lcom/android/server/power/ShutdownDialog;I)V

    .line 752
    iget-object p0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p0}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetdrawBufferLock(Lcom/android/server/power/ShutdownDialog;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 753
    monitor-exit p1

    goto :goto_157

    :catchall_131
    move-exception p0

    monitor-exit p1
    :try_end_133
    .catchall {:try_start_11a .. :try_end_133} :catchall_131

    throw p0

    .line 756
    :cond_134
    iget-boolean p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->finished:Z

    if-eqz p1, :cond_141

    const-string p0, "ShutdownDialog"

    const-string/jumbo p1, "image draw finish"

    .line 757
    invoke-static {p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_141
    const-string p1, "ShutdownDialog"

    const-string/jumbo v0, "image buffer not ready"

    .line 760
    invoke-static {p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object p1, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->this$0:Lcom/android/server/power/ShutdownDialog;

    invoke-static {p1}, Lcom/android/server/power/ShutdownDialog;->-$$Nest$fgetmDrawHandler(Lcom/android/server/power/ShutdownDialog;)Lcom/android/server/power/ShutdownDialog$DrawHandler;

    move-result-object p1

    iget p0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->maxSleep:I

    div-int/lit8 p0, p0, 0x2

    int-to-long v0, p0

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :goto_157
    return-void
.end method

.method public init()V
    .registers 2

    const/4 v0, 0x0

    .line 710
    iput-boolean v0, p0, Lcom/android/server/power/ShutdownDialog$DrawHandler;->finished:Z

    return-void
.end method
