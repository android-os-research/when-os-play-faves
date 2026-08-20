.class public final Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;
.super Ljava/lang/Object;
.source "ISoundTriggerHwCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionEvent"
.end annotation


# instance fields
.field public data:Landroid/os/HidlMemory;

.field public header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-direct {v0}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    const/4 v0, 0x0

    .line 102
    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Landroid/os/HidlMemory;

    return-void
.end method

.method public static final readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;",
            ">;"
        }
    .end annotation

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 124
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 127
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit16 v3, v2, 0xa0

    int-to-long v5, v3

    .line 129
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 128
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 132
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 134
    new-instance v4, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-direct {v4}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;-><init>()V

    mul-int/lit16 v5, v3, 0xa0

    int-to-long v5, v5

    .line 135
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 136
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_37
    return-object v0
.end method

.method public static final writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;",
            ">;)V"
        }
    .end annotation

    .line 164
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 166
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 167
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 168
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 169
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit16 v3, v1, 0xa0

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 171
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;

    mul-int/lit16 v5, v4, 0xa0

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 173
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 176
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 14

    .line 145
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p3

    invoke-virtual {v0, p1, p2, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x78

    add-long v7, p3, v0

    .line 148
    :try_start_c
    invoke-virtual {p2, v7, v8}, Landroid/os/HwBlob;->getFieldHandle(J)J

    move-result-wide v3

    .line 149
    invoke-virtual {p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v5

    move-object v2, p1

    .line 147
    invoke-virtual/range {v2 .. v8}, Landroid/os/HwParcel;->readEmbeddedHidlMemory(JJJ)Landroid/os/HidlMemory;

    move-result-object p1

    .line 150
    invoke-virtual {p1}, Landroid/os/HidlMemory;->dup()Landroid/os/HidlMemory;

    move-result-object p1

    iput-object p1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Landroid/os/HidlMemory;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_1f} :catch_20

    return-void

    :catch_20
    move-exception p0

    .line 152
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0xa0

    .line 118
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 119
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".header = "

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .data = "

    .line 111
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Landroid/os/HidlMemory;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 113
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    .line 181
    iget-object v0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->header:Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;

    const-wide/16 v1, 0x0

    add-long/2addr v1, p2

    invoke-virtual {v0, p1, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHwCallback$RecognitionEvent;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    const-wide/16 v0, 0x78

    add-long/2addr p2, v0

    .line 182
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->data:Landroid/os/HidlMemory;

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putHidlMemory(JLandroid/os/HidlMemory;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 157
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0xa0

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 158
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_1/ISoundTriggerHwCallback$RecognitionEvent;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 159
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
