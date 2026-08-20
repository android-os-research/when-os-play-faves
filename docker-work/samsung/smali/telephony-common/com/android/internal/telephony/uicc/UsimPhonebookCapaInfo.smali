.class public Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;
.super Ljava/lang/Object;
.source "UsimPhonebookCapaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ENTRY_LENGTH:I = 0x2

.field public static final blacklist FIELD_3GPP_ANR:I = 0x3

.field public static final blacklist FIELD_3GPP_ANRA:I = 0x8

.field public static final blacklist FIELD_3GPP_ANRB:I = 0x9

.field public static final blacklist FIELD_3GPP_ANRC:I = 0xa

.field public static final blacklist FIELD_3GPP_EMAIL:I = 0x4

.field public static final blacklist FIELD_3GPP_EMAILA:I = 0xb

.field public static final blacklist FIELD_3GPP_EMAILB:I = 0xc

.field public static final blacklist FIELD_3GPP_EMAILC:I = 0xd

.field public static final blacklist FIELD_3GPP_GRP:I = 0x6

.field public static final blacklist FIELD_3GPP_NAME:I = 0x1

.field public static final blacklist FIELD_3GPP_NUMBER:I = 0x2

.field public static final blacklist FIELD_3GPP_PBC:I = 0x7

.field public static final blacklist FIELD_3GPP_SNE:I = 0x5

.field public static final blacklist FIELD_TYPE_TAG:I = 0x0

.field public static final blacklist MAX_DATA_LENGTH:I = 0x4

.field public static final blacklist MAX_INDEX:I = 0x1

.field public static final blacklist USED_RECORD:I = 0x3


# instance fields
.field public blacklist mFieldTypeInfo:[I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 52
    new-instance v0, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 2

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x34

    new-array v0, v0, [I

    .line 75
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->mFieldTypeInfo:[I

    return-void
.end method

.method public constructor blacklist <init>([I)V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->mFieldTypeInfo:[I

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getFieldInfo(II)I
    .registers 7

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    const/16 v2, 0x34

    if-ge v1, v2, :cond_13

    .line 85
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->mFieldTypeInfo:[I

    aget v3, v2, v1

    if-ne v3, p1, :cond_10

    add-int/2addr v1, p2

    .line 86
    aget p0, v2, v1

    return p0

    :cond_10
    add-int/lit8 v1, v1, 0x4

    goto :goto_2

    :cond_13
    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 3

    .line 67
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UsimPhonebookCapaInfo;->mFieldTypeInfo:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
