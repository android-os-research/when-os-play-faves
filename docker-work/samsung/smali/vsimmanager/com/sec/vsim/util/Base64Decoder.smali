.class public Lcom/sec/vsim/util/Base64Decoder;
.super Ljava/lang/Object;
.source "Base64Decoder.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 10
    const-class v0, Lcom/sec/vsim/util/Base64Decoder;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/vsim/util/Base64Decoder;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "input"    # Ljava/lang/String;

    .line 19
    const/4 v0, 0x0

    if-eqz p0, :cond_19

    .line 21
    :try_start_3
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_d
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_d} :catch_e

    return-object v1

    .line 22
    :catch_e
    move-exception v1

    .line 23
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/sec/vsim/util/Base64Decoder;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    return-object v0

    .line 27
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_19
    return-object v0
.end method
