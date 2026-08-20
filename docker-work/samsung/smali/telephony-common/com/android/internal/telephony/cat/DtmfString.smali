.class Lcom/android/internal/telephony/cat/DtmfString;
.super Ljava/lang/Object;
.source "CatService.java"


# instance fields
.field public blacklist dtfmString:Ljava/lang/String;

.field public blacklist dtmfStringLength:I

.field public blacklist pointer:I


# direct methods
.method constructor blacklist <init>(I[B)V
    .registers 3

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput p1, p0, Lcom/android/internal/telephony/cat/DtmfString;->dtmfStringLength:I

    .line 247
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/lang/String;-><init>([B)V

    iput-object p1, p0, Lcom/android/internal/telephony/cat/DtmfString;->dtfmString:Ljava/lang/String;

    const/4 p1, 0x0

    .line 248
    iput p1, p0, Lcom/android/internal/telephony/cat/DtmfString;->pointer:I

    return-void
.end method
