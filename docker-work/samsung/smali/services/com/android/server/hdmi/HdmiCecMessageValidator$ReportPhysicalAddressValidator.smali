.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;
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
    name = "ReportPhysicalAddressValidator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 812
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ReportPhysicalAddressValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 3

    .line 815
    array-length p0, p1

    const/4 v0, 0x3

    if-ge p0, v0, :cond_6

    const/4 p0, 0x4

    return p0

    :cond_6
    const/4 p0, 0x0

    .line 818
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidPhysicalAddress([BI)Z

    move-result v0

    if-eqz v0, :cond_17

    const/4 v0, 0x2

    aget-byte p1, p1, v0

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->isValidType(I)Z

    move-result p1

    if-eqz p1, :cond_17

    const/4 p0, 0x1

    :cond_17
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
