.class public final enum Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
.super Ljava/lang/Enum;
.source "ActivationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActivationStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

.field public static final enum OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

.field public static final enum OFF_FORCEFUL:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

.field public static final enum ON:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 5
    new-instance v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    const-string v1, "ON"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->ON:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    new-instance v1, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    const-string v3, "OFF"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    new-instance v3, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    const-string v5, "OFF_FORCEFUL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->OFF_FORCEFUL:Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
    .registers 2

    .line 4
    const-class v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;
    .registers 1

    .line 4
    sget-object v0, Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->$VALUES:[Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    invoke-virtual {v0}, [Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/knox/analytics/activation/model/ActivationInfo$ActivationStatus;

    return-object v0
.end method
