.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;
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
    name = "FixedLengthValidator"
.end annotation


# instance fields
.field public final mLength:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;->mLength:I

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 2

    .line 332
    array-length p1, p1

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$FixedLengthValidator;->mLength:I

    if-ge p1, p0, :cond_7

    const/4 p0, 0x4

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method
