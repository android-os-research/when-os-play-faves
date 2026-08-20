.class Lcom/android/internal/telephony/cat/SelectItemResponseData;
.super Lcom/android/internal/telephony/cat/ResponseData;
.source "ResponseData.java"


# instance fields
.field private blacklist mId:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 2

    .line 68
    invoke-direct {p0}, Lcom/android/internal/telephony/cat/ResponseData;-><init>()V

    .line 69
    iput p1, p0, Lcom/android/internal/telephony/cat/SelectItemResponseData;->mId:I

    return-void
.end method


# virtual methods
.method public blacklist format(Ljava/io/ByteArrayOutputStream;)V
    .registers 3

    .line 75
    sget-object v0, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->ITEM_ID:Lcom/android/internal/telephony/cat/ComprehensionTlvTag;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/ComprehensionTlvTag;->value()I

    move-result v0

    or-int/lit16 v0, v0, 0x80

    .line 76
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 78
    iget p0, p0, Lcom/android/internal/telephony/cat/SelectItemResponseData;->mId:I

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method
