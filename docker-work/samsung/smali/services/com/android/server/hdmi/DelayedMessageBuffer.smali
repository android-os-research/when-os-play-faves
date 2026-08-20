.class public final Lcom/android/server/hdmi/DelayedMessageBuffer;
.super Ljava/lang/Object;
.source "DelayedMessageBuffer.java"


# instance fields
.field public final mBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/hdmi/HdmiCecMessage;",
            ">;"
        }
    .end annotation
.end field

.field public final mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    .line 33
    iput-object p1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    return-void
.end method


# virtual methods
.method public add(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .registers 5

    .line 49
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v1, 0x72

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1c

    const/16 v1, 0x82

    if-eq v0, v1, :cond_13

    const/16 v1, 0xc0

    if-eq v0, v1, :cond_1c

    move p0, v2

    goto :goto_22

    .line 51
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/hdmi/DelayedMessageBuffer;->removeActiveSource()V

    .line 52
    iget-object p0, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    .line 56
    :cond_1c
    iget-object p0, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_21
    const/4 p0, 0x1

    :goto_22
    if-eqz p0, :cond_3a

    .line 63
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Buffering message:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3a
    return-void
.end method

.method public isBuffered(I)Z
    .registers 3

    .line 78
    iget-object p0, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 79
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-ne v0, p1, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_1a
    const/4 p0, 0x0

    return p0
.end method

.method public processActiveSource(I)V
    .registers 6

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 138
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 139
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 140
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    const/16 v3, 0x82

    if-ne v2, v3, :cond_47

    .line 141
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v2

    if-ne v2, p1, :cond_47

    .line 142
    iget-object v2, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 145
    :cond_47
    iget-object v2, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_4d
    return-void
.end method

.method public processAllMessages()V
    .registers 5

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 89
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 90
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 91
    iget-object v2, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v2, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    :cond_39
    return-void
.end method

.method public processMessagesForDevice(I)V
    .registers 7

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 108
    iget-object v1, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Checking message for address:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 111
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    if-eq v3, p1, :cond_3f

    .line 112
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 115
    :cond_3f
    invoke-virtual {v1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v3

    const/16 v4, 0x82

    if-ne v3, v4, :cond_59

    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    .line 116
    invoke-static {p1}, Landroid/hardware/hdmi/HdmiDeviceInfo;->idForCecDevice(I)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->isInputReady(I)Z

    move-result v3

    if-nez v3, :cond_59

    .line 117
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 120
    :cond_59
    iget-object v3, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mDevice:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {v3, v1}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->onMessage(Lcom/android/server/hdmi/HdmiCecMessage;)I

    .line 121
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v3}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_27

    :cond_75
    return-void
.end method

.method public removeActiveSource()V
    .registers 3

    .line 69
    iget-object p0, p0, Lcom/android/server/hdmi/DelayedMessageBuffer;->mBuffer:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_6
    :goto_6
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 70
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 71
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/16 v1, 0x82

    if-ne v0, v1, :cond_6

    .line 72
    invoke-interface {p0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1e
    return-void
.end method
