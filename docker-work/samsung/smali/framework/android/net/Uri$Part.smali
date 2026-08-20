.class Landroid/net/Uri$Part;
.super Landroid/net/Uri$AbstractPart;
.source "Uri.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Uri;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Part"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Uri$Part$EmptyPart;
    }
.end annotation


# static fields
.field static final greylist-max-o EMPTY:Landroid/net/Uri$Part;

.field static final greylist-max-o NULL:Landroid/net/Uri$Part;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 2053
    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    .line 2056
    new-instance v0, Landroid/net/Uri$Part$EmptyPart;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/net/Uri$Part$EmptyPart;-><init>(Ljava/lang/String;)V

    sput-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "encoded"    # Ljava/lang/String;
    .param p2, "decoded"    # Ljava/lang/String;

    .line 2059
    invoke-direct {p0, p1, p2}, Landroid/net/Uri$AbstractPart;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2060
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri$Part-IA;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static greylist-max-o from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;
    .registers 3
    .param p0, "encoded"    # Ljava/lang/String;
    .param p1, "decoded"    # Ljava/lang/String;

    .line 2121
    if-nez p0, :cond_5

    .line 2122
    sget-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    return-object v0

    .line 2124
    :cond_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_e

    .line 2125
    sget-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-object v0

    .line 2128
    :cond_e
    if-nez p1, :cond_13

    .line 2129
    sget-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    return-object v0

    .line 2131
    :cond_13
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1c

    .line 2132
    sget-object v0, Landroid/net/Uri$Part;->EMPTY:Landroid/net/Uri$Part;

    return-object v0

    .line 2135
    :cond_1c
    new-instance v0, Landroid/net/Uri$Part;

    invoke-direct {v0, p0, p1}, Landroid/net/Uri$Part;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method static greylist-max-o fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .registers 2
    .param p0, "decoded"    # Ljava/lang/String;

    .line 2108
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;
    .registers 2
    .param p0, "encoded"    # Ljava/lang/String;

    .line 2099
    sget-object v0, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/net/Uri$Part;->from(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v0

    return-object v0
.end method

.method static greylist-max-o nonNull(Landroid/net/Uri$Part;)Landroid/net/Uri$Part;
    .registers 2
    .param p0, "part"    # Landroid/net/Uri$Part;

    .line 2090
    if-nez p0, :cond_5

    sget-object v0, Landroid/net/Uri$Part;->NULL:Landroid/net/Uri$Part;

    goto :goto_6

    :cond_5
    move-object v0, p0

    :goto_6
    return-object v0
.end method

.method static greylist-max-o readFrom(Landroid/os/Parcel;)Landroid/net/Uri$Part;
    .registers 6
    .param p0, "parcel"    # Landroid/os/Parcel;

    .line 2073
    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2074
    .local v0, "representation":I
    invoke-virtual {p0}, Landroid/os/Parcel;->readString8()Ljava/lang/String;

    move-result-object v1

    .line 2075
    .local v1, "value":Ljava/lang/String;
    packed-switch v0, :pswitch_data_2e

    .line 2081
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown representation: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2079
    :pswitch_24
    invoke-static {v1}, Landroid/net/Uri$Part;->fromDecoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v2

    return-object v2

    .line 2077
    :pswitch_29
    invoke-static {v1}, Landroid/net/Uri$Part;->fromEncoded(Ljava/lang/String;)Landroid/net/Uri$Part;

    move-result-object v2

    return-object v2

    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_29
        :pswitch_24
    .end packed-switch
.end method


# virtual methods
.method greylist-max-o getEncoded()Ljava/lang/String;
    .registers 3

    .line 2068
    iget-object v0, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    sget-object v1, Landroid/net/Uri$NotCachedHolder;->NOT_CACHED:Ljava/lang/String;

    if-eq v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 2069
    .local v0, "hasEncoded":Z
    :goto_9
    if-eqz v0, :cond_e

    iget-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    goto :goto_16

    :cond_e
    iget-object v1, p0, Landroid/net/Uri$Part;->decoded:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/net/Uri$Part;->encoded:Ljava/lang/String;

    :goto_16
    return-object v1
.end method

.method greylist-max-o isEmpty()Z
    .registers 2

    .line 2063
    const/4 v0, 0x0

    return v0
.end method
