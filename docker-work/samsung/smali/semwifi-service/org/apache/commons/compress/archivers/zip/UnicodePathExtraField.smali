.class public Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;
.super Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;
.source "UnicodePathExtraField.java"


# static fields
.field public static final UPATH_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 34
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x7075

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;->UPATH_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 36
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;-><init>(Ljava/lang/String;[B)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[BII)V
    .registers 5

    .line 50
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/compress/archivers/zip/AbstractUnicodeExtraField;-><init>(Ljava/lang/String;[BII)V

    return-void
.end method


# virtual methods
.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .registers 1

    .line 66
    sget-object p0, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;->UPATH_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object p0
.end method
