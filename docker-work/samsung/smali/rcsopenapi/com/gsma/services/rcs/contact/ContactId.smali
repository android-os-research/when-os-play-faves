.class public Lcom/gsma/services/rcs/contact/ContactId;
.super Ljava/lang/Object;
.source "ContactId.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/gsma/services/rcs/contact/ContactId;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mContactId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 99
    new-instance v0, Lcom/gsma/services/rcs/contact/ContactId$1;

    invoke-direct {v0}, Lcom/gsma/services/rcs/contact/ContactId$1;-><init>()V

    sput-object v0, Lcom/gsma/services/rcs/contact/ContactId;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "contact"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    .line 57
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;

    .line 127
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 128
    return v0

    .line 130
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 131
    return v1

    .line 133
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 134
    return v1

    .line 136
    :cond_13
    move-object v2, p1

    check-cast v2, Lcom/gsma/services/rcs/contact/ContactId;

    .line 137
    .local v2, "other":Lcom/gsma/services/rcs/contact/ContactId;
    iget-object v3, p0, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    if-nez v3, :cond_1f

    .line 138
    iget-object v3, v2, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    if-eqz v3, :cond_28

    .line 139
    return v1

    .line 141
    :cond_1f
    iget-object v4, v2, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 142
    return v1

    .line 144
    :cond_28
    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 115
    const/16 v0, 0x1f

    .line 116
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 117
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    if-nez v3, :cond_b

    const/4 v3, 0x0

    goto :goto_f

    :cond_b
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_f
    add-int/2addr v2, v3

    .line 118
    .end local v1    # "result":I
    .local v2, "result":I
    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 92
    iget-object v0, p0, Lcom/gsma/services/rcs/contact/ContactId;->mContactId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    return-void
.end method
