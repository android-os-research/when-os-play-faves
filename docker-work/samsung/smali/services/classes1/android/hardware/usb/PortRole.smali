.class public final Landroid/hardware/usb/PortRole;
.super Ljava/lang/Object;
.source "PortRole.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/usb/PortRole$Tag;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/usb/PortRole;",
            ">;"
        }
    .end annotation
.end field

.field public static final dataRole:I = 0x1

.field public static final mode:I = 0x2

.field public static final powerRole:I


# instance fields
.field public _tag:I

.field public _value:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    .line 83
    new-instance v0, Landroid/hardware/usb/PortRole$1;

    invoke-direct {v0}, Landroid/hardware/usb/PortRole$1;-><init>()V

    sput-object v0, Landroid/hardware/usb/PortRole;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Landroid/hardware/usb/PortRole;->_tag:I

    .line 17
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .registers 3

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Landroid/hardware/usb/PortRole;->_tag:I

    .line 26
    iput-object p2, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-virtual {p0, p1}, Landroid/hardware/usb/PortRole;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/hardware/usb/PortRole-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/hardware/usb/PortRole;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static dataRole(B)Landroid/hardware/usb/PortRole;
    .registers 3

    .line 51
    new-instance v0, Landroid/hardware/usb/PortRole;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/hardware/usb/PortRole;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static mode(B)Landroid/hardware/usb/PortRole;
    .registers 3

    .line 66
    new-instance v0, Landroid/hardware/usb/PortRole;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Landroid/hardware/usb/PortRole;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static powerRole(B)Landroid/hardware/usb/PortRole;
    .registers 3

    .line 36
    new-instance v0, Landroid/hardware/usb/PortRole;

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/hardware/usb/PortRole;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final _assertTag(I)V
    .registers 5

    .line 142
    invoke-virtual {p0}, Landroid/hardware/usb/PortRole;->getTag()I

    move-result v0

    if-ne v0, p1, :cond_7

    return-void

    .line 143
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad access: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Landroid/hardware/usb/PortRole;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/hardware/usb/PortRole;->getTag()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/hardware/usb/PortRole;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final _set(ILjava/lang/Object;)V
    .registers 3

    .line 157
    iput p1, p0, Landroid/hardware/usb/PortRole;->_tag:I

    .line 158
    iput-object p2, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    return-void
.end method

.method public final _tagString(I)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_27

    const/4 p0, 0x1

    if-eq p1, p0, :cond_24

    const/4 p0, 0x2

    if-ne p1, p0, :cond_c

    const-string/jumbo p0, "mode"

    return-object p0

    .line 153
    :cond_c
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown field: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_24
    const-string p0, "dataRole"

    return-object p0

    :cond_27
    const-string/jumbo p0, "powerRole"

    return-object p0
.end method

.method public describeContents()I
    .registers 1

    .line 136
    invoke-virtual {p0}, Landroid/hardware/usb/PortRole;->getTag()I

    const/4 p0, 0x0

    return p0
.end method

.method public getDataRole()B
    .registers 2

    const/4 v0, 0x1

    .line 55
    invoke-virtual {p0, v0}, Landroid/hardware/usb/PortRole;->_assertTag(I)V

    .line 56
    iget-object p0, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getMode()B
    .registers 2

    const/4 v0, 0x2

    .line 70
    invoke-virtual {p0, v0}, Landroid/hardware/usb/PortRole;->_assertTag(I)V

    .line 71
    iget-object p0, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public getPowerRole()B
    .registers 2

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0}, Landroid/hardware/usb/PortRole;->_assertTag(I)V

    .line 41
    iget-object p0, p0, Landroid/hardware/usb/PortRole;->_value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Byte;

    invoke-virtual {p0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    return p0
.end method

.method public final getStability()I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public getTag()I
    .registers 1

    .line 30
    iget p0, p0, Landroid/hardware/usb/PortRole;->_tag:I

    return p0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3c

    const/4 v1, 0x1

    if-eq v0, v1, :cond_30

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 126
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 127
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/usb/PortRole;->_set(ILjava/lang/Object;)V

    return-void

    .line 130
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "union: unknown tag: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 121
    :cond_30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 122
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/usb/PortRole;->_set(ILjava/lang/Object;)V

    return-void

    .line 116
    :cond_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    .line 117
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/usb/PortRole;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setDataRole(B)V
    .registers 3

    .line 60
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/hardware/usb/PortRole;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setMode(B)V
    .registers 3

    .line 75
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/hardware/usb/PortRole;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public setPowerRole(B)V
    .registers 3

    .line 45
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/hardware/usb/PortRole;->_set(ILjava/lang/Object;)V

    return-void
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    .line 96
    iget p2, p0, Landroid/hardware/usb/PortRole;->_tag:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget p2, p0, Landroid/hardware/usb/PortRole;->_tag:I

    if-eqz p2, :cond_20

    const/4 v0, 0x1

    if-eq p2, v0, :cond_18

    const/4 v0, 0x2

    if-eq p2, v0, :cond_10

    goto :goto_27

    .line 105
    :cond_10
    invoke-virtual {p0}, Landroid/hardware/usb/PortRole;->getMode()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_27

    .line 102
    :cond_18
    invoke-virtual {p0}, Landroid/hardware/usb/PortRole;->getDataRole()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    goto :goto_27

    .line 99
    :cond_20
    invoke-virtual {p0}, Landroid/hardware/usb/PortRole;->getPowerRole()B

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByte(B)V

    :goto_27
    return-void
.end method
