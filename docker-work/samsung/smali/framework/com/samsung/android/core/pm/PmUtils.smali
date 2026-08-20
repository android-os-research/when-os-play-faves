.class public Lcom/samsung/android/core/pm/PmUtils;
.super Ljava/lang/Object;
.source "PmUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist isLduSkuBinary()Z
    .registers 5

    .line 12
    const-string/jumbo v0, "ril.product_code"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 13
    .local v0, "productCode":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xb

    if-ge v1, v3, :cond_13

    .line 14
    return v2

    .line 16
    :cond_13
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x38

    if-eq v3, v4, :cond_25

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x39

    if-ne v1, v3, :cond_26

    :cond_25
    const/4 v2, 0x1

    :cond_26
    return v2
.end method
