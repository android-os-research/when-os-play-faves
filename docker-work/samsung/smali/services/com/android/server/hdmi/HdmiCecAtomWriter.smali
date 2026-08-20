.class public Lcom/android/server/hdmi/HdmiCecAtomWriter;
.super Ljava/lang/Object;
.source "HdmiCecAtomWriter.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;,
        Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_UNKNOWN:I = -0x1

.field public static final FEATURE_ABORT_OPCODE_UNKNOWN:I = 0x100
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activeSourceChanged(III)V
    .registers 4
    .param p3    # I
        .annotation build Lcom/android/server/hdmi/Constants$PathRelationship;
        .end annotation
    .end param

    const/16 p0, 0x135

    .line 187
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public final createFeatureAbortSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .registers 4

    .line 125
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs-IA;)V

    .line 127
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_2a

    .line 128
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    const/4 v1, 0x0

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    iput p0, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    .line 129
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    array-length p0, p0

    const/4 v1, 0x1

    if-le p0, v1, :cond_2a

    .line 130
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    aget-byte p0, p0, v1

    add-int/lit8 p0, p0, 0xa

    iput p0, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    :cond_2a
    return-object v0
.end method

.method public final createMessageReportedGenericArgs(Lcom/android/server/hdmi/HdmiCecMessage;III)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;
    .registers 13

    const/4 v0, -0x1

    if-ne p3, v0, :cond_5

    const/4 p3, 0x0

    goto :goto_7

    :cond_5
    add-int/lit8 p3, p3, 0xa

    :goto_7
    move v7, p3

    .line 76
    new-instance p3, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v4

    .line 77
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v5

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v6

    move-object v0, p3

    move-object v1, p0

    move v2, p4

    move v3, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;IIIIII)V

    return-object p3
.end method

.method public final createMessageReportedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .registers 4

    .line 88
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-eqz v0, :cond_16

    const/16 v1, 0x44

    if-eq v0, v1, :cond_11

    .line 94
    new-instance p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs-IA;)V

    return-object p1

    .line 90
    :cond_11
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createUserControlPressedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    move-result-object p0

    return-object p0

    .line 92
    :cond_16
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createFeatureAbortSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    move-result-object p0

    return-object p0
.end method

.method public final createUserControlPressedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;
    .registers 4

    .line 105
    new-instance v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;-><init>(Lcom/android/server/hdmi/HdmiCecAtomWriter;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs-IA;)V

    .line 107
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    array-length p0, p0

    if-lez p0, :cond_24

    .line 108
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p0

    const/4 p1, 0x0

    aget-byte p0, p0, p1

    const/16 p1, 0x1e

    if-lt p0, p1, :cond_20

    const/16 p1, 0x29

    if-gt p0, p1, :cond_20

    const/4 p0, 0x2

    .line 110
    iput p0, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    goto :goto_24

    :cond_20
    add-int/lit16 p0, p0, 0x100

    .line 112
    iput p0, v0, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    :cond_24
    :goto_24
    return-object v0
.end method

.method public messageReported(Lcom/android/server/hdmi/HdmiCecMessage;II)V
    .registers 5

    const/4 v0, -0x1

    .line 60
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V

    return-void
.end method

.method public messageReported(Lcom/android/server/hdmi/HdmiCecMessage;III)V
    .registers 5

    .line 46
    invoke-virtual {p0, p1, p2, p4, p3}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createMessageReportedGenericArgs(Lcom/android/server/hdmi/HdmiCecMessage;III)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;

    move-result-object p2

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->createMessageReportedSpecialArgs(Lcom/android/server/hdmi/HdmiCecMessage;)Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;

    move-result-object p1

    .line 49
    invoke-virtual {p0, p2, p1}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->messageReportedBase(Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;)V

    return-void
.end method

.method public final messageReportedBase(Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;)V
    .registers 13

    .line 145
    iget v1, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mUid:I

    iget v2, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDirection:I

    iget v3, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mInitiatorLogicalAddress:I

    iget v4, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mDestinationLogicalAddress:I

    iget v5, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mOpcode:I

    iget v6, p1, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedGenericArgs;->mSendMessageResult:I

    iget v7, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mUserControlPressedCommand:I

    iget v8, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortOpcode:I

    iget v9, p2, Lcom/android/server/hdmi/HdmiCecAtomWriter$MessageReportedSpecialArgs;->mFeatureAbortReason:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/android/server/hdmi/HdmiCecAtomWriter;->writeHdmiCecMessageReportedAtom(IIIIIIIII)V

    return-void
.end method

.method public writeHdmiCecMessageReportedAtom(IIIIIIIII)V
    .registers 20
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/16 v0, 0x136

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 165
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIIIIII)V

    return-void
.end method
