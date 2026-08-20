.class public final Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;
.super Ljava/lang/Object;
.source "ISoundTriggerHw.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RecognitionConfig"
.end annotation


# instance fields
.field public captureDevice:I

.field public captureHandle:I

.field public captureRequested:Z

.field public data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public phrases:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 839
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 844
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    .line 848
    iput v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    .line 852
    iput-boolean v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    .line 856
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    .line 860
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

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
            "Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;",
            ">;"
        }
    .end annotation

    .line 926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 927
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 930
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x30

    int-to-long v5, v3

    .line 932
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 931
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 935
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 937
    new-instance v4, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    invoke-direct {v4}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;-><init>()V

    mul-int/lit8 v5, v3, 0x30

    int-to-long v5, v5

    .line 938
    invoke-virtual {v4, p0, v1, v5, v6}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 939
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
            "Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;",
            ">;)V"
        }
    .end annotation

    .line 987
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 989
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 990
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 991
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 992
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x30

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 994
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    mul-int/lit8 v5, v4, 0x30

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 996
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 999
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 870
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    if-eq v2, v3, :cond_11

    return v1

    .line 873
    :cond_11
    check-cast p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;

    .line 874
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 877
    :cond_1a
    iget v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    iget v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    if-eq v2, v3, :cond_21

    return v1

    .line 880
    :cond_21
    iget-boolean v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    iget-boolean v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    if-eq v2, v3, :cond_28

    return v1

    .line 883
    :cond_28
    iget-object v2, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    iget-object v3, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_33

    return v1

    .line 886
    :cond_33
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    iget-object p1, p1, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3e

    return v1

    :cond_3e
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 894
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    .line 895
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    .line 896
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    .line 897
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    .line 898
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    .line 899
    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 894
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 26

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 948
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    const-wide/16 v4, 0x4

    add-long v4, p3, v4

    .line 949
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    iput v4, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    const-wide/16 v4, 0x8

    add-long v6, p3, v4

    .line 950
    invoke-virtual {v1, v6, v7}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v6

    iput-boolean v6, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    const-wide/16 v6, 0x10

    add-long v6, p3, v6

    add-long v8, v6, v4

    .line 952
    invoke-virtual {v1, v8, v9}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v8

    mul-int/lit8 v9, v8, 0x20

    int-to-long v11, v9

    .line 954
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v13

    add-long v15, v6, v2

    const/16 v17, 0x1

    move-object/from16 v10, p1

    .line 953
    invoke-virtual/range {v10 .. v17}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v6

    .line 957
    iget-object v7, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    move v9, v7

    :goto_44
    if-ge v9, v8, :cond_5b

    .line 959
    new-instance v10, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    invoke-direct {v10}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;-><init>()V

    mul-int/lit8 v11, v9, 0x20

    int-to-long v11, v11

    move-object/from16 v13, p1

    .line 960
    invoke-virtual {v10, v13, v6, v11, v12}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 961
    iget-object v11, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_44

    :cond_5b
    move-object/from16 v13, p1

    const-wide/16 v8, 0x20

    add-long v8, p3, v8

    add-long/2addr v4, v8

    .line 965
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v4

    mul-int/lit8 v5, v4, 0x1

    int-to-long v14, v5

    .line 967
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v16

    add-long v18, v8, v2

    const/16 v20, 0x1

    .line 966
    invoke-virtual/range {v13 .. v20}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 970
    iget-object v2, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    :goto_7a
    if-ge v7, v4, :cond_8f

    mul-int/lit8 v2, v7, 0x1

    int-to-long v2, v2

    .line 973
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt8(J)B

    move-result v2

    .line 974
    iget-object v3, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_7a

    :cond_8f
    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x30

    .line 921
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 922
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 904
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 905
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".captureHandle = "

    .line 906
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .captureDevice = "

    .line 908
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 909
    iget v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    invoke-static {v1}, Landroid/hardware/audio/common/V2_0/AudioDevice;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .captureRequested = "

    .line 910
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    iget-boolean v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", .phrases = "

    .line 912
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 913
    iget-object v1, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", .data = "

    .line 914
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 915
    iget-object p0, p0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    .line 916
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    add-long v4, p2, v2

    .line 1004
    iget v6, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureHandle:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x4

    add-long v4, p2, v4

    .line 1005
    iget v6, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureDevice:I

    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0x8

    add-long v6, p2, v4

    .line 1006
    iget-boolean v8, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->captureRequested:Z

    invoke-virtual {v1, v6, v7, v8}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1008
    iget-object v6, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x10

    add-long v7, p2, v7

    add-long v9, v7, v4

    .line 1009
    invoke-virtual {v1, v9, v10, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v9, 0xc

    add-long v11, v7, v9

    const/4 v13, 0x0

    .line 1010
    invoke-virtual {v1, v11, v12, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1011
    new-instance v11, Landroid/os/HwBlob;

    mul-int/lit8 v12, v6, 0x20

    invoke-direct {v11, v12}, Landroid/os/HwBlob;-><init>(I)V

    move v12, v13

    :goto_3e
    if-ge v12, v6, :cond_53

    .line 1013
    iget-object v14, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->phrases:Ljava/util/ArrayList;

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;

    mul-int/lit8 v15, v12, 0x20

    int-to-long v9, v15

    invoke-virtual {v14, v11, v9, v10}, Landroid/hardware/soundtrigger/V2_0/PhraseRecognitionExtra;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v9, 0xc

    goto :goto_3e

    :cond_53
    add-long/2addr v7, v2

    .line 1015
    invoke-virtual {v1, v7, v8, v11}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 1018
    iget-object v6, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const-wide/16 v7, 0x20

    add-long v7, p2, v7

    add-long/2addr v4, v7

    .line 1019
    invoke-virtual {v1, v4, v5, v6}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v4, 0xc

    add-long v9, v7, v4

    .line 1020
    invoke-virtual {v1, v9, v10, v13}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 1021
    new-instance v4, Landroid/os/HwBlob;

    mul-int/lit8 v5, v6, 0x1

    invoke-direct {v4, v5}, Landroid/os/HwBlob;-><init>(I)V

    :goto_73
    if-ge v13, v6, :cond_8a

    mul-int/lit8 v5, v13, 0x1

    int-to-long v9, v5

    .line 1023
    iget-object v5, v0, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->data:Ljava/util/ArrayList;

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-virtual {v5}, Ljava/lang/Byte;->byteValue()B

    move-result v5

    invoke-virtual {v4, v9, v10, v5}, Landroid/os/HwBlob;->putInt8(JB)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_73

    :cond_8a
    add-long/2addr v7, v2

    .line 1025
    invoke-virtual {v1, v7, v8, v4}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 980
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x30

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 981
    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/soundtrigger/V2_0/ISoundTriggerHw$RecognitionConfig;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 982
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
