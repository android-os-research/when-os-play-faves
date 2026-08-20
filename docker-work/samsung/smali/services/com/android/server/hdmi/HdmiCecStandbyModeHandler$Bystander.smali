.class public final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bystander;
.super Ljava/lang/Object;
.source "HdmiCecStandbyModeHandler.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Bystander"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bystander-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Bystander;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
