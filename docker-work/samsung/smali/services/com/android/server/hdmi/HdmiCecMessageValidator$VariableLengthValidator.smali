.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecMessageValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VariableLengthValidator"
.end annotation


# instance fields
.field public final mMaxLength:I

.field public final mMinLength:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;->mMinLength:I

    .line 342
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;->mMaxLength:I

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 2

    .line 347
    array-length p1, p1

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$VariableLengthValidator;->mMinLength:I

    if-ge p1, p0, :cond_7

    const/4 p0, 0x4

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method
