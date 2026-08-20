.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;
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
    name = "RecordStatusInfoValidator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 838
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 6

    .line 841
    array-length p0, p1

    const/4 v0, 0x1

    if-ge p0, v0, :cond_6

    const/4 p0, 0x4

    return p0

    :cond_6
    const/4 p0, 0x0

    .line 844
    aget-byte v1, p1, p0

    const/4 v2, 0x7

    invoke-static {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v1

    if-nez v1, :cond_3c

    aget-byte v1, p1, p0

    const/16 v2, 0x9

    const/16 v3, 0xe

    .line 845
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v1

    if-nez v1, :cond_3c

    aget-byte v1, p1, p0

    const/16 v2, 0x10

    const/16 v3, 0x17

    .line 846
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v1

    if-nez v1, :cond_3c

    aget-byte v1, p1, p0

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    .line 847
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v1

    if-nez v1, :cond_3c

    aget-byte p1, p1, p0

    const/16 v1, 0x1f

    if-ne p1, v1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v0, p0

    .line 844
    :cond_3c
    :goto_3c
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
