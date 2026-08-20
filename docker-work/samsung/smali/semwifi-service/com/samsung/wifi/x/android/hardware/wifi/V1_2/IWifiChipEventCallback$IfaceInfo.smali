.class public final Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;
.super Ljava/lang/Object;
.source "IWifiChipEventCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "IfaceInfo"
.end annotation


# instance fields
.field public channel:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    iput-object v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->name:Ljava/lang/String;

    const/4 v0, 0x0

    .line 102
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->channel:I

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 151
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 154
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x18

    int-to-long v5, v3

    .line 156
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 155
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 159
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 161
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;-><init>()V

    mul-int/lit8 v5, v3, 0x18

    int-to-long v5, v5

    .line 162
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 163
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;",
            ">;)V"
        }
    .end annotation

    .line 190
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 192
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 193
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 194
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 195
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x18

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 197
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;

    mul-int/lit8 v5, v4, 0x18

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 199
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 202
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

    .line 112
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;

    if-eq v2, v3, :cond_11

    return v1

    .line 115
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;

    .line 116
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/os/HidlSupport;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    return v1

    .line 119
    :cond_1e
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->channel:I

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->channel:I

    if-eq p0, p1, :cond_25

    return v1

    :cond_25
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 127
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->name:Ljava/lang/String;

    .line 128
    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->channel:I

    .line 129
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 127
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 20

    move-object v0, p0

    move-object/from16 v1, p2

    const-wide/16 v2, 0x0

    add-long v4, p3, v2

    .line 172
    invoke-virtual {v1, v4, v5}, Landroid/os/HwBlob;->getString(J)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->name:Ljava/lang/String;

    .line 175
    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    array-length v6, v6

    add-int/lit8 v6, v6, 0x1

    int-to-long v8, v6

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/HwBlob;->handle()J

    move-result-wide v10

    add-long v12, v4, v2

    const/4 v14, 0x0

    move-object/from16 v7, p1

    .line 174
    invoke-virtual/range {v7 .. v14}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    const-wide/16 v2, 0x10

    add-long v2, p3, v2

    .line 179
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v1

    iput v1, v0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->channel:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x18

    .line 145
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 146
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".name = "

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", .channel = "

    .line 138
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->channel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 140
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 207
    iget-object v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putString(JLjava/lang/String;)V

    const-wide/16 v0, 0x10

    add-long/2addr p2, v0

    .line 208
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->channel:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 183
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x18

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 184
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/V1_2/IWifiChipEventCallback$IfaceInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
