.class public final Lcom/android/server/hdmi/CecMessageBuffer;
.super Ljava/lang/Object;
.source "CecMessageBuffer.java"


# instance fields
.field public mBuffer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/hdmi/HdmiCecMessage;",
            ">;"
        }
    .end annotation
.end field

.field public mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHdmiControlService(Lcom/android/server/hdmi/CecMessageBuffer;)Lcom/android/server/hdmi/HdmiControlService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .registers 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    return-void
.end method


# virtual methods
.method public final bufferActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3

    const/16 v0, 0x82

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 75
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public final bufferImageOrTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3

    const/4 v0, 0x4

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_14

    const/16 v0, 0xd

    .line 81
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 82
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_14
    return-void
.end method

.method public bufferMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .registers 5

    .line 40
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1e

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1e

    const/16 v1, 0x70

    if-eq v0, v1, :cond_1a

    const/16 v1, 0x82

    if-eq v0, v1, :cond_16

    const/4 p0, 0x0

    return p0

    .line 42
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->bufferActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2

    .line 49
    :cond_1a
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->bufferSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2

    .line 46
    :cond_1e
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->bufferImageOrTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2
.end method

.method public final bufferSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 3

    const/16 v0, 0x70

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 88
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    return-void
.end method

.method public processMessages()V
    .registers 5

    .line 62
    iget-object v0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 63
    iget-object v2, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v3, Lcom/android/server/hdmi/CecMessageBuffer$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/hdmi/CecMessageBuffer$1;-><init>(Lcom/android/server/hdmi/CecMessageBuffer;Lcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    goto :goto_6

    .line 70
    :cond_1d
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 94
    :goto_2
    iget-object v2, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 95
    iget-object v2, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 96
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-ne v2, p2, :cond_1f

    .line 97
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {p0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_22
    return v0
.end method
