.class Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$2;
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

    .line 153
    iput-object p1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$2;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 157
    :try_start_0
    invoke-static {}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->-$$Nest$sfgetBUCK_ALL_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->readSysfsMultipleLines(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_b} :catch_c

    .line 160
    goto :goto_10

    .line 158
    :catch_c
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 161
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :goto_10
    invoke-static {}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Display Power sensing is started."

    invoke-static {v0, v1}, Lcom/android/server/ssrm/SSRMUtil;->logOnAll(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$2;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mCount:I

    .line 164
    iget-object v0, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$2;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    iget-object v0, v0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary$2;->this$0:Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;

    invoke-static {v1}, Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;->-$$Nest$fgetmDisplayPmicSensingStopRunnable(Lcom/android/server/ssrm/DisplayPowerReaderForFactoryBinary;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    return-void
.end method
