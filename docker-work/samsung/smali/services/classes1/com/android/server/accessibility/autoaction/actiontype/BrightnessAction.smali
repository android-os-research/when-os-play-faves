.class public Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "BrightnessAction.java"


# static fields
.field public static final GAP_BRIGHTNESS:I = 0x11

.field public static final INCREASE_BRIGHTNESS:Ljava/lang/String; = "increase_brightness"

.field public static final MAX_BRIGHTNESS:I = 0xff

.field public static final REDUCE_BRIGHTNESS:Ljava/lang/String; = "reduce_brightness"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mType:Ljava/lang/String;

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4

    .line 36
    invoke-direct {p0}, Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mContext:Landroid/content/Context;

    .line 38
    iput-object p2, p0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mType:Ljava/lang/String;

    .line 39
    iput p3, p0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mUserId:I

    return-void
.end method

.method public static createAction(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;
    .registers 4

    .line 43
    new-instance v0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    return-object v0
.end method

.method public static getStringResId(Ljava/lang/String;)I
    .registers 2

    .line 47
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v0, "reduce_brightness"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string/jumbo v0, "increase_brightness"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    const p0, 0x1040115

    return p0

    .line 53
    :cond_19
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong Brightness Action Type"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_21
    const p0, 0x104011d

    return p0
.end method


# virtual methods
.method public performCornerAction(I)V
    .registers 6

    .line 59
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mUserId:I

    const-string/jumbo v1, "screen_brightness"

    const/4 v2, 0x0

    invoke-static {p1, v1, v2, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    .line 61
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mType:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string/jumbo v3, "reduce_brightness"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_43

    const-string/jumbo v2, "increase_brightness"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3b

    add-int/lit8 p1, p1, 0x11

    .line 64
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/16 v2, 0xff

    .line 65
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mUserId:I

    .line 64
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_54

    .line 73
    :cond_3b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong Brightness Action Type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_43
    add-int/lit8 p1, p1, -0x11

    .line 69
    iget-object v0, p0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 70
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iget p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/BrightnessAction;->mUserId:I

    .line 69
    invoke-static {v0, v1, p1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_54
    return-void
.end method
