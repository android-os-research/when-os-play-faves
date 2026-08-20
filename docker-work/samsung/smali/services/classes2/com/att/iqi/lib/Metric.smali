.class public abstract Lcom/att/iqi/lib/Metric;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/att/iqi/lib/Metric$ID;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/att/iqi/lib/Metric;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "+",
            "Lcom/att/iqi/lib/Metric;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/lang/String;

.field public final mMetricId:I


# direct methods
.method public static bridge synthetic -$$Nest$sma(Ljava/lang/String;Landroid/os/Parcel;)Lcom/att/iqi/lib/Metric;
    .registers 2

    invoke-static {p0, p1}, Lcom/att/iqi/lib/Metric;->a(Ljava/lang/String;Landroid/os/Parcel;)Lcom/att/iqi/lib/Metric;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/Metric;->b:Ljava/util/Map;

    new-instance v0, Lcom/att/iqi/lib/Metric$1;

    invoke-direct {v0}, Lcom/att/iqi/lib/Metric$1;-><init>()V

    sput-object v0, Lcom/att/iqi/lib/Metric;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/att/iqi/lib/Metric;->a:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/att/iqi/lib/Metric;->a()I

    move-result v0

    iput v0, p0, Lcom/att/iqi/lib/Metric;->mMetricId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/att/iqi/lib/Metric;->a:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p0}, Lcom/att/iqi/lib/Metric;->a()I

    move-result p1

    iput p1, p0, Lcom/att/iqi/lib/Metric;->mMetricId:I

    return-void

    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "API 1 not supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Ljava/lang/String;Landroid/os/Parcel;)Lcom/att/iqi/lib/Metric;
    .registers 7

    :try_start_0
    sget-object v0, Lcom/att/iqi/lib/Metric;->b:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_22

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/os/Parcel;

    aput-object v4, v3, v1

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sget-object v3, Lcom/att/iqi/lib/Metric;->b:Ljava/util/Map;

    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_22
    new-array p0, v2, [Ljava/lang/Object;

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/att/iqi/lib/Metric;
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    return-object p0

    :catch_2d
    new-instance p0, Lcom/att/iqi/lib/Metric$2;

    invoke-direct {p0}, Lcom/att/iqi/lib/Metric$2;-><init>()V

    return-object p0
.end method


# virtual methods
.method public final a()I
    .registers 2

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-string v0, "ID"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    invoke-virtual {p0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/att/iqi/lib/Metric$ID;

    invoke-virtual {p0}, Lcom/att/iqi/lib/Metric$ID;->asInt()I

    move-result p0
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_14} :catch_1d
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_14} :catch_15

    return p0

    :catch_15
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t read ID field from sub class"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sub class must define an ID field"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public describeContents()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public final getId()I
    .registers 1

    iget p0, p0, Lcom/att/iqi/lib/Metric;->mMetricId:I

    return p0
.end method

.method public abstract serialize(Ljava/nio/ByteBuffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation
.end method

.method public stringOut(Ljava/nio/ByteBuffer;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/BufferOverflowException;
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p2, :cond_14

    const/16 v0, 0x5f

    invoke-virtual {p2, p0, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :cond_14
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    const/16 p2, 0xc

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p0, p0, Lcom/att/iqi/lib/Metric;->a:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result p0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->setDataPosition(I)V

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
