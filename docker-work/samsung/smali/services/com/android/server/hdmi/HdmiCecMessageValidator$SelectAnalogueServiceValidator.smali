.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;
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
    name = "SelectAnalogueServiceValidator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1042
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 4

    .line 1045
    array-length p0, p1

    const/4 v0, 0x4

    if-ge p0, v0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    .line 1048
    aget-byte v0, p1, p0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAnalogueBroadcastType(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_23

    .line 1049
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAnalogueFrequency(I)Z

    move-result v0

    if-eqz v0, :cond_23

    const/4 v0, 0x3

    aget-byte p1, p1, v0

    .line 1050
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidBroadcastSystem(I)Z

    move-result p1

    if-eqz p1, :cond_23

    move p0, v1

    .line 1048
    :cond_23
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
