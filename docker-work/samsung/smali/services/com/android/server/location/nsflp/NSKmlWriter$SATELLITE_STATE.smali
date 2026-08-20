.class final enum Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;
.super Ljava/lang/Enum;
.source "NSKmlWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/nsflp/NSKmlWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SATELLITE_STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum DEEP_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum INIT:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum MILD_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum NO_SATELLITE:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum OUTDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

.field public static final enum SHADOW:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;


# instance fields
.field private simpleKeyword:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 14

    .line 602
    new-instance v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const-string v1, "INIT"

    const/4 v2, 0x0

    const-string/jumbo v3, "in"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->INIT:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 603
    new-instance v1, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const-string v3, "NO_SATELLITE"

    const/4 v4, 0x1

    const-string/jumbo v5, "no"

    invoke-direct {v1, v3, v4, v5}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->NO_SATELLITE:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 604
    new-instance v3, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const-string v5, "SHADOW"

    const/4 v6, 0x2

    const-string/jumbo v7, "sh"

    invoke-direct {v3, v5, v6, v7}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->SHADOW:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 605
    new-instance v5, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const-string v7, "DEEP_INDOOR"

    const/4 v8, 0x3

    const-string v9, "di"

    invoke-direct {v5, v7, v8, v9}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->DEEP_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 606
    new-instance v7, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const-string v9, "MILD_INDOOR"

    const/4 v10, 0x4

    const-string/jumbo v11, "mi"

    invoke-direct {v7, v9, v10, v11}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->MILD_INDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    .line 607
    new-instance v9, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const-string v11, "OUTDOOR"

    const/4 v12, 0x5

    const-string/jumbo v13, "od"

    invoke-direct {v9, v11, v12, v13}, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->OUTDOOR:Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 601
    sput-object v11, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->$VALUES:[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 611
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 612
    iput-object p3, p0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->simpleKeyword:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;
    .registers 2

    .line 601
    const-class v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;
    .registers 1

    .line 601
    sget-object v0, Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->$VALUES:[Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    invoke-virtual {v0}, [Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/nsflp/NSKmlWriter$SATELLITE_STATE;

    return-object v0
.end method
