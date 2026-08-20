.class public final enum Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;
.super Ljava/lang/Enum;
.source "SemScanResultUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HSRelease"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

.field public static final enum R1:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

.field public static final enum R2:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

.field public static final enum R3:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

.field public static final enum Unknown:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .line 608
    new-instance v0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    const-string v1, "R1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;->R1:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    .line 609
    new-instance v1, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    const-string v3, "R2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;->R2:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    .line 610
    new-instance v3, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    const-string v5, "R3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;->R3:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    .line 611
    new-instance v5, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    const-string v7, "Unknown"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;->Unknown:Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 607
    sput-object v7, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;->$VALUES:[Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 607
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;
    .registers 2

    .line 607
    const-class v0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;
    .registers 1

    .line 607
    sget-object v0, Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;->$VALUES:[Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    invoke-virtual {v0}, [Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/server/wifi/silentroaming/SemScanResultUtil$Vsa$HSRelease;

    return-object v0
.end method
