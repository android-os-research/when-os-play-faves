.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;
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
    name = "RoutingChangeValidator"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RoutingChangeValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .registers 3

    .line 825
    array-length p0, p1

    const/4 v0, 0x4

    if-ge p0, v0, :cond_5

    return v0

    :cond_5
    const/4 p0, 0x0

    .line 829
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidPhysicalAddress([BI)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidPhysicalAddress([BI)Z

    move-result p1

    if-eqz p1, :cond_14

    const/4 p0, 0x1

    .line 828
    :cond_14
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
