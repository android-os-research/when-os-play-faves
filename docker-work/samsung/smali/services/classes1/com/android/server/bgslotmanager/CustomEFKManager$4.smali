.class public Lcom/android/server/bgslotmanager/CustomEFKManager$4;
.super Landroid/os/CountDownTimer;
.source "CustomEFKManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/bgslotmanager/CustomEFKManager;->getCurWatermarkFactorScale()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;


# direct methods
.method public constructor <init>(Lcom/android/server/bgslotmanager/CustomEFKManager;JJ)V
    .registers 6

    .line 161
    iput-object p1, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$4;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .line 166
    iget-object v0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$4;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {}, Lcom/android/server/bgslotmanager/CustomEFKManager;->getWatermarkScaleInfo()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$fputv_watermark_scale(Lcom/android/server/bgslotmanager/CustomEFKManager;I)V

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "curWatermarkScale : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/bgslotmanager/CustomEFKManager$4;->this$0:Lcom/android/server/bgslotmanager/CustomEFKManager;

    invoke-static {p0}, Lcom/android/server/bgslotmanager/CustomEFKManager;->-$$Nest$fgetv_watermark_scale(Lcom/android/server/bgslotmanager/CustomEFKManager;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "DynamicHiddenApp_CustomEFKManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onTick(J)V
    .registers 3

    return-void
.end method
