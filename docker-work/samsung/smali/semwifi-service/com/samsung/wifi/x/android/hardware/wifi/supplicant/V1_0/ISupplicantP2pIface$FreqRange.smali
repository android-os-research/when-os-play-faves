.class public final Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;
.super Ljava/lang/Object;
.source "ISupplicantP2pIface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FreqRange"
.end annotation


# instance fields
.field public max:I

.field public min:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 143
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->min:I

    .line 144
    iput v0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->max:I

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
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;",
            ">;"
        }
    .end annotation

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-wide/16 v1, 0x10

    .line 193
    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    const-wide/16 v2, 0x8

    .line 196
    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    mul-int/lit8 v3, v2, 0x8

    int-to-long v5, v3

    .line 198
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .line 197
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object v1

    .line 201
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v3, 0x0

    :goto_24
    if-ge v3, v2, :cond_37

    .line 203
    new-instance v4, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;

    invoke-direct {v4}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;-><init>()V

    mul-int/lit8 v5, v3, 0x8

    int-to-long v5, v5

    .line 204
    invoke-virtual {v4, p0, v1, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 205
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
            "Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;",
            ">;)V"
        }
    .end annotation

    .line 226
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 228
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const-wide/16 v2, 0x8

    .line 229
    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    .line 230
    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 231
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x8

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    :goto_1d
    if-ge v4, v1, :cond_2e

    .line 233
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;

    mul-int/lit8 v5, v4, 0x8

    int-to-long v5, v5

    invoke-virtual {v3, v2, v5, v6}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    :cond_2e
    const-wide/16 v3, 0x0

    .line 235
    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 238
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

    .line 154
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;

    if-eq v2, v3, :cond_11

    return v1

    .line 157
    :cond_11
    check-cast p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;

    .line 158
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->min:I

    iget v3, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->min:I

    if-eq v2, v3, :cond_1a

    return v1

    .line 161
    :cond_1a
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->max:I

    iget p1, p1, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->max:I

    if-eq p0, p1, :cond_21

    return v1

    :cond_21
    return v0
.end method

.method public final hashCode()I
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 169
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->min:I

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->max:I

    .line 171
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 169
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    .line 214
    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->min:I

    const-wide/16 v0, 0x4

    add-long/2addr p3, v0

    .line 215
    invoke-virtual {p2, p3, p4}, Landroid/os/HwBlob;->getInt32(J)I

    move-result p1

    iput p1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->max:I

    return-void
.end method

.method public final readFromParcel(Landroid/os/HwParcel;)V
    .registers 5

    const-wide/16 v0, 0x8

    .line 187
    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    const-wide/16 v1, 0x0

    .line 188
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".min = "

    .line 178
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    iget v1, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->min:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", .max = "

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->max:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 182
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    .line 243
    iget v2, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->min:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v0, 0x4

    add-long/2addr p2, v0

    .line 244
    iget p0, p0, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->max:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/os/HwBlob;->putInt32(JI)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/HwParcel;)V
    .registers 5

    .line 219
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    const-wide/16 v1, 0x0

    .line 220
    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/wifi/x/android/hardware/wifi/supplicant/V1_0/ISupplicantP2pIface$FreqRange;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 221
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    return-void
.end method
