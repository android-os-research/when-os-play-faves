.class public Lcom/mediatek/common/util/IPatterns$UrlData;
.super Ljava/lang/Object;
.source "IPatterns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/common/util/IPatterns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UrlData"
.end annotation


# instance fields
.field public blacklist end:I

.field public blacklist start:I

.field public blacklist urlStr:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "s"    # I
    .param p3, "e"    # I

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/mediatek/common/util/IPatterns$UrlData;->urlStr:Ljava/lang/String;

    .line 59
    iput p2, p0, Lcom/mediatek/common/util/IPatterns$UrlData;->start:I

    .line 60
    iput p3, p0, Lcom/mediatek/common/util/IPatterns$UrlData;->end:I

    .line 61
    return-void
.end method
