.class public Lcom/android/server/HermesService$2;
.super Ljava/lang/Thread;
.source "HermesService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/HermesService;->TransmitCollectedDataToServer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/HermesService;


# direct methods
.method public constructor <init>(Lcom/android/server/HermesService;)V
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/android/server/HermesService$2;->this$0:Lcom/android/server/HermesService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-string v0, "HERMES#Service"

    .line 221
    :try_start_2
    iget-object v1, p0, Lcom/android/server/HermesService$2;->this$0:Lcom/android/server/HermesService;

    invoke-static {v1}, Lcom/android/server/HermesService;->-$$Nest$mgetPdpData(Lcom/android/server/HermesService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 223
    iget-object p0, p0, Lcom/android/server/HermesService$2;->this$0:Lcom/android/server/HermesService;

    invoke-static {p0, v1}, Lcom/android/server/HermesService;->-$$Nest$msendBigData(Lcom/android/server/HermesService;Ljava/lang/String;)I

    goto :goto_2f

    :cond_10
    const-string p0, "getPdpData is null, skip send bigdata."

    .line 225
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_16

    goto :goto_2f

    :catch_16
    move-exception p0

    .line 228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to getPdpData, Err = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2f
    return-void
.end method
