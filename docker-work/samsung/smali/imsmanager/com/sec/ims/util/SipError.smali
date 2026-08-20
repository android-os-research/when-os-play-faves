.class public Lcom/sec/ims/util/SipError;
.super Ljava/lang/Object;
.source "SipError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/util/SipError;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "SipError"


# instance fields
.field protected mCode:I

.field protected mReason:Ljava/lang/String;

.field protected mReasonHeader:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 226
    new-instance v0, Lcom/sec/ims/util/SipError$1;

    invoke-direct {v0}, Lcom/sec/ims/util/SipError$1;-><init>()V

    sput-object v0, Lcom/sec/ims/util/SipError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    return-void
.end method

.method public constructor <init>(I)V
    .registers 2
    .param p1, "code"    # I

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput p1, p0, Lcom/sec/ims/util/SipError;->mCode:I

    .line 60
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput p1, p0, Lcom/sec/ims/util/SipError;->mCode:I

    .line 72
    iput-object p2, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "reasonHeader"    # Ljava/lang/String;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput p1, p0, Lcom/sec/ims/util/SipError;->mCode:I

    .line 86
    iput-object p2, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/sec/ims/util/SipError;->mReasonHeader:Ljava/lang/String;

    .line 88
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 277
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/util/SipError;->mCode:I

    .line 280
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_16

    .line 281
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    .line 284
    :cond_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_22

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/util/SipError;->mReasonHeader:Ljava/lang/String;

    .line 287
    :cond_22
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/util/SipError-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/util/SipError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 220
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 164
    instance-of v0, p1, Lcom/sec/ims/util/SipError;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 165
    return v1

    .line 168
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/sec/ims/util/SipError;

    .line 171
    .local v0, "other":Lcom/sec/ims/util/SipError;
    iget-object v2, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2d

    iget-object v2, v0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1b

    goto :goto_2d

    .line 175
    :cond_1b
    iget v2, p0, Lcom/sec/ims/util/SipError;->mCode:I

    iget v4, v0, Lcom/sec/ims/util/SipError;->mCode:I

    if-ne v2, v4, :cond_2c

    iget-object v2, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2c

    move v1, v3

    :cond_2c
    return v1

    .line 173
    :cond_2d
    :goto_2d
    iget v2, p0, Lcom/sec/ims/util/SipError;->mCode:I

    iget v4, v0, Lcom/sec/ims/util/SipError;->mCode:I

    if-ne v2, v4, :cond_34

    move v1, v3

    :cond_34
    return v1
.end method

.method public equalsWithStrict(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 186
    instance-of v0, p1, Lcom/sec/ims/util/SipError;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 187
    return v1

    .line 190
    :cond_6
    move-object v0, p1

    check-cast v0, Lcom/sec/ims/util/SipError;

    .line 193
    .local v0, "other":Lcom/sec/ims/util/SipError;
    iget-object v2, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_22

    iget-object v2, v0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 194
    iget v2, p0, Lcom/sec/ims/util/SipError;->mCode:I

    iget v4, v0, Lcom/sec/ims/util/SipError;->mCode:I

    if-ne v2, v4, :cond_21

    move v1, v3

    :cond_21
    return v1

    .line 195
    :cond_22
    iget-object v2, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_45

    iget-object v2, v0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_45

    .line 198
    :cond_33
    iget v2, p0, Lcom/sec/ims/util/SipError;->mCode:I

    iget v4, v0, Lcom/sec/ims/util/SipError;->mCode:I

    if-ne v2, v4, :cond_44

    iget-object v2, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    iget-object v4, v0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    move v1, v3

    :cond_44
    return v1

    .line 196
    :cond_45
    :goto_45
    return v1
.end method

.method public getCode()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/sec/ims/util/SipError;->mCode:I

    return v0
.end method

.method public getFromRejectReason(I)Lcom/sec/ims/util/SipError;
    .registers 4
    .param p1, "reason"    # I

    .line 133
    const-string v0, "SipError"

    const-string v1, "getFromRejectReason: Should be called!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .line 115
    iget-object v0, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    return-object v0
.end method

.method public getReasonHeader()Ljava/lang/String;
    .registers 2

    .line 143
    iget-object v0, p0, Lcom/sec/ims/util/SipError;->mReasonHeader:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .registers 4

    .line 153
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/sec/ims/util/SipError;->mCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/sec/ims/util/SipError;->mReasonHeader:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setCode(I)V
    .registers 2
    .param p1, "code"    # I

    .line 106
    iput p1, p0, Lcom/sec/ims/util/SipError;->mCode:I

    .line 107
    return-void
.end method

.method public setReason(Ljava/lang/String;)V
    .registers 2
    .param p1, "reason"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/sec/ims/util/SipError;->mCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/ims/util/SipError;->mReasonHeader:Ljava/lang/String;

    if-nez v3, :cond_22

    goto :goto_35

    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/ims/util/SipError;->mReasonHeader:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 260
    iget v0, p0, Lcom/sec/ims/util/SipError;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget-object v0, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_f

    .line 263
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_17

    .line 265
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    iget-object v0, p0, Lcom/sec/ims/util/SipError;->mReason:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 269
    :goto_17
    iget-object v0, p0, Lcom/sec/ims/util/SipError;->mReasonHeader:Ljava/lang/String;

    if-nez v0, :cond_1f

    .line 270
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_27

    .line 272
    :cond_1f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object v0, p0, Lcom/sec/ims/util/SipError;->mReasonHeader:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    :goto_27
    return-void
.end method
