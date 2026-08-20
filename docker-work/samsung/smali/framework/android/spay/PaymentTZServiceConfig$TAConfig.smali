.class public Landroid/spay/PaymentTZServiceConfig$TAConfig;
.super Ljava/lang/Object;
.source "PaymentTZServiceConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/spay/PaymentTZServiceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TAConfig"
.end annotation


# instance fields
.field public blacklist maxRecvRespSize:I

.field public blacklist maxSendCmdSize:I

.field public blacklist processName:Ljava/lang/String;

.field public blacklist rootName:Ljava/lang/String;

.field public blacklist taTechnology:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 5
    .param p1, "sendsize"    # I
    .param p2, "recvsize"    # I

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-string/jumbo v0, "unknown"

    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    .line 29
    invoke-static {}, Landroid/spay/PaymentTZServiceConfig;->-$$Nest$sfgetbQC()Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, v0

    goto :goto_12

    :cond_10
    const-string v1, "0"

    :goto_12
    iput-object v1, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    .line 30
    invoke-static {}, Landroid/spay/PaymentTZServiceConfig;->-$$Nest$sfgetbQC()Z

    move-result v1

    if-eqz v1, :cond_1b

    goto :goto_1d

    :cond_1b
    const-string v0, "ffffffff000000000000000000000000"

    :goto_1d
    iput-object v0, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    .line 31
    iput p1, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    .line 32
    iput p2, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    .line 33
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6
    .param p1, "_taTechnology"    # Ljava/lang/String;
    .param p2, "root"    # Ljava/lang/String;
    .param p3, "process"    # Ljava/lang/String;
    .param p4, "sendsize"    # I
    .param p5, "recvsize"    # I

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->taTechnology:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->rootName:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->processName:Ljava/lang/String;

    .line 38
    iput p4, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxSendCmdSize:I

    .line 39
    iput p5, p0, Landroid/spay/PaymentTZServiceConfig$TAConfig;->maxRecvRespSize:I

    .line 40
    return-void
.end method
