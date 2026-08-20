.class public Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/mcf/external/BluetoothCallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field public static final A:B = 0x2t

.field public static final B:B = 0x4t

.field public static final C:B = 0x8t

.field public static final D:B = 0x10t

.field public static final d:I = 0x0

.field public static final e:I = 0x1

.field public static final f:I = 0x2

.field public static final g:I = 0x3

.field public static final h:I = 0x5

.field public static final i:I = 0x7

.field public static final j:I = 0x5

.field public static final k:I = 0x7

.field public static final l:I = 0x1f

.field public static final m:I = 0x1

.field public static final n:I = 0x8

.field public static o:I = 0x8

.field public static p:I = 0x8

.field public static q:I = 0x8

.field public static r:I = 0x8

.field public static s:I = 0x8

.field public static final t:I = 0x1

.field public static final u:I = 0x1

.field public static final v:I = 0x2

.field public static final w:I = 0x6

.field public static final x:I = 0x12

.field public static y:I = 0x5

.field public static final z:B = 0x1t


# instance fields
.field public a:I

.field public b:[B

.field public c:[B


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>([B)V
    .registers 3
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->b:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->c:[B

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->b([B)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->c([B)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->a([B)V

    return-void
.end method


# virtual methods
.method public final a([B)V
    .registers 5
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->a:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_27

    const/4 v2, 0x2

    if-eq v0, v2, :cond_18

    const/4 v2, 0x3

    if-eq v0, v2, :cond_c

    goto :goto_2b

    :cond_c
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->a(B)Z

    move-result v0

    if-eqz v0, :cond_2b

    sget v0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->s:I

    add-int/2addr v0, v1

    goto :goto_28

    :cond_18
    const/16 v0, 0x1f

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    if-lez v1, :cond_2b

    array-length v2, p1

    add-int/2addr v1, v0

    if-le v2, v1, :cond_2b

    const/16 v0, 0x20

    goto :goto_28

    :cond_27
    const/4 v0, 0x7

    :goto_28
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->a([BI)V

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final a([BI)V
    .registers 5
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->c:[B

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p1, p2, p0, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final a(B)Z
    .registers 4

    iget v0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->a:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    goto :goto_13

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->b:[B

    if-eqz p0, :cond_13

    const/16 v0, 0x8

    aget-byte p0, p0, v0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_13

    const/4 p0, 0x1

    return p0

    :cond_13
    :goto_13
    const/4 p0, 0x0

    return p0
.end method

.method public a()[B
    .registers 1

    iget-object p0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->c:[B

    return-object p0
.end method

.method public final b([B)V
    .registers 2
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->b:[B

    return-void
.end method

.method public b()[B
    .registers 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->b:[B

    return-object p0
.end method

.method public c()I
    .registers 1

    iget p0, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->a:I

    return p0
.end method

.method public final c([B)V
    .registers 10
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    const/4 v1, 0x0

    const/16 v2, 0x9

    if-ge v0, v2, :cond_9

    iput v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->a:I

    return-void

    :cond_9
    const/4 v0, 0x5

    aget-byte v3, p1, v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-nez v3, :cond_18

    const/4 v6, 0x6

    aget-byte v6, p1, v6

    if-ne v6, v4, :cond_18

    iput v5, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->a:I

    goto :goto_65

    :cond_18
    const/4 v6, 0x7

    if-ne v3, v2, :cond_22

    aget-byte v7, p1, v6

    if-nez v7, :cond_22

    iput v4, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->a:I

    goto :goto_65

    :cond_22
    if-ne v3, v2, :cond_63

    aget-byte v3, p1, v6

    if-ne v3, v4, :cond_63

    const/4 v3, 0x3

    iput v3, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->a:I

    const/16 p0, 0x8

    aget-byte v3, p1, p0

    :goto_2f
    if-ge v1, v0, :cond_65

    shl-int v6, v5, v1

    int-to-byte v6, v6

    and-int/2addr v6, v3

    int-to-byte v6, v6

    if-eq v6, v5, :cond_5c

    if-eq v6, v4, :cond_57

    const/4 v7, 0x4

    if-eq v6, v7, :cond_52

    if-eq v6, p0, :cond_4d

    const/16 v7, 0x10

    if-eq v6, v7, :cond_44

    goto :goto_60

    :cond_44
    sput v2, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->s:I

    aget-byte v6, p1, v2

    add-int/2addr v6, v5

    sput v6, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->y:I

    add-int/2addr v2, v6

    goto :goto_60

    :cond_4d
    sput v2, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->r:I

    add-int/lit8 v2, v2, 0x12

    goto :goto_60

    :cond_52
    sput v2, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->q:I

    add-int/lit8 v2, v2, 0x6

    goto :goto_60

    :cond_57
    sput v2, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->p:I

    add-int/lit8 v2, v2, 0x2

    goto :goto_60

    :cond_5c
    sput v2, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->o:I

    add-int/lit8 v2, v2, 0x1

    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_2f

    :cond_63
    iput v1, p0, Lcom/samsung/android/mcf/external/BluetoothCallHelper$b;->a:I

    :cond_65
    :goto_65
    return-void
.end method
