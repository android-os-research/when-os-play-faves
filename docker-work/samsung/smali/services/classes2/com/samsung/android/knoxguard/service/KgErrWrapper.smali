.class public Lcom/samsung/android/knoxguard/service/KgErrWrapper;
.super Ljava/lang/Object;
.source "KgErrWrapper.java"


# static fields
.field public static final KGTA_FAILED:I = -0x4d2

.field public static final KGTA_PARAM_DEFAULT:I = 0x0

.field public static TAG:Ljava/lang/String; = "KgErrWrapper"


# instance fields
.field public data:[B
    .annotation build Lcom/android/internal/annotations/Keep;
    .end annotation
.end field

.field public err:I
    .annotation build Lcom/android/internal/annotations/Keep;
    .end annotation
.end field

.field public result:I
    .annotation build Lcom/android/internal/annotations/Keep;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, -0x4d2

    .line 45
    iput v0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    return-void
.end method


# virtual methods
.method public getStr()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object p0, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->data:[B

    if-eqz p0, :cond_a

    .line 31
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method

.method public setErr(I)V
    .registers 2

    .line 41
    iput p1, p0, Lcom/samsung/android/knoxguard/service/KgErrWrapper;->err:I

    return-void
.end method
