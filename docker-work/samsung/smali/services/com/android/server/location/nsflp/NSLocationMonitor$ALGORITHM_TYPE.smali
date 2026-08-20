.class final enum Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;
.super Ljava/lang/Enum;
.source "NSLocationMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/nsflp/NSLocationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ALGORITHM_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

.field public static final enum NEW:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

.field public static final enum NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

.field public static final enum OLD:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;


# direct methods
.method public static constructor <clinit>()V
    .registers 7

    .line 126
    new-instance v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    const-string v1, "NOT_SUPPORT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NOT_SUPPORT:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    new-instance v1, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    const-string v3, "OLD"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->OLD:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    new-instance v3, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    const-string v5, "NEW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->NEW:Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->$VALUES:[Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;
    .registers 2

    .line 126
    const-class v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    return-object p0
.end method

.method public static values()[Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;
    .registers 1

    .line 126
    sget-object v0, Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->$VALUES:[Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/nsflp/NSLocationMonitor$ALGORITHM_TYPE;

    return-object v0
.end method
