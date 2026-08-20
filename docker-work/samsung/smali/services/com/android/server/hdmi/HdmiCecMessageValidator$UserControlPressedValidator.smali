.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;
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
    name = "UserControlPressedValidator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$UserControlPressedValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 6

    .line 1088
    array-length p0, p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ge p0, v1, :cond_6

    return v0

    .line 1091
    :cond_6
    array-length p0, p1

    const/4 v2, 0x0

    if-ne p0, v1, :cond_b

    return v2

    .line 1094
    :cond_b
    aget-byte p0, p1, v2

    const/16 v3, 0x56

    if-eq p0, v3, :cond_40

    const/16 v3, 0x57

    if-eq p0, v3, :cond_35

    const/16 v3, 0x60

    if-eq p0, v3, :cond_2a

    const/16 v3, 0x67

    if-eq p0, v3, :cond_1e

    return v2

    .line 1099
    :cond_1e
    array-length p0, p1

    if-lt p0, v0, :cond_29

    .line 1100
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidChannelIdentifier([BI)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result v0

    :cond_29
    return v0

    .line 1097
    :cond_2a
    aget-byte p0, p1, v1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidPlayMode(I)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0

    .line 1105
    :cond_35
    aget-byte p0, p1, v1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidUiSoundPresenationControl(I)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0

    .line 1103
    :cond_40
    aget-byte p0, p1, v1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidUiBroadcastType(I)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
