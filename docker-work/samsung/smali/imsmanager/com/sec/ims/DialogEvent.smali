.class public Lcom/sec/ims/DialogEvent;
.super Ljava/lang/Object;
.source "DialogEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/DialogEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDialogList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sec/ims/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private mMSISDN:Ljava/lang/String;

.field private mPhoneId:I

.field private mRegId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 97
    new-instance v0, Lcom/sec/ims/DialogEvent$1;

    invoke-direct {v0}, Lcom/sec/ims/DialogEvent$1;-><init>()V

    sput-object v0, Lcom/sec/ims/DialogEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/ims/DialogEvent;->mDialogList:Ljava/util/List;

    .line 24
    sget-object v1, Lcom/sec/ims/Dialog;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/DialogEvent;->mMSISDN:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/DialogEvent;->mRegId:I

    .line 28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/DialogEvent;->mPhoneId:I

    .line 29
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/sec/ims/DialogEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sec/ims/DialogEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;)V
    .registers 3
    .param p1, "msisdn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/sec/ims/Dialog;",
            ">;)V"
        }
    .end annotation

    .line 17
    .local p2, "dialogList":Ljava/util/List;, "Ljava/util/List<Lcom/sec/ims/Dialog;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/sec/ims/DialogEvent;->mMSISDN:Ljava/lang/String;

    .line 19
    iput-object p2, p0, Lcom/sec/ims/DialogEvent;->mDialogList:Ljava/util/List;

    .line 20
    return-void
.end method


# virtual methods
.method public clearDialogList()V
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/sec/ims/DialogEvent;->mDialogList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    return-void
.end method

.method public describeContents()I
    .registers 2

    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getDialogList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/ims/Dialog;",
            ">;"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/sec/ims/DialogEvent;->mDialogList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .registers 2

    .line 57
    iget-object v0, p0, Lcom/sec/ims/DialogEvent;->mMSISDN:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneId()I
    .registers 2

    .line 73
    iget v0, p0, Lcom/sec/ims/DialogEvent;->mPhoneId:I

    return v0
.end method

.method public getRegId()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/sec/ims/DialogEvent;->mRegId:I

    return v0
.end method

.method public setPhoneId(I)V
    .registers 2
    .param p1, "phoneId"    # I

    .line 69
    iput p1, p0, Lcom/sec/ims/DialogEvent;->mPhoneId:I

    .line 70
    return-void
.end method

.method public setRegId(I)V
    .registers 2
    .param p1, "regId"    # I

    .line 61
    iput p1, p0, Lcom/sec/ims/DialogEvent;->mRegId:I

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DialogEvent#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/sec/ims/DialogEvent;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [mMSISDN="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/DialogEvent;->mMSISDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDialogList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/DialogEvent;->mDialogList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXmlString()Ljava/lang/String;
    .registers 6

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "<?xml version=\"1.0\"?>\n\t<dialog-info xmlns=\"urn:ietf:params:xml:ns:dialog-info\"\n\t\tversion=\"0\" state=\"full\" entity=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/ims/DialogEvent;->mMSISDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\">\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "xml":Ljava/lang/String;
    iget-object v1, p0, Lcom/sec/ims/DialogEvent;->mDialogList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/ims/Dialog;

    .line 49
    .local v2, "dialog":Lcom/sec/ims/Dialog;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/sec/ims/Dialog;->toXmlString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    .end local v2    # "dialog":Lcom/sec/ims/Dialog;
    goto :goto_21

    .line 52
    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</dialog-info>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 53
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 86
    if-nez p1, :cond_3

    .line 87
    return-void

    .line 90
    :cond_3
    iget-object v0, p0, Lcom/sec/ims/DialogEvent;->mDialogList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 92
    iget-object v0, p0, Lcom/sec/ims/DialogEvent;->mMSISDN:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget v0, p0, Lcom/sec/ims/DialogEvent;->mRegId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Lcom/sec/ims/DialogEvent;->mPhoneId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    return-void
.end method
