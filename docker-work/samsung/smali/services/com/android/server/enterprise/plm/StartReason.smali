.class public final enum Lcom/android/server/enterprise/plm/StartReason;
.super Ljava/lang/Enum;
.source "StartReason.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/plm/StartReason;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/enterprise/plm/StartReason;

.field public static final enum EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/StartReason;

.field public static final enum EDM_SYSTEM_READY:Lcom/android/server/enterprise/plm/StartReason;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    .line 4
    new-instance v0, Lcom/android/server/enterprise/plm/StartReason;

    const-string v1, "EDM_SYSTEM_READY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/plm/StartReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/plm/StartReason;->EDM_SYSTEM_READY:Lcom/android/server/enterprise/plm/StartReason;

    .line 5
    new-instance v1, Lcom/android/server/enterprise/plm/StartReason;

    const-string v3, "EDM_SERVICE_READY"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/android/server/enterprise/plm/StartReason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/enterprise/plm/StartReason;->EDM_SERVICE_READY:Lcom/android/server/enterprise/plm/StartReason;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/server/enterprise/plm/StartReason;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/android/server/enterprise/plm/StartReason;->$VALUES:[Lcom/android/server/enterprise/plm/StartReason;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/plm/StartReason;
    .registers 2

    .line 3
    const-class v0, Lcom/android/server/enterprise/plm/StartReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/enterprise/plm/StartReason;

    return-object p0
.end method

.method public static values()[Lcom/android/server/enterprise/plm/StartReason;
    .registers 1

    .line 3
    sget-object v0, Lcom/android/server/enterprise/plm/StartReason;->$VALUES:[Lcom/android/server/enterprise/plm/StartReason;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/plm/StartReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/plm/StartReason;

    return-object v0
.end method
