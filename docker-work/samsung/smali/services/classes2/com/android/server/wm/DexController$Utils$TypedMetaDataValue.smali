.class public Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;
.super Ljava/lang/Object;
.source "DexController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DexController$Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TypedMetaDataValue"
.end annotation


# instance fields
.field public data:I

.field public unit:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2595
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDimensionPixelSize(Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;III)I
    .registers 6

    .line 2620
    iget v0, p0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->data:I

    if-lez v0, :cond_5

    move p3, v0

    .line 2621
    :cond_5
    iget p0, p0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->unit:I

    if-eqz p0, :cond_21

    const/4 p2, 0x1

    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3bcccccd    # 0.00625f

    if-eq p0, p2, :cond_1b

    const/4 p2, 0x2

    if-eq p0, p2, :cond_15

    goto :goto_2f

    :cond_15
    mul-int/2addr p3, p1

    int-to-float p0, p3

    mul-float/2addr p0, v1

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_1b
    mul-int/2addr p3, p1

    int-to-float p0, p3

    mul-float/2addr p0, v1

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0

    :cond_21
    const/16 p0, 0x64

    if-gt p3, p0, :cond_2f

    mul-int/2addr p2, p3

    int-to-double p0, p2

    const-wide p2, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr p0, p2

    double-to-int p0, p0

    return p0

    :cond_2f
    :goto_2f
    return p3
.end method

.method public static isFullscreen(Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;)Z
    .registers 2

    .line 2637
    iget p0, p0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->data:I

    if-nez p0, :cond_a

    iget p0, p1, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->data:I

    if-nez p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public static parseSizeMetaData(Ljava/lang/String;)Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;
    .registers 5

    .line 2600
    new-instance v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;

    invoke-direct {v0}, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;-><init>()V

    const-string v1, "\\D"

    .line 2601
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 2602
    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    const-string v3, "0"

    aput-object v3, v1, v2

    .line 2603
    :cond_18
    aget-object v3, v1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    const-string v3, "%"

    .line 2605
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_31

    .line 2606
    iput v2, v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->unit:I

    goto :goto_4b

    :cond_31
    const-string v3, "PX"

    .line 2607
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 2608
    iput v2, v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->unit:I

    goto :goto_4b

    :cond_3c
    const-string v3, "SP"

    .line 2609
    invoke-virtual {p0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_48

    const/4 p0, 0x2

    .line 2610
    iput p0, v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->unit:I

    goto :goto_4b

    :cond_48
    const/4 p0, 0x1

    .line 2612
    iput p0, v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->unit:I

    .line 2614
    :goto_4b
    aget-object p0, v1, v2

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/server/wm/DexController$Utils$TypedMetaDataValue;->data:I

    return-object v0
.end method
