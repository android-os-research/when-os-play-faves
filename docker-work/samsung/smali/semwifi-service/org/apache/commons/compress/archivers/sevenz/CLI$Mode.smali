.class abstract enum Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
.super Ljava/lang/Enum;
.source "CLI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/sevenz/CLI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x440a
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

.field public static final enum EXTRACT:Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

.field public static final enum LIST:Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;


# instance fields
.field private final message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 28
    new-instance v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$1;

    const-string v1, "LIST"

    const/4 v2, 0x0

    const-string v3, "Analysing"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$1;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$1-IA;)V

    sput-object v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->LIST:Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    .line 66
    new-instance v1, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$2;

    const-string v3, "EXTRACT"

    const/4 v5, 0x1

    const-string v6, "Extracting"

    invoke-direct {v1, v3, v5, v6, v4}, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$2;-><init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode$2-IA;)V

    sput-object v1, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->EXTRACT:Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    aput-object v0, v3, v2

    aput-object v1, v3, v5

    .line 27
    sput-object v3, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->$VALUES:[Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput-object p3, p0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->message:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
    .registers 2

    .line 27
    const-class v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;
    .registers 1

    .line 27
    sget-object v0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->$VALUES:[Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;

    return-object v0
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 1

    .line 110
    iget-object p0, p0, Lorg/apache/commons/compress/archivers/sevenz/CLI$Mode;->message:Ljava/lang/String;

    return-object p0
.end method

.method public abstract takeAction(Lorg/apache/commons/compress/archivers/sevenz/SevenZFile;Lorg/apache/commons/compress/archivers/sevenz/SevenZArchiveEntry;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
