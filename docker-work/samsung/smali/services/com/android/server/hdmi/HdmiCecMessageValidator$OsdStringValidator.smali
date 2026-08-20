.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator;
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
    name = "OsdStringValidator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 887
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 4

    .line 892
    array-length p0, p1

    const/4 v0, 0x2

    if-ge p0, v0, :cond_6

    const/4 p0, 0x4

    return p0

    :cond_6
    const/4 p0, 0x0

    .line 895
    aget-byte v0, p1, p0

    .line 897
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDisplayControl(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    const/16 v0, 0xe

    .line 899
    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAsciiString([BII)Z

    move-result p1

    if-eqz p1, :cond_19

    move p0, v1

    .line 895
    :cond_19
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
