.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;
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
    name = "AsciiValidator"
.end annotation


# instance fields
.field public final mMaxLength:I

.field public final mMinLength:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 862
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    .line 863
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 866
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 867
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    .line 868
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 4

    .line 875
    array-length v0, p1

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    if-ge v0, v1, :cond_7

    const/4 p0, 0x4

    return p0

    :cond_7
    const/4 v0, 0x0

    .line 878
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    invoke-static {p1, v0, p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAsciiString([BII)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
