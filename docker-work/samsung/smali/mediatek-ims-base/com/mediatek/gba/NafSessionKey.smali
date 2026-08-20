.class public Lcom/mediatek/gba/NafSessionKey;
.super Ljava/lang/Object;
.source "NafSessionKey.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/mediatek/gba/NafSessionKey;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBtid:Ljava/lang/String;

.field private blacklist mKey:[B

.field private blacklist mKeylifetime:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 80
    new-instance v0, Lcom/mediatek/gba/NafSessionKey$1;

    invoke-direct {v0}, Lcom/mediatek/gba/NafSessionKey$1;-><init>()V

    sput-object v0, Lcom/mediatek/gba/NafSessionKey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;[BLjava/lang/String;)V
    .registers 4
    .param p1, "btid"    # Ljava/lang/String;
    .param p2, "key"    # [B
    .param p3, "keylifetime"    # Ljava/lang/String;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    .line 23
    iput-object p3, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getBase64Key()[B
    .registers 3

    .line 40
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBtid()Ljava/lang/String;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKey()[B
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    return-object v0
.end method

.method public blacklist getKeylifetime()Ljava/lang/String;
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist setBtid(Ljava/lang/String;)V
    .registers 2
    .param p1, "btid"    # Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public blacklist setKey([B)V
    .registers 2
    .param p1, "key"    # [B

    .line 44
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    .line 45
    return-void
.end method

.method public blacklist setKeylifetime(Ljava/lang/String;)V
    .registers 2
    .param p1, "keylifetime"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 108
    monitor-enter p0

    .line 109
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NafSessionKey -"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " btid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " keylifetime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit p0

    return-object v1

    .line 113
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    :catchall_3e
    move-exception v0

    monitor-exit p0
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 71
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mBtid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKey:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 73
    iget-object v0, p0, Lcom/mediatek/gba/NafSessionKey;->mKeylifetime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    return-void
.end method
