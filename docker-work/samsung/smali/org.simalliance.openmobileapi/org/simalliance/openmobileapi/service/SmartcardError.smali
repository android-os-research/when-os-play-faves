.class public Lorg/simalliance/openmobileapi/service/SmartcardError;
.super Ljava/lang/Object;
.source "SmartcardError.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final ALLOWED_EXCEPTIONS:[Ljava/lang/Class;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lorg/simalliance/openmobileapi/service/SmartcardError;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "OMA_SmartcardError"


# instance fields
.field private mClazz:Ljava/lang/String;

.field private mMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 41
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Ljava/io/IOException;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/SecurityException;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Ljava/util/NoSuchElementException;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Ljava/lang/IllegalStateException;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Ljava/lang/IllegalArgumentException;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Ljava/lang/UnsupportedOperationException;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Ljava/lang/NullPointerException;

    aput-object v2, v0, v1

    sput-object v0, Lorg/simalliance/openmobileapi/service/SmartcardError;->ALLOWED_EXCEPTIONS:[Ljava/lang/Class;

    .line 51
    new-instance v0, Lorg/simalliance/openmobileapi/service/SmartcardError$1;

    invoke-direct {v0}, Lorg/simalliance/openmobileapi/service/SmartcardError$1;-><init>()V

    sput-object v0, Lorg/simalliance/openmobileapi/service/SmartcardError;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const-string v0, ""

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 77
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p0, p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;->readFromParcel(Landroid/os/Parcel;)V

    .line 86
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lorg/simalliance/openmobileapi/service/SmartcardError$1;)V
    .registers 3
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lorg/simalliance/openmobileapi/service/SmartcardError$1;

    .line 34
    invoke-direct {p0, p1}, Lorg/simalliance/openmobileapi/service/SmartcardError;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 153
    const/4 v0, 0x0

    return v0
.end method

.method public isSet()Z
    .registers 2

    .line 111
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public set(Ljava/lang/Exception;)V
    .registers 6
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 96
    if-eqz p1, :cond_45

    .line 99
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 100
    .local v0, "clazz":Ljava/lang/Class;
    sget-object v1, Lorg/simalliance/openmobileapi/service/SmartcardError;->ALLOWED_EXCEPTIONS:[Ljava/lang/Class;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 103
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_23

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    goto :goto_25

    :cond_23
    const-string v1, ""

    :goto_25
    iput-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    .line 105
    return-void

    .line 101
    :cond_28
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected exception class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 97
    .end local v0    # "clazz":Ljava/lang/Class;
    :cond_45
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot set a null exception"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public throwException()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;,
            Ljava/util/NoSuchElementException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 133
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    const-class v1, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    .line 135
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    const-class v1, Ljava/lang/SecurityException;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a5

    .line 137
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    const-class v1, Ljava/util/NoSuchElementException;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9d

    .line 139
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    const-class v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_95

    .line 141
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    const-class v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 143
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    const-class v1, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    .line 145
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    const-class v1, Ljava/lang/NullPointerException;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SmartcardError.throwException() finished without throwing exception. mClazz: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OMA_SmartcardError"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 146
    :cond_7d
    new-instance v0, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_85
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    iget-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_95
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 138
    :cond_9d
    new-instance v0, Ljava/util/NoSuchElementException;

    iget-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_a5
    new-instance v0, Ljava/lang/SecurityException;

    iget-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_ad
    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 157
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mClazz:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lorg/simalliance/openmobileapi/service/SmartcardError;->mMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    return-void
.end method
