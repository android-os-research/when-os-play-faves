.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;
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
    name = "AnalogueTimerValidator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$AnalogueTimerValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 5

    .line 929
    array-length p0, p1

    const/4 v0, 0x4

    const/16 v1, 0xb

    if-ge p0, v1, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    .line 932
    aget-byte v1, p1, p0

    .line 933
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDayOfMonth(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_65

    aget-byte v1, p1, v2

    .line 934
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMonthOfYear(I)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    .line 935
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidHour(I)Z

    move-result v1

    if-eqz v1, :cond_65

    const/4 v1, 0x3

    aget-byte v1, p1, v1

    .line 936
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMinute(I)Z

    move-result v1

    if-eqz v1, :cond_65

    aget-byte v0, p1, v0

    .line 937
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDurationHours(I)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x5

    aget-byte v0, p1, v0

    .line 938
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMinute(I)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x6

    aget-byte v0, p1, v0

    .line 939
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidRecordingSequence(I)Z

    move-result v0

    if-eqz v0, :cond_65

    const/4 v0, 0x7

    aget-byte v0, p1, v0

    .line 940
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAnalogueBroadcastType(I)Z

    move-result v0

    if-eqz v0, :cond_65

    const/16 v0, 0x8

    .line 942
    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v0

    .line 941
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAnalogueFrequency(I)Z

    move-result v0

    if-eqz v0, :cond_65

    const/16 v0, 0xa

    aget-byte p1, p1, v0

    .line 943
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidBroadcastSystem(I)Z

    move-result p1

    if-eqz p1, :cond_65

    move p0, v2

    .line 932
    :cond_65
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
