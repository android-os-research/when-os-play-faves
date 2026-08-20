.class public final enum Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;
.super Ljava/lang/Enum;
.source "DumpArchiveEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PERMISSION"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum GROUP_EXEC:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum GROUP_READ:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum GROUP_WRITE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum SETGUI:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum SETUID:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum STICKY:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum USER_EXEC:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum USER_READ:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum USER_WRITE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum WORLD_EXEC:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum WORLD_READ:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

.field public static final enum WORLD_WRITE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 810
    new-instance v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v1, "SETUID"

    const/4 v2, 0x0

    const/16 v3, 0x800

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->SETUID:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 811
    new-instance v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v3, "SETGUI"

    const/4 v4, 0x1

    const/16 v5, 0x400

    invoke-direct {v1, v3, v4, v5}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->SETGUI:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 812
    new-instance v3, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v5, "STICKY"

    const/4 v6, 0x2

    const/16 v7, 0x200

    invoke-direct {v3, v5, v6, v7}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->STICKY:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 813
    new-instance v5, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v7, "USER_READ"

    const/4 v8, 0x3

    const/16 v9, 0x100

    invoke-direct {v5, v7, v8, v9}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->USER_READ:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 814
    new-instance v7, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v9, "USER_WRITE"

    const/4 v10, 0x4

    const/16 v11, 0x80

    invoke-direct {v7, v9, v10, v11}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->USER_WRITE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 815
    new-instance v9, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v11, "USER_EXEC"

    const/4 v12, 0x5

    const/16 v13, 0x40

    invoke-direct {v9, v11, v12, v13}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->USER_EXEC:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 816
    new-instance v11, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v13, "GROUP_READ"

    const/4 v14, 0x6

    const/16 v15, 0x20

    invoke-direct {v11, v13, v14, v15}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->GROUP_READ:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 817
    new-instance v13, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v15, "GROUP_WRITE"

    const/4 v14, 0x7

    const/16 v12, 0x10

    invoke-direct {v13, v15, v14, v12}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->GROUP_WRITE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 818
    new-instance v12, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v15, "GROUP_EXEC"

    const/16 v14, 0x8

    invoke-direct {v12, v15, v14, v14}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->GROUP_EXEC:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 819
    new-instance v15, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v14, "WORLD_READ"

    const/16 v8, 0x9

    invoke-direct {v15, v14, v8, v10}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->WORLD_READ:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 820
    new-instance v14, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v8, "WORLD_WRITE"

    const/16 v10, 0xa

    invoke-direct {v14, v8, v10, v6}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->WORLD_WRITE:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    .line 821
    new-instance v8, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const-string v10, "WORLD_EXEC"

    const/16 v6, 0xb

    invoke-direct {v8, v10, v6, v4}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->WORLD_EXEC:Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    const/16 v10, 0xc

    new-array v10, v10, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    aput-object v0, v10, v2

    aput-object v1, v10, v4

    const/4 v0, 0x2

    aput-object v3, v10, v0

    const/4 v0, 0x3

    aput-object v5, v10, v0

    const/4 v0, 0x4

    aput-object v7, v10, v0

    const/4 v0, 0x5

    aput-object v9, v10, v0

    const/4 v0, 0x6

    aput-object v11, v10, v0

    const/4 v0, 0x7

    aput-object v13, v10, v0

    const/16 v0, 0x8

    aput-object v12, v10, v0

    const/16 v0, 0x9

    aput-object v15, v10, v0

    const/16 v0, 0xa

    aput-object v14, v10, v0

    aput-object v8, v10, v6

    .line 809
    sput-object v10, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->$VALUES:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 825
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 826
    iput p3, p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->code:I

    return-void
.end method

.method public static find(I)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;",
            ">;"
        }
    .end annotation

    .line 830
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 832
    invoke-static {}, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->values()[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v2, :cond_1b

    aget-object v4, v1, v3

    .line 833
    iget v5, v4, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->code:I

    and-int v6, p0, v5

    if-ne v6, v5, :cond_18

    .line 834
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 838
    :cond_1b
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_26

    .line 839
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    .line 842
    :cond_26
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;
    .registers 2

    .line 809
    const-class v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    return-object p0
.end method

.method public static values()[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;
    .registers 1

    .line 809
    sget-object v0, Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->$VALUES:[Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    invoke-virtual {v0}, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/compress/archivers/dump/DumpArchiveEntry$PERMISSION;

    return-object v0
.end method
