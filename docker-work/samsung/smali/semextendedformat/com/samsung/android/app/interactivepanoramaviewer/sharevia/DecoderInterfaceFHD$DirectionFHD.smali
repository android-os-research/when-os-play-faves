.class public final enum Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;
.super Ljava/lang/Enum;
.source "DecoderInterfaceFHD.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DirectionFHD"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;

.field public static final enum NEGATIVE:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;

.field public static final enum POSITIVE:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;


# instance fields
.field private mDirection:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 41
    new-instance v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;

    const-string v1, "POSITIVE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;->POSITIVE:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;

    new-instance v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;

    const-string v4, "NEGATIVE"

    const/4 v5, -0x1

    invoke-direct {v1, v4, v3, v5}, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;->NEGATIVE:Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;

    .line 39
    const/4 v4, 0x2

    new-array v4, v4, [Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;

    aput-object v0, v4, v2

    aput-object v1, v4, v3

    sput-object v4, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;->ENUM$VALUES:[Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "direction"    # I

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;->mDirection:I

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;
    .registers 2

    .line 1
    const-class v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;
    .registers 4

    .line 1
    sget-object v0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;->ENUM$VALUES:[Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;

    array-length v1, v0

    new-array v2, v1, [Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;

    const/4 v3, 0x0

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getDirection()I
    .registers 2

    .line 54
    iget v0, p0, Lcom/samsung/android/app/interactivepanoramaviewer/sharevia/DecoderInterfaceFHD$DirectionFHD;->mDirection:I

    return v0
.end method
