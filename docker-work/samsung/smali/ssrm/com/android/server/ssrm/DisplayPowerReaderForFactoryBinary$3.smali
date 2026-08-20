.class Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$3;
.super Ljava/lang/Object;
.source "DisplayPowerReaderForFactoryBinary.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;


# direct methods
.method constructor <init>(Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    .line 168
    iput-object p1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$3;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 171
    invoke-static {}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Check count = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$3;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    iget v2, v2, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mCount:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$3;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    invoke-virtual {v0}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->calculateDisplayPower()V

    .line 175
    iget-object v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$3;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    iget v0, v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_3b

    .line 176
    iget-object v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$3;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    iget-object v0, v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$3;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    invoke-static {v1}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->-$$Nest$fgetmDisplayPmicSensingStopRunnable(Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    :cond_3b
    return-void
.end method
